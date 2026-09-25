#include "BFButton.h"

#include "CCDirector.h"
#include "touch_dispatcher/CCTouchDispatcher.h"
#include "ccTypes.h"

using namespace cocos2d;
using namespace cocos2d::extension;

BFButton::BFButton()
: m_moved(false)
, m_swallowTouch(true)
, m_filterMove(false)
, m_eventOnDisable(false)
{
}

BFButton *BFButton::create()
{
    BFButton *button = new BFButton();
    if (button && button->init()) {
        button->autorelease();
        return button;
    }
    CC_SAFE_DELETE(button);
    return NULL;
}

bool BFButton::ccTouchBegan(CCTouch *touch, CCEvent *event)
{
    if ((!m_eventOnDisable && !isEnabled()) || !isTouchInside(touch) ||
        !isVisible() || !hasVisibleParents()) {
        return false;
    }

    for (CCNode *parent = m_pParent; parent != NULL; parent = parent->getParent()) {
        if (!parent->isVisible()) {
            return false;
        }
    }

    m_moved = false;
    m_isPushed = true;
    setHighlighted(true);
    sendActionsForControlEvents(CCControlEventTouchDown);
    return true;
}

void BFButton::ccTouchMoved(CCTouch *touch, CCEvent *event)
{
    CCControlButton::ccTouchMoved(touch, event);
    if (ccpDistance(touch->getLocation(), touch->getStartLocation()) > 20.0f) {
        m_moved = true;
    }
}

void BFButton::ccTouchEnded(CCTouch *touch, CCEvent *event)
{
    if (m_filterMove && m_moved) {
        m_moved = false;
        m_isPushed = false;
        setHighlighted(false);
        return;
    }
    m_moved = false;
    CCControlButton::ccTouchEnded(touch, event);
}

void BFButton::registerWithTouchDispatcher()
{
    CCTouchDispatcher *dispatcher = CCDirector::sharedDirector()->getTouchDispatcher();
    dispatcher->addTargetedDelegate(this, getTouchPriority(), m_swallowTouch);
}

void BFButton::setFilterMove(bool enabled)
{
    m_filterMove = enabled;
}

void BFButton::setSwallowTouch(bool enabled)
{
    m_swallowTouch = enabled;
    // The oracle's setter unconditionally enables movement filtering.
    setFilterMove(true);
}

void BFButton::setEventOnDisable(bool enabled)
{
    m_eventOnDisable = enabled;
}
