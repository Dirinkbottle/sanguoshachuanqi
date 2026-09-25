#include "AppDelegate.h"
#include "LogoScene.h"

#include "cocos2d.h"
#include "SimpleAudioEngine.h"
#include "ScriptingCore.h"
#include "generated/jsb_cocos2dx_auto.hpp"
#include "generated/jsb_cocos2dx_extension_auto.hpp"
#include "generated/jsb_cocos2dx_studio_auto.hpp"
#include "jsb_cocos2dx_extension_manual.h"
#include "jsb_cocos2dx_studio_manual.h"
#include "cocos2d_specifics.hpp"
#include "js_bindings_chipmunk_registration.h"
#include "js_bindings_system_registration.h"
#include "js_bindings_ccbreader.h"
#include "jsb_opengl_registration.h"
#include "XMLHTTPRequest.h"
#include "jsb_websocket.h"
#include "Native/sgscq_custom_jsb.h"

USING_NS_CC;
using namespace CocosDenshion;

AppDelegate::AppDelegate()
{
}

AppDelegate::~AppDelegate()
{
    CCScriptEngineManager::purgeSharedManager();
}

bool AppDelegate::applicationDidFinishLaunching()
{
    // initialize director
    CCDirector *pDirector = CCDirector::sharedDirector();
    pDirector->setOpenGLView(CCEGLView::sharedOpenGLView());
    
    // turn on display FPS
    pDirector->setDisplayStats(false);
    
    // set FPS. the default value is 1.0/60 if you don't call this
    pDirector->setAnimationInterval(1.0 / 60);
    
    ScriptingCore* sc = ScriptingCore::getInstance();
    sc->addRegisterCallback(register_all_cocos2dx);
    sc->addRegisterCallback(register_all_cocos2dx_extension);
    sc->addRegisterCallback(register_all_cocos2dx_extension_manual);
    sc->addRegisterCallback(register_cocos2dx_js_extensions);
    sc->addRegisterCallback(register_all_cocos2dx_studio);
    sc->addRegisterCallback(register_all_cocos2dx_studio_manual);
    sc->addRegisterCallback(register_CCBuilderReader);
    sc->addRegisterCallback(jsb_register_chipmunk);
    sc->addRegisterCallback(jsb_register_system);
    sc->addRegisterCallback(JSB_register_opengl);
    sc->addRegisterCallback(MinXmlHttpRequest::_js_register);
    sc->addRegisterCallback(register_jsb_websocket);
    sc->addRegisterCallback(register_all_xs_sanguosha);
    sc->addRegisterCallback(register_all_xs_sanguosha_manual);

    sc->start();
    
    CCScriptEngineProtocol *pEngine = ScriptingCore::getInstance();
    CCScriptEngineManager::sharedManager()->setScriptEngine(pEngine);
    // Recovered game modules use bare paths such as Core/headers.js.
    CCFileUtils::sharedFileUtils()->addSearchPath("src_jsc");
    CCLOG("LOCAL_REBUILD: executable recovered JS search path enabled");
    // Recovered Sprite config loads atlas files such as tex/Cmn01.plist.
    CCFileUtils::sharedFileUtils()->addSearchPath("res_n_main/medium");
    CCLOG("LOCAL_REBUILD: medium resource search path enabled");
    // Sprite factory bytecode strips the "tex/" prefix before loading atlases.
    CCFileUtils::sharedFileUtils()->addSearchPath("res_n_main/medium/tex");
    CCLOG("LOCAL_REBUILD: texture atlas search path enabled");
    ScriptingCore::getInstance()->runScript("jsb_compat.js");

    CCScene* logoScene = LogoScene::create();
    if (!logoScene) {
        CCLOG("LogoScene creation failed; continuing to game entry point");
        runGameMain();
    } else {
        pDirector->runWithScene(logoScene);
    }
       
    return true;
}

void AppDelegate::runGameMain()
{
    static bool started = false;
    if (started) {
        CCLOG("gameMain already started");
        return;
    }

    started = true;
    CCLOG("gameMain---");
    const bool result = ScriptingCore::getInstance()->runScript("src_jsc/main.js");
    CCLOG("runScriptResult:%d", result ? 1 : 0);
    CCLOG("gameMain End");
}

void handle_signal(int signal) {
    static int internal_state = 0;
    ScriptingCore* sc = ScriptingCore::getInstance();
    // should start everything back
    CCDirector* director = CCDirector::sharedDirector();
    if (director->getRunningScene()) {
        director->popToRootScene();
    } else {
        CCPoolManager::sharedPoolManager()->finalize();
        if (internal_state == 0) {
            //sc->dumpRoot(NULL, 0, NULL);
            sc->start();
            internal_state = 1;
        } else {
            sc->runScript("hello.js");
            internal_state = 0;
        }
    }
}

// This function will be called when the app is inactive. When comes a phone call,it's be invoked too
void AppDelegate::applicationDidEnterBackground()
{
    CCDirector::sharedDirector()->stopAnimation();
    SimpleAudioEngine::sharedEngine()->pauseBackgroundMusic();
    SimpleAudioEngine::sharedEngine()->pauseAllEffects();
}

// this function will be called when the app is active again
void AppDelegate::applicationWillEnterForeground()
{
    CCDirector::sharedDirector()->startAnimation();
    SimpleAudioEngine::sharedEngine()->resumeBackgroundMusic();
    SimpleAudioEngine::sharedEngine()->resumeAllEffects();
}
