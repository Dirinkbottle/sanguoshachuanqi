#ifndef SGSCQ_NATIVE_BFBUTTON_H
#define SGSCQ_NATIVE_BFBUTTON_H

#include "cocos-ext.h"

/**
 * 三国杀传奇's native button class recovered from the original ARM library.
 * The original class derives from CCControlButton and adds touch filtering.
 */
class BFButton : public cocos2d::extension::CCControlButton {
public:
    BFButton();

    static BFButton *create();

    virtual bool ccTouchBegan(cocos2d::CCTouch *touch, cocos2d::CCEvent *event);
    virtual void ccTouchMoved(cocos2d::CCTouch *touch, cocos2d::CCEvent *event);
    virtual void ccTouchEnded(cocos2d::CCTouch *touch, cocos2d::CCEvent *event);
    virtual void registerWithTouchDispatcher();

    void setFilterMove(bool enabled);
    void setSwallowTouch(bool enabled);
    void setEventOnDisable(bool enabled);

private:
    bool m_moved;
    bool m_swallowTouch;
    bool m_filterMove;
    bool m_eventOnDisable;
};

#endif
