#include "SpriteFrameRetention.h"

#include <map>
#include <string>

#include "cocos2d.h"
#include "ScriptingCore.h"

using namespace cocos2d;

namespace {

typedef std::map<std::string, CCSpriteFrame *> FrameMap;
typedef std::map<std::string, FrameMap> AtlasMap;
AtlasMap retainedAtlases;

bool retainSpriteFramesWithFile(const std::string &plist)
{
    const std::string path = CCFileUtils::sharedFileUtils()->fullPathForFilename(plist.c_str());
    CCDictionary *dictionary = CCDictionary::createWithContentsOfFileThreadSafe(path.c_str());
    if (!dictionary) {
        CCLOG("SGSCQ_FRAME_RETAIN: cannot read %s", plist.c_str());
        return false;
    }

    CCDictionary *frames = static_cast<CCDictionary *>(dictionary->objectForKey("frames"));
    if (!frames) {
        CCLOG("SGSCQ_FRAME_RETAIN: missing frames in %s", plist.c_str());
        dictionary->release();
        return false;
    }

    FrameMap &held = retainedAtlases[plist];
    CCSpriteFrameCache *cache = CCSpriteFrameCache::sharedSpriteFrameCache();
    unsigned int missing = 0;
    CCDictElement *element = NULL;
    CCDICT_FOREACH(frames, element) {
        const std::string name = element->getStrKey();
        CCSpriteFrame *frame = cache->spriteFrameByName(name.c_str());
        if (!frame) {
            ++missing;
            continue;
        }
        FrameMap::iterator previous = held.find(name);
        if (previous != held.end() && previous->second == frame) {
            continue;
        }
        frame->retain();
        if (previous != held.end()) {
            previous->second->release();
            previous->second = frame;
        } else {
            held.insert(std::make_pair(name, frame));
        }
    }
    dictionary->release();
    CCLOG("SGSCQ_FRAME_RETAIN: %s held=%u missing=%u", plist.c_str(),
          static_cast<unsigned int>(held.size()), missing);
    return missing == 0;
}

bool releaseSpriteFramesWithFile(const std::string &plist)
{
    AtlasMap::iterator atlas = retainedAtlases.find(plist);
    if (atlas == retainedAtlases.end()) {
        return false;
    }
    for (FrameMap::iterator frame = atlas->second.begin(); frame != atlas->second.end(); ++frame) {
        frame->second->release();
    }
    CCLOG("SGSCQ_FRAME_RELEASE: %s released=%u", plist.c_str(),
          static_cast<unsigned int>(atlas->second.size()));
    retainedAtlases.erase(atlas);
    return true;
}

JSBool js_retainSpriteFramesWithFile(JSContext *cx, uint32_t argc, jsval *vp)
{
    std::string plist;
    if (argc != 1 || !jsval_to_std_string(cx, JS_ARGV(cx, vp)[0], &plist) || plist.empty()) {
        JS_ReportError(cx, "retainSpriteFramesWithFile expects a plist filename");
        return JS_FALSE;
    }
    JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(retainSpriteFramesWithFile(plist)));
    return JS_TRUE;
}

JSBool js_releaseSpriteFramesWithFile(JSContext *cx, uint32_t argc, jsval *vp)
{
    std::string plist;
    if (argc != 1 || !jsval_to_std_string(cx, JS_ARGV(cx, vp)[0], &plist) || plist.empty()) {
        JS_ReportError(cx, "releaseSpriteFramesWithFile expects a plist filename");
        return JS_FALSE;
    }
    JS_SET_RVAL(cx, vp, BOOLEAN_TO_JSVAL(releaseSpriteFramesWithFile(plist)));
    return JS_TRUE;
}

} // namespace

void register_sprite_frame_retention(JSContext *cx, JSObject *xsNamespace)
{
    JS_DefineFunction(cx, xsNamespace, "retainSpriteFramesWithFile",
                      js_retainSpriteFramesWithFile, 1, JSPROP_READONLY | JSPROP_PERMANENT);
    JS_DefineFunction(cx, xsNamespace, "releaseSpriteFramesWithFile",
                      js_releaseSpriteFramesWithFile, 1, JSPROP_READONLY | JSPROP_PERMANENT);
}
