#include "LogoScene.h"

#include "AppDelegate.h"

USING_NS_CC;

LogoScene* LogoScene::create()
{
    LogoScene* scene = new LogoScene();
    if (scene && scene->init()) {
        scene->autorelease();
        return scene;
    }

    CC_SAFE_DELETE(scene);
    return NULL;
}

bool LogoScene::init()
{
    if (!CCScene::init()) {
        return false;
    }

    const CCSize winSize = CCDirector::sharedDirector()->getWinSize();
    CCSprite* logo = CCSprite::create("tex/scene_bg/logo.png");
    if (!logo) {
        CCLOG("LogoScene: failed to load tex/scene_bg/logo.png");
        return false;
    }

    const CCSize imageSize = logo->getContentSize();
    if (imageSize.width <= 0.0f || imageSize.height <= 0.0f) {
        CCLOG("LogoScene: invalid logo image size");
        return false;
    }

    logo->setScaleX(winSize.width / imageSize.width);
    logo->setScaleY(winSize.height / imageSize.height);
    logo->setPosition(ccp(winSize.width * 0.5f, winSize.height * 0.5f));
    addChild(logo);
    return true;
}

void LogoScene::onEnterTransitionDidFinish()
{
    CCScene::onEnterTransitionDidFinish();
    CCLOG("LogoScene::showLogoBegin");

    runAction(CCSequence::create(
        CCDelayTime::create(2.0f),
        CCCallFunc::create(this, callfunc_selector(LogoScene::showLogoFinished)),
        NULL));
}

void LogoScene::showLogoFinished()
{
    CCLOG("LogoScene::showLogoFinished");
    AppDelegate::runGameMain();
}
