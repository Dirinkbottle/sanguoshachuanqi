#ifndef SGSCQ_LOGO_SCENE_H
#define SGSCQ_LOGO_SCENE_H

#include "cocos2d.h"

class LogoScene : public cocos2d::CCScene
{
public:
    static LogoScene* create();

    virtual bool init();
    virtual void onEnterTransitionDidFinish();

private:
    void showLogoFinished();
};

#endif // SGSCQ_LOGO_SCENE_H
