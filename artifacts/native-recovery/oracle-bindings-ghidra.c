# Ghidra decompilation of custom JSB oracle functions

Binary: /home/inkbottle/othersrc/android_playground/raw/lib/armeabi/libcocos2djs.so

Function count: 244

## Relevant symbols

_ZN12JsbConnecter16getClassTypeInfoEv @ 00261a54
_ZN12JsbConnecter4initEv @ 00261ab2
_ZN12JsbConnecter11getInstanceEv @ 00261ab4
_ZN12JsbConnecter7getNameEv @ 00261afc
_ZN12JsbConnecter20setIdleTimerDisabledEb @ 00261b14
_ZN12JsbConnecter9deleteDirEPKc @ 00261b18
_ZN12JsbConnecter21invoke_Class_PlatformERKSsS1_ @ 00261b5c
_ZN12JsbConnecter18invoke_Class_BuildERKSsS1_ @ 00261b94
_ZN12JsbConnecter21invoke_Class_DirectorERKSsS1_ @ 00261cb8
_ZN12JsbConnecter23invoke_Class_ArmDataMgrERKSsS1_ @ 00261d58
_ZN12JsbConnecter29invoke_Class_SpriteFrameCacheERKSsS1_ @ 00261d70
_ZN12JsbConnecter9unZipFileEPKcS1_ @ 00261de8
_ZN12JsbConnecter14SeparateParamsERKSs @ 00261fa8
_ZN12JsbConnecter16invoke_Class_LogERKSsS1_ @ 00262068
_ZN12JsbConnecter18invoke_Class_UtilsERKSsS1_ @ 002621f8
_ZN12JsbConnecter16invoke_Class_CfgERKSsS1_ @ 002622c4
_ZN12JsbConnecter17invoke_Class_TrieERKSsS1_ @ 0026280c
_ZN12JsbConnecter6invokeERKSsS1_S1_ @ 00262b30
js_xs_sanguosha_JsbConnecter_finalize @ 0026e04c
_Z37js_xs_sanguosha_JsbConnecter_finalizeP8JSFreeOpP8JSObject @ 0026e04c
js_xs_sanguosha_JsbConnecter_finalize+1 @ 0026e04d
js_xs_sanguosha_JsbConnecter_getClassTypeInfo @ 0026e98c
_Z45js_xs_sanguosha_JsbConnecter_getClassTypeInfoP9JSContextjPN2JS5ValueE @ 0026e98c
js_xs_sanguosha_JsbConnecter_setIdleTimerDisabled @ 00270748
_Z49js_xs_sanguosha_JsbConnecter_setIdleTimerDisabledP9JSContextjPN2JS5ValueE @ 00270748
js_xs_sanguosha_JsbConnecter_invoke @ 00270850
_Z35js_xs_sanguosha_JsbConnecter_invokeP9JSContextjPN2JS5ValueE @ 00270850
js_xs_sanguosha_JsbConnecter_init @ 002709e0
_Z33js_xs_sanguosha_JsbConnecter_initP9JSContextjPN2JS5ValueE @ 002709e0
js_xs_sanguosha_JsbConnecter_getName @ 00270a8c
_Z36js_xs_sanguosha_JsbConnecter_getNameP9JSContextjPN2JS5ValueE @ 00270a8c
js_register_xs_sanguosha_JsbConnecter @ 00270b8c
_Z37js_register_xs_sanguosha_JsbConnecterP9JSContextP8JSObject @ 00270b8c
js_get_type_from_native<JsbConnecter> @ 00272bbc
_Z23js_get_type_from_nativeI12JsbConnecterEP13js_type_classPT_ @ 00272bbc
js_get_or_create_proxy<JsbConnecter> @ 00272d44
_Z22js_get_or_create_proxyI12JsbConnecterEP8js_proxyP9JSContextPT_ @ 00272d44
js_xs_sanguosha_JsbConnecter_getInstance @ 00272e30
_Z40js_xs_sanguosha_JsbConnecter_getInstanceP9JSContextjPN2JS5ValueE @ 00272e30
s_JsbConnecter_00add6d2 @ 00add6d2
s_JsbConnecter::invoke_end_%s,%s,%_00addc7a @ 00addc7a
_ZTS12JsbConnecter @ 00af487f
s_js_xs_sanguosha_JsbConnecter_get_00af4aba @ 00af4aba
s_js_xs_sanguosha_JsbConnecter_set_00af4f71 @ 00af4f71
s_js_xs_sanguosha_JsbConnecter_inv_00af4fa3 @ 00af4fa3
s_js_xs_sanguosha_JsbConnecter_ini_00af4fc7 @ 00af4fc7
s_js_xs_sanguosha_JsbConnecter_get_00af4fe9 @ 00af4fe9
_ZTV12JsbConnecter @ 00bcda98
_ZTI12JsbConnecter @ 00bcdaa8
PTR__ZTV12JsbConnecter_00c0009c @ 00c0009c
PTR_jsb_JsbConnecter_class_00c00120 @ 00c00120
PTR_js_xs_sanguosha_JsbConnecter_finalize+1_00c00138 @ 00c00138
PTR_jsb_JsbConnecter_prototype_00c0013c @ 00c0013c
_ZGVZN12JsbConnecter16getClassTypeInfoEvE2id @ 00c2bf20
_ZZN12JsbConnecter16getClassTypeInfoEvE2id @ 00c2bf24
jsb_JsbConnecter_prototype @ 00c2c290
jsb_JsbConnecter_class @ 00c2c294
_ZGVZN8TypeTestI12JsbConnecterE4s_idEvE2id @ 00c2c298
_ZZN8TypeTestI12JsbConnecterE4s_idEvE2id @ 00c2c29c

/* ===== BFButton @ 00277c80 ===== */
/* signature: undefined __thiscall BFButton(BFButton * this) */

/* BFButton::BFButton() */

BFButton * __thiscall BFButton::BFButton(BFButton *this)

{
  int iVar1;
  
  cocos2d::extension::CCControlButton::CCControlButton((CCControlButton *)this);
  iVar1 = *(int *)(DAT_00277cd4 + 0x277c92);
  *(int *)this = iVar1 + 8;
  *(int *)(this + 0xe4) = iVar1 + 800;
  *(int *)(this + 0xe8) = iVar1 + 0x350;
  *(int *)(this + 0xec) = iVar1 + 0x35c;
  *(int *)(this + 0x108) = iVar1 + 0x36c;
  this[0x17c] = (BFButton)0x0;
  this[DAT_00277cd8] = (BFButton)0x1;
  this[0x17e] = (BFButton)0x0;
  this[DAT_00277cdc] = (BFButton)0x0;
  return this;
}



/* ===== BFCardView @ 00278ae8 ===== */
/* signature: undefined __thiscall BFCardView(BFCardView * this) */

/* BFCardView::BFCardView() */

BFCardView * __thiscall BFCardView::BFCardView(BFCardView *this)

{
  int iVar1;
  
  cocos2d::extension::CCTableView::CCTableView((CCTableView *)this);
  iVar1 = *(int *)(DAT_00278b5c + 0x278afa);
  *(int *)this = iVar1 + 8;
  *(int *)(this + 0xe4) = iVar1 + 0x228;
  *(int *)(this + 0xe8) = iVar1 + 600;
  *(int *)(this + 0xec) = iVar1 + 0x264;
  *(int *)(this + 0x1ac) = iVar1 + 0x274;
  *(undefined4 *)(this + 0x1dc) = 0;
  *(undefined4 *)(this + 0x1e4) = 0;
  *(undefined4 *)(this + 0x1e8) = 0;
  *(undefined4 *)(this + 0x1ec) = 0;
  *(undefined4 *)(this + 0x1f0) = 0;
  *(undefined4 *)(this + 500) = 0;
  *(undefined4 *)(this + 0x1f8) = 0;
  this[0x1fc] = (BFCardView)0x0;
  return this;
}



/* ===== BFControlSlider @ 002781d4 ===== */
/* signature: undefined __thiscall BFControlSlider(BFControlSlider * this) */

/* BFControlSlider::BFControlSlider() */

BFControlSlider * __thiscall BFControlSlider::BFControlSlider(BFControlSlider *this)

{
  int iVar1;
  
  cocos2d::extension::CCControlSlider::CCControlSlider((CCControlSlider *)this);
  iVar1 = *(int *)(DAT_00278224 + 0x2781e6);
  *(int *)this = iVar1 + 8;
  *(int *)(this + 0xe4) = iVar1 + 0x2c0;
  *(int *)(this + 0xe8) = iVar1 + 0x2f0;
  *(int *)(this + 0xec) = iVar1 + 0x2fc;
  *(int *)(this + 0x108) = iVar1 + 0x30c;
  iVar1 = DAT_00278228;
  *(undefined4 *)(this + 0x15c) = 0;
  *(undefined4 *)(iVar1 + 0x27821a) = 0;
  *(undefined4 *)(iVar1 + 0x27821e) = 0;
  return this;
}



/* ===== BFSortTableWidget @ 00279ab0 ===== */
/* signature: undefined __thiscall BFSortTableWidget(BFSortTableWidget * this) */

/* BFSortTableWidget::BFSortTableWidget() */

BFSortTableWidget * __thiscall BFSortTableWidget::BFSortTableWidget(BFSortTableWidget *this)

{
  int iVar1;
  
  cocos2d::CCLayer::CCLayer((CCLayer *)this);
  iVar1 = *(int *)(DAT_00279b00 + 0x279ac2);
  *(int *)this = iVar1 + 8;
  *(int *)(this + 0xe4) = iVar1 + 0x228;
  *(int *)(this + 0xe8) = iVar1 + 600;
  *(int *)(this + 0xec) = iVar1 + 0x264;
  *(int *)(this + 0x108) = iVar1 + 0x274;
  *(int *)(this + 0x10c) = iVar1 + 0x29c;
  *(undefined4 *)(this + 0x110) = 0;
  *(undefined4 *)(this + 0x114) = 0;
  *(undefined4 *)(this + 0x118) = 0;
  *(undefined4 *)(this + 0x11c) = 0;
  return this;
}



/* ===== BFWebView @ 00279d34 ===== */
/* signature: undefined __thiscall BFWebView(BFWebView * this) */

/* BFWebView::BFWebView() */

BFWebView * __thiscall BFWebView::BFWebView(BFWebView *this)

{
  cocos2d::CCNode::CCNode((CCNode *)this);
  *(int *)this = *(int *)(DAT_00279d6c + 0x279d46) + 8;
  *(undefined4 *)(this + 0xe4) = 0;
  this[0xec] = (BFWebView)0x0;
  this[0xed] = (BFWebView)0x1;
  init(this);
  return this;
}



/* ===== BFWebViewImp @ 002696ac ===== */
/* signature: undefined __thiscall BFWebViewImp(BFWebViewImp * this) */

/* BFWebViewImp::BFWebViewImp() */

undefined8 __thiscall BFWebViewImp::BFWebViewImp(BFWebViewImp *this)

{
  BFWebViewImp *apBStack_20 [3];
  
  apBStack_20[0] = this;
  cocos2d::CCObject::CCObject((CCObject *)this);
  *(int *)this = *(int *)(DAT_00269718 + 0x2696be) + 8;
  *(undefined4 *)(this + 0x14) = 0;
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x18));
  cocos2d::CCPoint::CCPoint((CCPoint *)(this + 0x20));
  cocos2d::CCSize::CCSize((CCSize *)(this + 0x28));
  cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::getVisibleSize();
  cocos2d::CCSize::operator=((CCSize *)(this + 0x28),(CCSize *)apBStack_20);
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x20),(CCPoint *)(DAT_0026971c + 0x2696fc));
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x18),(CCPoint *)(DAT_00269720 + 0x269706));
  return CONCAT44(apBStack_20[0],this);
}



/* ===== _ZN10BFCardView10reloadDataEv @ 00279010 ===== */
/* signature: undefined __stdcall reloadData(void) */

/* BFCardView::reloadData() */

undefined8 BFCardView::reloadData(void)

{
  CCScrollView *in_r0;
  int iVar1;
  CCArray *this;
  undefined4 *in_r1;
  int *piVar2;
  int iVar3;
  _Rb_tree<unsigned_int,unsigned_int,std::_Identity<unsigned_int>,std::less<unsigned_int>,std::allocator<unsigned_int>>
  *this_00;
  CCObject *this_01;
  undefined4 *puVar4;
  undefined4 *local_1c;
  
  *(undefined4 *)(DAT_0027911c + 0x279020) = 0;
  *(undefined4 *)(in_r0 + 0x1d8) = 0xffffffff;
  local_1c = in_r1;
  if (*(int *)(in_r0 + 0x1c8) != 0) {
    piVar2 = *(int **)(*(int *)(in_r0 + 0x1c8) + 0x14);
    iVar3 = *piVar2;
    if (iVar3 != 0) {
      puVar4 = (undefined4 *)piVar2[2];
      local_1c = puVar4 + iVar3 + -1;
      while (puVar4 <= local_1c) {
        this_01 = (CCObject *)*puVar4;
        puVar4 = puVar4 + 1;
        if (this_01 == (CCObject *)0x0) break;
        piVar2 = *(int **)(in_r0 + 0x1d4);
        if (piVar2 != (int *)0x0) {
          (**(code **)(*piVar2 + 0x1c))(piVar2,in_r0,this_01);
        }
        cocos2d::CCArray::addObject(*(CCArray **)(in_r0 + 0x1cc),this_01);
        cocos2d::extension::CCTableViewCell::reset((CCTableViewCell *)this_01);
        iVar3 = (**(code **)(*(int *)this_01 + 0xe4))(this_01);
        iVar1 = cocos2d::extension::CCScrollView::getContainer(in_r0);
        if (iVar3 == iVar1) {
          piVar2 = (int *)cocos2d::extension::CCScrollView::getContainer(in_r0);
          (**(code **)(*piVar2 + 0xf4))(piVar2,this_01,1);
        }
      }
    }
  }
  this_00 = *(_Rb_tree<unsigned_int,unsigned_int,std::_Identity<unsigned_int>,std::less<unsigned_int>,std::allocator<unsigned_int>>
              **)(in_r0 + 0x1b8);
  std::
  _Rb_tree<unsigned_int,unsigned_int,std::_Identity<unsigned_int>,std::less<unsigned_int>,std::allocator<unsigned_int>>
  ::_M_erase(this_00,*(_Rb_tree_node **)(this_00 + 8));
  *(undefined4 *)(this_00 + 8) = 0;
  *(undefined4 *)(this_00 + 0x14) = 0;
  *(_Rb_tree<unsigned_int,unsigned_int,std::_Identity<unsigned_int>,std::less<unsigned_int>,std::allocator<unsigned_int>>
    **)(this_00 + 0xc) = this_00 + 4;
  *(_Rb_tree<unsigned_int,unsigned_int,std::_Identity<unsigned_int>,std::less<unsigned_int>,std::allocator<unsigned_int>>
    **)(this_00 + 0x10) = this_00 + 4;
  cocos2d::CCObject::release(*(CCObject **)(in_r0 + 0x1c8));
  this = operator_new(0x18);
  cocos2d::CCArray::CCArray(this);
  *(int *)this = *(int *)(DAT_00279120 + 0x2790d8) + 8;
  *(CCArray **)(in_r0 + 0x1c8) = this;
  cocos2d::extension::CCTableView::_updateCellPositions((CCTableView *)in_r0);
  cocos2d::extension::CCTableView::_updateContentSize((CCTableView *)in_r0);
  iVar3 = (**(code **)(**(int **)(in_r0 + 0x1d0) + 0x14))(*(int **)(in_r0 + 0x1d0),in_r0);
  if (iVar3 != 0) {
    (**(code **)(*(int *)in_r0 + 0x20c))(in_r0,in_r0);
  }
  return CONCAT44(local_1c,in_r0);
}



/* ===== _ZN10BFCardView12adjustOffsetEv @ 00278bec ===== */
/* signature: undefined __thiscall adjustOffset(BFCardView * this) */

/* BFCardView::adjustOffset() */

void __thiscall BFCardView::adjustOffset(BFCardView *this)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 extraout_r1;
  CCPoint *pCVar4;
  undefined4 uVar5;
  undefined8 uVar6;
  undefined4 local_50;
  undefined4 local_48;
  undefined4 local_40 [2];
  CCPoint aCStack_38 [8];
  CCPoint aCStack_30 [8];
  undefined4 local_28 [2];
  CCPoint aCStack_20 [12];
  
  cocos2d::extension::CCScrollView::getContentOffset();
  iVar1 = __aeabi_fcmple(local_50,0);
  if (iVar1 != 0) {
    cocos2d::extension::CCScrollView::getContentOffset();
    (**(code **)(*(int *)this + 0x200))(local_40,this);
    iVar1 = __aeabi_fcmpge(local_48,local_40[0]);
    if (iVar1 != 0) {
      uVar5 = *(undefined4 *)(this + 0x1e8);
      iVar1 = __fixsfsi(local_50);
      uVar2 = __fixsfsi(uVar5);
      __aeabi_idivmod(iVar1 + (iVar1 >> 0x1f) ^ iVar1 >> 0x1f,uVar2);
      uVar2 = __floatsisf(extraout_r1);
      uVar3 = __mulsf3(uVar5,0x3f000000);
      iVar1 = __aeabi_fcmpgt(uVar2,uVar3);
      if (iVar1 == 0) {
        uVar6 = __addsf3(local_50,uVar2);
        cocos2d::CCPoint::CCPoint(aCStack_30,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
        pCVar4 = aCStack_30;
      }
      else {
        uVar2 = __subsf3(uVar5,uVar2);
        uVar2 = __subsf3(local_50,uVar2);
        uVar6 = __subsf3(uVar2,0x3f800000);
        cocos2d::CCPoint::CCPoint(aCStack_38,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
        pCVar4 = aCStack_38;
      }
      goto LAB_00278ccc;
    }
  }
  (**(code **)(*(int *)this + 0x200))(local_28,this);
  uVar6 = __addsf3(local_28[0],0x3f800000);
  cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  pCVar4 = aCStack_20;
LAB_00278ccc:
  cocos2d::extension::CCScrollView::setContentOffsetInDuration(this,pCVar4,DAT_00278cd8);
  return;
}



/* ===== _ZN10BFCardView12ccTouchEndedEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00278cf0 ===== */
/* signature: undefined __stdcall ccTouchEnded(CCTouch * param_1, CCEvent * param_2) */

/* BFCardView::ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void BFCardView::ccTouchEnded(CCTouch *param_1,CCEvent *param_2)

{
  int iVar1;
  undefined4 uVar2;
  CCFiniteTimeAction *pCVar3;
  CCAction *pCVar4;
  float extraout_s0;
  undefined4 local_30;
  undefined4 local_28 [2];
  undefined4 local_20;
  
  cocos2d::extension::CCTableView::ccTouchEnded(param_1,param_2);
  if (param_1[0x1fc] == (CCTouch)0x0) {
    cocos2d::extension::CCScrollView::getContentOffset();
    (**(code **)(*(int *)param_1 + 0x200))(local_28,param_1);
    iVar1 = __aeabi_fcmple(local_30,local_28[0]);
    if (iVar1 == 0) {
      cocos2d::extension::CCScrollView::getContentOffset();
      iVar1 = __aeabi_fcmplt(local_20,0);
      if (iVar1 != 0) {
        cocos2d::CCNode::unscheduleAllSelectors((CCNode *)param_1);
        adjustOffset((BFCardView *)param_1);
        uVar2 = cocos2d::CCCallFunc::create
                          ((CCCallFunc *)param_1,*(CCObject **)(DAT_00278d8c + 0x278d6c),
                           (_func_void *)0x0);
        pCVar3 = (CCFiniteTimeAction *)cocos2d::CCDelayTime::create(extraout_s0);
        pCVar4 = (CCAction *)cocos2d::CCSequence::create(pCVar3,uVar2,0);
        cocos2d::CCNode::runAction((CCNode *)param_1,pCVar4);
      }
    }
    else {
      cocos2d::CCNode::unscheduleAllSelectors((CCNode *)param_1);
      adjustOffset((BFCardView *)param_1);
      adjustFirstCell((BFCardView *)param_1);
    }
  }
  else {
    param_1[0x1fc] = (CCTouch)0x0;
  }
  return;
}



/* ===== _ZN10BFCardView15adjustFirstCellEv @ 00277e36 ===== */
/* signature: undefined __thiscall adjustFirstCell(BFCardView * this) */

/* BFCardView::adjustFirstCell() */

void __thiscall BFCardView::adjustFirstCell(BFCardView *this)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  int iVar6;
  code *pcVar7;
  undefined4 uVar8;
  undefined4 extraout_s0;
  undefined4 extraout_s1;
  undefined8 uVar9;
  undefined4 local_30;
  undefined4 local_28;
  CCPoint aCStack_20 [12];
  
  cocos2d::extension::CCScrollView::getContentOffset();
  cocos2d::extension::CCScrollView::getContentOffset();
  iVar1 = __aeabi_fcmple(local_28,0);
  if (iVar1 != 0) {
    iVar1 = *(int *)(this + 500);
    iVar4 = *(int *)(this + 0x1bc);
    uVar2 = __floatsisf();
    uVar2 = __mulsf3(uVar2,*(undefined4 *)(this + 0x1e8));
    *(undefined4 *)(iVar1 * 4 + iVar4) = uVar2;
    uVar5 = *(uint *)(this + 500);
    iVar1 = (**(code **)(**(int **)(this + 0x1d0) + 0x14))(*(int **)(this + 0x1d0),this);
    if (uVar5 < iVar1 - 1U) {
      iVar1 = *(int *)(this + 500);
      iVar4 = *(int *)(this + 0x1bc);
      uVar8 = *(undefined4 *)(this + 0x1e8);
      uVar2 = __floatsisf();
      uVar2 = __mulsf3(uVar2,uVar8);
      uVar8 = __mulsf3(uVar8,*(undefined4 *)(this + 0x1e4));
      uVar2 = __addsf3(uVar2,uVar8);
      *(undefined4 *)((iVar1 + 1) * 4 + iVar4) = uVar2;
    }
    piVar3 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1c8),0);
    if (piVar3 != (int *)0x0) {
      iVar6 = *(int *)(this + 500);
      iVar4 = *(int *)(this + 0x1bc);
      iVar1 = __fixsfsi(local_30);
      uVar2 = __floatsisf(iVar1 + (iVar1 >> 0x1f) ^ iVar1 >> 0x1f);
      uVar2 = __subsf3(*(undefined4 *)(iVar6 * 4 + iVar4),uVar2);
      iVar1 = __aeabi_fcmpge(uVar2,0);
      uVar9 = CONCAT44(extraout_s1,extraout_s0);
      if (iVar1 != 0) {
        uVar9 = (**(code **)(*piVar3 + 0x40))(piVar3,*(undefined4 *)(this + 0x1dc));
      }
      pcVar7 = *(code **)(*piVar3 + 0x4c);
      cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar9,(float)((ulonglong)uVar9 >> 0x20));
      (*pcVar7)(piVar3,aCStack_20);
    }
  }
  return;
}



/* ===== _ZN10BFCardView15setScrollSliderEf @ 00278ddc ===== */
/* signature: undefined __thiscall setScrollSlider(BFCardView * this, float param_1) */

/* BFCardView::setScrollSlider(float) */

undefined8 __thiscall BFCardView::setScrollSlider(BFCardView *this,float param_1)

{
  int in_r1;
  undefined8 uVar1;
  BFCardView *pBStack_10;
  int iStack_c;
  
  pBStack_10 = this;
  iStack_c = in_r1;
  uVar1 = __mulsf3(in_r1 + -0x80000000,*(undefined4 *)(this + 0x1e8));
  cocos2d::CCPoint::CCPoint((CCPoint *)&pBStack_10,(float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  cocos2d::extension::CCScrollView::setContentOffset((CCScrollView *)this,(CCPoint *)&pBStack_10,0);
  return CONCAT44(iStack_c,pBStack_10);
}



/* ===== _ZN10BFCardView17onSliderMoveEndedEv @ 00278e90 ===== */
/* signature: undefined __thiscall onSliderMoveEnded(BFCardView * this) */

/* BFCardView::onSliderMoveEnded() */

void __thiscall BFCardView::onSliderMoveEnded(BFCardView *this)

{
  int iVar1;
  int *piVar2;
  uint uVar3;
  undefined4 uVar4;
  CCFiniteTimeAction *pCVar5;
  CCAction *pCVar6;
  undefined4 uVar7;
  int iVar8;
  uint uVar9;
  float extraout_s0;
  undefined4 local_40;
  undefined4 local_38 [2];
  undefined4 local_30;
  undefined4 local_28;
  
  cocos2d::extension::CCScrollView::getContentOffset();
  (**(code **)(*(int *)this + 0x200))(local_38,this);
  iVar1 = __aeabi_fcmple(local_40,local_38[0]);
  if (iVar1 == 0) {
    cocos2d::extension::CCScrollView::getContentOffset();
    iVar1 = __aeabi_fcmplt(local_30,0);
    if (iVar1 == 0) {
      cocos2d::extension::CCScrollView::getContentOffset();
      iVar1 = __aeabi_fcmpeq(local_28,0);
      uVar9 = 0;
      if (iVar1 == 0) {
        return;
      }
      for (; uVar3 = cocos2d::CCArray::count(*(CCArray **)(this + 0x1c8)), uVar9 < uVar3;
          uVar9 = uVar9 + 1) {
        piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x1c8),uVar9);
        if (uVar9 == 0) {
          (**(code **)(*piVar2 + 0x40))(piVar2,*(undefined4 *)(this + 0x1dc));
        }
        else {
          (**(code **)(*piVar2 + 0x40))(piVar2,*(undefined4 *)(this + 0x1e0));
          iVar1 = *(int *)(this + 500);
          uVar7 = *(undefined4 *)(this + 0x1e8);
          iVar8 = *(int *)(this + 0x1bc);
          uVar4 = __floatsisf();
          uVar4 = __mulsf3(uVar7,uVar4);
          uVar7 = __mulsf3(uVar7,*(undefined4 *)(this + 0x1e4));
          uVar4 = __addsf3(uVar4,uVar7);
          *(undefined4 *)((uVar9 + iVar1) * 4 + iVar8) = uVar4;
          cocos2d::extension::CCTableView::_setIndexForCell
                    ((uint)this,(CCTableViewCell *)(uVar9 + *(int *)(this + 500)));
        }
      }
    }
    else {
      cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
    }
    adjustOffset(this);
    uVar4 = cocos2d::CCCallFunc::create
                      ((CCCallFunc *)this,*(CCObject **)(DAT_00278fc0 + 0x278f9e),(_func_void *)0x0)
    ;
    pCVar5 = (CCFiniteTimeAction *)cocos2d::CCDelayTime::create(extraout_s0);
    pCVar6 = (CCAction *)cocos2d::CCSequence::create(pCVar5,uVar4,0);
    cocos2d::CCNode::runAction((CCNode *)this,pCVar6);
  }
  else {
    cocos2d::CCNode::unscheduleAllSelectors((CCNode *)this);
    adjustOffset(this);
    adjustFirstCell(this);
  }
  return;
}



/* ===== _ZN10BFCardView17setCardViewSelIdxEi @ 00278d94 ===== */
/* signature: undefined __thiscall setCardViewSelIdx(BFCardView * this, int param_1) */

/* BFCardView::setCardViewSelIdx(int) */

undefined8 __thiscall BFCardView::setCardViewSelIdx(BFCardView *this,int param_1)

{
  undefined4 uVar1;
  undefined8 uVar2;
  BFCardView *pBStack_10;
  int iStack_c;
  
  pBStack_10 = this;
  iStack_c = param_1;
  uVar1 = __floatsisf(-param_1);
  uVar1 = __mulsf3(uVar1,*(undefined4 *)(this + 0x1e8));
  uVar2 = __addsf3(uVar1,0x3f800000);
  cocos2d::CCPoint::CCPoint((CCPoint *)&pBStack_10,(float)uVar2,(float)((ulonglong)uVar2 >> 0x20));
  cocos2d::extension::CCScrollView::setContentOffset((CCScrollView *)this,(CCPoint *)&pBStack_10,0);
  (**(code **)(*(int *)this + 0x20c))(this,this);
  this[0x1fc] = (BFCardView)0x1;
  return CONCAT44(iStack_c,pBStack_10);
}



/* ===== _ZN10BFCardView17setCellScaleValueEff @ 00278bc4 ===== */
/* signature: undefined __stdcall setCellScaleValue(float param_1, float param_2) */

/* BFCardView::setCellScaleValue(float, float) */

void BFCardView::setCellScaleValue(float param_1,float param_2)

{
  int in_r0;
  undefined4 uVar1;
  undefined4 in_r1;
  undefined4 in_r2;
  
  *(undefined4 *)(in_r0 + 0x1dc) = in_r1;
  *(undefined4 *)(in_r0 + 0x1e0) = in_r2;
  uVar1 = __subsf3(in_r1,in_r2);
  uVar1 = __divsf3(uVar1,in_r2);
  *(undefined4 *)(in_r0 + 0x1e4) = uVar1;
  return;
}



/* ===== _ZN10BFCardView18minContainerOffsetEv @ 00277f40 ===== */
/* signature: undefined __stdcall minContainerOffset(void) */

/* BFCardView::minContainerOffset() */

CCPoint * BFCardView::minContainerOffset(void)

{
  CCPoint *in_r0;
  undefined4 uVar1;
  undefined4 *puVar2;
  undefined4 uVar3;
  int iVar4;
  int in_r1;
  undefined4 uVar5;
  undefined8 uVar6;
  CCSize aCStack_20 [4];
  undefined4 local_1c;
  
  uVar1 = __mulsf3(*(undefined4 *)(in_r1 + 0x1e8),*(undefined4 *)(in_r1 + 0x1dc));
  uVar1 = __divsf3(uVar1,*(undefined4 *)(in_r1 + 0x1e0));
  puVar2 = (undefined4 *)(**(code **)(**(int **)(in_r1 + 0x128) + 0x8c))();
  uVar5 = *puVar2;
  uVar3 = (**(code **)(**(int **)(in_r1 + 0x128) + 0x34))();
  uVar3 = __mulsf3(uVar5,uVar3);
  __subsf3(uVar1,uVar3);
  cocos2d::CCSize::CCSize(aCStack_20,(CCSize *)(in_r1 + 0x15c));
  iVar4 = (**(code **)(**(int **)(in_r1 + 0x128) + 0x8c))();
  uVar3 = *(undefined4 *)(iVar4 + 4);
  uVar1 = (**(code **)(**(int **)(in_r1 + 0x128) + 0x3c))();
  uVar1 = __mulsf3(uVar3,uVar1);
  uVar6 = __subsf3(local_1c,uVar1);
  cocos2d::CCPoint::CCPoint(in_r0,(float)uVar6,(float)((ulonglong)uVar6 >> 0x20));
  return in_r0;
}



/* ===== _ZN10BFCardView19onSliderValueChangeEff @ 00278e08 ===== */
/* signature: undefined __stdcall onSliderValueChange(float param_1, float param_2) */

/* BFCardView::onSliderValueChange(float, float) */

void BFCardView::onSliderValueChange(float param_1,float param_2)

{
  BFCardView *in_r0;
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  undefined4 in_r1;
  undefined4 in_r2;
  undefined4 *puVar4;
  float extraout_s0;
  
  iVar1 = (**(code **)(**(int **)(in_r0 + 0x1d0) + 0x14))(*(int **)(in_r0 + 0x1d0),in_r0);
  if (0 < iVar1) {
    uVar2 = __divsf3(in_r1,in_r2);
    puVar4 = (undefined4 *)(DAT_00278e60 + 0x278e38);
    (**(code **)(**(int **)(in_r0 + 0x1d0) + 0x14))(*(int **)(in_r0 + 0x1d0),in_r0);
    uVar3 = __floatsisf();
    uVar2 = __mulsf3(uVar2,uVar3);
    iVar1 = __aeabi_fcmpeq(uVar2,*puVar4);
    if (iVar1 == 0) {
      setScrollSlider(in_r0,extraout_s0);
      *puVar4 = uVar2;
    }
  }
  return;
}



/* ===== _ZN10BFCardView19scrollViewDidScrollEPN7cocos2d9extension12CCScrollViewE @ 002782e0 ===== */
/* signature: undefined __stdcall scrollViewDidScroll(CCScrollView * param_1) */

/* BFCardView::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void BFCardView::scrollViewDidScroll(CCScrollView *param_1)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  CCTableViewCell *pCVar5;
  uint uVar6;
  uint uVar7;
  undefined4 *puVar8;
  int iVar9;
  int iVar10;
  CCTableViewCell *pCVar11;
  int iVar12;
  int extraout_r1;
  undefined4 extraout_r1_00;
  code *pcVar13;
  undefined4 uVar14;
  undefined4 uVar15;
  uint uVar16;
  undefined4 uVar17;
  float fVar18;
  float extraout_s0;
  float extraout_s1;
  uint local_a0;
  uint local_98;
  uint local_8c;
  undefined4 local_88;
  undefined4 local_84;
  CCPoint aCStack_78 [8];
  CCPoint aCStack_70 [8];
  int local_68;
  undefined4 local_60;
  undefined4 local_58;
  int local_50;
  undefined4 local_48;
  undefined4 local_40;
  undefined4 local_38 [2];
  CCPoint aCStack_30 [8];
  undefined4 local_28;
  undefined4 local_24;
  CCSize aCStack_20 [12];
  
  iVar1 = (**(code **)(**(int **)(param_1 + 0x1d0) + 0x14))(*(int **)(param_1 + 0x1d0),param_1);
  if (iVar1 == 0) {
    return;
  }
  piVar2 = *(int **)(param_1 + 0x1d4);
  if (piVar2 != (int *)0x0) {
    (**(code **)(*piVar2 + 8))(piVar2,param_1);
  }
  fVar18 = (float)cocos2d::extension::CCScrollView::getContentOffset();
  cocos2d::CCPoint::operator*((CCPoint *)&local_88,fVar18);
  uVar16 = iVar1 - 1;
  if (*(int *)(param_1 + 0x1b4) == 0) {
    uVar15 = *(undefined4 *)(param_1 + 0x160);
    piVar2 = (int *)cocos2d::extension::CCScrollView::getContainer(param_1);
    uVar3 = (**(code **)(*piVar2 + 0x3c))();
    uVar3 = __divsf3(uVar15,uVar3);
    local_84 = __addsf3(local_84,uVar3);
  }
  cocos2d::CCPoint::CCPoint(aCStack_78,(CCPoint *)&local_88);
  local_8c = cocos2d::extension::CCTableView::_indexFromOffset((CCTableView *)param_1,aCStack_78);
  uVar3 = local_84;
  if (local_8c == 0xffffffff) {
    local_8c = uVar16;
  }
  uVar15 = *(undefined4 *)(param_1 + 0x160);
  if (*(int *)(param_1 + 0x1b4) == 0) {
    piVar2 = (int *)cocos2d::extension::CCScrollView::getContainer(param_1);
    uVar4 = (**(code **)(*piVar2 + 0x3c))();
    uVar15 = __divsf3(uVar15,uVar4);
    local_84 = __subsf3(uVar3,uVar15);
  }
  else {
    piVar2 = (int *)cocos2d::extension::CCScrollView::getContainer(param_1);
    uVar4 = (**(code **)(*piVar2 + 0x3c))();
    uVar15 = __divsf3(uVar15,uVar4);
    local_84 = __addsf3(uVar3,uVar15);
  }
  uVar15 = *(undefined4 *)(param_1 + 0x15c);
  piVar2 = (int *)cocos2d::extension::CCScrollView::getContainer(param_1);
  uVar3 = (**(code **)(*piVar2 + 0x34))();
  uVar3 = __divsf3(uVar15,uVar3);
  local_88 = __addsf3(local_88,uVar3);
  cocos2d::CCPoint::CCPoint(aCStack_70,(CCPoint *)&local_88);
  local_98 = cocos2d::extension::CCTableView::_indexFromOffset((CCTableView *)param_1,aCStack_70);
  if (local_98 == 0xffffffff) {
    local_98 = uVar16;
  }
  iVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8));
  if (iVar1 != 0) {
    pCVar5 = (CCTableViewCell *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_1 + 0x1c8),0);
    uVar6 = cocos2d::extension::CCTableViewCell::getIdx(pCVar5);
    while (uVar6 < local_8c) {
      cocos2d::extension::CCTableView::_moveCellOutOfSight((CCTableView *)param_1,pCVar5);
      (**(code **)(*(int *)pCVar5 + 0x40))(pCVar5,*(undefined4 *)(param_1 + 0x1e0));
      iVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8));
      if (iVar1 == 0) break;
      pCVar5 = (CCTableViewCell *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_1 + 0x1c8),0);
      uVar6 = cocos2d::extension::CCTableViewCell::getIdx(pCVar5);
    }
  }
  iVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8));
  uVar6 = local_8c;
  if (iVar1 != 0) {
    pCVar5 = (CCTableViewCell *)cocos2d::CCArray::lastObject(*(CCArray **)(param_1 + 0x1c8));
    uVar7 = cocos2d::extension::CCTableViewCell::getIdx(pCVar5);
    while ((local_98 < uVar7 && (uVar7 <= uVar16))) {
      cocos2d::extension::CCTableView::_moveCellOutOfSight((CCTableView *)param_1,pCVar5);
      (**(code **)(*(int *)pCVar5 + 0x40))(pCVar5,*(undefined4 *)(param_1 + 0x1e0));
      iVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8));
      if (iVar1 == 0) break;
      pCVar5 = (CCTableViewCell *)cocos2d::CCArray::lastObject(*(CCArray **)(param_1 + 0x1c8));
      uVar7 = cocos2d::extension::CCTableViewCell::getIdx(pCVar5);
    }
  }
  for (; uVar6 <= local_98; uVar6 = uVar6 + 1) {
    iVar12 = *(int *)(param_1 + 0x1b8);
    iVar10 = iVar12 + 4;
    iVar1 = iVar10;
    iVar9 = *(int *)(iVar12 + 8);
    while (iVar9 != 0) {
      if (*(uint *)(iVar9 + 0x10) < uVar6) {
        iVar9 = *(int *)(iVar9 + 0xc);
      }
      else {
        iVar1 = iVar9;
        iVar9 = *(int *)(iVar9 + 8);
      }
    }
    if ((iVar1 != iVar10) && (uVar6 < *(uint *)(iVar1 + 0x10))) {
      iVar1 = iVar10;
    }
    if (iVar1 == iVar12 + 4) {
      cocos2d::extension::CCTableView::updateCellAtIndex((CCTableView *)param_1,uVar6);
    }
  }
  cocos2d::extension::CCScrollView::getContentOffset();
  cocos2d::extension::CCScrollView::getContentOffset();
  puVar8 = (undefined4 *)(**(code **)(*(int *)param_1 + 0x8c))(param_1);
  uVar3 = __divsf3(local_60,*puVar8);
  iVar1 = __mulsf3(uVar3,DAT_00278658);
  *(int *)(param_1 + 0x1ec) = iVar1;
  iVar9 = __aeabi_fcmple(iVar1,0);
  if (iVar9 == 0) {
    *(undefined4 *)(param_1 + 0x1ec) = 0;
  }
  else {
    *(int *)(param_1 + 0x1ec) = iVar1 + -0x80000000;
  }
  if (*(int *)(param_1 + 0x1f0) != 0) {
    fVar18 = (float)__dynamic_cast(*(int *)(param_1 + 0x1f0),
                                   *(undefined4 *)(DAT_0027865c + 0x27855a),
                                   *(undefined4 *)(DAT_00278660 + 0x27855c),0);
    BFControlSlider::setValueNoNotify(fVar18);
  }
  if (*(int *)(param_1 + 0x1f8) != 0) {
    cocos2d::extension::CCScrollView::getContentOffset();
    iVar1 = __aeabi_fcmpgt(local_58,0);
    if (iVar1 == 0) {
      cocos2d::extension::CCScrollView::getContentOffset();
      __divsf3(local_50 + -0x80000000,*(undefined4 *)(param_1 + 0x1e8));
      iVar9 = __fixsfsi();
      cocos2d::extension::CCScrollView::getContentOffset();
      uVar3 = __fixsfsi(local_48);
      uVar4 = *(undefined4 *)(param_1 + 0x1e8);
      uVar15 = __fixsfsi(uVar4);
      __aeabi_idivmod(uVar3,uVar15);
      uVar3 = __floatsisf(1 - extraout_r1);
      uVar15 = __mulsf3(uVar4,0x3f000000);
      iVar10 = __aeabi_fcmpgt(uVar3,uVar15);
      iVar1 = iVar9 + 1;
      if (iVar10 == 0) {
        iVar1 = iVar9;
      }
      if (iVar1 != *(int *)(DAT_00278664 + 0x278606)) {
        (**(code **)(**(int **)(param_1 + 0x1f8) + 8))(*(int **)(param_1 + 0x1f8),iVar1);
      }
    }
    else {
      iVar1 = 0;
      (**(code **)(**(int **)(param_1 + 0x1f8) + 8))(*(int **)(param_1 + 0x1f8),0);
    }
    *(int *)(DAT_00278668 + 0x27861e) = iVar1;
  }
  iVar1 = __aeabi_fcmpeq(local_68,0);
  if (iVar1 == 0) {
    uVar3 = __mulsf3(*(undefined4 *)(param_1 + 0x1e8),*(undefined4 *)(param_1 + 0x1dc));
    uVar3 = __divsf3(uVar3,*(undefined4 *)(param_1 + 0x1e0));
    uVar3 = __divsf3(local_68,uVar3);
    iVar1 = __aeabi_fcmplt(uVar3,0);
    if (iVar1 != 0) {
      cocos2d::extension::CCScrollView::getContentOffset();
      (**(code **)(*(int *)param_1 + 0x200))(local_38,param_1);
      iVar1 = __aeabi_fcmpgt(local_40,local_38[0]);
      if (iVar1 != 0) {
        uVar3 = *(undefined4 *)(param_1 + 0x1e8);
        iVar1 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8));
        if (iVar1 == 0) {
          return;
        }
        uVar15 = __fixsfsi(local_68 + -0x80000000);
        uVar3 = __fixsfsi(uVar3);
        __aeabi_idivmod(uVar15,uVar3);
        uVar3 = __floatsisf(extraout_r1_00);
        piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_1 + 0x1c8),0);
        if (piVar2 != (int *)0x0) {
          pcVar13 = *(code **)(*piVar2 + 0x40);
          uVar14 = *(undefined4 *)(param_1 + 0x1dc);
          uVar17 = *(undefined4 *)(param_1 + 0x1e0);
          uVar15 = __divsf3(uVar3,*(undefined4 *)(param_1 + 0x1e8));
          uVar4 = __subsf3(uVar14,uVar17);
          uVar15 = __mulsf3(uVar15,uVar4);
          local_a0 = __subsf3(uVar14,uVar15);
          iVar1 = __aeabi_fcmplt(local_a0,uVar17);
          if (iVar1 != 0) {
            local_a0 = uVar17;
          }
          (*pcVar13)(piVar2,local_a0);
        }
        uVar16 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8));
        if (uVar16 < 2) {
          return;
        }
        piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_1 + 0x1c8),1);
        if (piVar2 != (int *)0x0) {
          pcVar13 = *(code **)(*piVar2 + 0x40);
          uVar14 = *(undefined4 *)(param_1 + 0x1e0);
          uVar17 = *(undefined4 *)(param_1 + 0x1dc);
          uVar15 = __divsf3(uVar3,*(undefined4 *)(param_1 + 0x1e8));
          uVar4 = __subsf3(uVar17,uVar14);
          uVar15 = __mulsf3(uVar15,uVar4);
          local_a0 = __addsf3(uVar14,uVar15);
          iVar1 = __aeabi_fcmpgt(local_a0,uVar17);
          if (iVar1 != 0) {
            local_a0 = uVar17;
          }
          (*pcVar13)(piVar2,local_a0);
        }
        uVar14 = *(undefined4 *)(param_1 + 0x1e8);
        iVar1 = *(int *)(param_1 + 0x1bc);
        uVar15 = __floatunsisf(local_8c);
        uVar15 = __mulsf3(uVar15,uVar14);
        uVar4 = __mulsf3(uVar14,*(undefined4 *)(param_1 + 0x1dc));
        uVar4 = __divsf3(uVar4,*(undefined4 *)(param_1 + 0x1e0));
        uVar15 = __addsf3(uVar15,uVar4);
        uVar3 = __divsf3(uVar3,uVar14);
        uVar3 = __mulsf3(uVar14,uVar3);
        uVar3 = __mulsf3(uVar3,*(undefined4 *)(param_1 + 0x1e4));
        uVar3 = __subsf3(uVar15,uVar3);
        *(undefined4 *)(iVar1 + (local_8c + 1) * 4) = uVar3;
        if (piVar2 != (int *)0x0) {
          pcVar13 = *(code **)(*piVar2 + 0x4c);
          cocos2d::CCPoint::CCPoint(aCStack_30,extraout_s0,extraout_s1);
          (*pcVar13)(piVar2,aCStack_30);
        }
        uVar16 = (**(code **)(**(int **)(param_1 + 0x1d0) + 0x14))
                           (*(int **)(param_1 + 0x1d0),param_1);
        if (0 < (int)uVar16) {
          cocos2d::CCSize::CCSize((CCSize *)&local_28);
          local_a0 = 0;
          uVar3 = 0;
          do {
            *(undefined4 *)(local_a0 * 4 + *(int *)(param_1 + 0x1bc)) = uVar3;
            if (local_a0 == local_98) {
              uVar15 = *(undefined4 *)(param_1 + 0x1e8);
              uVar3 = __floatunsisf(local_a0 + 1);
              uVar3 = __mulsf3(uVar3,uVar15);
              uVar15 = __mulsf3(uVar15,*(undefined4 *)(param_1 + 0x1e4));
            }
            else {
              (**(code **)(**(int **)(param_1 + 0x1d0) + 8))
                        (aCStack_20,*(int **)(param_1 + 0x1d0),param_1,local_a0);
              cocos2d::CCSize::operator=((CCSize *)&local_28,aCStack_20);
              uVar15 = local_24;
              if (*(int *)(param_1 + 0x118) == 0) {
                uVar15 = local_28;
              }
            }
            uVar3 = __addsf3(uVar3,uVar15);
            local_a0 = local_a0 + 1;
          } while (local_a0 != uVar16);
        }
        goto LAB_00278728;
      }
    }
    uVar3 = __mulsf3(*(undefined4 *)(param_1 + 0x1e8),*(undefined4 *)(param_1 + 0x1dc));
    uVar3 = __divsf3(uVar3,*(undefined4 *)(param_1 + 0x1e0));
    uVar3 = __divsf3(local_68,uVar3);
    iVar1 = __aeabi_fcmpge(uVar3,0);
    uVar16 = 0;
    if (iVar1 != 0) {
      for (; uVar6 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8)), uVar16 < uVar6;
          uVar16 = uVar16 + 1) {
        piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_1 + 0x1c8),uVar16);
        if (uVar16 == 0) {
          (**(code **)(*piVar2 + 0x40))(piVar2,*(undefined4 *)(param_1 + 0x1dc));
        }
        else {
          (**(code **)(*piVar2 + 0x40))(piVar2,*(undefined4 *)(param_1 + 0x1e0));
          iVar1 = *(int *)(param_1 + 0x1bc);
          uVar15 = *(undefined4 *)(param_1 + 0x1e8);
          pCVar5 = (CCTableViewCell *)(uVar16 + local_8c);
          uVar3 = __floatunsisf(pCVar5);
          uVar3 = __mulsf3(uVar15,uVar3);
          uVar15 = __mulsf3(uVar15,*(undefined4 *)(param_1 + 0x1e4));
          uVar3 = __addsf3(uVar3,uVar15);
          *(undefined4 *)((int)pCVar5 * 4 + iVar1) = uVar3;
          cocos2d::extension::CCTableView::_setIndexForCell((uint)param_1,pCVar5);
        }
      }
    }
  }
  else {
    piVar2 = (int *)cocos2d::extension::CCTableView::cellAtIndex((uint)param_1);
    if ((piVar2 != (int *)0x0) && (*(int *)(DAT_0027866c + 0x27863a) == 0)) {
      *(undefined4 *)(DAT_0027866c + 0x27863a) = 1;
      (**(code **)(*piVar2 + 0x40))(piVar2,*(undefined4 *)(param_1 + 0x1dc));
      for (iVar1 = 0; iVar1 < *(int *)(param_1 + 0x1c0) - *(int *)(param_1 + 0x1bc) >> 2;
          iVar1 = iVar1 + 1) {
        if (iVar1 != 0) {
          puVar8 = (undefined4 *)(*(int *)(param_1 + 0x1bc) + iVar1 * 4);
          uVar3 = __mulsf3(*(undefined4 *)(param_1 + 0x1e8),*(undefined4 *)(param_1 + 0x1e4));
          uVar3 = __addsf3(*puVar8,uVar3);
          *puVar8 = uVar3;
        }
      }
      for (pCVar5 = (CCTableViewCell *)0x0;
          pCVar11 = (CCTableViewCell *)cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8)),
          pCVar5 < pCVar11; pCVar5 = pCVar5 + 1) {
        piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_1 + 0x1c8),(uint)pCVar5)
        ;
        if (pCVar5 != (CCTableViewCell *)0x0) {
          (**(code **)(*piVar2 + 0x40))(piVar2,*(undefined4 *)(param_1 + 0x1e0));
          uVar15 = *(undefined4 *)(param_1 + 0x1e8);
          iVar1 = *(int *)(param_1 + 0x1bc);
          uVar3 = __floatunsisf();
          uVar3 = __mulsf3(uVar15,uVar3);
          uVar15 = __mulsf3(uVar15,*(undefined4 *)(param_1 + 0x1e4));
          uVar3 = __addsf3(uVar3,uVar15);
          *(undefined4 *)((int)(pCVar5 + local_8c) * 4 + iVar1) = uVar3;
          cocos2d::extension::CCTableView::_setIndexForCell((uint)param_1,pCVar5);
        }
      }
      cocos2d::extension::CCTableView::_updateContentSize((CCTableView *)param_1);
    }
  }
LAB_00278728:
  for (uVar16 = 0; uVar6 = cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x1c8)), uVar16 < uVar6;
      uVar16 = uVar16 + 1) {
    if (1 < (int)uVar16) {
      piVar2 = (int *)cocos2d::CCArray::objectAtIndex(*(CCArray **)(param_1 + 0x1c8),uVar16);
      (**(code **)(*piVar2 + 0x40))(piVar2,*(undefined4 *)(param_1 + 0x1e0));
      pCVar5 = (CCTableViewCell *)(uVar16 + local_8c);
      uVar15 = *(undefined4 *)(param_1 + 0x1e8);
      iVar1 = *(int *)(param_1 + 0x1bc);
      uVar3 = __floatunsisf(pCVar5);
      uVar3 = __mulsf3(uVar15,uVar3);
      uVar15 = __mulsf3(uVar15,*(undefined4 *)(param_1 + 0x1e4));
      uVar3 = __addsf3(uVar3,uVar15);
      *(undefined4 *)((int)pCVar5 * 4 + iVar1) = uVar3;
      cocos2d::extension::CCTableView::_setIndexForCell((uint)param_1,pCVar5);
    }
  }
  *(uint *)(param_1 + 500) = local_8c;
  return;
}



/* ===== _ZN10BFCardView19setCardViewDelegateEP14BFCardDelegate @ 00278fe8 ===== */
/* signature: undefined __thiscall setCardViewDelegate(BFCardView * this, BFCardDelegate * param_1) */

/* BFCardView::setCardViewDelegate(BFCardDelegate*) */

void __thiscall BFCardView::setCardViewDelegate(BFCardView *this,BFCardDelegate *param_1)

{
  *(BFCardDelegate **)(this + 0x1f8) = param_1;
  return;
}



/* ===== _ZN10BFCardView6createEPN7cocos2d9extension21CCTableViewDataSourceENS0_6CCSizeE @ 00278bae ===== */
/* signature: undefined __stdcall create(CCTableViewDataSource * param_1, CCSize param_2) */

/* BFCardView::create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize) */

void BFCardView::create(undefined4 param_1,CCSize *param_2)

{
  undefined4 uStack_10;
  CCSize *pCStack_c;
  
  uStack_10 = param_1;
  pCStack_c = param_2;
  cocos2d::CCSize::CCSize((CCSize *)&uStack_10,param_2);
  create(param_1,(CCSize *)&uStack_10,0);
  return;
}



/* ===== _ZN10BFCardView6createEPN7cocos2d9extension21CCTableViewDataSourceENS0_6CCSizeEPNS0_6CCNodeE @ 00278b60 ===== */
/* signature: undefined __stdcall create(CCTableViewDataSource * param_1, CCSize param_2, CCNode * param_3) */

/* BFCardView::create(cocos2d::extension::CCTableViewDataSource*, cocos2d::CCSize, cocos2d::CCNode*)
    */

undefined8 BFCardView::create(undefined4 param_1,CCSize *param_2,undefined4 param_3)

{
  BFCardView *this;
  undefined4 uStack_20;
  CCSize *pCStack_1c;
  undefined4 uStack_18;
  
  uStack_20 = param_1;
  pCStack_1c = param_2;
  uStack_18 = param_3;
  this = operator_new(0x200);
  BFCardView(this);
  cocos2d::CCObject::autorelease((CCObject *)this);
  cocos2d::CCSize::CCSize((CCSize *)&uStack_20,param_2);
  cocos2d::extension::CCTableView::initWithViewSize
            ((CCTableView *)this,(CCSize *)&uStack_20,param_3);
  *(undefined4 *)(this + 0x1d0) = param_1;
  cocos2d::extension::CCTableView::_updateCellPositions((CCTableView *)this);
  cocos2d::extension::CCTableView::_updateContentSize((CCTableView *)this);
  return CONCAT44(uStack_20,this);
}



/* ===== _ZN12BFWebViewImp10addWebViewEv @ 00269728 ===== */
/* signature: undefined __stdcall addWebView(void) */

/* BFWebViewImp::addWebView() */

undefined8 BFWebViewImp::addWebView(void)

{
  undefined4 in_r0;
  int iVar1;
  _jclass *in_r1;
  _jmethodID *in_r2;
  undefined4 in_r3;
  _jmethodID *unaff_r4;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  local_14 = in_r1;
  local_10 = in_r2;
  local_c = in_r3;
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,(char *)(DAT_00269778 + 0x269734),
                     (char *)(DAT_0026977c + 0x269736),(char *)(DAT_00269780 + 0x269738));
  if (iVar1 != 0) {
    unaff_r4 = (_jmethodID *)_JNIEnv::CallStaticObjectMethod(local_14,local_10,local_c);
  }
  iVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)&local_14,(char *)(DAT_00269784 + 0x269756),
                     (char *)(DAT_00269788 + 0x269758),(char *)(DAT_0026978c + 0x26975a));
  if (iVar1 == 0) {
    cocos2d::CCLog((char *)(DAT_00269790 + 0x269768));
  }
  else {
    _JNIEnv::CallVoidMethod((_jobject *)local_14,unaff_r4,local_c);
  }
  return CONCAT44(local_14,in_r0);
}



/* ===== _ZN12BFWebViewImp10setVisibleEb @ 00269b44 ===== */
/* signature: undefined __thiscall setVisible(BFWebViewImp * this, bool param_1) */

/* BFWebViewImp::setVisible(bool) */

void __thiscall BFWebViewImp::setVisible(BFWebViewImp *this,bool param_1)

{
  int iVar1;
  _jmethodID *unaff_r4;
  _jclass *local_1c;
  _jmethodID *local_18;
  undefined4 local_14;
  
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_1c,(char *)(DAT_00269ba0 + 0x269b54),
                     (char *)(DAT_00269b9c + 0x269b56),(char *)(DAT_00269ba4 + 0x269b58));
  if (iVar1 != 0) {
    unaff_r4 = (_jmethodID *)_JNIEnv::CallStaticObjectMethod(local_1c,local_18,local_14);
  }
  iVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)&local_1c,(char *)(DAT_00269ba8 + 0x269b76),
                     (char *)(DAT_00269bac + 0x269b78),(char *)(DAT_00269bb0 + 0x269b7a));
  if (iVar1 == 0) {
    cocos2d::CCLog((char *)(DAT_00269bb4 + 0x269b88));
  }
  else {
    _JNIEnv::CallVoidMethod((_jobject *)local_1c,unaff_r4,local_14,(uint)param_1);
  }
  return;
}



/* ===== _ZN12BFWebViewImp11setDelegateEP17BFWebViewDelegate @ 002698f8 ===== */
/* signature: undefined __thiscall setDelegate(BFWebViewImp * this, BFWebViewDelegate * param_1) */

/* BFWebViewImp::setDelegate(BFWebViewDelegate*) */

BFWebViewImp * __thiscall BFWebViewImp::setDelegate(BFWebViewImp *this,BFWebViewDelegate *param_1)

{
  *(BFWebViewDelegate **)(setPosition + DAT_00269900 + 2) = param_1;
  return this;
}



/* ===== _ZN12BFWebViewImp11setPositionERKN7cocos2d7CCPointE @ 00269904 ===== */
/* signature: undefined __thiscall setPosition(BFWebViewImp * this, CCPoint * param_1) */

/* BFWebViewImp::setPosition(cocos2d::CCPoint const&) */

void __thiscall BFWebViewImp::setPosition(BFWebViewImp *this,CCPoint *param_1)

{
  int iVar1;
  CCSize *pCVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined4 uVar5;
  undefined4 uVar6;
  undefined4 uVar7;
  undefined4 uVar8;
  _jmethodID *local_54;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  _jclass *local_24;
  _jmethodID *local_20;
  undefined4 local_1c;
  
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x18),param_1);
  uVar3 = *(undefined4 *)(this + 0x18);
  uVar7 = *(undefined4 *)(this + 0x1c);
  uVar6 = *(undefined4 *)(this + 0x2c);
  uVar4 = *(undefined4 *)(this + 0x28);
  uVar8 = *(undefined4 *)(this + 0x24);
  uVar5 = *(undefined4 *)(this + 0x20);
  iVar1 = cocos2d::CCDirector::sharedDirector();
  pCVar2 = (CCSize *)(**(code **)(**(int **)(iVar1 + 0x34) + 0x18))();
  cocos2d::CCSize::CCSize((CCSize *)&local_34,pCVar2);
  cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::getVisibleSize();
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_24,(char *)(DAT_00269a34 + 0x269950),
                     (char *)(DAT_00269a38 + 0x269952),(char *)(DAT_00269a3c + 0x269960));
  if (iVar1 != 0) {
    local_54 = (_jmethodID *)_JNIEnv::CallStaticObjectMethod(local_24,local_20,local_1c);
  }
  iVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)&local_24,(char *)(DAT_00269a40 + 0x26997c),
                     (char *)(DAT_00269a44 + 0x26997e),(char *)(DAT_00269a48 + 0x269980));
  if (iVar1 == 0) {
    cocos2d::CCLog((char *)(DAT_00269a4c + 0x26998e));
  }
  else {
    __fixsfsi(uVar7);
    uVar7 = __floatsisf();
    uVar8 = __mulsf3(uVar6,uVar8);
    __subsf3(uVar7,uVar8);
    __fixsfsi();
    uVar7 = __floatsisf();
    __addsf3(uVar7,uVar6);
    __fixsfsi();
    uVar6 = __floatsisf();
    uVar6 = __mulsf3(uVar6,local_30);
    __divsf3(uVar6,local_28);
    __fixsfsi();
    uVar6 = __floatsisf();
    uVar6 = __subsf3(local_30,uVar6);
    __fixsfsi(uVar3);
    uVar3 = __floatsisf();
    uVar4 = __mulsf3(uVar4,uVar5);
    __subsf3(uVar3,uVar4);
    __fixsfsi();
    uVar3 = __floatsisf();
    uVar3 = __mulsf3(uVar3,local_34);
    __divsf3(uVar3,local_2c);
    uVar3 = __fixsfsi();
    uVar4 = __fixsfsi(uVar6);
    _JNIEnv::CallVoidMethod((_jobject *)local_24,local_54,local_1c,uVar3,uVar4);
  }
  return;
}



/* ===== _ZN12BFWebViewImp13removeWebViewEv @ 00269818 ===== */
/* signature: undefined __stdcall removeWebView(void) */

/* BFWebViewImp::removeWebView() */

undefined8 BFWebViewImp::removeWebView(void)

{
  undefined4 in_r0;
  int iVar1;
  _jclass *in_r1;
  _jmethodID *in_r2;
  undefined4 in_r3;
  _jmethodID *unaff_r4;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  local_14 = in_r1;
  local_10 = in_r2;
  local_c = in_r3;
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,(char *)(DAT_00269868 + 0x269824),
                     (char *)(DAT_0026986c + 0x269826),(char *)(DAT_00269870 + 0x269828));
  if (iVar1 != 0) {
    unaff_r4 = (_jmethodID *)_JNIEnv::CallStaticObjectMethod(local_14,local_10,local_c);
  }
  iVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)&local_14,(char *)(DAT_00269874 + 0x269846),
                     (char *)(DAT_00269878 + 0x269848),(char *)(DAT_0026987c + 0x26984a));
  if (iVar1 == 0) {
    cocos2d::CCLog((char *)(DAT_00269880 + 0x269858));
  }
  else {
    _JNIEnv::CallVoidMethod((_jobject *)local_14,unaff_r4,local_c);
  }
  return CONCAT44(local_14,in_r0);
}



/* ===== _ZN12BFWebViewImp14setAnchorPointERKN7cocos2d7CCPointE @ 00269a50 ===== */
/* signature: undefined __thiscall setAnchorPoint(BFWebViewImp * this, CCPoint * param_1) */

/* BFWebViewImp::setAnchorPoint(cocos2d::CCPoint const&) */

void __thiscall BFWebViewImp::setAnchorPoint(BFWebViewImp *this,CCPoint *param_1)

{
  cocos2d::CCPoint::operator=((CCPoint *)(this + 0x20),param_1);
  setPosition(this,(CCPoint *)(this + 0x18));
  return;
}



/* ===== _ZN12BFWebViewImp14setContentSizeERKN7cocos2d6CCSizeE @ 00269a68 ===== */
/* signature: undefined __thiscall setContentSize(BFWebViewImp * this, CCSize * param_1) */

/* BFWebViewImp::setContentSize(cocos2d::CCSize const&) */

void __thiscall BFWebViewImp::setContentSize(BFWebViewImp *this,CCSize *param_1)

{
  int iVar1;
  CCSize *pCVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  _jmethodID *local_50;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  _jclass *local_24;
  _jmethodID *local_20;
  undefined4 local_1c;
  
  cocos2d::CCSize::operator=((CCSize *)(this + 0x28),param_1);
  iVar1 = cocos2d::CCDirector::sharedDirector();
  pCVar2 = (CCSize *)(**(code **)(**(int **)(iVar1 + 0x34) + 0x18))();
  cocos2d::CCSize::CCSize((CCSize *)&local_34,pCVar2);
  cocos2d::CCDirector::sharedDirector();
  cocos2d::CCDirector::getVisibleSize();
  uVar4 = *(undefined4 *)param_1;
  uVar3 = *(undefined4 *)(param_1 + 4);
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_24,(char *)(DAT_00269b28 + 0x269aaa),
                     (char *)(DAT_00269b2c + 0x269aac),(char *)(DAT_00269b30 + 0x269ab6));
  if (iVar1 != 0) {
    local_50 = (_jmethodID *)_JNIEnv::CallStaticObjectMethod(local_24,local_20,local_1c);
  }
  iVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)&local_24,(char *)(DAT_00269b34 + 0x269ad4),
                     (char *)(DAT_00269b38 + 0x269ad6),(char *)(DAT_00269b3c + 0x269ad8));
  if (iVar1 == 0) {
    cocos2d::CCLog((char *)(DAT_00269b40 + 0x269ae6));
  }
  else {
    uVar4 = __mulsf3(uVar4,local_34);
    __divsf3(uVar4,local_2c);
    uVar4 = __fixsfsi();
    uVar3 = __mulsf3(uVar3,local_30);
    __divsf3(uVar3,local_28);
    uVar3 = __fixsfsi();
    _JNIEnv::CallVoidMethod((_jobject *)local_24,local_50,local_1c,uVar4,uVar3);
  }
  return;
}



/* ===== _ZN12BFWebViewImp14setTouchEnableEb @ 00269884 ===== */
/* signature: undefined __thiscall setTouchEnable(BFWebViewImp * this, bool param_1) */

/* BFWebViewImp::setTouchEnable(bool) */

void __thiscall BFWebViewImp::setTouchEnable(BFWebViewImp *this,bool param_1)

{
  int iVar1;
  _jmethodID *unaff_r4;
  _jclass *local_1c;
  _jmethodID *local_18;
  undefined4 local_14;
  
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_1c,(char *)(DAT_002698e0 + 0x269894),
                     (char *)(DAT_002698dc + 0x269896),(char *)(DAT_002698e4 + 0x269898));
  if (iVar1 != 0) {
    unaff_r4 = (_jmethodID *)_JNIEnv::CallStaticObjectMethod(local_1c,local_18,local_14);
  }
  iVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)&local_1c,(char *)(DAT_002698e8 + 0x2698b6),
                     (char *)(DAT_002698ec + 0x2698b8),(char *)(DAT_002698f0 + 0x2698ba));
  if (iVar1 == 0) {
    cocos2d::CCLog((char *)(DAT_002698f4 + 0x2698c8));
  }
  else {
    _JNIEnv::CallVoidMethod((_jobject *)local_1c,unaff_r4,local_14,(uint)param_1);
  }
  return;
}



/* ===== _ZN12BFWebViewImp4initEv @ 00269724 ===== */
/* signature: undefined __stdcall init(void) */

/* BFWebViewImp::init() */

undefined4 BFWebViewImp::init(void)

{
  return 1;
}



/* ===== _ZN12BFWebViewImp6createEv @ 00279cd2 ===== */
/* signature: undefined __stdcall create(void) */

/* BFWebViewImp::create() */

BFWebViewImp * BFWebViewImp::create(void)

{
  BFWebViewImp *this;
  int iVar1;
  
  this = operator_new(0x30);
  BFWebViewImp(this);
  if (this != (BFWebViewImp *)0x0) {
    iVar1 = init();
    if (iVar1 == 0) {
      (**(code **)(*(int *)this + 8))(this);
      this = (BFWebViewImp *)0x0;
    }
    else {
      cocos2d::CCObject::autorelease((CCObject *)this);
    }
  }
  return this;
}



/* ===== _ZN12BFWebViewImp7loadUrlEPKc @ 00269794 ===== */
/* signature: undefined __thiscall loadUrl(BFWebViewImp * this, char * param_1) */

/* BFWebViewImp::loadUrl(char const*) */

void __thiscall BFWebViewImp::loadUrl(BFWebViewImp *this,char *param_1)

{
  int iVar1;
  undefined4 uVar2;
  _jmethodID *unaff_r5;
  _jclass *local_1c;
  _jmethodID *local_18;
  undefined4 local_14;
  
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_1c,(char *)(DAT_00269800 + 0x2697a4),
                     (char *)(DAT_002697fc + 0x2697a6),(char *)(DAT_00269804 + 0x2697a8));
  if (iVar1 != 0) {
    unaff_r5 = (_jmethodID *)_JNIEnv::CallStaticObjectMethod(local_1c,local_18,local_14);
  }
  iVar1 = cocos2d::JniHelper::getMethodInfo
                    ((JniMethodInfo_ *)&local_1c,(char *)(DAT_00269808 + 0x2697c6),
                     (char *)(DAT_0026980c + 0x2697c8),(char *)(DAT_00269810 + 0x2697ca));
  if (iVar1 == 0) {
    cocos2d::CCLog((char *)(DAT_00269814 + 0x2697d8));
  }
  else {
    uVar2 = (**(code **)(*(int *)local_1c + 0x29c))(local_1c,param_1);
    _JNIEnv::CallVoidMethod((_jobject *)local_1c,unaff_r5,local_14,uVar2);
  }
  return;
}



/* ===== _ZN12JsbConnecter11getInstanceEv @ 00261ab4 ===== */
/* signature: undefined __stdcall getInstance(void) */

/* JsbConnecter::getInstance() */

undefined4 JsbConnecter::getInstance(void)

{
  int *__s;
  int iVar1;
  int *piVar2;
  
  piVar2 = (int *)(DAT_00261af0 + 0x261abc);
  if (*piVar2 == 0) {
    __s = operator_new(0x10);
    memset(__s,0,0x10);
    iVar1 = DAT_00261af4;
    __s[1] = 0;
    __s[2] = 0;
    iVar1 = *(int *)(iVar1 + 0x261ada);
    __s[3] = 0;
    *piVar2 = (int)__s;
    *__s = iVar1 + 8;
    init();
  }
  return *(undefined4 *)(DAT_00261af8 + 0x261aee);
}



/* ===== _ZN12JsbConnecter14SeparateParamsERKSs @ 00261fa8 ===== */
/* signature: undefined __thiscall SeparateParams(JsbConnecter * this, string * param_1) */

/* JsbConnecter::SeparateParams(std::string const&) */

JsbConnecter * __thiscall JsbConnecter::SeparateParams(JsbConnecter *this,string *param_1)

{
  int iVar1;
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  string asStack_20 [4];
  string asStack_1c [8];
  
  iVar1 = *(int *)(this + 4);
  if (iVar1 != *(int *)(this + 8)) {
                    /* WARNING: Subroutine does not return */
    thunk_FUN_00a75f64(iVar1);
  }
  *(int *)(this + 8) = iVar1;
  if (*(int *)(*(int *)param_1 + -0xc) == 0) {
    return this + 4;
  }
  thunk_FUN_00a76d80(auStack_24,DAT_00262064 + 0x261fde,auStack_28);
  iVar1 = thunk_FUN_00a75a48(param_1,auStack_24,0);
  if (iVar1 != -1) {
    thunk_FUN_00a76d28(asStack_20,param_1,0,iVar1);
    std::vector<std::string,std::allocator<std::string>>::push_back
              ((vector<std::string,std::allocator<std::string>> *)(this + 4),asStack_20);
                    /* WARNING: Subroutine does not return */
    thunk_FUN_00a75f64(asStack_20);
  }
  if (*(int *)(*(int *)param_1 + -0xc) != 0) {
    thunk_FUN_00a76d28(asStack_1c,param_1,0,*(int *)(*(int *)param_1 + -0xc));
    std::vector<std::string,std::allocator<std::string>>::push_back
              ((vector<std::string,std::allocator<std::string>> *)(this + 4),asStack_1c);
                    /* WARNING: Subroutine does not return */
    thunk_FUN_00a75f64(asStack_1c);
  }
                    /* WARNING: Subroutine does not return */
  thunk_FUN_00a75f64(auStack_24);
}



/* ===== _ZN12JsbConnecter16getClassTypeInfoEv @ 00261a54 ===== */
/* signature: undefined __stdcall getClassTypeInfo(void) */

/* JsbConnecter::getClassTypeInfo() */

undefined4 JsbConnecter::getClassTypeInfo(void)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  piVar3 = *(int **)(DAT_00261a8c + 0x261a5e);
  puVar4 = *(undefined4 **)(DAT_00261a90 + 0x261a62);
  if ((-1 < *piVar3 << 0x1f) && (iVar1 = __cxa_guard_acquire(piVar3), iVar1 != 0)) {
    std::type_info::name(*(type_info **)(DAT_00261a94 + 0x261a78));
    uVar2 = FUN_002619f8();
    *puVar4 = uVar2;
    __cxa_guard_release(piVar3);
  }
  return *puVar4;
}



/* ===== _ZN12JsbConnecter16invoke_Class_CfgERKSsS1_ @ 002622c4 ===== */
/* signature: undefined __stdcall invoke_Class_Cfg(string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_Cfg(std::string const&, std::string const&) */

string * JsbConnecter::invoke_Class_Cfg(string *param_1,string *param_2)

{
  int iVar1;
  undefined4 uVar2;
  int iVar3;
  undefined4 *puVar4;
  _jstring *p_Var5;
  string *psVar6;
  undefined4 in_r2;
  undefined1 *puVar7;
  string *in_r3;
  undefined1 auStack_84 [4];
  undefined1 auStack_80 [4];
  undefined1 auStack_7c [4];
  undefined1 auStack_78 [4];
  undefined1 auStack_74 [4];
  undefined1 auStack_70 [4];
  undefined1 auStack_6c [4];
  undefined1 auStack_68 [4];
  undefined1 auStack_64 [4];
  undefined1 auStack_60 [4];
  undefined1 auStack_5c [4];
  undefined1 auStack_58 [4];
  undefined1 auStack_54 [4];
  undefined1 auStack_50 [4];
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  string asStack_40 [4];
  string asStack_3c [4];
  string asStack_38 [4];
  string asStack_34 [4];
  string asStack_30 [4];
  string asStack_2c [4];
  JniHelper aJStack_28 [4];
  _jclass *local_24;
  _jmethodID *local_20;
  undefined4 local_1c;
  
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002625e8 + 0x2622d2);
  if (iVar1 == 0) {
    xs::Product::getResSearchRoot();
    iVar1 = cocos2d::CCString::create(asStack_40);
    thunk_FUN_00a76acc(param_1,iVar1 + 0x14);
    psVar6 = asStack_40;
    goto LAB_00262788;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002625ec + 0x262300);
  if (iVar1 == 0) {
    thunk_FUN_00a76d80(asStack_3c,DAT_002625f0 + 0x262310,auStack_84);
    iVar1 = cocos2d::CCString::create(asStack_3c);
    thunk_FUN_00a76acc(param_1,iVar1 + 0x14);
    psVar6 = asStack_3c;
    goto LAB_00262788;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002625f4 + 0x26232e);
  if (iVar1 == 0) {
    uVar2 = getOpenUDID();
    thunk_FUN_00a76d80(asStack_38,uVar2,auStack_80);
    iVar1 = cocos2d::CCString::create(asStack_38);
    thunk_FUN_00a76acc(param_1,iVar1 + 0x14);
    psVar6 = asStack_38;
    goto LAB_00262788;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002625f8 + 0x26235e);
  if (iVar1 == 0) {
    uVar2 = getIDFA();
    thunk_FUN_00a76d80(asStack_34,uVar2,auStack_7c);
    iVar1 = cocos2d::CCString::create(asStack_34);
    thunk_FUN_00a76acc(param_1,iVar1 + 0x14);
    psVar6 = asStack_34;
    goto LAB_00262788;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002625fc + 0x26238e);
  if (iVar1 == 0) {
    uVar2 = getMacAddress();
    thunk_FUN_00a76d80(asStack_30,uVar2,auStack_78);
    iVar1 = cocos2d::CCString::create(asStack_30);
    thunk_FUN_00a76acc(param_1,iVar1 + 0x14);
    psVar6 = asStack_30;
    goto LAB_00262788;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262600 + 0x2623be);
  if (iVar1 == 0) {
    puVar7 = auStack_74;
    iVar1 = DAT_00262604 + 0x2623ce;
    goto LAB_00262796;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262608 + 0x2623d6);
  if (iVar1 == 0) {
    iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                      ((JniMethodInfo_ *)&local_24,(char *)(DAT_0026260c + 0x2623e6),
                       (char *)(DAT_00262610 + 0x2623e8),(char *)(DAT_00262614 + 0x2623ea));
    if (iVar1 != 0) {
      uVar2 = (**(code **)(*(int *)local_24 + 0x29c))(local_24,*(undefined4 *)in_r3);
      _JNIEnv::CallStaticVoidMethod(local_24,local_20,local_1c,uVar2);
    }
LAB_0026278e:
    puVar7 = auStack_44;
    iVar1 = DAT_00262808 + 0x262798;
LAB_00262796:
    thunk_FUN_00a76d80(param_1,iVar1,puVar7);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262618 + 0x262418);
  if (iVar1 == 0) {
    iVar1 = DAT_0026261c + 0x262426;
    iVar3 = thunk_FUN_00a75d14(in_r3,iVar1);
    if (iVar3 == 0) {
      puVar7 = auStack_6c;
      iVar1 = DAT_00262620 + 0x262448;
    }
    else {
      setIdleTimerDisabled(SUB41(param_2,0));
      puVar7 = auStack_70;
    }
    goto LAB_00262796;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262624 + 0x262450);
  if (iVar1 == 0) {
    puVar4 = (undefined4 *)SeparateParams((JsbConnecter *)param_2,in_r3);
    iVar1 = unZipFile((JsbConnecter *)param_2,*(char **)*puVar4,(char *)((undefined4 *)*puVar4)[1]);
    if (iVar1 == 0) {
      puVar7 = auStack_64;
      iVar1 = DAT_0026262c + 0x262480;
    }
    else {
      puVar7 = auStack_68;
      iVar1 = DAT_00262628 + 0x262476;
    }
    goto LAB_00262796;
  }
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262630 + 0x262488);
  if (iVar1 == 0) {
    thunk_FUN_00a76d80(&local_24,DAT_00262634 + 0x262498,auStack_60);
    uVar2 = g_getChannel_id();
    thunk_FUN_00a76160(&local_24,uVar2);
    thunk_FUN_00a76d80(param_1,local_24,auStack_5c);
  }
  else {
    iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262638 + 0x2624ba);
    if (iVar1 == 0) {
      thunk_FUN_00a76d80(&local_24,DAT_0026263c + 0x2624ca,auStack_58);
      uVar2 = g_getMacros();
      thunk_FUN_00a76160(&local_24,uVar2);
      thunk_FUN_00a76d80(param_1,local_24,auStack_54);
    }
    else {
      iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262640 + 0x2624ec);
      if (iVar1 != 0) {
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262648 + 0x262520);
        if (iVar1 == 0) {
          Statistic::getInstance();
          Statistic::getDeviceVersionName((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_0026264c + 0x26253c);
        if (iVar1 == 0) {
          Statistic::getInstance();
          Statistic::getDeviceVersionCode((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262650 + 0x262558);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_00262654 + 0x262566));
          Statistic::getInstance();
          Statistic::getDeviceId((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262658 + 0x26257e);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_0026265c + 0x26258c));
          Statistic::getInstance();
          Statistic::getDeviceType((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262660 + 0x2625a4);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_00262664 + 0x2625b2));
          Statistic::getInstance();
          Statistic::getDeviceOS((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262668 + 0x2625ca);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_0026266c + 0x2625d8));
          Statistic::getInstance();
          Statistic::getDeviceMobile((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002627d0 + 0x262678);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_002627d4 + 0x262686));
          Statistic::getInstance();
          Statistic::getDeviceOSVer((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002627d8 + 0x26269e);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_002627dc + 0x2626ac));
          Statistic::getInstance();
          Statistic::getDevicePixel((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002627e0 + 0x2626c4);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_002627e4 + 0x2626d2));
          Statistic::getInstance();
          Statistic::getDeviceNetwork((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002627e8 + 0x2626ea);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_002627ec + 0x2626f8));
          Statistic::getInstance();
          Statistic::getDeviceCarrier((Statistic *)param_1);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002627f0 + 0x262710);
        if (iVar1 == 0) {
          SGSCQLog(3,(char *)(DAT_002627f4 + 0x26271e));
          puVar4 = (undefined4 *)SeparateParams((JsbConnecter *)param_2,in_r3);
          thunk_FUN_00a76d80(asStack_2c,DAT_002627f8 + 0x262732,auStack_48);
          iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                            ((JniMethodInfo_ *)&local_24,(char *)(DAT_002627fc + 0x262740),
                             (char *)(DAT_00262800 + 0x262742),(char *)(DAT_00262804 + 0x262744));
          if (iVar1 != 0) {
            uVar2 = (**(code **)(*(int *)local_24 + 0x29c))(local_24,*(undefined4 *)*puVar4);
            p_Var5 = (_jstring *)_JNIEnv::CallStaticObjectMethod(local_24,local_20,local_1c,uVar2);
            cocos2d::JniHelper::jstring2string(aJStack_28,p_Var5);
            thunk_FUN_00a76b08(asStack_2c,aJStack_28);
                    /* WARNING: Subroutine does not return */
            thunk_FUN_00a75f64(aJStack_28);
          }
          thunk_FUN_00a76acc(param_1,asStack_2c);
          psVar6 = asStack_2c;
          goto LAB_00262788;
        }
        goto LAB_0026278e;
      }
      thunk_FUN_00a76d80(&local_24,DAT_00262644 + 0x2624fc,auStack_50);
      uVar2 = g_getChannel_name();
      thunk_FUN_00a76160(&local_24,uVar2);
      thunk_FUN_00a76d80(param_1,local_24,auStack_4c);
    }
  }
  psVar6 = (string *)&local_24;
LAB_00262788:
                    /* WARNING: Subroutine does not return */
  thunk_FUN_00a75f64(psVar6);
}



/* ===== _ZN12JsbConnecter16invoke_Class_LogERKSsS1_ @ 00262068 ===== */
/* signature: undefined __stdcall invoke_Class_Log(string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_Log(std::string const&, std::string const&) */

string * JsbConnecter::invoke_Class_Log(string *param_1,string *param_2)

{
  int iVar1;
  int *piVar2;
  undefined4 *puVar3;
  int *piVar4;
  undefined4 in_r2;
  undefined1 *puVar5;
  string *in_r3;
  undefined1 auStack_f4 [4];
  undefined1 auStack_f0 [4];
  undefined1 auStack_ec [4];
  undefined1 auStack_e8 [4];
  undefined1 auStack_e4 [4];
  undefined1 auStack_e0 [4];
  undefined1 auStack_dc [4];
  int local_d8;
  char *local_d4 [48];
  
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002621cc + 0x262076);
  if (iVar1 == 0) {
    piVar2 = (int *)SeparateParams((JsbConnecter *)param_2,in_r3);
    piVar4 = (int *)*piVar2;
    if (((7 < (uint)(piVar2[1] - (int)piVar4)) && (*(int *)(*piVar4 + -0xc) != 0)) &&
       (*(int *)(piVar4[1] + -0xc) != 0)) {
      thunk_FUN_00a73530(local_d4,piVar4,0x18);
      local_d8 = iVar1;
      thunk_FUN_00a61020(local_d4,&local_d8);
      SGSCQLog(local_d8,*(char **)(*piVar2 + 4));
      thunk_FUN_00a76d80(param_1,DAT_002621d0 + 0x2620d4,auStack_f4);
LAB_00262132:
      thunk_FUN_00a71b94(local_d4);
      return param_1;
    }
    puVar5 = auStack_f0;
    iVar1 = DAT_002621d4 + 0x2620e2;
  }
  else {
    iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002621d8 + 0x2620ea);
    if (iVar1 == 0) {
      piVar2 = (int *)SeparateParams((JsbConnecter *)param_2,in_r3);
      piVar4 = (int *)*piVar2;
      if ((piVar2[1] - (int)piVar4 >> 2 != 0) && (*(int *)(*piVar4 + -0xc) != 0)) {
        thunk_FUN_00a73530(local_d4,piVar4,0x18);
        local_d8 = iVar1;
        thunk_FUN_00a61020(local_d4,&local_d8);
        SGSCQLog_SetLowestPriority(local_d8);
        thunk_FUN_00a76d80(param_1,DAT_002621dc + 0x262130,auStack_ec);
        goto LAB_00262132;
      }
      puVar5 = auStack_e8;
      iVar1 = DAT_002621e0 + 0x262144;
    }
    else {
      iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002621e4 + 0x26214c);
      if (iVar1 == 0) {
        if (*(int *)(*(int *)in_r3 + -0xc) != 0) {
          puVar3 = (undefined4 *)SeparateParams((JsbConnecter *)param_2,in_r3);
          thunk_FUN_00a76acc(local_d4,*puVar3);
          SGSCQLog_SetLogFileName(local_d4[0]);
          thunk_FUN_00a76d80(param_1,DAT_002621e8 + 0x26217c,auStack_e4);
                    /* WARNING: Subroutine does not return */
          thunk_FUN_00a75f64(local_d4);
        }
      }
      else {
        iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002621ec + 0x26218e);
        if (iVar1 == 0) {
          puVar5 = auStack_e0;
          iVar1 = DAT_002621f0 + 0x26219e;
          goto LAB_002621a6;
        }
      }
      puVar5 = auStack_dc;
      iVar1 = DAT_002621f4 + 0x2621a8;
    }
  }
LAB_002621a6:
  thunk_FUN_00a76d80(param_1,iVar1,puVar5);
  return param_1;
}



/* ===== _ZN12JsbConnecter17invoke_Class_TrieERKSsS1_ @ 0026280c ===== */
/* signature: undefined __stdcall invoke_Class_Trie(string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_Trie(std::string const&, std::string const&) */

string * JsbConnecter::invoke_Class_Trie(string *param_1,string *param_2)

{
  int iVar1;
  undefined4 *puVar2;
  Trie *pTVar3;
  undefined4 uVar4;
  uint uVar5;
  int *piVar6;
  void *__src;
  void *__dest;
  char **ppcVar7;
  undefined4 in_r2;
  undefined1 *puVar8;
  string *in_r3;
  undefined1 auStack_12c [4];
  undefined1 auStack_128 [4];
  undefined1 auStack_124 [4];
  undefined1 auStack_120 [8];
  undefined1 auStack_118 [4];
  undefined1 auStack_114 [4];
  undefined1 auStack_110 [4];
  undefined1 auStack_10c [4];
  undefined1 auStack_108 [4];
  undefined1 auStack_104 [4];
  undefined1 auStack_100 [4];
  string asStack_fc [4];
  char *local_f8;
  uint local_f4;
  string asStack_f0 [4];
  string asStack_ec [4];
  char *local_e8 [5];
  char *local_d4 [48];
  
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262af0 + 0x26281a);
  if (iVar1 == 0) {
    puVar2 = (undefined4 *)SeparateParams((JsbConnecter *)param_2,in_r3);
    thunk_FUN_00a76acc(local_e8,*puVar2);
    if (*(int *)(local_e8[0] + -0xc) != 0) {
      pTVar3 = (Trie *)sgsTrie::Trie::getSingletonInstance();
      uVar4 = sgsTrie::Trie::StrQuery(pTVar3,local_e8[0]);
      thunk_FUN_00a76d80(local_d4,uVar4,auStack_12c);
      thunk_FUN_00a76d80(param_1,local_d4[0],auStack_128);
                    /* WARNING: Subroutine does not return */
      thunk_FUN_00a75f64(local_d4);
    }
    thunk_FUN_00a76d80(param_1,DAT_00262af4 + 0x262870,auStack_124);
    ppcVar7 = local_e8;
  }
  else {
    iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00262af8 + 0x26287e);
    if (iVar1 != 0) {
      uVar5 = thunk_FUN_00a75d14(in_r2,DAT_00262b04 + 0x2628e4);
      if (uVar5 == 0) {
        puVar2 = (undefined4 *)SeparateParams((JsbConnecter *)param_2,in_r3);
        if (*(int *)(*(int *)*puVar2 + -0xc) != 0) {
          thunk_FUN_00a73530(local_d4,(int *)*puVar2,0x18);
          local_f4 = uVar5;
          thunk_FUN_00a61020(local_d4,&local_f4);
          sgsTrie::Trie::setGlobalTrie(local_f4);
          thunk_FUN_00a76d80(param_1,DAT_00262b08 + 0x262924,auStack_114);
          thunk_FUN_00a71b94(local_d4);
          return param_1;
        }
        puVar8 = auStack_110;
        iVar1 = DAT_00262b0c + 0x262938;
      }
      else {
        uVar5 = thunk_FUN_00a75d14(in_r2,DAT_00262b10 + 0x262940);
        if (uVar5 == 0) {
          piVar6 = (int *)SeparateParams((JsbConnecter *)param_2,in_r3);
          if (*(int *)(*(int *)*piVar6 + -0xc) != 0) {
            thunk_FUN_00a73530(local_d4,(int *)*piVar6,0x18);
            local_f4 = uVar5;
            thunk_FUN_00a61020(local_d4,&local_f4);
            sgsTrie::Trie::setGlobalTrie(local_f4);
            thunk_FUN_00a71b94(local_d4);
          }
          iVar1 = *piVar6;
          if ((piVar6[1] - iVar1 >> 2 != 0) && (*(int *)(*(int *)(iVar1 + 4) + -0xc) != 0)) {
            thunk_FUN_00a76acc(&local_f8,iVar1 + 4);
            CSJson::Reader::Reader((Reader *)local_d4);
            CSJson::Value::Value((Value *)local_e8,0);
            local_f4 = 0;
            piVar6 = (int *)cocos2d::CCFileUtils::sharedFileUtils();
            __src = (void *)(**(code **)(*piVar6 + 0x10))
                                      (piVar6,local_f8,DAT_00262b14 + 0x2629bc,&local_f4);
            pTVar3 = (Trie *)sgsTrie::Trie::getSingletonInstance();
            if (__src != (void *)0x0) {
              __dest = operator_new__(local_f4);
              memcpy(__dest,__src,local_f4);
              operator_delete__(__src);
              thunk_FUN_00a76d80(asStack_f0,__dest,auStack_10c);
              if (__dest != (void *)0x0) {
                operator_delete__(__dest);
              }
              iVar1 = CSJson::Reader::parse((Reader *)local_d4,asStack_f0,(Value *)local_e8,true);
              if (iVar1 == 0) {
                SGSCQLog(6,(char *)(DAT_00262b1c + 0x262a48));
              }
              else {
                SGSCQLog(4,(char *)(DAT_00262b18 + 0x262a0c));
                iVar1 = CSJson::Value::size((Value *)local_e8);
                if (iVar1 != 0) {
                  CSJson::Value::operator[]((Value *)local_e8,0);
                  CSJson::Value::asString();
                  sgsTrie::Trie::AddString(pTVar3,asStack_ec);
                    /* WARNING: Subroutine does not return */
                  thunk_FUN_00a75f64(asStack_ec);
                }
              }
                    /* WARNING: Subroutine does not return */
              thunk_FUN_00a75f64(asStack_f0);
            }
            SGSCQLog(6,(char *)(DAT_00262b20 + 0x262a5a));
            thunk_FUN_00a76d80(param_1,DAT_00262b24 + 0x262a66,auStack_108);
            CSJson::Value::~Value((Value *)local_e8);
            CSJson::Reader::~Reader((Reader *)local_d4);
            ppcVar7 = &local_f8;
            goto LAB_00262a76;
          }
          puVar8 = auStack_104;
          iVar1 = DAT_00262b28 + 0x262a86;
        }
        else {
          puVar8 = auStack_100;
          iVar1 = DAT_00262b2c + 0x262a90;
        }
      }
      thunk_FUN_00a76d80(param_1,iVar1,puVar8);
      return param_1;
    }
    puVar2 = (undefined4 *)SeparateParams((JsbConnecter *)param_2,in_r3);
    thunk_FUN_00a76acc(local_d4,*puVar2);
    if (*(int *)(local_d4[0] + -0xc) != 0) {
      pTVar3 = (Trie *)sgsTrie::Trie::getSingletonInstance();
      thunk_FUN_00a76d80(asStack_fc,local_d4[0],auStack_120);
      sgsTrie::Trie::AddString(pTVar3,asStack_fc);
                    /* WARNING: Subroutine does not return */
      thunk_FUN_00a75f64(asStack_fc);
    }
    thunk_FUN_00a76d80(param_1,DAT_00262b00 + 0x2628d6,auStack_118);
    ppcVar7 = local_d4;
  }
LAB_00262a76:
                    /* WARNING: Subroutine does not return */
  thunk_FUN_00a75f64(ppcVar7);
}



/* ===== _ZN12JsbConnecter18invoke_Class_BuildERKSsS1_ @ 00261b94 ===== */
/* signature: undefined __thiscall invoke_Class_Build(JsbConnecter * this, string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_Build(std::string const&, std::string const&) */

JsbConnecter * __thiscall
JsbConnecter::invoke_Class_Build(JsbConnecter *this,string *param_1,string *param_2)

{
  int iVar1;
  undefined4 uVar2;
  char *pcVar3;
  undefined1 *puVar4;
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  undefined1 auStack_1c [4];
  undefined1 auStack_18 [4];
  undefined1 auStack_14 [8];
  
  iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261c74 + 0x261ba0);
  if (iVar1 == 0) {
    puVar4 = auStack_24;
    iVar1 = DAT_00261c78 + 0x261bb4;
  }
  else {
    iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261c7c + 0x261bbc);
    if (iVar1 == 0) {
      puVar4 = auStack_20;
      iVar1 = DAT_00261c80 + 0x261bcc;
    }
    else {
      iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261c84 + 0x261bd4);
      if (iVar1 == 0) {
        puVar4 = auStack_1c;
        iVar1 = DAT_00261c88 + 0x261be4;
      }
      else {
        iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261c8c + 0x261bec);
        if (iVar1 != 0) {
          iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261c94 + 0x261c04);
          if (iVar1 == 0) {
            uVar2 = g_getProduct_id();
            pcVar3 = (char *)(DAT_00261c98 + 0x261c16);
          }
          else {
            iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261c9c + 0x261c1e);
            if (iVar1 == 0) {
              pcVar3 = (char *)(DAT_00261ca0 + 0x261c2a);
              uVar2 = 0;
            }
            else {
              iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261ca4 + 0x261c32);
              if (iVar1 == 0) {
                pcVar3 = (char *)(DAT_00261ca8 + 0x261c3e);
              }
              else {
                iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261cac + 0x261c46);
                if (iVar1 != 0) {
                  puVar4 = auStack_14;
                  iVar1 = DAT_00261cb4 + 0x261c6c;
                  goto LAB_00261c6a;
                }
                pcVar3 = (char *)(DAT_00261cb0 + 0x261c52);
              }
              uVar2 = 7;
            }
          }
          iVar1 = cocos2d::CCString::createWithFormat(pcVar3,uVar2);
          thunk_FUN_00a76acc(this,iVar1 + 0x14);
          return this;
        }
        puVar4 = auStack_18;
        iVar1 = DAT_00261c90 + 0x261bfc;
      }
    }
  }
LAB_00261c6a:
  thunk_FUN_00a76d80(this,iVar1,puVar4);
  return this;
}



/* ===== _ZN12JsbConnecter18invoke_Class_UtilsERKSsS1_ @ 002621f8 ===== */
/* signature: undefined __stdcall invoke_Class_Utils(string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_Utils(std::string const&, std::string const&) */

string * JsbConnecter::invoke_Class_Utils(string *param_1,string *param_2)

{
  int iVar1;
  undefined4 *puVar2;
  int *piVar3;
  undefined4 in_r2;
  undefined1 *puVar4;
  string *in_r3;
  undefined1 auStack_2c [4];
  undefined1 auStack_28 [4];
  undefined1 auStack_24 [4];
  undefined1 auStack_20 [4];
  int local_1c [2];
  
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002622a4 + 0x262206);
  if (iVar1 == 0) {
    iVar1 = MDFile(*(undefined4 *)in_r3);
    if (iVar1 == 0) {
      iVar1 = DAT_002622a8 + 0x262222;
    }
    puVar4 = auStack_2c;
  }
  else {
    iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002622ac + 0x26222e);
    if (iVar1 == 0) {
      local_1c[0] = iVar1;
      puVar2 = (undefined4 *)SeparateParams((JsbConnecter *)param_2,in_r3);
      piVar3 = (int *)cocos2d::CCFileUtils::sharedFileUtils();
      (**(code **)(*piVar3 + 0x10))(piVar3,*(undefined4 *)*puVar2,DAT_002622b0 + 0x262254,local_1c);
      iVar1 = cocos2d::CCString::createWithFormat((char *)(DAT_002622b4 + 0x26225c),local_1c[0]);
      puVar4 = auStack_28;
      iVar1 = *(int *)(iVar1 + 0x14);
    }
    else {
      iVar1 = thunk_FUN_00a75d14(in_r2,DAT_002622b8 + 0x26226e);
      if (iVar1 == 0) {
        SeparateParams((JsbConnecter *)param_2,in_r3);
        deleteDir((char *)param_2);
        puVar4 = auStack_24;
        iVar1 = DAT_002622bc + 0x262290;
      }
      else {
        puVar4 = auStack_20;
        iVar1 = DAT_002622c0 + 0x26229a;
      }
    }
  }
  thunk_FUN_00a76d80(param_1,iVar1,puVar4);
  return param_1;
}



/* ===== _ZN12JsbConnecter20setIdleTimerDisabledEb @ 00261b14 ===== */
/* signature: undefined __stdcall setIdleTimerDisabled(bool param_1) */

/* JsbConnecter::setIdleTimerDisabled(bool) */

bool JsbConnecter::setIdleTimerDisabled(bool param_1)

{
  return param_1;
}



/* ===== _ZN12JsbConnecter21invoke_Class_DirectorERKSsS1_ @ 00261cb8 ===== */
/* signature: undefined __thiscall invoke_Class_Director(JsbConnecter * this, string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_Director(std::string const&, std::string const&) */

JsbConnecter * __thiscall
JsbConnecter::invoke_Class_Director(JsbConnecter *this,string *param_1,string *param_2)

{
  int iVar1;
  CCSize *pCVar2;
  undefined4 uVar3;
  char *pcVar4;
  undefined8 uVar5;
  undefined8 uVar6;
  undefined1 auStack_24 [4];
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261d44 + 0x261cc4);
  if (iVar1 == 0) {
    cocos2d::CCDirector::sharedDirector();
    iVar1 = DAT_00261d48;
    cocos2d::CCDirector::getWinSize();
    pcVar4 = (char *)(iVar1 + 0x261ce0);
  }
  else {
    iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261d4c + 0x261ce8);
    if (iVar1 != 0) {
      thunk_FUN_00a76d80(this,DAT_00261d54 + 0x261d3a,auStack_24);
      return this;
    }
    iVar1 = cocos2d::CCDirector::sharedDirector();
    pcVar4 = (char *)(DAT_00261d50 + 0x261cfc);
    pCVar2 = (CCSize *)(**(code **)(**(int **)(iVar1 + 0x34) + 0x18))();
    cocos2d::CCSize::CCSize((CCSize *)&local_20,pCVar2);
  }
  uVar5 = __extendsfdf2(local_20);
  uVar6 = __extendsfdf2(local_1c);
  uVar3 = (undefined4)((ulonglong)uVar6 >> 0x20);
  iVar1 = cocos2d::CCString::createWithFormat
                    (pcVar4,uVar3,(int)uVar5,(int)((ulonglong)uVar5 >> 0x20),(int)uVar6,uVar3);
  thunk_FUN_00a76acc(this,iVar1 + 0x14);
  return this;
}



/* ===== _ZN12JsbConnecter21invoke_Class_PlatformERKSsS1_ @ 00261b5c ===== */
/* signature: undefined __thiscall invoke_Class_Platform(JsbConnecter * this, string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_Platform(std::string const&, std::string const&) */

undefined8 __thiscall
JsbConnecter::invoke_Class_Platform(JsbConnecter *this,string *param_1,string *param_2)

{
  int iVar1;
  string **ppsVar2;
  JsbConnecter *pJStack_10;
  string *psStack_c;
  
  ppsVar2 = &psStack_c;
  pJStack_10 = this;
  psStack_c = param_1;
  iVar1 = thunk_FUN_00a75d14(param_2,DAT_00261b88 + 0x261b68);
  if (iVar1 == 0) {
    iVar1 = DAT_00261b8c + 0x261b78;
    ppsVar2 = (string **)&pJStack_10;
  }
  else {
    iVar1 = DAT_00261b90 + 0x261b82;
  }
  thunk_FUN_00a76d80(this,iVar1,ppsVar2);
  return CONCAT44(pJStack_10,this);
}



/* ===== _ZN12JsbConnecter23invoke_Class_ArmDataMgrERKSsS1_ @ 00261d58 ===== */
/* signature: undefined __stdcall invoke_Class_ArmDataMgr(string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_ArmDataMgr(std::string const&, std::string const&) */

undefined8 JsbConnecter::invoke_Class_ArmDataMgr(string *param_1,string *param_2)

{
  string *psStack_c;
  
  psStack_c = param_2;
  thunk_FUN_00a76d80(param_1,DAT_00261d6c + 0x261d64,&psStack_c);
  return CONCAT44(param_1,param_1);
}



/* ===== _ZN12JsbConnecter29invoke_Class_SpriteFrameCacheERKSsS1_ @ 00261d70 ===== */
/* signature: undefined __stdcall invoke_Class_SpriteFrameCache(string * param_1, string * param_2) */

/* JsbConnecter::invoke_Class_SpriteFrameCache(std::string const&, std::string const&) */

string * JsbConnecter::invoke_Class_SpriteFrameCache(string *param_1,string *param_2)

{
  int iVar1;
  char *pcVar2;
  undefined4 in_r2;
  string **ppsVar3;
  undefined4 *in_r3;
  string *psStack_1c;
  string *psStack_18;
  string *psStack_14;
  
  ppsVar3 = &psStack_1c;
  psStack_1c = param_2;
  iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00261dd4 + 0x261d7c,in_r2,in_r3,param_1);
  if (iVar1 == 0) {
    pcVar2 = (char *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
    cocos2d::CCSpriteFrameCache::changeRcOfSpriteFramesWithFile(pcVar2,SUB41(*in_r3,0));
    iVar1 = DAT_00261dd8 + 0x261d9c;
  }
  else {
    iVar1 = thunk_FUN_00a75d14(in_r2,DAT_00261ddc + 0x261da4);
    if (iVar1 == 0) {
      pcVar2 = (char *)cocos2d::CCSpriteFrameCache::sharedSpriteFrameCache();
      cocos2d::CCSpriteFrameCache::changeRcOfSpriteFramesWithFile(pcVar2,SUB41(*in_r3,0));
      ppsVar3 = &psStack_18;
      iVar1 = DAT_00261de0 + 0x261dc0;
    }
    else {
      ppsVar3 = &psStack_14;
      iVar1 = DAT_00261de4 + 0x261dca;
    }
  }
  thunk_FUN_00a76d80(param_1,iVar1,ppsVar3);
  return param_1;
}



/* ===== _ZN12JsbConnecter4initEv @ 00261ab2 ===== */
/* signature: undefined __stdcall init(void) */

/* JsbConnecter::init() */

void JsbConnecter::init(void)

{
  return;
}



/* ===== _ZN12JsbConnecter6invokeERKSsS1_S1_ @ 00262b30 ===== */
/* signature: undefined __stdcall invoke(string * param_1, string * param_2, string * param_3) */

/* JsbConnecter::invoke(std::string const&, std::string const&, std::string const&) */

string * JsbConnecter::invoke(string *param_1,string *param_2,string *param_3)

{
  int iVar1;
  int *piVar2;
  undefined4 uVar3;
  undefined4 uVar4;
  undefined1 *puVar5;
  string *in_r3;
  string *in_stack_00000000;
  _jmethodID *local_54;
  undefined1 auStack_4c [4];
  undefined1 auStack_48 [4];
  undefined1 auStack_44 [4];
  undefined1 auStack_40 [4];
  undefined1 auStack_3c [4];
  undefined1 auStack_38 [4];
  undefined1 auStack_34 [4];
  undefined1 auStack_30 [4];
  undefined4 local_2c;
  undefined4 local_28;
  _jclass *local_24;
  _jmethodID *local_20;
  undefined4 local_1c;
  
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e58 + 0x262b40);
  if (iVar1 == 0) {
    invoke_Class_Log(param_1,param_2);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e5c + 0x262b62);
  if (iVar1 == 0) {
    xs::Debug::invoke_jsb(param_1,in_r3);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e60 + 0x262b7c);
  if (iVar1 == 0) {
    invoke_Class_Director((JsbConnecter *)param_1,param_2,in_r3);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e64 + 0x262b98);
  if (iVar1 == 0) {
    invoke_Class_SpriteFrameCache(param_1,param_2);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e68 + 0x262bb4);
  if (iVar1 == 0) {
    invoke_Class_ArmDataMgr(param_1,param_2);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e6c + 0x262bd0);
  if (iVar1 == 0) {
LAB_00262dfe:
    invoke_Class_Platform((JsbConnecter *)param_1,param_2,in_r3);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e70 + 0x262be0);
  if (iVar1 == 0) {
    invoke_Class_Build((JsbConnecter *)param_1,param_2,in_r3);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e74 + 0x262bfc);
  if (iVar1 == 0) {
    invoke_Class_Cfg(param_1,param_2);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e78 + 0x262c18);
  if (iVar1 == 0) {
    invoke_Class_Trie(param_1,param_2);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e7c + 0x262c34);
  if (iVar1 == 0) {
    invoke_Class_Utils(param_1,param_2);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e80 + 0x262c50);
  if (iVar1 == 0) {
    Statistic::invoke_jsb((Statistic *)param_1,in_r3,in_stack_00000000);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e84 + 0x262c6a);
  if (iVar1 == 0) {
    StatisticV2::invoke_jsb((StatisticV2 *)param_1,in_r3,in_stack_00000000);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e88 + 0x262c84);
  if (iVar1 == 0) {
    BfsdkHelper::invoke_jsb((BfsdkHelper *)param_1,in_r3,in_stack_00000000);
    return param_1;
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262e8c + 0x262c9e);
  if (iVar1 == 0) {
    iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                      ((JniMethodInfo_ *)&local_24,(char *)(DAT_00262e90 + 0x262cae),
                       (char *)(DAT_00262e94 + 0x262cb0),(char *)(DAT_00262e98 + 0x262cb2));
    if (iVar1 != 0) {
      local_54 = (_jmethodID *)_JNIEnv::CallStaticObjectMethod(local_24,local_20,local_1c);
    }
    piVar2 = (int *)SeparateParams((JsbConnecter *)param_2,in_stack_00000000);
    thunk_FUN_00a76acc(&local_2c,*piVar2 + 4);
    piVar2 = (int *)SeparateParams((JsbConnecter *)param_2,in_stack_00000000);
    thunk_FUN_00a76acc(&local_28,*piVar2 + 8);
    iVar1 = cocos2d::JniHelper::getMethodInfo
                      ((JniMethodInfo_ *)&local_24,(char *)(DAT_00262e9c + 0x262cf4),
                       (char *)(DAT_00262ea0 + 0x262cf6),(char *)(DAT_00262ea4 + 0x262cf8));
    if (iVar1 == 0) {
      puVar5 = auStack_4c;
      iVar1 = DAT_00262ea8 + 0x262d0a;
    }
    else {
      uVar3 = (**(code **)(*(int *)local_24 + 0x29c))(local_24,local_2c);
      uVar4 = (**(code **)(*(int *)local_24 + 0x29c))(local_24,local_28);
      _JNIEnv::CallVoidMethod((_jobject *)local_24,local_54,local_1c,uVar3,uVar4);
      puVar5 = auStack_48;
      iVar1 = DAT_00262eac + 0x262d3c;
    }
    thunk_FUN_00a76d80(param_1,iVar1,puVar5);
                    /* WARNING: Subroutine does not return */
    thunk_FUN_00a75f64(&local_28);
  }
  iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262eb0 + 0x262d54);
  if (iVar1 == 0) {
    iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                      ((JniMethodInfo_ *)&local_24,(char *)(DAT_00262eb4 + 0x262d64),
                       (char *)(DAT_00262eb8 + 0x262d66),(char *)(DAT_00262ebc + 0x262d68));
    if (iVar1 == 0) {
      puVar5 = auStack_40;
      iVar1 = DAT_00262ec4 + 0x262d9e;
    }
    else {
      uVar3 = (**(code **)(*(int *)local_24 + 0x29c))(local_24,*(undefined4 *)in_stack_00000000);
      _JNIEnv::CallStaticVoidMethod(local_24,local_20,local_1c,uVar3);
      puVar5 = auStack_44;
      iVar1 = DAT_00262ec0 + 0x262d94;
    }
  }
  else {
    iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262ec8 + 0x262da6);
    if (iVar1 == 0) {
LAB_00262f30:
      ThirdSdkImpl::invoke_jsb((ThirdSdkImpl *)param_1,in_r3,in_stack_00000000);
      return param_1;
    }
    iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262ecc + 0x262db6);
    if (iVar1 == 0) {
      puVar5 = auStack_3c;
      iVar1 = DAT_00262ed0 + 0x262dc6;
    }
    else {
      iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262ed4 + 0x262dce);
      if (iVar1 == 0) goto LAB_00262f30;
      iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262ed8 + 0x262dde);
      if (iVar1 == 0) {
        invoke_jsb_App(param_1,in_r3);
        return param_1;
      }
      iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262edc + 0x262df8);
      if (iVar1 == 0) goto LAB_00262dfe;
      iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262ee0 + 0x262e14);
      if (iVar1 == 0) {
        puVar5 = auStack_38;
        iVar1 = DAT_00262ee4 + 0x262e24;
      }
      else {
        iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262ee8 + 0x262e2c);
        if (iVar1 == 0) {
          xs::XSAssetsMgr::invoke_jsb((XSAssetsMgr *)param_1,in_r3,in_stack_00000000);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262eec + 0x262e46);
        if (iVar1 == 0) {
          GlobalMethod::invoke_jsb(param_1,in_r3);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262f90 + 0x262ef8);
        if (iVar1 == 0) {
          TalkingDataAppCpaHelp::invoke_jsb
                    ((TalkingDataAppCpaHelp *)param_1,in_r3,in_stack_00000000);
          return param_1;
        }
        iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262f94 + 0x262f12);
        if (iVar1 == 0) {
          puVar5 = auStack_34;
          iVar1 = DAT_00262f98 + 0x262f22;
        }
        else {
          iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262f9c + 0x262f2a);
          if (iVar1 == 0) goto LAB_00262f30;
          iVar1 = thunk_FUN_00a75d14(param_3,DAT_00262fa0 + 0x262f44);
          if (iVar1 == 0) {
            TestinHelp::invoke_jsb((TestinHelp *)param_1,in_r3,in_stack_00000000);
            return param_1;
          }
          SGSCQLog(3,(char *)(DAT_00262fa4 + 0x262f62),*(undefined4 *)param_3,*(undefined4 *)in_r3,
                   *(undefined4 *)in_stack_00000000);
          puVar5 = auStack_30;
          iVar1 = DAT_00262fa8 + 0x262f72;
        }
      }
    }
  }
  thunk_FUN_00a76d80(param_1,iVar1,puVar5);
  return param_1;
}



/* ===== _ZN12JsbConnecter7getNameEv @ 00261afc ===== */
/* signature: undefined __stdcall getName(void) */

/* JsbConnecter::getName() */

undefined8 JsbConnecter::getName(void)

{
  undefined4 in_r0;
  
  thunk_FUN_00a76d80();
  return CONCAT44(in_r0,in_r0);
}



/* ===== _ZN12JsbConnecter9deleteDirEPKc @ 00261b18 ===== */
/* signature: undefined __stdcall deleteDir(char * param_1) */

/* JsbConnecter::deleteDir(char const*) */

undefined8 JsbConnecter::deleteDir(char *param_1)

{
  int iVar1;
  undefined4 uVar2;
  _jclass *in_r1;
  _jmethodID *in_r2;
  undefined4 in_r3;
  _jclass *local_14;
  _jmethodID *local_10;
  undefined4 local_c;
  
  local_14 = in_r1;
  local_10 = in_r2;
  local_c = in_r3;
  iVar1 = cocos2d::JniHelper::getStaticMethodInfo
                    ((JniMethodInfo_ *)&local_14,(char *)(DAT_00261b54 + 0x261b28),
                     (char *)(DAT_00261b50 + 0x261b26),(char *)(DAT_00261b58 + 0x261b2a));
  if (iVar1 != 0) {
    uVar2 = (**(code **)(*(int *)local_14 + 0x29c))(local_14,in_r1);
    _JNIEnv::CallStaticVoidMethod(local_14,local_10,local_c,uVar2);
  }
  return CONCAT44(local_14,param_1);
}



/* ===== _ZN12JsbConnecter9unZipFileEPKcS1_ @ 00261de8 ===== */
/* signature: undefined __thiscall unZipFile(JsbConnecter * this, char * param_1, char * param_2) */

/* JsbConnecter::unZipFile(char const*, char const*) */

void __thiscall JsbConnecter::unZipFile(JsbConnecter *this,char *param_1,char *param_2)

{
  int iVar1;
  void *pvVar2;
  int iVar3;
  int *piVar4;
  undefined4 *puVar5;
  undefined4 *puVar6;
  
  iVar1 = DAT_00261f88;
  piVar4 = *(int **)(DAT_00261f84 + 0x261df2);
  puVar5 = (undefined4 *)(&stack0xffffffec + DAT_00261f88);
  puVar6 = (undefined4 *)(&stack0xffffffec + DAT_00261f88);
  iVar3 = *piVar4;
  *(JsbConnecter **)(&stack0xfffffffc + DAT_00261f88) = this;
  *(int *)(&stack0xffffffec + DAT_00261f8c + DAT_00261f88) = iVar3;
  if ((param_2 == (char *)0x0) || (param_1 == (char *)0x0)) {
    if (*(int *)(&stack0xffffffec + DAT_00261f8c + DAT_00261f88) == *piVar4) {
      return;
    }
                    /* WARNING: Subroutine does not return */
    __stack_chk_fail(1);
  }
  thunk_FUN_00a76d80(&stack0x0000000c + DAT_00261f88,param_2,&stack0x00000008 + DAT_00261f88);
  pvVar2 = (void *)cocos2d::unzOpen(param_1);
  if (pvVar2 != (void *)0x0) {
    iVar3 = cocos2d::unzGetGlobalInfo(pvVar2,(unz_global_info_s *)(&stack0x00000018 + iVar1));
    if (iVar3 == 0) {
      memset(&stack0x00000270 + iVar1,0,0x2000);
      if (*(int *)(&stack0x00000018 + iVar1) == 0) {
                    /* WARNING: Subroutine does not return */
        thunk_FUN_00a75f64(&stack0x0000000c + iVar1);
      }
      *puVar5 = 0;
      *(undefined4 *)(&stack0xfffffff0 + iVar1) = 0;
      *(undefined4 *)(&stack0xfffffff4 + iVar1) = 0;
      *(undefined4 *)(&stack0xfffffff8 + iVar1) = 0;
      iVar3 = cocos2d::unzGetCurrentFileInfo
                        (pvVar2,(unz_file_info_s *)(&stack0x00000020 + iVar1),
                         &stack0x00000070 + iVar1,0x200,(void *)*puVar6,
                         *(ulong *)(&stack0xfffffff0 + iVar1),*(char **)(&stack0xfffffff4 + iVar1),
                         *(ulong *)(&stack0xfffffff8 + iVar1));
      if (iVar3 == 0) {
        std::operator+((string *)(&stack0x00000014 + iVar1),&stack0x0000000c + iVar1);
        std::operator+((string *)(&stack0x00000010 + iVar1),&stack0x00000014 + iVar1);
                    /* WARNING: Subroutine does not return */
        thunk_FUN_00a75f64(&stack0x00000014 + iVar1);
      }
    }
    cocos2d::unzClose(pvVar2);
  }
                    /* WARNING: Subroutine does not return */
  thunk_FUN_00a75f64(&stack0x0000000c + iVar1);
}



/* ===== _ZN15BFControlSlider12ccTouchBeganEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00278090 ===== */
/* signature: undefined __stdcall ccTouchBegan(CCTouch * param_1, CCEvent * param_2) */

/* BFControlSlider::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void BFControlSlider::ccTouchBegan(CCTouch *param_1,CCEvent *param_2)

{
  CCSize *pCVar1;
  float extraout_s0;
  float extraout_s1;
  float extraout_s2;
  float extraout_s3;
  CCSize local_38 [8];
  CCPoint aCStack_30 [8];
  CCTouch aCStack_28 [8];
  CCRect aCStack_20 [20];
  
  pCVar1 = (CCSize *)(**(code **)(*(int *)param_1 + 0x8c))();
  cocos2d::CCSize::CCSize(local_38,pCVar1);
  cocos2d::CCTouch::getLocation(aCStack_28);
  cocos2d::CCNode::convertToNodeSpace(aCStack_30);
  cocos2d::CCRect::CCRect(aCStack_20,extraout_s0,extraout_s1,extraout_s2,extraout_s3);
  cocos2d::CCRect::containsPoint(aCStack_20,aCStack_30);
  return;
}



/* ===== _ZN15BFControlSlider12ccTouchEndedEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00278fdc ===== */
/* signature: undefined __stdcall ccTouchEnded(CCTouch * param_1, CCEvent * param_2) */

/* BFControlSlider::ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void BFControlSlider::ccTouchEnded(CCTouch *param_1,CCEvent *param_2)

{
  BFCardView::onSliderMoveEnded(*(BFCardView **)(param_1 + 0x15c));
  return;
}



/* ===== _ZN15BFControlSlider16setValueNoNotifyEf @ 0027828e ===== */
/* signature: undefined __stdcall setValueNoNotify(float param_1) */

/* BFControlSlider::setValueNoNotify(float) */

void BFControlSlider::setValueNoNotify(float param_1)

{
  int *in_r0;
  int iVar1;
  int iVar2;
  int in_r1;
  int iVar3;
  
  iVar3 = in_r0[0x50];
  iVar1 = __aeabi_fcmplt(in_r1,iVar3);
  if (iVar1 == 0) {
    iVar3 = in_r1;
  }
  iVar1 = in_r0[0x51];
  iVar2 = __aeabi_fcmpgt(iVar3,iVar1);
  if (iVar2 == 0) {
    iVar1 = iVar3;
  }
  in_r0[0x4f] = iVar1;
  (**(code **)(*in_r0 + 0x254))(in_r0);
  return;
}



/* ===== _ZN15BFControlSlider6createEPKcS1_S1_ @ 00278268 ===== */
/* signature: undefined __stdcall create(char * param_1, char * param_2, char * param_3) */

/* BFControlSlider::create(char const*, char const*, char const*) */

void BFControlSlider::create(char *param_1,char *param_2,char *param_3)

{
  CCSprite *pCVar1;
  CCSprite *pCVar2;
  CCSprite *pCVar3;
  
  pCVar1 = (CCSprite *)cocos2d::CCSprite::create(param_1);
  pCVar2 = (CCSprite *)cocos2d::CCSprite::create(param_2);
  pCVar3 = (CCSprite *)cocos2d::CCSprite::create(param_3);
  create(pCVar1,pCVar2,pCVar3);
  return;
}



/* ===== _ZN15BFControlSlider6createEPN7cocos2d8CCSpriteES2_S2_ @ 0027822c ===== */
/* signature: undefined __stdcall create(CCSprite * param_1, CCSprite * param_2, CCSprite * param_3) */

/* BFControlSlider::create(cocos2d::CCSprite*, cocos2d::CCSprite*, cocos2d::CCSprite*) */

undefined8 BFControlSlider::create(CCSprite *param_1,CCSprite *param_2,CCSprite *param_3)

{
  BFControlSlider *this;
  CCSprite *pCVar1;
  CCSprite *pCVar2;
  
  pCVar1 = param_1;
  pCVar2 = param_3;
  this = operator_new(0x160);
  BFControlSlider(this);
  (**(code **)(*(int *)this + 0x2ac))(this,param_1,param_2,param_3,pCVar1,param_3,pCVar2);
  cocos2d::CCObject::autorelease((CCObject *)this);
  return CONCAT44(pCVar1,this);
}



/* ===== _ZN15BFControlSlider8setValueEf @ 00278e64 ===== */
/* signature: undefined __thiscall setValue(BFControlSlider * this, float param_1) */

/* BFControlSlider::setValue(float) */

void __thiscall BFControlSlider::setValue(BFControlSlider *this,float param_1)

{
  undefined8 uVar1;
  
  cocos2d::extension::CCControlSlider::setValue(param_1);
  if (*(int *)(this + 0x15c) != 0) {
    uVar1 = (**(code **)(*(int *)this + 0x27c))(this);
    BFCardView::onSliderValueChange((float)uVar1,(float)((ulonglong)uVar1 >> 0x20));
  }
  return;
}



/* ===== _ZN17BFSortTableWidget11setDelegateEP20BFSortWidgetDelegate @ 00279b26 ===== */
/* signature: undefined __thiscall setDelegate(BFSortTableWidget * this, BFSortWidgetDelegate * param_1) */

/* BFSortTableWidget::setDelegate(BFSortWidgetDelegate*) */

void __thiscall
BFSortTableWidget::setDelegate(BFSortTableWidget *this,BFSortWidgetDelegate *param_1)

{
  *(BFSortWidgetDelegate **)(this + 0x11c) = param_1;
  return;
}



/* ===== _ZN17BFSortTableWidget12ccTouchBeganEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00279618 ===== */
/* signature: undefined __stdcall ccTouchBegan(CCTouch * param_1, CCEvent * param_2) */

/* BFSortTableWidget::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) */

undefined4 BFSortTableWidget::ccTouchBegan(CCTouch *param_1,CCEvent *param_2)

{
  cocos2d::CCLayer::ccTouchBegan(param_1,param_2);
  return 1;
}



/* ===== _ZN17BFSortTableWidget12setSelectIdxEi @ 00279b2c ===== */
/* signature: undefined __thiscall setSelectIdx(BFSortTableWidget * this, int param_1) */

/* BFSortTableWidget::setSelectIdx(int) */

void __thiscall BFSortTableWidget::setSelectIdx(BFSortTableWidget *this,int param_1)

{
  undefined4 uVar1;
  CCScrollView *pCVar2;
  undefined8 uVar3;
  undefined1 auStack_20 [4];
  undefined4 local_1c;
  CCPoint aCStack_18 [12];
  
  (**(code **)(**(int **)(this + 0x114) + 0x200))(auStack_20);
  pCVar2 = *(CCScrollView **)(this + 0x114);
  uVar1 = __floatsisf(param_1);
  uVar1 = __mulsf3(uVar1,*(undefined4 *)(pCVar2 + 0x1dc));
  uVar3 = __addsf3(uVar1,local_1c);
  cocos2d::CCPoint::CCPoint(aCStack_18,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
  cocos2d::extension::CCScrollView::setContentOffset(pCVar2,aCStack_18,1);
  return;
}



/* ===== _ZN17BFSortTableWidget16setTouchPriorityEi @ 002795e8 ===== */
/* signature: undefined __stdcall setTouchPriority(int param_1) */

/* BFSortTableWidget::setTouchPriority(int) */

void BFSortTableWidget::setTouchPriority(int param_1)

{
  int in_r1;
  
  cocos2d::CCLayer::setTouchPriority(param_1);
  (**(code **)(**(int **)(param_1 + 0x114) + 0x1dc))(*(int **)(param_1 + 0x114),in_r1 + -1);
  return;
}



/* ===== _ZN17BFSortTableWidget16tableCellAtIndexEPN7cocos2d9extension11CCTableViewEj @ 002796f4 ===== */
/* signature: undefined __thiscall tableCellAtIndex(BFSortTableWidget * this, CCTableView * param_1, uint param_2) */

/* BFSortTableWidget::tableCellAtIndex(cocos2d::extension::CCTableView*, unsigned int) */

CCNode * __thiscall
BFSortTableWidget::tableCellAtIndex(BFSortTableWidget *this,CCTableView *param_1,uint param_2)

{
  int iVar1;
  CCString *this_00;
  CCNode *this_01;
  char *pcVar2;
  CCLabelTTF *this_02;
  int *piVar3;
  undefined4 uVar4;
  code *pcVar5;
  int iVar6;
  float extraout_s0;
  float extraout_s0_00;
  undefined8 uVar7;
  float extraout_s1;
  _ccColor3B local_34;
  undefined1 local_33;
  undefined1 local_32;
  CCPoint aCStack_30 [8];
  CCPoint aCStack_28 [8];
  CCPoint aCStack_20 [12];
  
  iVar1 = cocos2d::CCArray::objectAtIndex(*(CCArray **)(this + 0x110),param_2);
  iVar6 = DAT_00279830 + 0x27970e;
  this_00 = (CCString *)0x0;
  if (iVar1 != 0) {
    this_00 = (CCString *)
              __dynamic_cast(iVar1,*(undefined4 *)(iVar6 + DAT_00279834),
                             *(undefined4 *)(iVar6 + DAT_00279838),0);
  }
  this_01 = (CCNode *)cocos2d::extension::CCTableView::dequeueCell(param_1);
  if (this_01 == (CCNode *)0x0) {
    this_01 = operator_new(0xec);
    cocos2d::CCNode::CCNode(this_01);
    iVar1 = *(int *)(iVar6 + DAT_0027983c);
    *(int *)this_01 = iVar1 + 8;
    *(int *)(this_01 + 0xe4) = iVar1 + 0x1b4;
    uVar7 = cocos2d::CCObject::autorelease((CCObject *)this_01);
    pcVar5 = *(code **)(*(int *)this_01 + 0x7c);
    cocos2d::CCPoint::CCPoint(aCStack_30,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    (*pcVar5)(this_01,aCStack_30);
    (**(code **)(*(int *)this_01 + 0x11c))(this_01,param_2);
    pcVar2 = (char *)cocos2d::CCString::getCString(this_00);
    this_02 = (CCLabelTTF *)
              cocos2d::CCLabelTTF::create(pcVar2,(char *)(DAT_00279840 + 0x279780),extraout_s0);
    pcVar5 = *(code **)(*(int *)this_02 + 0x7c);
    cocos2d::CCPoint::CCPoint(aCStack_28,extraout_s0_00,extraout_s1);
    uVar7 = (*pcVar5)(this_02,aCStack_28);
    pcVar5 = *(code **)(*(int *)this_02 + 0x4c);
    cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar7,(float)((ulonglong)uVar7 >> 0x20));
    (*pcVar5)(this_02,aCStack_20);
    (**(code **)(*(int *)this_02 + 0x11c))(this_02,0x7b);
    local_34 = (_ccColor3B)0xff;
    local_33 = 0xeb;
    local_32 = 0xbc;
    cocos2d::CCLabelTTF::setFontFillColor(this_02,&local_34,true);
    (**(code **)(*(int *)this_01 + 200))(this_01,this_02);
  }
  else {
    (**(code **)(*(int *)this_01 + 0x11c))(this_01,param_2);
    iVar1 = (**(code **)(*(int *)this_01 + 0xd4))(this_01,0x7b);
    piVar3 = (int *)0x0;
    if (iVar1 != 0) {
      piVar3 = (int *)__dynamic_cast(iVar1,*(undefined4 *)(iVar6 + DAT_00279850),
                                     *(undefined4 *)(iVar6 + DAT_00279854),0);
    }
    pcVar5 = *(code **)(*piVar3 + 0x23c);
    uVar4 = cocos2d::CCString::getCString(this_00);
    (*pcVar5)(piVar3,uVar4);
  }
  return this_01;
}



/* ===== _ZN17BFSortTableWidget16tableCellTouchedEPN7cocos2d9extension11CCTableViewEPNS1_15CCTableViewCellE @ 00279638 ===== */
/* signature: undefined __thiscall tableCellTouched(BFSortTableWidget * this, CCTableView * param_1, CCTableViewCell * param_2) */

/* BFSortTableWidget::tableCellTouched(cocos2d::extension::CCTableView*,
   cocos2d::extension::CCTableViewCell*) */

void __thiscall
BFSortTableWidget::tableCellTouched
          (BFSortTableWidget *this,CCTableView *param_1,CCTableViewCell *param_2)

{
  undefined4 uVar1;
  undefined4 uVar2;
  int *piVar3;
  CCScrollView *pCVar4;
  int iVar5;
  float extraout_s0;
  float extraout_s1;
  undefined1 auStack_30 [4];
  undefined4 local_2c;
  undefined4 local_24;
  CCPoint aCStack_20 [12];
  
  uVar1 = cocos2d::extension::CCTableViewCell::getIdx(param_2);
  (**(code **)(**(int **)(this + 0x114) + 0x200))(auStack_30);
  iVar5 = *(int *)(this + 0x114);
  uVar2 = __floatsisf(uVar1);
  uVar2 = __mulsf3(uVar2,*(undefined4 *)(iVar5 + 0x1dc));
  uVar2 = __addsf3(uVar2,local_2c);
  cocos2d::extension::CCScrollView::getContentOffset();
  __subsf3(uVar2,local_24);
  iVar5 = __fixsfsi();
  if ((iVar5 + (iVar5 >> 0x1f) ^ iVar5 >> 0x1f) < 0x19) {
    piVar3 = *(int **)(this + 0x11c);
    *(undefined4 *)(this + 0x118) = uVar1;
    if (piVar3 != (int *)0x0) {
      (**(code **)(*piVar3 + 8))(piVar3,uVar1);
    }
  }
  else {
    pCVar4 = *(CCScrollView **)(this + 0x114);
    cocos2d::CCPoint::CCPoint(aCStack_20,extraout_s0,extraout_s1);
    cocos2d::extension::CCScrollView::setContentOffset(pCVar4,aCStack_20,1);
  }
  return;
}



/* ===== _ZN17BFSortTableWidget17scrollViewDidZoomEPN7cocos2d9extension12CCScrollViewE @ 0027959c ===== */
/* signature: undefined __stdcall scrollViewDidZoom(CCScrollView * param_1) */

/* BFSortTableWidget::scrollViewDidZoom(cocos2d::extension::CCScrollView*) */

CCScrollView * BFSortTableWidget::scrollViewDidZoom(CCScrollView *param_1)

{
  return param_1;
}



/* ===== _ZN17BFSortTableWidget19scrollViewDidScrollEPN7cocos2d9extension12CCScrollViewE @ 00279584 ===== */
/* signature: undefined __stdcall scrollViewDidScroll(CCScrollView * param_1) */

/* BFSortTableWidget::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

CCScrollView * BFSortTableWidget::scrollViewDidScroll(CCScrollView *param_1)

{
  return param_1;
}



/* ===== _ZN17BFSortTableWidget21tableCellSizeForIndexEPN7cocos2d9extension11CCTableViewEj @ 002795b4 ===== */
/* signature: undefined __thiscall tableCellSizeForIndex(BFSortTableWidget * this, CCTableView * param_1, uint param_2) */

/* BFSortTableWidget::tableCellSizeForIndex(cocos2d::extension::CCTableView*, unsigned int) */

BFSortTableWidget * __thiscall
BFSortTableWidget::tableCellSizeForIndex(BFSortTableWidget *this,CCTableView *param_1,uint param_2)

{
  float in_s0;
  float in_s1;
  
  cocos2d::CCSize::CCSize((CCSize *)this,in_s0,in_s1);
  return this;
}



/* ===== _ZN17BFSortTableWidget24numberOfCellsInTableViewEPN7cocos2d9extension11CCTableViewE @ 002796d0 ===== */
/* signature: undefined __stdcall numberOfCellsInTableView(CCTableView * param_1) */

/* BFSortTableWidget::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void BFSortTableWidget::numberOfCellsInTableView(CCTableView *param_1)

{
  if (*(CCArray **)(param_1 + 0x110) != (CCArray *)0x0) {
    cocos2d::CCArray::count(*(CCArray **)(param_1 + 0x110));
  }
  return;
}



/* ===== _ZN17BFSortTableWidget4initEv @ 00279988 ===== */
/* signature: undefined __thiscall init(BFSortTableWidget * this) */

/* BFSortTableWidget::init() */

int __thiscall BFSortTableWidget::init(BFSortTableWidget *this)

{
  int *piVar1;
  code *pcVar2;
  float extraout_s0;
  float extraout_s1;
  undefined8 uVar3;
  int local_4c;
  CCSize aCStack_48 [8];
  CCPoint aCStack_40 [8];
  CCPoint aCStack_38 [8];
  CCSize aCStack_30 [8];
  CCPoint aCStack_28 [8];
  CCPoint aCStack_20 [12];
  
  local_4c = cocos2d::CCLayer::init();
  if (local_4c != 0) {
    (**(code **)(*(int *)this + 0x1d4))(this,1);
    (**(code **)(*(int *)this + 0x1d0))(this,1);
    piVar1 = (int *)cocos2d::extension::CCScale9Sprite::createWithSpriteFrameName
                              ((char *)(DAT_00279a94 + 0x2799ba));
    pcVar2 = *(code **)(*piVar1 + 0x1dc);
    cocos2d::CCSize::CCSize(aCStack_48,extraout_s0,extraout_s1);
    uVar3 = (*pcVar2)(piVar1,aCStack_48);
    pcVar2 = *(code **)(*piVar1 + 0x7c);
    cocos2d::CCPoint::CCPoint(aCStack_40,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
    uVar3 = (*pcVar2)(piVar1,aCStack_40);
    pcVar2 = *(code **)(*piVar1 + 0x4c);
    cocos2d::CCPoint::CCPoint(aCStack_38,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
    (*pcVar2)(piVar1,aCStack_38);
    uVar3 = (**(code **)(*(int *)this + 200))(this,piVar1);
    cocos2d::CCSize::CCSize(aCStack_30,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
    piVar1 = (int *)BFSortTableView::create(this + 0x10c,aCStack_30);
    *(int **)(this + 0x114) = piVar1;
    local_4c = 1;
    if (piVar1 != (int *)0x0) {
      (**(code **)(*piVar1 + 0x208))(piVar1,1);
      uVar3 = cocos2d::extension::CCTableView::setVerticalFillOrder
                        (*(CCTableView **)(this + 0x114),0);
      *(BFSortTableWidget **)(*(int *)(this + 0x114) + 0x1d4) = this + 0x108;
      *(undefined4 *)(*(int *)(this + 0x114) + 0x1dc) = DAT_00279aa4;
      piVar1 = *(int **)(this + 0x114);
      pcVar2 = *(code **)(*piVar1 + 0x7c);
      cocos2d::CCPoint::CCPoint(aCStack_28,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
      uVar3 = (*pcVar2)(piVar1,aCStack_28);
      piVar1 = *(int **)(this + 0x114);
      pcVar2 = *(code **)(*piVar1 + 0x4c);
      cocos2d::CCPoint::CCPoint(aCStack_20,(float)uVar3,(float)((ulonglong)uVar3 >> 0x20));
      (*pcVar2)(piVar1,aCStack_20);
      (**(code **)(*(int *)this + 200))(this,*(undefined4 *)(this + 0x114));
    }
  }
  return local_4c;
}



/* ===== _ZN17BFSortTableWidget6createEv @ 00270b4c ===== */
/* signature: undefined __stdcall create(void) */

/* BFSortTableWidget::create() */

BFSortTableWidget * BFSortTableWidget::create(void)

{
  BFSortTableWidget *this;
  int iVar1;
  
  this = operator_new(0x120);
  BFSortTableWidget(this);
  if (this != (BFSortTableWidget *)0x0) {
    iVar1 = (**(code **)(*(int *)this + 0x18))(this);
    if (iVar1 == 0) {
      (**(code **)(*(int *)this + 8))(this);
      this = (BFSortTableWidget *)0x0;
    }
    else {
      cocos2d::CCObject::autorelease((CCObject *)this);
    }
  }
  return this;
}



/* ===== _ZN17BFSortTableWidget7onEnterEv @ 00279858 ===== */
/* signature: undefined __thiscall onEnter(BFSortTableWidget * this) */

/* BFSortTableWidget::onEnter() */

void __thiscall BFSortTableWidget::onEnter(BFSortTableWidget *this)

{
  cocos2d::CCLayer::onEnter((CCLayer *)this);
  return;
}



/* ===== _ZN17BFSortTableWidget7setDataEPN7cocos2d7CCArrayE @ 00279b04 ===== */
/* signature: undefined __thiscall setData(BFSortTableWidget * this, CCArray * param_1) */

/* BFSortTableWidget::setData(cocos2d::CCArray*) */

void __thiscall BFSortTableWidget::setData(BFSortTableWidget *this,CCArray *param_1)

{
  if (*(CCObject **)(this + 0x110) != (CCObject *)0x0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
  }
  *(CCArray **)(this + 0x110) = param_1;
  cocos2d::CCObject::retain((CCObject *)param_1);
  cocos2d::extension::CCTableView::reloadData();
  return;
}



/* ===== _ZN21JSB_BFWebViewDelegate18WebViewDidFailLoadEPKc @ 00273b34 ===== */
/* signature: undefined __thiscall WebViewDidFailLoad(JSB_BFWebViewDelegate * this, char * param_1) */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* JSB_BFWebViewDelegate::WebViewDidFailLoad(char const*) */

void __thiscall JSB_BFWebViewDelegate::WebViewDidFailLoad(JSB_BFWebViewDelegate *this,char *param_1)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 extraout_r1;
  undefined4 local_20;
  undefined4 local_1c;
  JSContext aJStack_18 [8];
  
  iVar1 = ScriptingCore::getInstance();
  c_string_to_jsval(aJStack_18,*(char **)(iVar1 + 8),(uint)param_1);
  uVar2 = ScriptingCore::getInstance();
  FUN_002736a0(&local_20,*(undefined4 *)(this + 0x18));
  ScriptingCore::executeFunctionWithOwner
            (uVar2,extraout_r1,local_20,local_1c,_FUN_00273b7c + 0x273b68,1,aJStack_18,0);
  return;
}



/* ===== _ZN21JSB_BFWebViewDelegate19WebViewDidStartLoadEv @ 00273858 ===== */
/* signature: undefined __thiscall WebViewDidStartLoad(JSB_BFWebViewDelegate * this) */

/* JSB_BFWebViewDelegate::WebViewDidStartLoad() */

void __thiscall JSB_BFWebViewDelegate::WebViewDidStartLoad(JSB_BFWebViewDelegate *this)

{
  undefined4 uVar1;
  undefined4 extraout_r1;
  undefined4 local_18;
  undefined4 local_14;
  
  uVar1 = ScriptingCore::getInstance();
  FUN_002736a0(&local_18,*(undefined4 *)(this + 0x18));
  ScriptingCore::executeFunctionWithOwner
            (uVar1,extraout_r1,local_18,local_14,DAT_00273888 + 0x273874,0,0,0);
  return;
}



/* ===== _ZN21JSB_BFWebViewDelegate20WebViewDidFinishLoadEv @ 00273810 ===== */
/* signature: undefined __thiscall WebViewDidFinishLoad(JSB_BFWebViewDelegate * this) */

/* JSB_BFWebViewDelegate::WebViewDidFinishLoad() */

void __thiscall JSB_BFWebViewDelegate::WebViewDidFinishLoad(JSB_BFWebViewDelegate *this)

{
  undefined4 uVar1;
  undefined4 extraout_r1;
  undefined4 local_18;
  undefined4 local_14;
  
  uVar1 = ScriptingCore::getInstance();
  FUN_002736a0(&local_18,*(undefined4 *)(this + 0x18));
  ScriptingCore::executeFunctionWithOwner
            (uVar1,extraout_r1,local_18,local_14,DAT_00273840 + 0x27382c,0,0,0);
  return;
}



/* ===== _ZN25JSB_XS_BFCardViewDelegate10onFirstIdxEi @ 002742ac ===== */
/* signature: undefined __thiscall onFirstIdx(JSB_XS_BFCardViewDelegate * this, int param_1) */

/* JSB_XS_BFCardViewDelegate::onFirstIdx(int) */

void __thiscall JSB_XS_BFCardViewDelegate::onFirstIdx(JSB_XS_BFCardViewDelegate *this,int param_1)

{
  undefined4 uVar1;
  undefined4 extraout_r1;
  undefined4 local_28;
  undefined4 local_24;
  undefined1 auStack_20 [4];
  undefined4 local_1c;
  int local_18 [3];
  
  thunk_FUN_00a76d80(&local_1c,DAT_00274304 + 0x2742ba,auStack_20);
  local_18[1] = 0xffffff81;
  local_18[0] = param_1;
  uVar1 = ScriptingCore::getInstance();
  FUN_002736a0(&local_28,*(undefined4 *)(this + 0x18));
  ScriptingCore::executeFunctionWithOwner(uVar1,extraout_r1,local_28,local_24,local_1c,1,local_18,0)
  ;
                    /* WARNING: Subroutine does not return */
  thunk_FUN_00a75f64(&local_1c);
}



/* ===== _ZN2xs14XSAssetsMgrJsb10onProgressEi @ 0027aa6c ===== */
/* signature: undefined __stdcall onProgress(int param_1) */

/* xs::XSAssetsMgrJsb::onProgress(int) */

undefined8 xs::XSAssetsMgrJsb::onProgress(int param_1)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char *pcVar4;
  char *pcVar5;
  char *pcVar6;
  
  iVar2 = DAT_0027aab0;
  iVar1 = DAT_0027aaac;
  iVar3 = cocos2d::CCString::createWithFormat((char *)(DAT_0027aaa8 + 0x27aa78));
  pcVar5 = *(char **)(iVar3 + 0x14);
  pcVar4 = (char *)(DAT_0027aab4 + 0x27aa84);
  Jsb::onCpp2Jsb_Core((char *)(iVar1 + 0x27aa82),(char *)(iVar2 + 0x27aa86),pcVar5,pcVar4,pcVar4,
                      pcVar4);
  pcVar6 = pcVar4;
  Jsb::onCpp2Jsb((char *)(iVar1 + 0x27aa82),(char *)(iVar2 + 0x27aa86),pcVar5,pcVar4,pcVar4,pcVar4);
  return CONCAT44(pcVar6,pcVar4);
}



/* ===== _ZN2xs14XSAssetsMgrJsb7onErrorENS_11XSAssetsMgr9ErrorCodeE @ 0027aab8 ===== */
/* signature: undefined __stdcall onError(ErrorCode param_1) */

/* xs::XSAssetsMgrJsb::onError(xs::XSAssetsMgr::ErrorCode) */

undefined8 xs::XSAssetsMgrJsb::onError(void)

{
  int iVar1;
  int iVar2;
  int iVar3;
  char *pcVar4;
  char *pcVar5;
  char *pcVar6;
  
  iVar2 = DAT_0027aafc;
  iVar1 = DAT_0027aaf8;
  iVar3 = cocos2d::CCString::createWithFormat((char *)(DAT_0027aaf4 + 0x27aac4));
  pcVar5 = *(char **)(iVar3 + 0x14);
  pcVar4 = (char *)(DAT_0027ab00 + 0x27aad0);
  Jsb::onCpp2Jsb_Core((char *)(iVar1 + 0x27aace),(char *)(iVar2 + 0x27aad2),pcVar5,pcVar4,pcVar4,
                      pcVar4);
  pcVar6 = pcVar4;
  Jsb::onCpp2Jsb((char *)(iVar1 + 0x27aace),(char *)(iVar2 + 0x27aad2),pcVar5,pcVar4,pcVar4,pcVar4);
  return CONCAT44(pcVar6,pcVar4);
}



/* ===== _ZN2xs14XSAssetsMgrJsb9onSuccessENS_11XSAssetsMgr11SuccessTypeE @ 0027aa14 ===== */
/* signature: undefined __thiscall onSuccess(XSAssetsMgrJsb * this, SuccessType param_1) */

/* xs::XSAssetsMgrJsb::onSuccess(xs::XSAssetsMgr::SuccessType) */

undefined8 __thiscall xs::XSAssetsMgrJsb::onSuccess(undefined4 param_1,int param_2)

{
  char *pcVar1;
  char *pcVar2;
  char *pcVar3;
  char *pcVar4;
  
  if (param_2 == 0) {
    pcVar1 = (char *)(DAT_0027aa60 + 0x27aa30);
  }
  else if (param_2 == 1) {
    pcVar1 = (char *)(DAT_0027aa5c + 0x27aa2a);
  }
  else {
    pcVar1 = (char *)(DAT_0027aa58 + 0x27aa24);
  }
  pcVar3 = (char *)(DAT_0027aa64 + 0x27aa38);
  pcVar2 = (char *)(DAT_0027aa68 + 0x27aa3a);
  Jsb::onCpp2Jsb_Core(pcVar3,pcVar1,pcVar2,pcVar2,pcVar2,pcVar2);
  pcVar4 = pcVar2;
  Jsb::onCpp2Jsb(pcVar3,pcVar1,pcVar2,pcVar2,pcVar2,pcVar2);
  return CONCAT44(pcVar4,pcVar2);
}



/* ===== _ZN3Jsb10onTestFailEPKcS1_S1_S1_S1_S1_ @ 00261720 ===== */
/* signature: undefined __stdcall onTestFail(char * param_1, char * param_2, char * param_3, char * param_4, char * param_5, char * param_6) */

/* Jsb::onTestFail(char const*, char const*, char const*, char const*, char const*, char const*) */

undefined8
Jsb::onTestFail(char *param_1,char *param_2,char *param_3,char *param_4,char *param_5,char *param_6)

{
  setCallback(param_1,param_2,param_3,param_4,param_5,param_6,(char *)(DAT_00261738 + 0x261730));
  return CONCAT44(param_6,param_5);
}



/* ===== _ZN3Jsb11setCallbackEPKcS1_S1_S1_S1_S1_S1_ @ 00261548 ===== */
/* signature: undefined __stdcall setCallback(char * param_1, char * param_2, char * param_3, char * param_4, char * param_5, char * param_6, char * param_7) */

/* Jsb::setCallback(char const*, char const*, char const*, char const*, char const*, char const*,
   char const*) */

void Jsb::setCallback(char *param_1,char *param_2,char *param_3,char *param_4,char *param_5,
                     char *param_6,char *param_7)

{
  int *piVar1;
  int iVar2;
  undefined1 auStack_68 [28];
  undefined1 auStack_4c [28];
  int local_30 [6];
  int iStack_18;
  
  iVar2 = *(int *)(DAT_002616bc + 0x261556);
  piVar1 = local_30;
  do {
    *piVar1 = iVar2 + 0xc;
    piVar1 = piVar1 + 1;
  } while (piVar1 != &iStack_18);
  if (param_1 == (char *)0x0) {
    param_1 = (char *)(DAT_002616c0 + 0x261570);
  }
  thunk_FUN_00a76d80(auStack_4c,param_1,auStack_68);
  thunk_FUN_00a76b08(local_30,auStack_4c);
                    /* WARNING: Subroutine does not return */
  thunk_FUN_00a75f64(auStack_4c);
}



/* ===== _ZN3Jsb12onCmnSuccessEPKcS1_S1_S1_S1_S1_ @ 0026173c ===== */
/* signature: undefined __stdcall onCmnSuccess(char * param_1, char * param_2, char * param_3, char * param_4, char * param_5, char * param_6) */

/* Jsb::onCmnSuccess(char const*, char const*, char const*, char const*, char const*, char const*)
    */

undefined8
Jsb::onCmnSuccess(char *param_1,char *param_2,char *param_3,char *param_4,char *param_5,
                 char *param_6)

{
  setCallback(param_1,param_2,param_3,param_4,param_5,param_6,(char *)(DAT_00261754 + 0x26174c));
  return CONCAT44(param_6,param_5);
}



/* ===== _ZN3Jsb13onTestSuccessEPKcS1_S1_S1_S1_S1_ @ 00261704 ===== */
/* signature: undefined __stdcall onTestSuccess(char * param_1, char * param_2, char * param_3, char * param_4, char * param_5, char * param_6) */

/* Jsb::onTestSuccess(char const*, char const*, char const*, char const*, char const*, char const*)
    */

undefined8
Jsb::onTestSuccess(char *param_1,char *param_2,char *param_3,char *param_4,char *param_5,
                  char *param_6)

{
  setCallback(param_1,param_2,param_3,param_4,param_5,param_6,(char *)(DAT_0026171c + 0x261714));
  return CONCAT44(param_6,param_5);
}



/* ===== _ZN3Jsb14onCpp2Jsb_CoreEPKcS1_S1_S1_S1_S1_ @ 002617b4 ===== */
/* signature: undefined __stdcall onCpp2Jsb_Core(char * param_1, char * param_2, char * param_3, char * param_4, char * param_5, char * param_6) */

/* Jsb::onCpp2Jsb_Core(char const*, char const*, char const*, char const*, char const*, char const*)
    */

undefined8
Jsb::onCpp2Jsb_Core(char *param_1,char *param_2,char *param_3,char *param_4,char *param_5,
                   char *param_6)

{
  setCallback(param_1,param_2,param_3,param_4,param_5,param_6,(char *)(DAT_002617cc + 0x2617c4));
  return CONCAT44(param_6,param_5);
}



/* ===== _ZN3Jsb15SendInformationEPKc @ 002616dc ===== */
/* signature: undefined __stdcall SendInformation(char * param_1) */

/* Jsb::SendInformation(char const*) */

void Jsb::SendInformation(char *param_1)

{
  cocos2d::CCMessageBox((char *)(DAT_002616ec + 0x2616e6),param_1);
  return;
}



/* ===== _ZN3Jsb15onExecuteScriptEPKc @ 002616f0 ===== */
/* signature: undefined __stdcall onExecuteScript(char * param_1) */

/* Jsb::onExecuteScript(char const*) */

void Jsb::onExecuteScript(char *param_1)

{
  int *piVar1;
  
  piVar1 = (int *)ScriptingCore::getInstance();
  (**(code **)(*piVar1 + 0x18))(piVar1,param_1);
  return;
}



/* ===== _ZN3Jsb20onCmnSuccessCallbackESs @ 00261758 ===== */
/* signature: undefined __stdcall onCmnSuccessCallback(string param_1) */

/* Jsb::onCmnSuccessCallback(std::string) */

undefined8 Jsb::onCmnSuccessCallback(undefined4 *param_1)

{
  char *pcVar1;
  char *pcVar2;
  
  pcVar1 = (char *)(DAT_00261778 + 0x261766);
  pcVar2 = pcVar1;
  onCmnSuccess((char *)(DAT_00261774 + 0x261764),(char *)*param_1,pcVar1,pcVar1,pcVar1,pcVar1);
  return CONCAT44(pcVar2,pcVar1);
}



/* ===== _ZN3Jsb22onEasySdkNotify_nativeEPKcS1_S1_S1_S1_S1_S1_S1_ @ 002617d0 ===== */
/* signature: undefined __stdcall onEasySdkNotify_native(char * param_1, char * param_2, char * param_3, char * param_4, char * param_5, char * param_6, char * param_7, char * param_8) */

/* Jsb::onEasySdkNotify_native(char const*, char const*, char const*, char const*, char const*, char
   const*, char const*, char const*) */

void Jsb::onEasySdkNotify_native
               (char *param_1,char *param_2,char *param_3,char *param_4,char *param_5,char *param_6,
               char *param_7,char *param_8)

{
  int *piVar1;
  int iVar2;
  undefined1 auStack_78 [32];
  undefined1 auStack_58 [32];
  int local_38 [8];
  int iStack_18;
  
  iVar2 = *(int *)(DAT_0026196c + 0x2617de);
  piVar1 = local_38;
  do {
    *piVar1 = iVar2 + 0xc;
    piVar1 = piVar1 + 1;
  } while (piVar1 != &iStack_18);
  if (param_1 == (char *)0x0) {
    param_1 = (char *)(DAT_00261970 + 0x261800);
  }
  thunk_FUN_00a76d80(auStack_58,param_1,auStack_78);
  thunk_FUN_00a76b08(local_38,auStack_58);
                    /* WARNING: Subroutine does not return */
  thunk_FUN_00a75f64(auStack_58);
}



/* ===== _ZN3Jsb25dispatchResponseCallbacksESsSsSsSsSsSsSs @ 00261460 ===== */
/* signature: undefined __stdcall dispatchResponseCallbacks(string param_1, string param_2, string param_3, string param_4, string param_5, string param_6, string param_7) */

/* Jsb::dispatchResponseCallbacks(std::string, std::string, std::string, std::string, std::string,
   std::string, std::string) */

void Jsb::dispatchResponseCallbacks
               (uint *param_1,uint *param_2,uint *param_3,uint *param_4,uint *param_5,uint *param_6,
               undefined4 *param_7)

{
  int iVar1;
  undefined4 uVar2;
  undefined4 uVar3;
  char *pcVar4;
  undefined4 local_50;
  undefined4 local_4c;
  undefined4 local_48;
  undefined4 local_44;
  undefined4 local_40;
  undefined4 local_3c;
  undefined4 local_38;
  undefined4 local_34;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  iVar1 = ScriptingCore::getInstance();
  pcVar4 = *(char **)(iVar1 + 8);
  c_string_to_jsval((JSContext *)&local_50,pcVar4,*param_1);
  local_48 = local_50;
  local_44 = local_4c;
  c_string_to_jsval((JSContext *)&local_50,pcVar4,*param_2);
  local_40 = local_50;
  local_3c = local_4c;
  c_string_to_jsval((JSContext *)&local_50,pcVar4,*param_3);
  local_38 = local_50;
  local_34 = local_4c;
  c_string_to_jsval((JSContext *)&local_50,pcVar4,*param_4);
  local_30 = local_50;
  local_2c = local_4c;
  c_string_to_jsval((JSContext *)&local_50,pcVar4,*param_5);
  local_28 = local_50;
  local_24 = local_4c;
  c_string_to_jsval((JSContext *)&local_50,pcVar4,*param_6);
  local_20 = local_50;
  local_1c = local_4c;
  uVar2 = ScriptingCore::getInstance();
  iVar1 = DAT_00261538;
  uVar3 = DAT_0026153c;
  if (**(int **)(DAT_00261540 + 0x261506) != 0) {
    iVar1 = **(int **)(DAT_00261540 + 0x261506);
    uVar3 = 0xffffff87;
  }
  ScriptingCore::executeFunctionWithOwner(uVar2,0,iVar1,uVar3,*param_7,6,&local_48,0);
  return;
}



/* ===== _ZN3Jsb9onCmnFailEPKcS1_S1_S1_S1_S1_ @ 0026177c ===== */
/* signature: undefined __stdcall onCmnFail(char * param_1, char * param_2, char * param_3, char * param_4, char * param_5, char * param_6) */

/* Jsb::onCmnFail(char const*, char const*, char const*, char const*, char const*, char const*) */

undefined8
Jsb::onCmnFail(char *param_1,char *param_2,char *param_3,char *param_4,char *param_5,char *param_6)

{
  setCallback(param_1,param_2,param_3,param_4,param_5,param_6,(char *)(DAT_00261794 + 0x26178c));
  return CONCAT44(param_6,param_5);
}



/* ===== _ZN3Jsb9onCpp2JsbEPKcS1_S1_S1_S1_S1_ @ 00261798 ===== */
/* signature: undefined __stdcall onCpp2Jsb(char * param_1, char * param_2, char * param_3, char * param_4, char * param_5, char * param_6) */

/* Jsb::onCpp2Jsb(char const*, char const*, char const*, char const*, char const*, char const*) */

undefined8
Jsb::onCpp2Jsb(char *param_1,char *param_2,char *param_3,char *param_4,char *param_5,char *param_6)

{
  setCallback(param_1,param_2,param_3,param_4,param_5,param_6,(char *)(DAT_002617b0 + 0x2617a8));
  return CONCAT44(param_6,param_5);
}



/* ===== _ZN8BFButton12ccTouchBeganEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00277a64 ===== */
/* signature: undefined __stdcall ccTouchBegan(CCTouch * param_1, CCEvent * param_2) */

/* BFButton::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) */

undefined4 BFButton::ccTouchBegan(CCTouch *param_1,CCEvent *param_2)

{
  int iVar1;
  int iVar2;
  undefined4 uVar3;
  int *piVar4;
  
  iVar1 = DAT_00277b00;
  if (param_1[DAT_00277b00] == (CCTouch)0x0) {
    iVar2 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
    if (iVar2 == 0) {
      return 0;
    }
    iVar2 = (**(code **)(*(int *)param_1 + 0x240))(param_1);
  }
  else {
    iVar2 = (**(code **)(*(int *)param_1 + 0x268))(param_1);
  }
  uVar3 = 0;
  if (iVar2 != 0) {
    iVar2 = (**(code **)(*(int *)param_1 + 0x94))(param_1);
    uVar3 = 0;
    if (iVar2 != 0) {
      iVar2 = cocos2d::extension::CCControl::hasVisibleParents((CCControl *)param_1);
      uVar3 = 0;
      if (iVar2 != 0) {
        for (piVar4 = *(int **)(param_1 + 0xa8); piVar4 != (int *)0x0;
            piVar4 = (int *)(**(code **)(*piVar4 + 0xe4))(piVar4)) {
          iVar2 = (**(code **)(*piVar4 + 0x94))(piVar4);
          if (iVar2 == 0) {
            return 0;
          }
        }
        param_1[0x160] = (CCTouch)0x1;
        if (param_1[iVar1] == (CCTouch)0x0) {
          (**(code **)(*(int *)param_1 + 0x24c))(param_1);
        }
        (**(code **)(*(int *)param_1 + 600))(param_1,1);
        uVar3 = 1;
      }
    }
  }
  return uVar3;
}



/* ===== _ZN8BFButton12ccTouchEndedEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 0027793c ===== */
/* signature: undefined __stdcall ccTouchEnded(CCTouch * param_1, CCEvent * param_2) */

/* BFButton::ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void BFButton::ccTouchEnded(CCTouch *param_1,CCEvent *param_2)

{
  int iVar1;
  undefined4 uVar2;
  
  if ((param_1[0x17c] == (CCTouch)0x0) || (param_1[0x17e] == (CCTouch)0x0)) {
    iVar1 = (**(code **)(*(int *)param_1 + 0x240))(param_1);
    if (iVar1 != 0) {
      iVar1 = (**(code **)(*(int *)param_1 + 0x268))(param_1,param_2);
      if (iVar1 == 0) {
        uVar2 = 0x40;
      }
      else {
        uVar2 = 0x20;
      }
      (**(code **)(*(int *)param_1 + 600))(param_1,uVar2);
      param_1[0x160] = (CCTouch)0x0;
      (**(code **)(*(int *)param_1 + 0x24c))(param_1);
      return;
    }
    iVar1 = (**(code **)(*(int *)param_1 + 0x268))(param_1,param_2);
    if (iVar1 == 0) {
      uVar2 = 0x40;
    }
    else {
      uVar2 = 0x20;
    }
    (**(code **)(*(int *)param_1 + 600))(param_1,uVar2);
  }
  else {
    param_1[0x17c] = (CCTouch)0x0;
  }
  param_1[0x160] = (CCTouch)0x0;
  return;
}



/* ===== _ZN8BFButton12ccTouchMovedEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00277a10 ===== */
/* signature: undefined __stdcall ccTouchMoved(CCTouch * param_1, CCEvent * param_2) */

/* BFButton::ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void BFButton::ccTouchMoved(CCTouch *param_1,CCEvent *param_2)

{
  undefined4 uVar1;
  int iVar2;
  CCPoint *extraout_r2;
  CCTouch aCStack_20 [8];
  CCTouch aCStack_18 [12];
  
  cocos2d::extension::CCControlButton::ccTouchMoved(param_1,param_2);
  cocos2d::CCTouch::getLocation(aCStack_20);
  cocos2d::CCTouch::getStartLocation(aCStack_18);
  uVar1 = cocos2d::ccpDistance((cocos2d *)aCStack_20,(CCPoint *)aCStack_18,extraout_r2);
  iVar2 = __aeabi_fcmpgt(uVar1,DAT_00277a4c);
  if (iVar2 != 0) {
    param_1[0x17c] = (CCTouch)0x1;
  }
  return;
}



/* ===== _ZN8BFButton13setFilterMoveEb @ 00277d2c ===== */
/* signature: undefined __thiscall setFilterMove(BFButton * this, bool param_1) */

/* BFButton::setFilterMove(bool) */

void __thiscall BFButton::setFilterMove(BFButton *this,bool param_1)

{
  this[0x17e] = (BFButton)param_1;
  return;
}



/* ===== _ZN8BFButton15setSwallowTouchEb @ 00277d34 ===== */
/* signature: undefined __thiscall setSwallowTouch(BFButton * this, bool param_1) */

/* BFButton::setSwallowTouch(bool) */

void __thiscall BFButton::setSwallowTouch(BFButton *this,bool param_1)

{
  this[DAT_00277d44] = (BFButton)param_1;
  setFilterMove(this,true);
  return;
}



/* ===== _ZN8BFButton17setEventOnDisableEb @ 00277d20 ===== */
/* signature: undefined __thiscall setEventOnDisable(BFButton * this, bool param_1) */

/* BFButton::setEventOnDisable(bool) */

void __thiscall BFButton::setEventOnDisable(BFButton *this,bool param_1)

{
  this[DAT_00277d28] = (BFButton)param_1;
  return;
}



/* ===== _ZN8BFButton27registerWithTouchDispatcherEv @ 002779c8 ===== */
/* signature: undefined __thiscall registerWithTouchDispatcher(BFButton * this) */

/* BFButton::registerWithTouchDispatcher() */

void __thiscall BFButton::registerWithTouchDispatcher(BFButton *this)

{
  int *piVar1;
  CCTouchDispatcher *this_00;
  int iVar2;
  
  piVar1 = (int *)cocos2d::CCDirector::sharedDirector();
  this_00 = (CCTouchDispatcher *)(**(code **)(*piVar1 + 0x40))();
  iVar2 = (**(code **)(*(int *)this + 0x1e0))(this);
  cocos2d::CCTouchDispatcher::addTargetedDelegate
            (this_00,(CCTouchDelegate *)(this + 0xe4),iVar2,(bool)this[DAT_002779f8]);
  return;
}



/* ===== _ZN8BFButton6createEv @ 00277ce0 ===== */
/* signature: undefined __stdcall create(void) */

/* BFButton::create() */

BFButton * BFButton::create(void)

{
  BFButton *this;
  int iVar1;
  
  this = operator_new(0x180);
  BFButton(this);
  if (this != (BFButton *)0x0) {
    iVar1 = (**(code **)(*(int *)this + 0x18))(this);
    if (iVar1 == 0) {
      (**(code **)(*(int *)this + 8))(this);
      this = (BFButton *)0x0;
    }
    else {
      cocos2d::CCObject::autorelease((CCObject *)this);
    }
  }
  return this;
}



/* ===== _ZN8TypeTestI10BFCardViewE4s_idEv @ 00271520 ===== */
/* signature: undefined __stdcall s_id(void) */

/* TypeTest<BFCardView>::s_id() */

undefined4 TypeTest<BFCardView>::s_id(void)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  piVar3 = *(int **)(DAT_00271558 + 0x27152a);
  puVar4 = *(undefined4 **)(DAT_0027155c + 0x27152e);
  if ((-1 < *piVar3 << 0x1f) && (iVar1 = __cxa_guard_acquire(piVar3), iVar1 != 0)) {
    std::type_info::name(*(type_info **)(DAT_00271560 + 0x271544));
    uVar2 = FUN_0026e0cc();
    *puVar4 = uVar2;
    __cxa_guard_release(piVar3);
  }
  return *puVar4;
}



/* ===== _ZN8TypeTestI15BFControlSliderE4s_idEv @ 00270f9c ===== */
/* signature: undefined __stdcall s_id(void) */

/* TypeTest<BFControlSlider>::s_id() */

undefined4 TypeTest<BFControlSlider>::s_id(void)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  piVar3 = *(int **)(DAT_00270fd4 + 0x270fa6);
  puVar4 = *(undefined4 **)(DAT_00270fd8 + 0x270faa);
  if ((-1 < *piVar3 << 0x1f) && (iVar1 = __cxa_guard_acquire(piVar3), iVar1 != 0)) {
    std::type_info::name(*(type_info **)(DAT_00270fdc + 0x270fc0));
    uVar2 = FUN_0026e0cc();
    *puVar4 = uVar2;
    __cxa_guard_release(piVar3);
  }
  return *puVar4;
}



/* ===== _ZN8TypeTestI17BFSortTableWidgetE4s_idEv @ 00271a9c ===== */
/* signature: undefined __stdcall s_id(void) */

/* TypeTest<BFSortTableWidget>::s_id() */

undefined4 TypeTest<BFSortTableWidget>::s_id(void)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  piVar3 = *(int **)(DAT_00271ad4 + 0x271aa6);
  puVar4 = *(undefined4 **)(DAT_00271ad8 + 0x271aaa);
  if ((-1 < *piVar3 << 0x1f) && (iVar1 = __cxa_guard_acquire(piVar3), iVar1 != 0)) {
    std::type_info::name(*(type_info **)(DAT_00271adc + 0x271ac0));
    uVar2 = FUN_0026e0cc();
    *puVar4 = uVar2;
    __cxa_guard_release(piVar3);
  }
  return *puVar4;
}



/* ===== _ZN8TypeTestI8BFButtonE4s_idEv @ 0027259c ===== */
/* signature: undefined __stdcall s_id(void) */

/* TypeTest<BFButton>::s_id() */

undefined4 TypeTest<BFButton>::s_id(void)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  piVar3 = *(int **)(DAT_002725d4 + 0x2725a6);
  puVar4 = *(undefined4 **)(DAT_002725d8 + 0x2725aa);
  if ((-1 < *piVar3 << 0x1f) && (iVar1 = __cxa_guard_acquire(piVar3), iVar1 != 0)) {
    std::type_info::name(*(type_info **)(DAT_002725dc + 0x2725c0));
    uVar2 = FUN_0026e0cc();
    *puVar4 = uVar2;
    __cxa_guard_release(piVar3);
  }
  return *puVar4;
}



/* ===== _ZN8TypeTestI9BFWebViewE4s_idEv @ 00272020 ===== */
/* signature: undefined __stdcall s_id(void) */

/* TypeTest<BFWebView>::s_id() */

undefined4 TypeTest<BFWebView>::s_id(void)

{
  int iVar1;
  undefined4 uVar2;
  int *piVar3;
  undefined4 *puVar4;
  
  piVar3 = *(int **)(DAT_00272058 + 0x27202a);
  puVar4 = *(undefined4 **)(DAT_0027205c + 0x27202e);
  if ((-1 < *piVar3 << 0x1f) && (iVar1 = __cxa_guard_acquire(piVar3), iVar1 != 0)) {
    std::type_info::name(*(type_info **)(DAT_00272060 + 0x272044));
    uVar2 = FUN_0026e0cc();
    *puVar4 = uVar2;
    __cxa_guard_release(piVar3);
  }
  return *puVar4;
}



/* ===== _ZN9BFWebView10setVisibleEb @ 00279bf2 ===== */
/* signature: undefined __thiscall setVisible(BFWebView * this, bool param_1) */

/* BFWebView::setVisible(bool) */

void __thiscall BFWebView::setVisible(BFWebView *this,bool param_1)

{
  cocos2d::CCNode::setVisible((CCNode *)this,param_1);
  BFWebViewImp::setVisible(*(BFWebViewImp **)(this + 0xe4),param_1);
  return;
}



/* ===== _ZN9BFWebView11setDelegateEP17BFWebViewDelegate @ 00279dc4 ===== */
/* signature: undefined __thiscall setDelegate(BFWebView * this, BFWebViewDelegate * param_1) */

/* BFWebView::setDelegate(BFWebViewDelegate*) */

void __thiscall BFWebView::setDelegate(BFWebView *this,BFWebViewDelegate *param_1)

{
  if (*(BFWebViewDelegate **)(this + 0xe8) != param_1) {
    *(BFWebViewDelegate **)(this + 0xe8) = param_1;
    BFWebViewImp::setDelegate(*(BFWebViewImp **)(this + 0xe4),param_1);
  }
  return;
}



/* ===== _ZN9BFWebView11setPositionERKN7cocos2d7CCPointE @ 00279c08 ===== */
/* signature: undefined __thiscall setPosition(BFWebView * this, CCPoint * param_1) */

/* BFWebView::setPosition(cocos2d::CCPoint const&) */

void __thiscall BFWebView::setPosition(BFWebView *this,CCPoint *param_1)

{
  CCPoint *pCVar1;
  BFWebViewImp *this_00;
  
  cocos2d::CCNode::setPosition((CCNode *)this,param_1);
  this_00 = *(BFWebViewImp **)(this + 0xe4);
  pCVar1 = (CCPoint *)(**(code **)(*(int *)this + 0x80))(this);
  BFWebViewImp::setAnchorPoint(this_00,pCVar1);
  BFWebViewImp::setPosition(*(BFWebViewImp **)(this + 0xe4),param_1);
  return;
}



/* ===== _ZN9BFWebView14setContentSizeERKN7cocos2d6CCSizeE @ 00279c34 ===== */
/* signature: undefined __thiscall setContentSize(BFWebView * this, CCSize * param_1) */

/* BFWebView::setContentSize(cocos2d::CCSize const&) */

void __thiscall BFWebView::setContentSize(BFWebView *this,CCSize *param_1)

{
  cocos2d::CCNode::setContentSize((CCNode *)this,param_1);
  BFWebViewImp::setContentSize(*(BFWebViewImp **)(this + 0xe4),param_1);
  return;
}



/* ===== _ZN9BFWebView14setTouchEnableEb @ 00279dac ===== */
/* signature: undefined __thiscall setTouchEnable(BFWebView * this, bool param_1) */

/* BFWebView::setTouchEnable(bool) */

void __thiscall BFWebView::setTouchEnable(BFWebView *this,bool param_1)

{
  if (this[0xed] != (BFWebView)param_1) {
    this[0xed] = (BFWebView)param_1;
    BFWebViewImp::setTouchEnable(*(BFWebViewImp **)(this + 0xe4),param_1);
  }
  return;
}



/* ===== _ZN9BFWebView14updatePositionEv @ 00279bd4 ===== */
/* signature: undefined __stdcall updatePosition(void) */

/* BFWebView::updatePosition() */

undefined8 BFWebView::updatePosition(void)

{
  int *in_r0;
  CCPoint *pCVar1;
  undefined4 in_r1;
  int *piStack_10;
  undefined4 uStack_c;
  
  piStack_10 = in_r0;
  uStack_c = in_r1;
  pCVar1 = (CCPoint *)(**(code **)(*in_r0 + 0x50))();
  cocos2d::CCPoint::CCPoint((CCPoint *)&piStack_10,pCVar1);
  (**(code **)(*in_r0 + 0x4c))(in_r0,(CCPoint *)&piStack_10);
  return CONCAT44(uStack_c,piStack_10);
}



/* ===== _ZN9BFWebView18setIsNeedUpdatePosEb @ 00279d7c ===== */
/* signature: undefined __thiscall setIsNeedUpdatePos(BFWebView * this, bool param_1) */

/* BFWebView::setIsNeedUpdatePos(bool) */

void __thiscall BFWebView::setIsNeedUpdatePos(BFWebView *this,bool param_1)

{
  if (this[0xec] != (BFWebView)param_1) {
    this[0xec] = (BFWebView)param_1;
    if (param_1) {
      cocos2d::CCNode::schedule((_func_void_float *)this);
    }
    else {
      cocos2d::CCNode::unschedule((_func_void_float *)this);
    }
  }
  return;
}



/* ===== _ZN9BFWebView4initEv @ 00279d0e ===== */
/* signature: undefined __thiscall init(BFWebView * this) */

/* BFWebView::init() */

undefined4 __thiscall BFWebView::init(BFWebView *this)

{
  int iVar1;
  CCObject *this_00;
  undefined4 uVar2;
  
  iVar1 = cocos2d::CCNode::init();
  uVar2 = 0;
  if (iVar1 != 0) {
    this_00 = (CCObject *)BFWebViewImp::create();
    *(CCObject **)(this + 0xe4) = this_00;
    if (this_00 != (CCObject *)0x0) {
      cocos2d::CCObject::retain(this_00);
    }
    BFWebViewImp::addWebView();
    uVar2 = 1;
  }
  return uVar2;
}



/* ===== _ZN9BFWebView6onExitEv @ 00279c4a ===== */
/* signature: undefined __thiscall onExit(BFWebView * this) */

/* BFWebView::onExit() */

void __thiscall BFWebView::onExit(BFWebView *this)

{
  if (*(int *)(this + 0xe4) != 0) {
    BFWebViewImp::removeWebView();
  }
  cocos2d::CCNode::onExit((CCNode *)this);
  return;
}



/* ===== _ZN9BFWebView7loadUrlEPKc @ 00279d70 ===== */
/* signature: undefined __thiscall loadUrl(BFWebView * this, char * param_1) */

/* BFWebView::loadUrl(char const*) */

void __thiscall BFWebView::loadUrl(BFWebView *this,char *param_1)

{
  BFWebViewImp::loadUrl(*(BFWebViewImp **)(this + 0xe4),param_1);
  return;
}



/* ===== _ZN9BFWebView7onEnterEv @ 00279c64 ===== */
/* signature: undefined __stdcall onEnter(void) */

/* BFWebView::onEnter() */

void BFWebView::onEnter(void)

{
  cocos2d::CCNode::onEnter();
  return;
}



/* ===== _ZTV10BFCardView @ 00bce9b0 ===== */
/* signature: undefined _ZTV10BFCardView(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for BFCardView */

void _ZTV10BFCardView(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV12BFWebViewImp @ 00bcdb38 ===== */
/* signature: undefined _ZTV12BFWebViewImp(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for BFWebViewImp */

void _ZTV12BFWebViewImp(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV12JsbConnecter @ 00bcda98 ===== */
/* signature: undefined _ZTV12JsbConnecter(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for JsbConnecter */

void _ZTV12JsbConnecter(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV15BFControlSlider @ 00bce668 ===== */
/* signature: undefined _ZTV15BFControlSlider(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for BFControlSlider */

void _ZTV15BFControlSlider(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV17BFSortTableWidget @ 00bcef18 ===== */
/* signature: undefined _ZTV17BFSortTableWidget(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for BFSortTableWidget */

void _ZTV17BFSortTableWidget(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV17BFWebViewDelegate @ 00bce008 ===== */
/* signature: undefined _ZTV17BFWebViewDelegate(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for BFWebViewDelegate */

void _ZTV17BFWebViewDelegate(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV21JSB_BFWebViewDelegate @ 00bce020 ===== */
/* signature: undefined _ZTV21JSB_BFWebViewDelegate(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for JSB_BFWebViewDelegate */

void _ZTV21JSB_BFWebViewDelegate(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV25JSB_XS_BFCardViewDelegate @ 00bce118 ===== */
/* signature: undefined _ZTV25JSB_XS_BFCardViewDelegate(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for JSB_XS_BFCardViewDelegate */

void _ZTV25JSB_XS_BFCardViewDelegate(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV8BFButton @ 00bce278 ===== */
/* signature: undefined _ZTV8BFButton(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for BFButton */

void _ZTV8BFButton(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTV9BFWebView @ 00bcf1e0 ===== */
/* signature: undefined _ZTV9BFWebView(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for BFWebView */

void _ZTV9BFWebView(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZTVN2xs14XSAssetsMgrJsbE @ 00bcf6d8 ===== */
/* signature: undefined _ZTVN2xs14XSAssetsMgrJsbE(void) */

/* WARNING: Control flow encountered bad instruction data */
/* vtable for xs::XSAssetsMgrJsb */

void _ZTVN2xs14XSAssetsMgrJsbE(void)

{
                    /* WARNING: Bad instruction - Truncating control flow here */
  halt_baddata();
}



/* ===== _ZThn20_N21JSB_BFWebViewDelegate18WebViewDidFailLoadEPKc @ 00273b20 ===== */
/* signature: undefined __thiscall WebViewDidFailLoad(JSB_BFWebViewDelegate * this, char * param_1) */

/* non-virtual thunk to JSB_BFWebViewDelegate::WebViewDidFailLoad(char const*) */

void __thiscall JSB_BFWebViewDelegate::WebViewDidFailLoad(JSB_BFWebViewDelegate *this,char *param_1)

{
                    /* WARNING: Could not recover jumptable at 0x00273b2c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00273b30 + 0x273b2c))(this + -0x14);
  return;
}



/* ===== _ZThn20_N21JSB_BFWebViewDelegate19WebViewDidStartLoadEv @ 00273844 ===== */
/* signature: undefined __thiscall WebViewDidStartLoad(JSB_BFWebViewDelegate * this) */

/* non-virtual thunk to JSB_BFWebViewDelegate::WebViewDidStartLoad() */

void __thiscall JSB_BFWebViewDelegate::WebViewDidStartLoad(JSB_BFWebViewDelegate *this)

{
                    /* WARNING: Could not recover jumptable at 0x00273850. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00273854 + 0x273850))(this + -0x14);
  return;
}



/* ===== _ZThn20_N21JSB_BFWebViewDelegate20WebViewDidFinishLoadEv @ 002737fc ===== */
/* signature: undefined __thiscall WebViewDidFinishLoad(JSB_BFWebViewDelegate * this) */

/* non-virtual thunk to JSB_BFWebViewDelegate::WebViewDidFinishLoad() */

void __thiscall JSB_BFWebViewDelegate::WebViewDidFinishLoad(JSB_BFWebViewDelegate *this)

{
                    /* WARNING: Could not recover jumptable at 0x00273808. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_0027380c + 0x273808))(this + -0x14);
  return;
}



/* ===== _ZThn20_N25JSB_XS_BFCardViewDelegate10onFirstIdxEi @ 00274298 ===== */
/* signature: undefined __thiscall onFirstIdx(JSB_XS_BFCardViewDelegate * this, int param_1) */

/* non-virtual thunk to JSB_XS_BFCardViewDelegate::onFirstIdx(int) */

void __thiscall JSB_XS_BFCardViewDelegate::onFirstIdx(JSB_XS_BFCardViewDelegate *this,int param_1)

{
                    /* WARNING: Could not recover jumptable at 0x002742a4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_002742a8 + 0x2742a4))(this + -0x14);
  return;
}



/* ===== _ZThn228_N10BFCardView12ccTouchEndedEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00278cdc ===== */
/* signature: undefined __thiscall ccTouchEnded(BFCardView * this, CCTouch * param_1, CCEvent * param_2) */

/* non-virtual thunk to BFCardView::ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void __thiscall BFCardView::ccTouchEnded(BFCardView *this,CCTouch *param_1,CCEvent *param_2)

{
                    /* WARNING: Could not recover jumptable at 0x00278ce8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00278cec + 0x278ce8))(this + -0xe4);
  return;
}



/* ===== _ZThn228_N15BFControlSlider12ccTouchBeganEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 0027807c ===== */
/* signature: undefined __thiscall ccTouchBegan(BFControlSlider * this, CCTouch * param_1, CCEvent * param_2) */

/* non-virtual thunk to BFControlSlider::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void __thiscall
BFControlSlider::ccTouchBegan(BFControlSlider *this,CCTouch *param_1,CCEvent *param_2)

{
                    /* WARNING: Could not recover jumptable at 0x00278088. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_0027808c + 0x278088))(this + -0xe4);
  return;
}



/* ===== _ZThn228_N15BFControlSlider12ccTouchEndedEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00278fc8 ===== */
/* signature: undefined __thiscall ccTouchEnded(BFControlSlider * this, CCTouch * param_1, CCEvent * param_2) */

/* non-virtual thunk to BFControlSlider::ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void __thiscall
BFControlSlider::ccTouchEnded(BFControlSlider *this,CCTouch *param_1,CCEvent *param_2)

{
                    /* WARNING: Could not recover jumptable at 0x00278fd4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00278fd8 + 0x278fd4))(this + -0xe4);
  return;
}



/* ===== _ZThn228_N17BFSortTableWidget12ccTouchBeganEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00279604 ===== */
/* signature: undefined __thiscall ccTouchBegan(BFSortTableWidget * this, CCTouch * param_1, CCEvent * param_2) */

/* non-virtual thunk to BFSortTableWidget::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void __thiscall
BFSortTableWidget::ccTouchBegan(BFSortTableWidget *this,CCTouch *param_1,CCEvent *param_2)

{
                    /* WARNING: Could not recover jumptable at 0x00279610. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279614 + 0x279610))(this + -0xe4);
  return;
}



/* ===== _ZThn228_N8BFButton12ccTouchBeganEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00277a50 ===== */
/* signature: undefined __thiscall ccTouchBegan(BFButton * this, CCTouch * param_1, CCEvent * param_2) */

/* non-virtual thunk to BFButton::ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void __thiscall BFButton::ccTouchBegan(BFButton *this,CCTouch *param_1,CCEvent *param_2)

{
                    /* WARNING: Could not recover jumptable at 0x00277a5c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00277a60 + 0x277a5c))(this + -0xe4);
  return;
}



/* ===== _ZThn228_N8BFButton12ccTouchEndedEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 00277928 ===== */
/* signature: undefined __thiscall ccTouchEnded(BFButton * this, CCTouch * param_1, CCEvent * param_2) */

/* non-virtual thunk to BFButton::ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void __thiscall BFButton::ccTouchEnded(BFButton *this,CCTouch *param_1,CCEvent *param_2)

{
                    /* WARNING: Could not recover jumptable at 0x00277934. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00277938 + 0x277934))(this + -0xe4);
  return;
}



/* ===== _ZThn228_N8BFButton12ccTouchMovedEPN7cocos2d7CCTouchEPNS0_7CCEventE @ 002779fc ===== */
/* signature: undefined __thiscall ccTouchMoved(BFButton * this, CCTouch * param_1, CCEvent * param_2) */

/* non-virtual thunk to BFButton::ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) */

void __thiscall BFButton::ccTouchMoved(BFButton *this,CCTouch *param_1,CCEvent *param_2)

{
                    /* WARNING: Could not recover jumptable at 0x00277a08. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00277a0c + 0x277a08))(this + -0xe4);
  return;
}



/* ===== _ZThn264_N17BFSortTableWidget16tableCellTouchedEPN7cocos2d9extension11CCTableViewEPNS1_15CCTableViewCellE @ 00279624 ===== */
/* signature: undefined __thiscall tableCellTouched(BFSortTableWidget * this, CCTableView * param_1, CCTableViewCell * param_2) */

/* non-virtual thunk to BFSortTableWidget::tableCellTouched(cocos2d::extension::CCTableView*,
   cocos2d::extension::CCTableViewCell*) */

void __thiscall
BFSortTableWidget::tableCellTouched
          (BFSortTableWidget *this,CCTableView *param_1,CCTableViewCell *param_2)

{
                    /* WARNING: Could not recover jumptable at 0x00279630. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279634 + 0x279630))(this + -0x108);
  return;
}



/* ===== _ZThn264_N17BFSortTableWidget17scrollViewDidZoomEPN7cocos2d9extension12CCScrollViewE @ 00279588 ===== */
/* signature: undefined __thiscall scrollViewDidZoom(BFSortTableWidget * this, CCScrollView * param_1) */

/* non-virtual thunk to BFSortTableWidget::scrollViewDidZoom(cocos2d::extension::CCScrollView*) */

void __thiscall BFSortTableWidget::scrollViewDidZoom(BFSortTableWidget *this,CCScrollView *param_1)

{
                    /* WARNING: Could not recover jumptable at 0x00279594. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279598 + 0x279594))(this + -0x108);
  return;
}



/* ===== _ZThn264_N17BFSortTableWidget19scrollViewDidScrollEPN7cocos2d9extension12CCScrollViewE @ 00279570 ===== */
/* signature: undefined __thiscall scrollViewDidScroll(BFSortTableWidget * this, CCScrollView * param_1) */

/* non-virtual thunk to BFSortTableWidget::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void __thiscall
BFSortTableWidget::scrollViewDidScroll(BFSortTableWidget *this,CCScrollView *param_1)

{
                    /* WARNING: Could not recover jumptable at 0x0027957c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279580 + 0x27957c))(this + -0x108);
  return;
}



/* ===== _ZThn268_N17BFSortTableWidget16tableCellAtIndexEPN7cocos2d9extension11CCTableViewEj @ 002796e0 ===== */
/* signature: undefined __thiscall tableCellAtIndex(BFSortTableWidget * this, CCTableView * param_1, uint param_2) */

/* non-virtual thunk to BFSortTableWidget::tableCellAtIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
BFSortTableWidget::tableCellAtIndex(BFSortTableWidget *this,CCTableView *param_1,uint param_2)

{
                    /* WARNING: Could not recover jumptable at 0x002796ec. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_002796f0 + 0x2796ec))(this + -0x10c);
  return;
}



/* ===== _ZThn268_N17BFSortTableWidget21tableCellSizeForIndexEPN7cocos2d9extension11CCTableViewEj @ 002795a0 ===== */
/* signature: undefined __thiscall tableCellSizeForIndex(BFSortTableWidget * this, CCTableView * param_1, uint param_2) */

/* non-virtual thunk to BFSortTableWidget::tableCellSizeForIndex(cocos2d::extension::CCTableView*,
   unsigned int) */

void __thiscall
BFSortTableWidget::tableCellSizeForIndex(BFSortTableWidget *this,CCTableView *param_1,uint param_2)

{
                    /* WARNING: Could not recover jumptable at 0x002795ac. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_002795b0 + 0x2795ac))(this,param_1 + -0x10c);
  return;
}



/* ===== _ZThn268_N17BFSortTableWidget24numberOfCellsInTableViewEPN7cocos2d9extension11CCTableViewE @ 002796bc ===== */
/* signature: undefined __thiscall numberOfCellsInTableView(BFSortTableWidget * this, CCTableView * param_1) */

/* non-virtual thunk to
   BFSortTableWidget::numberOfCellsInTableView(cocos2d::extension::CCTableView*) */

void __thiscall
BFSortTableWidget::numberOfCellsInTableView(BFSortTableWidget *this,CCTableView *param_1)

{
                    /* WARNING: Could not recover jumptable at 0x002796c8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_002796cc + 0x2796c8))(this + -0x10c);
  return;
}



/* ===== _ZThn428_N10BFCardView19scrollViewDidScrollEPN7cocos2d9extension12CCScrollViewE @ 002782cc ===== */
/* signature: undefined __thiscall scrollViewDidScroll(BFCardView * this, CCScrollView * param_1) */

/* non-virtual thunk to BFCardView::scrollViewDidScroll(cocos2d::extension::CCScrollView*) */

void __thiscall BFCardView::scrollViewDidScroll(BFCardView *this,CCScrollView *param_1)

{
                    /* WARNING: Could not recover jumptable at 0x002782d8. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_002782dc + 0x2782d8))(this + -0x1ac);
  return;
}



/* ===== js_get_or_create_proxy<BFButton> @ 00274fbc ===== */
/* signature: js_proxy * __stdcall js_get_or_create_proxy<BFButton>(JSContext * param_1, BFButton * param_2) */

/* js_proxy* js_get_or_create_proxy<BFButton>(JSContext*, BFButton*) */

js_proxy * js_get_or_create_proxy<BFButton>(JSContext *param_1,BFButton *param_2)

{
  BFButton *pBVar1;
  int iVar2;
  js_type_class *pjVar3;
  JSObject *pJVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  js_proxy *pjVar8;
  int *piVar9;
  BFButton *local_14;
  
  local_14 = param_2;
  if (**(int **)(DAT_00275094 + 0x274fc8) != 0) {
    piVar9 = *(int **)(**(int **)(DAT_00275094 + 0x274fc8) + 8);
    uVar5 = ((uint)param_2 & 0xff) + DAT_00275098 + ((uint)param_2 & 0xff000000) +
            ((uint)param_2 >> 0x10 & 0xff) * 0x10000 + ((uint)param_2 >> 8 & 0xff) * 0x100 ^
            DAT_0027509c;
    uVar6 = DAT_002750a0 - uVar5 ^ uVar5 << 8;
    uVar7 = (DAT_002750a4 - uVar5) - uVar6 ^ uVar6 >> 0xd;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 0xc;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 0x10;
    uVar7 = (uVar7 - uVar5) - uVar6 ^ uVar6 >> 5;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 3;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 10;
    pjVar8 = *(js_proxy **)
              (((uVar6 >> 0xf ^ (uVar7 - uVar5) - uVar6) & piVar9[1] - 1U) * 0xc + *piVar9);
    if (pjVar8 != (js_proxy *)0x0) {
      pjVar8 = pjVar8 + -piVar9[5];
    }
    for (; pjVar8 != (js_proxy *)0x0; pjVar8 = (js_proxy *)(*(int *)(pjVar8 + 0x18) - piVar9[5])) {
      if ((*(int *)(pjVar8 + 0x20) == 4) &&
         (iVar2 = memcmp(*(void **)(pjVar8 + 0x1c),&local_14,4), iVar2 == 0)) {
        return pjVar8;
      }
      if (*(int *)(pjVar8 + 0x18) == 0) break;
    }
  }
  pBVar1 = local_14;
  pjVar3 = js_get_type_from_native<BFButton>(local_14);
  pjVar8 = (js_proxy *)0x0;
  if (pjVar3 != (js_type_class *)0x0) {
    pJVar4 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(pjVar3 + 4),*(JSObject **)(pjVar3 + 8),
                          *(JSObject **)(pjVar3 + 0xc));
    pjVar8 = (js_proxy *)jsb_new_proxy(pBVar1,pJVar4);
    JS_AddObjectRoot(param_1,(JSObject **)(pjVar8 + 4));
  }
  return pjVar8;
}



/* ===== js_get_or_create_proxy<BFCardView> @ 00274bf8 ===== */
/* signature: js_proxy * __stdcall js_get_or_create_proxy<BFCardView>(JSContext * param_1, BFCardView * param_2) */

/* WARNING: Globals starting with '_' overlap smaller symbols at the same address */
/* js_proxy* js_get_or_create_proxy<BFCardView>(JSContext*, BFCardView*) */

js_proxy * js_get_or_create_proxy<BFCardView>(JSContext *param_1,BFCardView *param_2)

{
  BFCardView *pBVar1;
  int iVar2;
  js_type_class *pjVar3;
  JSObject *pJVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  js_proxy *pjVar8;
  int *piVar9;
  BFCardView *local_14;
  
  local_14 = param_2;
  if (**(int **)(_FUN_00274cd0 + 0x274c04) != 0) {
    piVar9 = *(int **)(**(int **)(_FUN_00274cd0 + 0x274c04) + 8);
    uVar5 = ((uint)param_2 & 0xff) + iRam00274cd4 + ((uint)param_2 & 0xff000000) +
            ((uint)param_2 >> 0x10 & 0xff) * 0x10000 + ((uint)param_2 >> 8 & 0xff) * 0x100 ^
            DAT_00274cd8;
    uVar6 = DAT_00274cdc - uVar5 ^ uVar5 << 8;
    uVar7 = (DAT_00274ce0 - uVar5) - uVar6 ^ uVar6 >> 0xd;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 0xc;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 0x10;
    uVar7 = (uVar7 - uVar5) - uVar6 ^ uVar6 >> 5;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 3;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 10;
    pjVar8 = *(js_proxy **)
              (((uVar6 >> 0xf ^ (uVar7 - uVar5) - uVar6) & piVar9[1] - 1U) * 0xc + *piVar9);
    if (pjVar8 != (js_proxy *)0x0) {
      pjVar8 = pjVar8 + -piVar9[5];
    }
    for (; pjVar8 != (js_proxy *)0x0; pjVar8 = (js_proxy *)(*(int *)(pjVar8 + 0x18) - piVar9[5])) {
      if ((*(int *)(pjVar8 + 0x20) == 4) &&
         (iVar2 = memcmp(*(void **)(pjVar8 + 0x1c),&local_14,4), iVar2 == 0)) {
        return pjVar8;
      }
      if (*(int *)(pjVar8 + 0x18) == 0) break;
    }
  }
  pBVar1 = local_14;
  pjVar3 = js_get_type_from_native<BFCardView>(local_14);
  pjVar8 = (js_proxy *)0x0;
  if (pjVar3 != (js_type_class *)0x0) {
    pJVar4 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(pjVar3 + 4),*(JSObject **)(pjVar3 + 8),
                          *(JSObject **)(pjVar3 + 0xc));
    pjVar8 = (js_proxy *)jsb_new_proxy(pBVar1,pJVar4);
    JS_AddObjectRoot(param_1,(JSObject **)(pjVar8 + 4));
  }
  return pjVar8;
}



/* ===== js_get_or_create_proxy<BFControlSlider> @ 0027302c ===== */
/* signature: js_proxy * __stdcall js_get_or_create_proxy<BFControlSlider>(JSContext * param_1, BFControlSlider * param_2) */

/* js_proxy* js_get_or_create_proxy<BFControlSlider>(JSContext*, BFControlSlider*) */

js_proxy * js_get_or_create_proxy<BFControlSlider>(JSContext *param_1,BFControlSlider *param_2)

{
  BFControlSlider *pBVar1;
  int iVar2;
  js_type_class *pjVar3;
  JSObject *pJVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  js_proxy *pjVar8;
  int *piVar9;
  BFControlSlider *local_14;
  
  local_14 = param_2;
  if (**(int **)(DAT_00273104 + 0x273038) != 0) {
    piVar9 = *(int **)(**(int **)(DAT_00273104 + 0x273038) + 8);
    uVar5 = ((uint)param_2 & 0xff) + DAT_00273108 + ((uint)param_2 & 0xff000000) +
            ((uint)param_2 >> 0x10 & 0xff) * 0x10000 + ((uint)param_2 >> 8 & 0xff) * 0x100 ^
            DAT_0027310c;
    uVar6 = DAT_00273110 - uVar5 ^ uVar5 << 8;
    uVar7 = (DAT_00273114 - uVar5) - uVar6 ^ uVar6 >> 0xd;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 0xc;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 0x10;
    uVar7 = (uVar7 - uVar5) - uVar6 ^ uVar6 >> 5;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 3;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 10;
    pjVar8 = *(js_proxy **)
              (((uVar6 >> 0xf ^ (uVar7 - uVar5) - uVar6) & piVar9[1] - 1U) * 0xc + *piVar9);
    if (pjVar8 != (js_proxy *)0x0) {
      pjVar8 = pjVar8 + -piVar9[5];
    }
    for (; pjVar8 != (js_proxy *)0x0; pjVar8 = (js_proxy *)(*(int *)(pjVar8 + 0x18) - piVar9[5])) {
      if ((*(int *)(pjVar8 + 0x20) == 4) &&
         (iVar2 = memcmp(*(void **)(pjVar8 + 0x1c),&local_14,4), iVar2 == 0)) {
        return pjVar8;
      }
      if (*(int *)(pjVar8 + 0x18) == 0) break;
    }
  }
  pBVar1 = local_14;
  pjVar3 = js_get_type_from_native<BFControlSlider>(local_14);
  pjVar8 = (js_proxy *)0x0;
  if (pjVar3 != (js_type_class *)0x0) {
    pJVar4 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(pjVar3 + 4),*(JSObject **)(pjVar3 + 8),
                          *(JSObject **)(pjVar3 + 0xc));
    pjVar8 = (js_proxy *)jsb_new_proxy(pBVar1,pJVar4);
    JS_AddObjectRoot(param_1,(JSObject **)(pjVar8 + 4));
  }
  return pjVar8;
}



/* ===== js_get_or_create_proxy<BFSortTableWidget> @ 002734f8 ===== */
/* signature: js_proxy * __stdcall js_get_or_create_proxy<BFSortTableWidget>(JSContext * param_1, BFSortTableWidget * param_2) */

/* js_proxy* js_get_or_create_proxy<BFSortTableWidget>(JSContext*, BFSortTableWidget*) */

js_proxy * js_get_or_create_proxy<BFSortTableWidget>(JSContext *param_1,BFSortTableWidget *param_2)

{
  BFSortTableWidget *pBVar1;
  int iVar2;
  js_type_class *pjVar3;
  JSObject *pJVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  js_proxy *pjVar8;
  int *piVar9;
  BFSortTableWidget *local_14;
  
  local_14 = param_2;
  if (**(int **)(DAT_002735d0 + 0x273504) != 0) {
    piVar9 = *(int **)(**(int **)(DAT_002735d0 + 0x273504) + 8);
    uVar5 = ((uint)param_2 & 0xff) + DAT_002735d4 + ((uint)param_2 & 0xff000000) +
            ((uint)param_2 >> 0x10 & 0xff) * 0x10000 + ((uint)param_2 >> 8 & 0xff) * 0x100 ^
            DAT_002735d8;
    uVar6 = DAT_002735dc - uVar5 ^ uVar5 << 8;
    uVar7 = (DAT_002735e0 - uVar5) - uVar6 ^ uVar6 >> 0xd;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 0xc;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 0x10;
    uVar7 = (uVar7 - uVar5) - uVar6 ^ uVar6 >> 5;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 3;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 10;
    pjVar8 = *(js_proxy **)
              (((uVar6 >> 0xf ^ (uVar7 - uVar5) - uVar6) & piVar9[1] - 1U) * 0xc + *piVar9);
    if (pjVar8 != (js_proxy *)0x0) {
      pjVar8 = pjVar8 + -piVar9[5];
    }
    for (; pjVar8 != (js_proxy *)0x0; pjVar8 = (js_proxy *)(*(int *)(pjVar8 + 0x18) - piVar9[5])) {
      if ((*(int *)(pjVar8 + 0x20) == 4) &&
         (iVar2 = memcmp(*(void **)(pjVar8 + 0x1c),&local_14,4), iVar2 == 0)) {
        return pjVar8;
      }
      if (*(int *)(pjVar8 + 0x18) == 0) break;
    }
  }
  pBVar1 = local_14;
  pjVar3 = js_get_type_from_native<BFSortTableWidget>(local_14);
  pjVar8 = (js_proxy *)0x0;
  if (pjVar3 != (js_type_class *)0x0) {
    pJVar4 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(pjVar3 + 4),*(JSObject **)(pjVar3 + 8),
                          *(JSObject **)(pjVar3 + 0xc));
    pjVar8 = (js_proxy *)jsb_new_proxy(pBVar1,pJVar4);
    JS_AddObjectRoot(param_1,(JSObject **)(pjVar8 + 4));
  }
  return pjVar8;
}



/* ===== js_get_or_create_proxy<JsbConnecter> @ 00272d44 ===== */
/* signature: js_proxy * __stdcall js_get_or_create_proxy<JsbConnecter>(JSContext * param_1, JsbConnecter * param_2) */

/* js_proxy* js_get_or_create_proxy<JsbConnecter>(JSContext*, JsbConnecter*) */

js_proxy * js_get_or_create_proxy<JsbConnecter>(JSContext *param_1,JsbConnecter *param_2)

{
  JsbConnecter *pJVar1;
  int iVar2;
  js_type_class *pjVar3;
  JSObject *pJVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  js_proxy *pjVar8;
  int *piVar9;
  JsbConnecter *local_14;
  
  local_14 = param_2;
  if (**(int **)(DAT_00272e1c + 0x272d50) != 0) {
    piVar9 = *(int **)(**(int **)(DAT_00272e1c + 0x272d50) + 8);
    uVar5 = ((uint)param_2 & 0xff) + DAT_00272e20 + ((uint)param_2 & 0xff000000) +
            ((uint)param_2 >> 0x10 & 0xff) * 0x10000 + ((uint)param_2 >> 8 & 0xff) * 0x100 ^
            DAT_00272e24;
    uVar6 = DAT_00272e28 - uVar5 ^ uVar5 << 8;
    uVar7 = (DAT_00272e2c - uVar5) - uVar6 ^ uVar6 >> 0xd;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 0xc;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 0x10;
    uVar7 = (uVar7 - uVar5) - uVar6 ^ uVar6 >> 5;
    uVar5 = (uVar5 - uVar6) - uVar7 ^ uVar7 >> 3;
    uVar6 = (uVar6 - uVar7) - uVar5 ^ uVar5 << 10;
    pjVar8 = *(js_proxy **)
              (((uVar6 >> 0xf ^ (uVar7 - uVar5) - uVar6) & piVar9[1] - 1U) * 0xc + *piVar9);
    if (pjVar8 != (js_proxy *)0x0) {
      pjVar8 = pjVar8 + -piVar9[5];
    }
    for (; pjVar8 != (js_proxy *)0x0; pjVar8 = (js_proxy *)(*(int *)(pjVar8 + 0x18) - piVar9[5])) {
      if ((*(int *)(pjVar8 + 0x20) == 4) &&
         (iVar2 = memcmp(*(void **)(pjVar8 + 0x1c),&local_14,4), iVar2 == 0)) {
        return pjVar8;
      }
      if (*(int *)(pjVar8 + 0x18) == 0) break;
    }
  }
  pJVar1 = local_14;
  pjVar3 = js_get_type_from_native<JsbConnecter>(local_14);
  pjVar8 = (js_proxy *)0x0;
  if (pjVar3 != (js_type_class *)0x0) {
    pJVar4 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(pjVar3 + 4),*(JSObject **)(pjVar3 + 8),
                          *(JSObject **)(pjVar3 + 0xc));
    pjVar8 = (js_proxy *)jsb_new_proxy(pJVar1,pJVar4);
    JS_AddObjectRoot(param_1,(JSObject **)(pjVar8 + 4));
  }
  return pjVar8;
}



/* ===== js_get_type_from_native<BFButton> @ 00274e0c ===== */
/* signature: js_type_class * __stdcall js_get_type_from_native<BFButton>(BFButton * param_1) */

/* js_type_class* js_get_type_from_native<BFButton>(BFButton*) */

js_type_class * js_get_type_from_native<BFButton>(BFButton *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  type_info *this;
  js_type_class *pjVar6;
  int *piVar7;
  int *piVar8;
  BFButton *pBVar9;
  uint local_1c [2];
  
  iVar1 = DAT_00274fa0;
  if (param_1 == (BFButton *)0x0) {
                    /* WARNING: Subroutine does not return */
    __cxa_bad_typeid();
  }
  pBVar9 = param_1;
  std::type_info::name(*(type_info **)(*(int *)param_1 + -4));
  local_1c[0] = FUN_002737b4();
  piVar8 = *(int **)(iVar1 + 0x274e26);
  iVar1 = *piVar8;
  if (iVar1 != 0) {
    piVar7 = *(int **)(iVar1 + 0x10);
    uVar3 = (local_1c[0] & 0xff) + DAT_00274fa4 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_00274fa8;
    uVar4 = DAT_00274fac - uVar3 ^ uVar3 << 8;
    uVar5 = (DAT_00274fb0 - uVar3) - uVar4 ^ uVar4 >> 0xd;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 0xc;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 0x10;
    uVar5 = (uVar5 - uVar3) - uVar4 ^ uVar4 >> 5;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 3;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 10;
    pjVar6 = *(js_type_class **)
              (((uVar4 >> 0xf ^ (uVar5 - uVar3) - uVar4) & piVar7[1] - 1U) * 0xc + *piVar7);
    if (pjVar6 != (js_type_class *)0x0) {
      pjVar6 = pjVar6 + -piVar7[5];
    }
    for (; pjVar6 != (js_type_class *)0x0;
        pjVar6 = (js_type_class *)(*(int *)(pjVar6 + 0x20) - piVar7[5])) {
      if ((*(int *)(pjVar6 + 0x28) == 4) &&
         (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 == 0)) {
        return pjVar6;
      }
      if (*(int *)(pjVar6 + 0x20) == 0) break;
    }
  }
  this = *(type_info **)(DAT_00274fb4 + 0x274ed8);
  puVar2 = (undefined4 *)
           __dynamic_cast(param_1,this,*(undefined4 *)(DAT_00274fb8 + 0x274edc),0xfffffffe,pBVar9);
  if (puVar2 == (undefined4 *)0x0) {
    std::type_info::name(this);
    local_1c[0] = FUN_002737b4();
  }
  else {
    local_1c[0] = (**(code **)*puVar2)();
  }
  iVar1 = *piVar8;
  pjVar6 = (js_type_class *)0x0;
  if (iVar1 != 0) {
    piVar8 = *(int **)(iVar1 + 0x10);
    uVar3 = (local_1c[0] & 0xff) + DAT_00274fa4 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_00274fa8;
    uVar4 = DAT_00274fac - uVar3 ^ uVar3 << 8;
    uVar5 = (DAT_00274fb0 - uVar3) - uVar4 ^ uVar4 >> 0xd;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 0xc;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 0x10;
    uVar5 = (uVar5 - uVar3) - uVar4 ^ uVar4 >> 5;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 3;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 10;
    iVar1 = *(int *)(((uVar4 >> 0xf ^ (uVar5 - uVar3) - uVar4) & piVar8[1] - 1U) * 0xc + *piVar8);
    if (iVar1 != 0) goto LAB_00274f92;
    pjVar6 = (js_type_class *)0x0;
    while ((pjVar6 != (js_type_class *)0x0 &&
           ((*(int *)(pjVar6 + 0x28) != 4 ||
            (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 != 0))))) {
      iVar1 = *(int *)(pjVar6 + 0x20);
      if (iVar1 == 0) {
        return (js_type_class *)0x0;
      }
LAB_00274f92:
      pjVar6 = (js_type_class *)(iVar1 - piVar8[5]);
    }
  }
  return pjVar6;
}



/* ===== js_get_type_from_native<BFCardView> @ 00274a48 ===== */
/* signature: js_type_class * __stdcall js_get_type_from_native<BFCardView>(BFCardView * param_1) */

/* js_type_class* js_get_type_from_native<BFCardView>(BFCardView*) */

js_type_class * js_get_type_from_native<BFCardView>(BFCardView *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  type_info *this;
  js_type_class *pjVar6;
  int *piVar7;
  int *piVar8;
  BFCardView *pBVar9;
  uint local_1c [2];
  
  iVar1 = DAT_00274bdc;
  if (param_1 == (BFCardView *)0x0) {
                    /* WARNING: Subroutine does not return */
    __cxa_bad_typeid();
  }
  pBVar9 = param_1;
  std::type_info::name(*(type_info **)(*(int *)param_1 + -4));
  local_1c[0] = FUN_002737b4();
  piVar8 = *(int **)(iVar1 + 0x274a62);
  iVar1 = *piVar8;
  if (iVar1 != 0) {
    piVar7 = *(int **)(iVar1 + 0x10);
    uVar3 = (local_1c[0] & 0xff) + DAT_00274be0 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_00274be4;
    uVar4 = DAT_00274be8 - uVar3 ^ uVar3 << 8;
    uVar5 = (DAT_00274bec - uVar3) - uVar4 ^ uVar4 >> 0xd;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 0xc;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 0x10;
    uVar5 = (uVar5 - uVar3) - uVar4 ^ uVar4 >> 5;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 3;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 10;
    pjVar6 = *(js_type_class **)
              (((uVar4 >> 0xf ^ (uVar5 - uVar3) - uVar4) & piVar7[1] - 1U) * 0xc + *piVar7);
    if (pjVar6 != (js_type_class *)0x0) {
      pjVar6 = pjVar6 + -piVar7[5];
    }
    for (; pjVar6 != (js_type_class *)0x0;
        pjVar6 = (js_type_class *)(*(int *)(pjVar6 + 0x20) - piVar7[5])) {
      if ((*(int *)(pjVar6 + 0x28) == 4) &&
         (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 == 0)) {
        return pjVar6;
      }
      if (*(int *)(pjVar6 + 0x20) == 0) break;
    }
  }
  this = *(type_info **)(DAT_00274bf0 + 0x274b14);
  puVar2 = (undefined4 *)
           __dynamic_cast(param_1,this,*(undefined4 *)(DAT_00274bf4 + 0x274b18),0xfffffffe,pBVar9);
  if (puVar2 == (undefined4 *)0x0) {
    std::type_info::name(this);
    local_1c[0] = FUN_002737b4();
  }
  else {
    local_1c[0] = (**(code **)*puVar2)();
  }
  iVar1 = *piVar8;
  pjVar6 = (js_type_class *)0x0;
  if (iVar1 != 0) {
    piVar8 = *(int **)(iVar1 + 0x10);
    uVar3 = (local_1c[0] & 0xff) + DAT_00274be0 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_00274be4;
    uVar4 = DAT_00274be8 - uVar3 ^ uVar3 << 8;
    uVar5 = (DAT_00274bec - uVar3) - uVar4 ^ uVar4 >> 0xd;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 0xc;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 0x10;
    uVar5 = (uVar5 - uVar3) - uVar4 ^ uVar4 >> 5;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 3;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 10;
    iVar1 = *(int *)(((uVar4 >> 0xf ^ (uVar5 - uVar3) - uVar4) & piVar8[1] - 1U) * 0xc + *piVar8);
    if (iVar1 != 0) goto LAB_00274bce;
    pjVar6 = (js_type_class *)0x0;
    while ((pjVar6 != (js_type_class *)0x0 &&
           ((*(int *)(pjVar6 + 0x28) != 4 ||
            (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 != 0))))) {
      iVar1 = *(int *)(pjVar6 + 0x20);
      if (iVar1 == 0) {
        return (js_type_class *)0x0;
      }
LAB_00274bce:
      pjVar6 = (js_type_class *)(iVar1 - piVar8[5]);
    }
  }
  return pjVar6;
}



/* ===== js_get_type_from_native<BFControlSlider> @ 00272e7c ===== */
/* signature: js_type_class * __stdcall js_get_type_from_native<BFControlSlider>(BFControlSlider * param_1) */

/* js_type_class* js_get_type_from_native<BFControlSlider>(BFControlSlider*) */

js_type_class * js_get_type_from_native<BFControlSlider>(BFControlSlider *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  type_info *this;
  js_type_class *pjVar6;
  int *piVar7;
  int *piVar8;
  BFControlSlider *pBVar9;
  uint local_1c [2];
  
  iVar1 = DAT_00273010;
  if (param_1 == (BFControlSlider *)0x0) {
                    /* WARNING: Subroutine does not return */
    __cxa_bad_typeid();
  }
  pBVar9 = param_1;
  std::type_info::name(*(type_info **)(*(int *)param_1 + -4));
  local_1c[0] = FUN_0026e0cc();
  piVar8 = *(int **)(iVar1 + 0x272e96);
  iVar1 = *piVar8;
  if (iVar1 != 0) {
    piVar7 = *(int **)(iVar1 + 0x10);
    uVar3 = (local_1c[0] & 0xff) + DAT_00273014 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_00273018;
    uVar4 = DAT_0027301c - uVar3 ^ uVar3 << 8;
    uVar5 = (DAT_00273020 - uVar3) - uVar4 ^ uVar4 >> 0xd;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 0xc;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 0x10;
    uVar5 = (uVar5 - uVar3) - uVar4 ^ uVar4 >> 5;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 3;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 10;
    pjVar6 = *(js_type_class **)
              (((uVar4 >> 0xf ^ (uVar5 - uVar3) - uVar4) & piVar7[1] - 1U) * 0xc + *piVar7);
    if (pjVar6 != (js_type_class *)0x0) {
      pjVar6 = pjVar6 + -piVar7[5];
    }
    for (; pjVar6 != (js_type_class *)0x0;
        pjVar6 = (js_type_class *)(*(int *)(pjVar6 + 0x20) - piVar7[5])) {
      if ((*(int *)(pjVar6 + 0x28) == 4) &&
         (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 == 0)) {
        return pjVar6;
      }
      if (*(int *)(pjVar6 + 0x20) == 0) break;
    }
  }
  this = *(type_info **)(DAT_00273024 + 0x272f48);
  puVar2 = (undefined4 *)
           __dynamic_cast(param_1,this,*(undefined4 *)(DAT_00273028 + 0x272f4c),0xfffffffe,pBVar9);
  if (puVar2 == (undefined4 *)0x0) {
    std::type_info::name(this);
    local_1c[0] = FUN_0026e0cc();
  }
  else {
    local_1c[0] = (**(code **)*puVar2)();
  }
  iVar1 = *piVar8;
  pjVar6 = (js_type_class *)0x0;
  if (iVar1 != 0) {
    piVar8 = *(int **)(iVar1 + 0x10);
    uVar3 = (local_1c[0] & 0xff) + DAT_00273014 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_00273018;
    uVar4 = DAT_0027301c - uVar3 ^ uVar3 << 8;
    uVar5 = (DAT_00273020 - uVar3) - uVar4 ^ uVar4 >> 0xd;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 0xc;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 0x10;
    uVar5 = (uVar5 - uVar3) - uVar4 ^ uVar4 >> 5;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 3;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 10;
    iVar1 = *(int *)(((uVar4 >> 0xf ^ (uVar5 - uVar3) - uVar4) & piVar8[1] - 1U) * 0xc + *piVar8);
    if (iVar1 != 0) goto LAB_00273002;
    pjVar6 = (js_type_class *)0x0;
    while ((pjVar6 != (js_type_class *)0x0 &&
           ((*(int *)(pjVar6 + 0x28) != 4 ||
            (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 != 0))))) {
      iVar1 = *(int *)(pjVar6 + 0x20);
      if (iVar1 == 0) {
        return (js_type_class *)0x0;
      }
LAB_00273002:
      pjVar6 = (js_type_class *)(iVar1 - piVar8[5]);
    }
  }
  return pjVar6;
}



/* ===== js_get_type_from_native<BFSortTableWidget> @ 00273348 ===== */
/* signature: js_type_class * __stdcall js_get_type_from_native<BFSortTableWidget>(BFSortTableWidget * param_1) */

/* js_type_class* js_get_type_from_native<BFSortTableWidget>(BFSortTableWidget*) */

js_type_class * js_get_type_from_native<BFSortTableWidget>(BFSortTableWidget *param_1)

{
  int iVar1;
  undefined4 *puVar2;
  uint uVar3;
  uint uVar4;
  uint uVar5;
  type_info *this;
  js_type_class *pjVar6;
  int *piVar7;
  int *piVar8;
  BFSortTableWidget *pBVar9;
  uint local_1c [2];
  
  iVar1 = DAT_002734dc;
  if (param_1 == (BFSortTableWidget *)0x0) {
                    /* WARNING: Subroutine does not return */
    __cxa_bad_typeid();
  }
  pBVar9 = param_1;
  std::type_info::name(*(type_info **)(*(int *)param_1 + -4));
  local_1c[0] = FUN_0026e0cc();
  piVar8 = *(int **)(iVar1 + 0x273362);
  iVar1 = *piVar8;
  if (iVar1 != 0) {
    piVar7 = *(int **)(iVar1 + 0x10);
    uVar3 = (local_1c[0] & 0xff) + DAT_002734e0 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_002734e4;
    uVar4 = DAT_002734e8 - uVar3 ^ uVar3 << 8;
    uVar5 = (DAT_002734ec - uVar3) - uVar4 ^ uVar4 >> 0xd;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 0xc;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 0x10;
    uVar5 = (uVar5 - uVar3) - uVar4 ^ uVar4 >> 5;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 3;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 10;
    pjVar6 = *(js_type_class **)
              (((uVar4 >> 0xf ^ (uVar5 - uVar3) - uVar4) & piVar7[1] - 1U) * 0xc + *piVar7);
    if (pjVar6 != (js_type_class *)0x0) {
      pjVar6 = pjVar6 + -piVar7[5];
    }
    for (; pjVar6 != (js_type_class *)0x0;
        pjVar6 = (js_type_class *)(*(int *)(pjVar6 + 0x20) - piVar7[5])) {
      if ((*(int *)(pjVar6 + 0x28) == 4) &&
         (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 == 0)) {
        return pjVar6;
      }
      if (*(int *)(pjVar6 + 0x20) == 0) break;
    }
  }
  this = *(type_info **)(DAT_002734f0 + 0x273414);
  puVar2 = (undefined4 *)
           __dynamic_cast(param_1,this,*(undefined4 *)(DAT_002734f4 + 0x273418),0xfffffffe,pBVar9);
  if (puVar2 == (undefined4 *)0x0) {
    std::type_info::name(this);
    local_1c[0] = FUN_0026e0cc();
  }
  else {
    local_1c[0] = (**(code **)*puVar2)();
  }
  iVar1 = *piVar8;
  pjVar6 = (js_type_class *)0x0;
  if (iVar1 != 0) {
    piVar8 = *(int **)(iVar1 + 0x10);
    uVar3 = (local_1c[0] & 0xff) + DAT_002734e0 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_002734e4;
    uVar4 = DAT_002734e8 - uVar3 ^ uVar3 << 8;
    uVar5 = (DAT_002734ec - uVar3) - uVar4 ^ uVar4 >> 0xd;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 0xc;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 0x10;
    uVar5 = (uVar5 - uVar3) - uVar4 ^ uVar4 >> 5;
    uVar3 = (uVar3 - uVar4) - uVar5 ^ uVar5 >> 3;
    uVar4 = (uVar4 - uVar5) - uVar3 ^ uVar3 << 10;
    iVar1 = *(int *)(((uVar4 >> 0xf ^ (uVar5 - uVar3) - uVar4) & piVar8[1] - 1U) * 0xc + *piVar8);
    if (iVar1 != 0) goto LAB_002734ce;
    pjVar6 = (js_type_class *)0x0;
    while ((pjVar6 != (js_type_class *)0x0 &&
           ((*(int *)(pjVar6 + 0x28) != 4 ||
            (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 != 0))))) {
      iVar1 = *(int *)(pjVar6 + 0x20);
      if (iVar1 == 0) {
        return (js_type_class *)0x0;
      }
LAB_002734ce:
      pjVar6 = (js_type_class *)(iVar1 - piVar8[5]);
    }
  }
  return pjVar6;
}



/* ===== js_get_type_from_native<JsbConnecter> @ 00272bbc ===== */
/* signature: js_type_class * __stdcall js_get_type_from_native<JsbConnecter>(JsbConnecter * param_1) */

/* js_type_class* js_get_type_from_native<JsbConnecter>(JsbConnecter*) */

js_type_class * js_get_type_from_native<JsbConnecter>(JsbConnecter *param_1)

{
  int iVar1;
  uint uVar2;
  uint uVar3;
  int *piVar4;
  uint uVar5;
  js_type_class *pjVar6;
  int *piVar7;
  undefined4 *puVar8;
  uint local_1c [2];
  
  if (param_1 == (JsbConnecter *)0x0) {
                    /* WARNING: Subroutine does not return */
    __cxa_bad_typeid();
  }
  puVar8 = *(undefined4 **)param_1;
  std::type_info::name((type_info *)puVar8[-1]);
  local_1c[0] = FUN_0026e0cc();
  piVar4 = *(int **)(DAT_00272d30 + 0x272bda);
  iVar1 = *piVar4;
  if (iVar1 != 0) {
    piVar7 = *(int **)(iVar1 + 0x10);
    uVar2 = (local_1c[0] & 0xff) + DAT_00272d34 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_00272d38;
    uVar3 = DAT_00272d3c - uVar2 ^ uVar2 << 8;
    uVar5 = (DAT_00272d40 - uVar2) - uVar3 ^ uVar3 >> 0xd;
    uVar2 = (uVar2 - uVar3) - uVar5 ^ uVar5 >> 0xc;
    uVar3 = (uVar3 - uVar5) - uVar2 ^ uVar2 << 0x10;
    uVar5 = (uVar5 - uVar2) - uVar3 ^ uVar3 >> 5;
    uVar2 = (uVar2 - uVar3) - uVar5 ^ uVar5 >> 3;
    uVar3 = (uVar3 - uVar5) - uVar2 ^ uVar2 << 10;
    pjVar6 = *(js_type_class **)
              (((uVar3 >> 0xf ^ (uVar5 - uVar2) - uVar3) & piVar7[1] - 1U) * 0xc + *piVar7);
    if (pjVar6 != (js_type_class *)0x0) {
      pjVar6 = pjVar6 + -piVar7[5];
    }
    for (; pjVar6 != (js_type_class *)0x0;
        pjVar6 = (js_type_class *)(*(int *)(pjVar6 + 0x20) - piVar7[5])) {
      if ((*(int *)(pjVar6 + 0x28) == 4) &&
         (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 == 0)) {
        return pjVar6;
      }
      if (*(int *)(pjVar6 + 0x20) == 0) break;
    }
  }
  local_1c[0] = (*(code *)*puVar8)(param_1);
  iVar1 = *piVar4;
  pjVar6 = (js_type_class *)0x0;
  if (iVar1 != 0) {
    piVar4 = *(int **)(iVar1 + 0x10);
    uVar2 = (local_1c[0] & 0xff) + DAT_00272d34 + (local_1c[0] & 0xff000000) +
            (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
            DAT_00272d38;
    uVar3 = DAT_00272d3c - uVar2 ^ uVar2 << 8;
    uVar5 = (DAT_00272d40 - uVar2) - uVar3 ^ uVar3 >> 0xd;
    uVar2 = (uVar2 - uVar3) - uVar5 ^ uVar5 >> 0xc;
    uVar3 = (uVar3 - uVar5) - uVar2 ^ uVar2 << 0x10;
    uVar5 = (uVar5 - uVar2) - uVar3 ^ uVar3 >> 5;
    uVar2 = (uVar2 - uVar3) - uVar5 ^ uVar5 >> 3;
    uVar3 = (uVar3 - uVar5) - uVar2 ^ uVar2 << 10;
    iVar1 = *(int *)(((uVar3 >> 0xf ^ (uVar5 - uVar2) - uVar3) & piVar4[1] - 1U) * 0xc + *piVar4);
    if (iVar1 != 0) goto LAB_00272d20;
    pjVar6 = (js_type_class *)0x0;
    while ((pjVar6 != (js_type_class *)0x0 &&
           ((*(int *)(pjVar6 + 0x28) != 4 ||
            (iVar1 = memcmp(*(void **)(pjVar6 + 0x24),local_1c,4), iVar1 != 0))))) {
      iVar1 = *(int *)(pjVar6 + 0x20);
      if (iVar1 == 0) {
        return (js_type_class *)0x0;
      }
LAB_00272d20:
      pjVar6 = (js_type_class *)(iVar1 - piVar4[5]);
    }
  }
  return pjVar6;
}



/* ===== js_register_xs_sanguosha_BFButton @ 002725e0 ===== */
/* signature: undefined __stdcall js_register_xs_sanguosha_BFButton(JSContext * param_1, JSObject * param_2) */

/* js_register_xs_sanguosha_BFButton(JSContext*, JSObject*) */

void js_register_xs_sanguosha_BFButton(JSContext *param_1,JSObject *param_2)

{
  JSClass *pJVar1;
  uint uVar2;
  uint *puVar3;
  void *pvVar4;
  JSPropertySpec *pJVar5;
  uint uVar6;
  uint *puVar7;
  undefined4 uVar8;
  uint uVar9;
  uint *puVar10;
  int *piVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int *piVar16;
  undefined4 *puVar17;
  size_t __size;
  char *pcVar18;
  int iVar19;
  uint *puVar20;
  uint local_2c;
  int iStack_20;
  uint local_1c [2];
  
  pJVar1 = calloc(1,0xdc);
  iVar15 = DAT_002728ec + 0x2725fa;
  puVar7 = *(uint **)(iVar15 + DAT_002728f0);
  pcVar18 = (char *)(DAT_002728f4 + 0x2725fe);
  *(char **)pJVar1 = pcVar18;
  *puVar7 = (uint)pJVar1;
  uVar8 = *(undefined4 *)(iVar15 + DAT_002728f8);
  pJVar5 = (JSPropertySpec *)(DAT_002728fc + 0x27266e);
  *(undefined4 *)(pJVar1 + 8) = uVar8;
  *(undefined4 *)(pJVar1 + 0xc) = uVar8;
  *(undefined4 *)(pJVar1 + 0x10) = uVar8;
  *(undefined4 *)(pJVar1 + 0x14) = *(undefined4 *)(iVar15 + DAT_00272900);
  *(undefined4 *)(pJVar1 + 0x18) = *(undefined4 *)(iVar15 + DAT_00272904);
  *(undefined4 *)(pJVar1 + 0x1c) = *(undefined4 *)(iVar15 + DAT_00272908);
  *(undefined4 *)(pJVar1 + 0x20) = *(undefined4 *)(iVar15 + DAT_0027290c);
  *(undefined4 *)(pJVar1 + 0x24) = *(undefined4 *)(iVar15 + DAT_00272910);
  *(undefined4 *)(pJVar1 + 4) = 0x200;
  puVar20 = *(uint **)(iVar15 + DAT_00272914);
  uVar2 = JS_InitClass(param_1,param_2,(JSObject *)*puVar20,pJVar1,
                       *(_func_int_JSContext_ptr_uint_Value_ptr **)(iVar15 + DAT_00272918),0,pJVar5,
                       (JSFunctionSpec *)(DAT_0027291c + 0x27268e),(JSPropertySpec *)0x0,
                       (JSFunctionSpec *)0x0);
  puVar10 = *(uint **)(iVar15 + DAT_00272920);
  *puVar10 = uVar2;
  JS_SetPropertyAttributes(param_1,param_2,pcVar18,3,&iStack_20);
  uVar2 = TypeTest<BFButton>::s_id();
  piVar11 = *(int **)(iVar15 + DAT_00272924);
  iVar15 = *piVar11;
  local_1c[0] = uVar2;
  if (iVar15 != 0) {
    piVar16 = *(int **)(iVar15 + 0x10);
    uVar6 = (uVar2 & 0xff) + DAT_00272928 + (uVar2 & 0xff000000) + (uVar2 >> 0x10 & 0xff) * 0x10000
            + (uVar2 >> 8 & 0xff) * 0x100 ^ DAT_00272930;
    uVar9 = uVar6 << 8 ^ DAT_0027292c - uVar6;
    uVar12 = (DAT_00272934 - uVar6) - uVar9 ^ uVar9 >> 0xd;
    uVar6 = (uVar6 - uVar9) - uVar12 ^ uVar12 >> 0xc;
    uVar9 = (uVar9 - uVar12) - uVar6 ^ uVar6 << 0x10;
    uVar12 = (uVar12 - uVar6) - uVar9 ^ uVar9 >> 5;
    uVar6 = (uVar6 - uVar9) - uVar12 ^ uVar12 >> 3;
    uVar9 = (uVar9 - uVar12) - uVar6 ^ uVar6 << 10;
    iVar19 = *(int *)(((uVar9 >> 0xf ^ (uVar12 - uVar6) - uVar9) & piVar16[1] - 1U) * 0xc + *piVar16
                     );
    if (iVar19 != 0) {
      iVar19 = iVar19 - piVar16[5];
    }
    for (; iVar19 != 0; iVar19 = *(int *)(iVar19 + 0x20) - piVar16[5]) {
      if ((*(int *)(iVar19 + 0x28) == 4) &&
         (iVar13 = memcmp(*(void **)(iVar19 + 0x24),local_1c,4), iVar13 == 0)) {
        return;
      }
      if (*(int *)(iVar19 + 0x20) == 0) break;
    }
  }
  puVar3 = malloc(0x30);
  uVar6 = *puVar7;
  *puVar3 = uVar2;
  puVar3[1] = uVar6;
  puVar3[9] = (uint)puVar3;
  puVar3[2] = *puVar10;
  puVar3[3] = *puVar20;
  puVar3[6] = 0;
  puVar3[10] = 4;
  if (iVar15 == 0) {
    *piVar11 = (int)puVar3;
    puVar3[5] = 0;
    pvVar4 = malloc(0x2c);
    puVar3[4] = (uint)pvVar4;
    if (pvVar4 == (void *)0x0) goto LAB_002728b0;
    memset(pvVar4,0,0x2c);
    *(uint **)(puVar3[4] + 0x10) = puVar3 + 4;
    *(undefined4 *)(puVar3[4] + 4) = 0x20;
    *(undefined4 *)(puVar3[4] + 8) = 5;
    *(undefined4 *)(puVar3[4] + 0x14) = 0x10;
    puVar17 = (undefined4 *)puVar3[4];
    pvVar4 = malloc(0x180);
    *puVar17 = pvVar4;
    if ((void *)**(undefined4 **)(*piVar11 + 0x10) == (void *)0x0) goto LAB_002728b0;
    memset((void *)**(undefined4 **)(*piVar11 + 0x10),0,0x180);
    *(undefined4 *)(*(int *)(*piVar11 + 0x10) + 0x28) = DAT_00272938;
  }
  else {
    *(uint **)(*(int *)(*(int *)(iVar15 + 0x10) + 0x10) + 8) = puVar3;
    puVar3[5] = *(int *)(*(int *)(iVar15 + 0x10) + 0x10) - *(int *)(*(int *)(iVar15 + 0x10) + 0x14);
    *(uint **)(*(int *)(iVar15 + 0x10) + 0x10) = puVar3 + 4;
  }
  uVar2 = DAT_00272930;
  iVar13 = *piVar11;
  *(int *)(*(int *)(iVar13 + 0x10) + 0xc) = *(int *)(*(int *)(iVar13 + 0x10) + 0xc) + 1;
  iVar15 = DAT_0027292c;
  puVar3[4] = *(uint *)(iVar13 + 0x10);
  uVar2 = (uint)(byte)*puVar3 + DAT_00272928 + (uint)*(byte *)((int)puVar3 + 3) * 0x1000000 +
          (uint)*(byte *)((int)puVar3 + 2) * 0x10000 + (uint)*(byte *)((int)puVar3 + 1) * 0x100 ^
          uVar2;
  uVar6 = uVar2 << 8 ^ iVar15 - uVar2;
  uVar12 = (DAT_00272934 - uVar2) - uVar6 ^ uVar6 >> 0xd;
  uVar9 = (uVar2 - uVar6) - uVar12 ^ uVar12 >> 0xc;
  uVar2 = (uVar6 - uVar12) - uVar9 ^ uVar9 << 0x10;
  uVar6 = uVar2 >> 5 ^ (uVar12 - uVar9) - uVar2;
  uVar9 = (uVar9 - uVar2) - uVar6 ^ uVar6 >> 3;
  uVar2 = (uVar2 - uVar6) - uVar9 ^ uVar9 << 10;
  uVar2 = uVar2 >> 0xf ^ (uVar6 - uVar9) - uVar2;
  puVar3[0xb] = uVar2;
  iVar19 = (uVar2 & (*(int **)(iVar13 + 0x10))[1] - 1U) * 0xc;
  iVar15 = **(int **)(iVar13 + 0x10) + iVar19;
  *(int *)(iVar15 + 4) = *(int *)(iVar15 + 4) + 1;
  puVar3[8] = *(uint *)(**(int **)(iVar13 + 0x10) + iVar19);
  puVar3[7] = 0;
  iVar15 = *(int *)(**(int **)(iVar13 + 0x10) + iVar19);
  if (iVar15 != 0) {
    *(uint **)(iVar15 + 0xc) = puVar3 + 4;
  }
  *(uint **)(**(int **)(iVar13 + 0x10) + iVar19) = puVar3 + 4;
  iVar19 = **(int **)(*piVar11 + 0x10) + iVar19;
  if (((uint)((*(int *)(iVar19 + 8) + 1) * 10) <= *(uint *)(iVar19 + 4)) &&
     (uVar2 = puVar3[4], *(int *)(uVar2 + 0x24) != 1)) {
    __size = *(int *)(uVar2 + 4) * 0x18;
    pvVar4 = malloc(__size);
    if (pvVar4 == (void *)0x0) {
LAB_002728b0:
                    /* WARNING: Subroutine does not return */
      exit(-1);
    }
    memset(pvVar4,0,__size);
    iVar15 = 0;
    local_2c = 0;
    *(uint *)(uVar2 + 0x18) =
         (uint)((*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(uVar2 + 0xc)) != 0) +
         (*(uint *)(uVar2 + 0xc) >> (*(int *)(uVar2 + 8) + 1U & 0xff));
    *(undefined4 *)(puVar3[4] + 0x1c) = 0;
    for (; piVar11 = (int *)puVar3[4], local_2c < (uint)piVar11[1]; local_2c = local_2c + 1) {
      iVar19 = *(int *)(*piVar11 + iVar15);
      while (iVar19 != 0) {
        iVar14 = *(int *)(iVar19 + 0x10);
        uVar2 = puVar3[4];
        piVar11 = (int *)((int)pvVar4 +
                         (*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(iVar19 + 0x1c)) * 0xc);
        iVar13 = piVar11[1];
        piVar11[1] = iVar13 + 1U;
        if (*(uint *)(uVar2 + 0x18) < iVar13 + 1U) {
          *(int *)(uVar2 + 0x1c) = *(int *)(uVar2 + 0x1c) + 1;
          iVar13 = __udivsi3(piVar11[1],*(undefined4 *)(puVar3[4] + 0x18));
          piVar11[2] = iVar13;
        }
        *(undefined4 *)(iVar19 + 0xc) = 0;
        *(int *)(iVar19 + 0x10) = *piVar11;
        if (*piVar11 != 0) {
          *(int *)(*piVar11 + 0xc) = iVar19;
        }
        *piVar11 = iVar19;
        iVar19 = iVar14;
      }
      iVar15 = iVar15 + 0xc;
    }
    free((void *)*piVar11);
    *(int *)(puVar3[4] + 4) = *(int *)(puVar3[4] + 4) << 1;
    *(int *)(puVar3[4] + 8) = *(int *)(puVar3[4] + 8) + 1;
    iVar15 = 0;
    *(void **)puVar3[4] = pvVar4;
    uVar2 = puVar3[4];
    if (*(uint *)(uVar2 + 0xc) >> 1 < *(uint *)(uVar2 + 0x1c)) {
      iVar15 = *(int *)(uVar2 + 0x20) + 1;
    }
    *(int *)(uVar2 + 0x20) = iVar15;
    if (1 < *(uint *)(puVar3[4] + 0x20)) {
      *(undefined4 *)(puVar3[4] + 0x24) = 1;
    }
  }
  return;
}



/* ===== js_register_xs_sanguosha_BFCardView @ 00271564 ===== */
/* signature: undefined __stdcall js_register_xs_sanguosha_BFCardView(JSContext * param_1, JSObject * param_2) */

/* js_register_xs_sanguosha_BFCardView(JSContext*, JSObject*) */

void js_register_xs_sanguosha_BFCardView(JSContext *param_1,JSObject *param_2)

{
  JSClass *pJVar1;
  uint uVar2;
  uint *puVar3;
  void *pvVar4;
  JSPropertySpec *pJVar5;
  uint uVar6;
  uint *puVar7;
  undefined4 uVar8;
  uint uVar9;
  uint *puVar10;
  int *piVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int *piVar16;
  undefined4 *puVar17;
  size_t __size;
  char *pcVar18;
  int iVar19;
  uint *puVar20;
  uint local_2c;
  int iStack_20;
  uint local_1c [2];
  
  pJVar1 = calloc(1,0xdc);
  iVar15 = DAT_00271870 + 0x27157e;
  puVar7 = *(uint **)(iVar15 + DAT_00271874);
  pcVar18 = (char *)(DAT_00271878 + 0x271582);
  *(char **)pJVar1 = pcVar18;
  *puVar7 = (uint)pJVar1;
  uVar8 = *(undefined4 *)(iVar15 + DAT_0027187c);
  pJVar5 = (JSPropertySpec *)(DAT_00271880 + 0x2715aa);
  *(undefined4 *)(pJVar1 + 8) = uVar8;
  *(undefined4 *)(pJVar1 + 0xc) = uVar8;
  *(undefined4 *)(pJVar1 + 0x10) = uVar8;
  *(undefined4 *)(pJVar1 + 0x14) = *(undefined4 *)(iVar15 + DAT_00271884);
  *(undefined4 *)(pJVar1 + 0x18) = *(undefined4 *)(iVar15 + DAT_00271888);
  *(undefined4 *)(pJVar1 + 0x1c) = *(undefined4 *)(iVar15 + DAT_0027188c);
  *(undefined4 *)(pJVar1 + 0x20) = *(undefined4 *)(iVar15 + DAT_00271890);
  *(undefined4 *)(pJVar1 + 0x24) = *(undefined4 *)(iVar15 + DAT_00271894);
  *(undefined4 *)(pJVar1 + 4) = 0x200;
  puVar20 = *(uint **)(iVar15 + DAT_00271898);
  uVar2 = JS_InitClass(param_1,param_2,(JSObject *)*puVar20,pJVar1,
                       *(_func_int_JSContext_ptr_uint_Value_ptr **)(iVar15 + DAT_0027189c),0,pJVar5,
                       (JSFunctionSpec *)(DAT_002718a0 + 0x2715fe),(JSPropertySpec *)0x0,
                       (JSFunctionSpec *)0x0);
  puVar10 = *(uint **)(iVar15 + DAT_002718a4);
  *puVar10 = uVar2;
  JS_SetPropertyAttributes(param_1,param_2,pcVar18,3,&iStack_20);
  uVar2 = TypeTest<BFCardView>::s_id();
  piVar11 = *(int **)(iVar15 + DAT_002718a8);
  iVar15 = *piVar11;
  local_1c[0] = uVar2;
  if (iVar15 != 0) {
    piVar16 = *(int **)(iVar15 + 0x10);
    uVar6 = (uVar2 & 0xff) + DAT_002718ac + (uVar2 & 0xff000000) + (uVar2 >> 0x10 & 0xff) * 0x10000
            + (uVar2 >> 8 & 0xff) * 0x100 ^ DAT_002718b4;
    uVar9 = uVar6 << 8 ^ DAT_002718b0 - uVar6;
    uVar12 = (DAT_002718b8 - uVar6) - uVar9 ^ uVar9 >> 0xd;
    uVar6 = (uVar6 - uVar9) - uVar12 ^ uVar12 >> 0xc;
    uVar9 = (uVar9 - uVar12) - uVar6 ^ uVar6 << 0x10;
    uVar12 = (uVar12 - uVar6) - uVar9 ^ uVar9 >> 5;
    uVar6 = (uVar6 - uVar9) - uVar12 ^ uVar12 >> 3;
    uVar9 = (uVar9 - uVar12) - uVar6 ^ uVar6 << 10;
    iVar19 = *(int *)(((uVar9 >> 0xf ^ (uVar12 - uVar6) - uVar9) & piVar16[1] - 1U) * 0xc + *piVar16
                     );
    if (iVar19 != 0) {
      iVar19 = iVar19 - piVar16[5];
    }
    for (; iVar19 != 0; iVar19 = *(int *)(iVar19 + 0x20) - piVar16[5]) {
      if ((*(int *)(iVar19 + 0x28) == 4) &&
         (iVar13 = memcmp(*(void **)(iVar19 + 0x24),local_1c,4), iVar13 == 0)) {
        return;
      }
      if (*(int *)(iVar19 + 0x20) == 0) break;
    }
  }
  puVar3 = malloc(0x30);
  uVar6 = *puVar7;
  *puVar3 = uVar2;
  puVar3[1] = uVar6;
  puVar3[9] = (uint)puVar3;
  puVar3[2] = *puVar10;
  puVar3[3] = *puVar20;
  puVar3[6] = 0;
  puVar3[10] = 4;
  if (iVar15 == 0) {
    *piVar11 = (int)puVar3;
    puVar3[5] = 0;
    pvVar4 = malloc(0x2c);
    puVar3[4] = (uint)pvVar4;
    if (pvVar4 == (void *)0x0) goto LAB_00271834;
    memset(pvVar4,0,0x2c);
    *(uint **)(puVar3[4] + 0x10) = puVar3 + 4;
    *(undefined4 *)(puVar3[4] + 4) = 0x20;
    *(undefined4 *)(puVar3[4] + 8) = 5;
    *(undefined4 *)(puVar3[4] + 0x14) = 0x10;
    puVar17 = (undefined4 *)puVar3[4];
    pvVar4 = malloc(0x180);
    *puVar17 = pvVar4;
    if ((void *)**(undefined4 **)(*piVar11 + 0x10) == (void *)0x0) goto LAB_00271834;
    memset((void *)**(undefined4 **)(*piVar11 + 0x10),0,0x180);
    *(undefined4 *)(*(int *)(*piVar11 + 0x10) + 0x28) = DAT_002718bc;
  }
  else {
    *(uint **)(*(int *)(*(int *)(iVar15 + 0x10) + 0x10) + 8) = puVar3;
    puVar3[5] = *(int *)(*(int *)(iVar15 + 0x10) + 0x10) - *(int *)(*(int *)(iVar15 + 0x10) + 0x14);
    *(uint **)(*(int *)(iVar15 + 0x10) + 0x10) = puVar3 + 4;
  }
  uVar2 = DAT_002718b4;
  iVar13 = *piVar11;
  *(int *)(*(int *)(iVar13 + 0x10) + 0xc) = *(int *)(*(int *)(iVar13 + 0x10) + 0xc) + 1;
  iVar15 = DAT_002718b0;
  puVar3[4] = *(uint *)(iVar13 + 0x10);
  uVar2 = (uint)(byte)*puVar3 + DAT_002718ac + (uint)*(byte *)((int)puVar3 + 3) * 0x1000000 +
          (uint)*(byte *)((int)puVar3 + 2) * 0x10000 + (uint)*(byte *)((int)puVar3 + 1) * 0x100 ^
          uVar2;
  uVar6 = uVar2 << 8 ^ iVar15 - uVar2;
  uVar12 = (DAT_002718b8 - uVar2) - uVar6 ^ uVar6 >> 0xd;
  uVar9 = (uVar2 - uVar6) - uVar12 ^ uVar12 >> 0xc;
  uVar2 = (uVar6 - uVar12) - uVar9 ^ uVar9 << 0x10;
  uVar6 = uVar2 >> 5 ^ (uVar12 - uVar9) - uVar2;
  uVar9 = (uVar9 - uVar2) - uVar6 ^ uVar6 >> 3;
  uVar2 = (uVar2 - uVar6) - uVar9 ^ uVar9 << 10;
  uVar2 = uVar2 >> 0xf ^ (uVar6 - uVar9) - uVar2;
  puVar3[0xb] = uVar2;
  iVar19 = (uVar2 & (*(int **)(iVar13 + 0x10))[1] - 1U) * 0xc;
  iVar15 = **(int **)(iVar13 + 0x10) + iVar19;
  *(int *)(iVar15 + 4) = *(int *)(iVar15 + 4) + 1;
  puVar3[8] = *(uint *)(**(int **)(iVar13 + 0x10) + iVar19);
  puVar3[7] = 0;
  iVar15 = *(int *)(**(int **)(iVar13 + 0x10) + iVar19);
  if (iVar15 != 0) {
    *(uint **)(iVar15 + 0xc) = puVar3 + 4;
  }
  *(uint **)(**(int **)(iVar13 + 0x10) + iVar19) = puVar3 + 4;
  iVar19 = **(int **)(*piVar11 + 0x10) + iVar19;
  if (((uint)((*(int *)(iVar19 + 8) + 1) * 10) <= *(uint *)(iVar19 + 4)) &&
     (uVar2 = puVar3[4], *(int *)(uVar2 + 0x24) != 1)) {
    __size = *(int *)(uVar2 + 4) * 0x18;
    pvVar4 = malloc(__size);
    if (pvVar4 == (void *)0x0) {
LAB_00271834:
                    /* WARNING: Subroutine does not return */
      exit(-1);
    }
    memset(pvVar4,0,__size);
    iVar15 = 0;
    local_2c = 0;
    *(uint *)(uVar2 + 0x18) =
         (uint)((*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(uVar2 + 0xc)) != 0) +
         (*(uint *)(uVar2 + 0xc) >> (*(int *)(uVar2 + 8) + 1U & 0xff));
    *(undefined4 *)(puVar3[4] + 0x1c) = 0;
    for (; piVar11 = (int *)puVar3[4], local_2c < (uint)piVar11[1]; local_2c = local_2c + 1) {
      iVar19 = *(int *)(*piVar11 + iVar15);
      while (iVar19 != 0) {
        iVar14 = *(int *)(iVar19 + 0x10);
        uVar2 = puVar3[4];
        piVar11 = (int *)((int)pvVar4 +
                         (*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(iVar19 + 0x1c)) * 0xc);
        iVar13 = piVar11[1];
        piVar11[1] = iVar13 + 1U;
        if (*(uint *)(uVar2 + 0x18) < iVar13 + 1U) {
          *(int *)(uVar2 + 0x1c) = *(int *)(uVar2 + 0x1c) + 1;
          iVar13 = __udivsi3(piVar11[1],*(undefined4 *)(puVar3[4] + 0x18));
          piVar11[2] = iVar13;
        }
        *(undefined4 *)(iVar19 + 0xc) = 0;
        *(int *)(iVar19 + 0x10) = *piVar11;
        if (*piVar11 != 0) {
          *(int *)(*piVar11 + 0xc) = iVar19;
        }
        *piVar11 = iVar19;
        iVar19 = iVar14;
      }
      iVar15 = iVar15 + 0xc;
    }
    free((void *)*piVar11);
    *(int *)(puVar3[4] + 4) = *(int *)(puVar3[4] + 4) << 1;
    *(int *)(puVar3[4] + 8) = *(int *)(puVar3[4] + 8) + 1;
    iVar15 = 0;
    *(void **)puVar3[4] = pvVar4;
    uVar2 = puVar3[4];
    if (*(uint *)(uVar2 + 0xc) >> 1 < *(uint *)(uVar2 + 0x1c)) {
      iVar15 = *(int *)(uVar2 + 0x20) + 1;
    }
    *(int *)(uVar2 + 0x20) = iVar15;
    if (1 < *(uint *)(puVar3[4] + 0x20)) {
      *(undefined4 *)(puVar3[4] + 0x24) = 1;
    }
  }
  return;
}



/* ===== js_register_xs_sanguosha_BFControlSlider @ 00270fe0 ===== */
/* signature: undefined __stdcall js_register_xs_sanguosha_BFControlSlider(JSContext * param_1, JSObject * param_2) */

/* js_register_xs_sanguosha_BFControlSlider(JSContext*, JSObject*) */

void js_register_xs_sanguosha_BFControlSlider(JSContext *param_1,JSObject *param_2)

{
  JSClass *pJVar1;
  uint uVar2;
  uint *puVar3;
  void *pvVar4;
  uint uVar5;
  uint *puVar6;
  undefined4 uVar7;
  uint uVar8;
  uint *puVar9;
  int *piVar10;
  uint uVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  int *piVar15;
  undefined4 *puVar16;
  size_t __size;
  char *pcVar17;
  int iVar18;
  uint *puVar19;
  uint local_2c;
  int iStack_20;
  uint local_1c [2];
  
  pJVar1 = calloc(1,0xdc);
  iVar14 = DAT_002712f0 + 0x270ffa;
  puVar6 = *(uint **)(iVar14 + DAT_002712f4);
  pcVar17 = (char *)(DAT_002712f8 + 0x270ffe);
  *(char **)pJVar1 = pcVar17;
  *puVar6 = (uint)pJVar1;
  uVar7 = *(undefined4 *)(iVar14 + DAT_002712fc);
  *(undefined4 *)(pJVar1 + 8) = uVar7;
  *(undefined4 *)(pJVar1 + 0xc) = uVar7;
  *(undefined4 *)(pJVar1 + 0x10) = uVar7;
  *(undefined4 *)(pJVar1 + 0x14) = *(undefined4 *)(iVar14 + DAT_00271300);
  *(undefined4 *)(pJVar1 + 0x18) = *(undefined4 *)(iVar14 + DAT_00271304);
  *(undefined4 *)(pJVar1 + 0x1c) = *(undefined4 *)(iVar14 + DAT_00271308);
  *(undefined4 *)(pJVar1 + 0x20) = *(undefined4 *)(iVar14 + DAT_0027130c);
  *(undefined4 *)(pJVar1 + 0x24) = *(undefined4 *)(iVar14 + DAT_00271310);
  *(undefined4 *)(pJVar1 + 4) = 0x200;
  puVar19 = *(uint **)(iVar14 + DAT_00271314);
  uVar2 = JS_InitClass(param_1,param_2,(JSObject *)*puVar19,pJVar1,
                       *(_func_int_JSContext_ptr_uint_Value_ptr **)(iVar14 + DAT_00271318),0,
                       (JSPropertySpec *)(DAT_0027131c + 0x27104e),
                       (JSFunctionSpec *)(DAT_00271320 + 0x271076),(JSPropertySpec *)0x0,
                       (JSFunctionSpec *)(DAT_00271324 + 0x271062));
  puVar9 = *(uint **)(iVar14 + DAT_00271328);
  *puVar9 = uVar2;
  JS_SetPropertyAttributes(param_1,param_2,pcVar17,3,&iStack_20);
  uVar2 = TypeTest<BFControlSlider>::s_id();
  piVar10 = *(int **)(iVar14 + DAT_0027132c);
  iVar14 = *piVar10;
  local_1c[0] = uVar2;
  if (iVar14 != 0) {
    piVar15 = *(int **)(iVar14 + 0x10);
    uVar5 = (uVar2 & 0xff) + DAT_00271330 + (uVar2 & 0xff000000) + (uVar2 >> 0x10 & 0xff) * 0x10000
            + (uVar2 >> 8 & 0xff) * 0x100 ^ DAT_00271338;
    uVar8 = uVar5 << 8 ^ DAT_00271334 - uVar5;
    uVar11 = (DAT_0027133c - uVar5) - uVar8 ^ uVar8 >> 0xd;
    uVar5 = (uVar5 - uVar8) - uVar11 ^ uVar11 >> 0xc;
    uVar8 = (uVar8 - uVar11) - uVar5 ^ uVar5 << 0x10;
    uVar11 = (uVar11 - uVar5) - uVar8 ^ uVar8 >> 5;
    uVar5 = (uVar5 - uVar8) - uVar11 ^ uVar11 >> 3;
    uVar8 = (uVar8 - uVar11) - uVar5 ^ uVar5 << 10;
    iVar18 = *(int *)(((uVar8 >> 0xf ^ (uVar11 - uVar5) - uVar8) & piVar15[1] - 1U) * 0xc + *piVar15
                     );
    if (iVar18 != 0) {
      iVar18 = iVar18 - piVar15[5];
    }
    for (; iVar18 != 0; iVar18 = *(int *)(iVar18 + 0x20) - piVar15[5]) {
      if ((*(int *)(iVar18 + 0x28) == 4) &&
         (iVar12 = memcmp(*(void **)(iVar18 + 0x24),local_1c,4), iVar12 == 0)) {
        return;
      }
      if (*(int *)(iVar18 + 0x20) == 0) break;
    }
  }
  puVar3 = malloc(0x30);
  uVar5 = *puVar6;
  *puVar3 = uVar2;
  puVar3[1] = uVar5;
  puVar3[9] = (uint)puVar3;
  puVar3[2] = *puVar9;
  puVar3[3] = *puVar19;
  puVar3[6] = 0;
  puVar3[10] = 4;
  if (iVar14 == 0) {
    *piVar10 = (int)puVar3;
    puVar3[5] = 0;
    pvVar4 = malloc(0x2c);
    puVar3[4] = (uint)pvVar4;
    if (pvVar4 == (void *)0x0) goto LAB_002712b4;
    memset(pvVar4,0,0x2c);
    *(uint **)(puVar3[4] + 0x10) = puVar3 + 4;
    *(undefined4 *)(puVar3[4] + 4) = 0x20;
    *(undefined4 *)(puVar3[4] + 8) = 5;
    *(undefined4 *)(puVar3[4] + 0x14) = 0x10;
    puVar16 = (undefined4 *)puVar3[4];
    pvVar4 = malloc(0x180);
    *puVar16 = pvVar4;
    if ((void *)**(undefined4 **)(*piVar10 + 0x10) == (void *)0x0) goto LAB_002712b4;
    memset((void *)**(undefined4 **)(*piVar10 + 0x10),0,0x180);
    *(undefined4 *)(*(int *)(*piVar10 + 0x10) + 0x28) = DAT_00271340;
  }
  else {
    *(uint **)(*(int *)(*(int *)(iVar14 + 0x10) + 0x10) + 8) = puVar3;
    puVar3[5] = *(int *)(*(int *)(iVar14 + 0x10) + 0x10) - *(int *)(*(int *)(iVar14 + 0x10) + 0x14);
    *(uint **)(*(int *)(iVar14 + 0x10) + 0x10) = puVar3 + 4;
  }
  uVar2 = DAT_00271338;
  iVar12 = *piVar10;
  *(int *)(*(int *)(iVar12 + 0x10) + 0xc) = *(int *)(*(int *)(iVar12 + 0x10) + 0xc) + 1;
  iVar14 = DAT_00271334;
  puVar3[4] = *(uint *)(iVar12 + 0x10);
  uVar2 = (uint)(byte)*puVar3 + DAT_00271330 + (uint)*(byte *)((int)puVar3 + 3) * 0x1000000 +
          (uint)*(byte *)((int)puVar3 + 2) * 0x10000 + (uint)*(byte *)((int)puVar3 + 1) * 0x100 ^
          uVar2;
  uVar5 = uVar2 << 8 ^ iVar14 - uVar2;
  uVar11 = (DAT_0027133c - uVar2) - uVar5 ^ uVar5 >> 0xd;
  uVar8 = (uVar2 - uVar5) - uVar11 ^ uVar11 >> 0xc;
  uVar2 = (uVar5 - uVar11) - uVar8 ^ uVar8 << 0x10;
  uVar5 = uVar2 >> 5 ^ (uVar11 - uVar8) - uVar2;
  uVar8 = (uVar8 - uVar2) - uVar5 ^ uVar5 >> 3;
  uVar2 = (uVar2 - uVar5) - uVar8 ^ uVar8 << 10;
  uVar2 = uVar2 >> 0xf ^ (uVar5 - uVar8) - uVar2;
  puVar3[0xb] = uVar2;
  iVar18 = (uVar2 & (*(int **)(iVar12 + 0x10))[1] - 1U) * 0xc;
  iVar14 = **(int **)(iVar12 + 0x10) + iVar18;
  *(int *)(iVar14 + 4) = *(int *)(iVar14 + 4) + 1;
  puVar3[8] = *(uint *)(**(int **)(iVar12 + 0x10) + iVar18);
  puVar3[7] = 0;
  iVar14 = *(int *)(**(int **)(iVar12 + 0x10) + iVar18);
  if (iVar14 != 0) {
    *(uint **)(iVar14 + 0xc) = puVar3 + 4;
  }
  *(uint **)(**(int **)(iVar12 + 0x10) + iVar18) = puVar3 + 4;
  iVar18 = **(int **)(*piVar10 + 0x10) + iVar18;
  if (((uint)((*(int *)(iVar18 + 8) + 1) * 10) <= *(uint *)(iVar18 + 4)) &&
     (uVar2 = puVar3[4], *(int *)(uVar2 + 0x24) != 1)) {
    __size = *(int *)(uVar2 + 4) * 0x18;
    pvVar4 = malloc(__size);
    if (pvVar4 == (void *)0x0) {
LAB_002712b4:
                    /* WARNING: Subroutine does not return */
      exit(-1);
    }
    memset(pvVar4,0,__size);
    iVar14 = 0;
    local_2c = 0;
    *(uint *)(uVar2 + 0x18) =
         (uint)((*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(uVar2 + 0xc)) != 0) +
         (*(uint *)(uVar2 + 0xc) >> (*(int *)(uVar2 + 8) + 1U & 0xff));
    *(undefined4 *)(puVar3[4] + 0x1c) = 0;
    for (; piVar10 = (int *)puVar3[4], local_2c < (uint)piVar10[1]; local_2c = local_2c + 1) {
      iVar18 = *(int *)(*piVar10 + iVar14);
      while (iVar18 != 0) {
        iVar13 = *(int *)(iVar18 + 0x10);
        uVar2 = puVar3[4];
        piVar10 = (int *)((int)pvVar4 +
                         (*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(iVar18 + 0x1c)) * 0xc);
        iVar12 = piVar10[1];
        piVar10[1] = iVar12 + 1U;
        if (*(uint *)(uVar2 + 0x18) < iVar12 + 1U) {
          *(int *)(uVar2 + 0x1c) = *(int *)(uVar2 + 0x1c) + 1;
          iVar12 = __udivsi3(piVar10[1],*(undefined4 *)(puVar3[4] + 0x18));
          piVar10[2] = iVar12;
        }
        *(undefined4 *)(iVar18 + 0xc) = 0;
        *(int *)(iVar18 + 0x10) = *piVar10;
        if (*piVar10 != 0) {
          *(int *)(*piVar10 + 0xc) = iVar18;
        }
        *piVar10 = iVar18;
        iVar18 = iVar13;
      }
      iVar14 = iVar14 + 0xc;
    }
    free((void *)*piVar10);
    *(int *)(puVar3[4] + 4) = *(int *)(puVar3[4] + 4) << 1;
    *(int *)(puVar3[4] + 8) = *(int *)(puVar3[4] + 8) + 1;
    iVar14 = 0;
    *(void **)puVar3[4] = pvVar4;
    uVar2 = puVar3[4];
    if (*(uint *)(uVar2 + 0xc) >> 1 < *(uint *)(uVar2 + 0x1c)) {
      iVar14 = *(int *)(uVar2 + 0x20) + 1;
    }
    *(int *)(uVar2 + 0x20) = iVar14;
    if (1 < *(uint *)(puVar3[4] + 0x20)) {
      *(undefined4 *)(puVar3[4] + 0x24) = 1;
    }
  }
  return;
}



/* ===== js_register_xs_sanguosha_BFSortTableWidget @ 00271ae0 ===== */
/* signature: undefined __stdcall js_register_xs_sanguosha_BFSortTableWidget(JSContext * param_1, JSObject * param_2) */

/* js_register_xs_sanguosha_BFSortTableWidget(JSContext*, JSObject*) */

void js_register_xs_sanguosha_BFSortTableWidget(JSContext *param_1,JSObject *param_2)

{
  JSClass *pJVar1;
  uint uVar2;
  uint *puVar3;
  void *pvVar4;
  uint uVar5;
  uint *puVar6;
  undefined4 uVar7;
  uint uVar8;
  uint *puVar9;
  int *piVar10;
  uint uVar11;
  int iVar12;
  int iVar13;
  int iVar14;
  int *piVar15;
  undefined4 *puVar16;
  size_t __size;
  char *pcVar17;
  int iVar18;
  uint *puVar19;
  uint local_2c;
  int iStack_20;
  uint local_1c [2];
  
  pJVar1 = calloc(1,0xdc);
  iVar14 = DAT_00271df0 + 0x271afa;
  puVar6 = *(uint **)(iVar14 + DAT_00271df4);
  pcVar17 = (char *)(DAT_00271df8 + 0x271afe);
  *(char **)pJVar1 = pcVar17;
  *puVar6 = (uint)pJVar1;
  uVar7 = *(undefined4 *)(iVar14 + DAT_00271dfc);
  *(undefined4 *)(pJVar1 + 8) = uVar7;
  *(undefined4 *)(pJVar1 + 0xc) = uVar7;
  *(undefined4 *)(pJVar1 + 0x10) = uVar7;
  *(undefined4 *)(pJVar1 + 0x14) = *(undefined4 *)(iVar14 + DAT_00271e00);
  *(undefined4 *)(pJVar1 + 0x18) = *(undefined4 *)(iVar14 + DAT_00271e04);
  *(undefined4 *)(pJVar1 + 0x1c) = *(undefined4 *)(iVar14 + DAT_00271e08);
  *(undefined4 *)(pJVar1 + 0x20) = *(undefined4 *)(iVar14 + DAT_00271e0c);
  *(undefined4 *)(pJVar1 + 0x24) = *(undefined4 *)(iVar14 + DAT_00271e10);
  *(undefined4 *)(pJVar1 + 4) = 0x200;
  puVar19 = *(uint **)(iVar14 + DAT_00271e14);
  uVar2 = JS_InitClass(param_1,param_2,(JSObject *)*puVar19,pJVar1,
                       *(_func_int_JSContext_ptr_uint_Value_ptr **)(iVar14 + DAT_00271e18),0,
                       (JSPropertySpec *)(DAT_00271e1c + 0x271b7e),
                       (JSFunctionSpec *)(DAT_00271e20 + 0x271b9c),(JSPropertySpec *)0x0,
                       (JSFunctionSpec *)(DAT_00271e24 + 0x271bc4));
  puVar9 = *(uint **)(iVar14 + DAT_00271e28);
  *puVar9 = uVar2;
  JS_SetPropertyAttributes(param_1,param_2,pcVar17,3,&iStack_20);
  uVar2 = TypeTest<BFSortTableWidget>::s_id();
  piVar10 = *(int **)(iVar14 + DAT_00271e2c);
  iVar14 = *piVar10;
  local_1c[0] = uVar2;
  if (iVar14 != 0) {
    piVar15 = *(int **)(iVar14 + 0x10);
    uVar5 = (uVar2 & 0xff) + DAT_00271e30 + (uVar2 & 0xff000000) + (uVar2 >> 0x10 & 0xff) * 0x10000
            + (uVar2 >> 8 & 0xff) * 0x100 ^ DAT_00271e38;
    uVar8 = uVar5 << 8 ^ DAT_00271e34 - uVar5;
    uVar11 = (DAT_00271e3c - uVar5) - uVar8 ^ uVar8 >> 0xd;
    uVar5 = (uVar5 - uVar8) - uVar11 ^ uVar11 >> 0xc;
    uVar8 = (uVar8 - uVar11) - uVar5 ^ uVar5 << 0x10;
    uVar11 = (uVar11 - uVar5) - uVar8 ^ uVar8 >> 5;
    uVar5 = (uVar5 - uVar8) - uVar11 ^ uVar11 >> 3;
    uVar8 = (uVar8 - uVar11) - uVar5 ^ uVar5 << 10;
    iVar18 = *(int *)(((uVar8 >> 0xf ^ (uVar11 - uVar5) - uVar8) & piVar15[1] - 1U) * 0xc + *piVar15
                     );
    if (iVar18 != 0) {
      iVar18 = iVar18 - piVar15[5];
    }
    for (; iVar18 != 0; iVar18 = *(int *)(iVar18 + 0x20) - piVar15[5]) {
      if ((*(int *)(iVar18 + 0x28) == 4) &&
         (iVar12 = memcmp(*(void **)(iVar18 + 0x24),local_1c,4), iVar12 == 0)) {
        return;
      }
      if (*(int *)(iVar18 + 0x20) == 0) break;
    }
  }
  puVar3 = malloc(0x30);
  uVar5 = *puVar6;
  *puVar3 = uVar2;
  puVar3[1] = uVar5;
  puVar3[9] = (uint)puVar3;
  puVar3[2] = *puVar9;
  puVar3[3] = *puVar19;
  puVar3[6] = 0;
  puVar3[10] = 4;
  if (iVar14 == 0) {
    *piVar10 = (int)puVar3;
    puVar3[5] = 0;
    pvVar4 = malloc(0x2c);
    puVar3[4] = (uint)pvVar4;
    if (pvVar4 == (void *)0x0) goto LAB_00271db6;
    memset(pvVar4,0,0x2c);
    *(uint **)(puVar3[4] + 0x10) = puVar3 + 4;
    *(undefined4 *)(puVar3[4] + 4) = 0x20;
    *(undefined4 *)(puVar3[4] + 8) = 5;
    *(undefined4 *)(puVar3[4] + 0x14) = 0x10;
    puVar16 = (undefined4 *)puVar3[4];
    pvVar4 = malloc(0x180);
    *puVar16 = pvVar4;
    if ((void *)**(undefined4 **)(*piVar10 + 0x10) == (void *)0x0) goto LAB_00271db6;
    memset((void *)**(undefined4 **)(*piVar10 + 0x10),0,0x180);
    *(undefined4 *)(*(int *)(*piVar10 + 0x10) + 0x28) = DAT_00271e40;
  }
  else {
    *(uint **)(*(int *)(*(int *)(iVar14 + 0x10) + 0x10) + 8) = puVar3;
    puVar3[5] = *(int *)(*(int *)(iVar14 + 0x10) + 0x10) - *(int *)(*(int *)(iVar14 + 0x10) + 0x14);
    *(uint **)(*(int *)(iVar14 + 0x10) + 0x10) = puVar3 + 4;
  }
  uVar2 = DAT_00271e38;
  iVar12 = *piVar10;
  *(int *)(*(int *)(iVar12 + 0x10) + 0xc) = *(int *)(*(int *)(iVar12 + 0x10) + 0xc) + 1;
  iVar14 = DAT_00271e34;
  puVar3[4] = *(uint *)(iVar12 + 0x10);
  uVar2 = (uint)(byte)*puVar3 + DAT_00271e30 + (uint)*(byte *)((int)puVar3 + 3) * 0x1000000 +
          (uint)*(byte *)((int)puVar3 + 2) * 0x10000 + (uint)*(byte *)((int)puVar3 + 1) * 0x100 ^
          uVar2;
  uVar5 = uVar2 << 8 ^ iVar14 - uVar2;
  uVar11 = (DAT_00271e3c - uVar2) - uVar5 ^ uVar5 >> 0xd;
  uVar8 = (uVar2 - uVar5) - uVar11 ^ uVar11 >> 0xc;
  uVar2 = (uVar5 - uVar11) - uVar8 ^ uVar8 << 0x10;
  uVar5 = uVar2 >> 5 ^ (uVar11 - uVar8) - uVar2;
  uVar8 = (uVar8 - uVar2) - uVar5 ^ uVar5 >> 3;
  uVar2 = (uVar2 - uVar5) - uVar8 ^ uVar8 << 10;
  uVar2 = uVar2 >> 0xf ^ (uVar5 - uVar8) - uVar2;
  puVar3[0xb] = uVar2;
  iVar18 = (uVar2 & (*(int **)(iVar12 + 0x10))[1] - 1U) * 0xc;
  iVar14 = **(int **)(iVar12 + 0x10) + iVar18;
  *(int *)(iVar14 + 4) = *(int *)(iVar14 + 4) + 1;
  puVar3[8] = *(uint *)(**(int **)(iVar12 + 0x10) + iVar18);
  puVar3[7] = 0;
  iVar14 = *(int *)(**(int **)(iVar12 + 0x10) + iVar18);
  if (iVar14 != 0) {
    *(uint **)(iVar14 + 0xc) = puVar3 + 4;
  }
  *(uint **)(**(int **)(iVar12 + 0x10) + iVar18) = puVar3 + 4;
  iVar18 = **(int **)(*piVar10 + 0x10) + iVar18;
  if (((uint)((*(int *)(iVar18 + 8) + 1) * 10) <= *(uint *)(iVar18 + 4)) &&
     (uVar2 = puVar3[4], *(int *)(uVar2 + 0x24) != 1)) {
    __size = *(int *)(uVar2 + 4) * 0x18;
    pvVar4 = malloc(__size);
    if (pvVar4 == (void *)0x0) {
LAB_00271db6:
                    /* WARNING: Subroutine does not return */
      exit(-1);
    }
    memset(pvVar4,0,__size);
    iVar14 = 0;
    local_2c = 0;
    *(uint *)(uVar2 + 0x18) =
         (uint)((*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(uVar2 + 0xc)) != 0) +
         (*(uint *)(uVar2 + 0xc) >> (*(int *)(uVar2 + 8) + 1U & 0xff));
    *(undefined4 *)(puVar3[4] + 0x1c) = 0;
    for (; piVar10 = (int *)puVar3[4], local_2c < (uint)piVar10[1]; local_2c = local_2c + 1) {
      iVar18 = *(int *)(*piVar10 + iVar14);
      while (iVar18 != 0) {
        iVar13 = *(int *)(iVar18 + 0x10);
        uVar2 = puVar3[4];
        piVar10 = (int *)((int)pvVar4 +
                         (*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(iVar18 + 0x1c)) * 0xc);
        iVar12 = piVar10[1];
        piVar10[1] = iVar12 + 1U;
        if (*(uint *)(uVar2 + 0x18) < iVar12 + 1U) {
          *(int *)(uVar2 + 0x1c) = *(int *)(uVar2 + 0x1c) + 1;
          iVar12 = __udivsi3(piVar10[1],*(undefined4 *)(puVar3[4] + 0x18));
          piVar10[2] = iVar12;
        }
        *(undefined4 *)(iVar18 + 0xc) = 0;
        *(int *)(iVar18 + 0x10) = *piVar10;
        if (*piVar10 != 0) {
          *(int *)(*piVar10 + 0xc) = iVar18;
        }
        *piVar10 = iVar18;
        iVar18 = iVar13;
      }
      iVar14 = iVar14 + 0xc;
    }
    free((void *)*piVar10);
    *(int *)(puVar3[4] + 4) = *(int *)(puVar3[4] + 4) << 1;
    *(int *)(puVar3[4] + 8) = *(int *)(puVar3[4] + 8) + 1;
    iVar14 = 0;
    *(void **)puVar3[4] = pvVar4;
    uVar2 = puVar3[4];
    if (*(uint *)(uVar2 + 0xc) >> 1 < *(uint *)(uVar2 + 0x1c)) {
      iVar14 = *(int *)(uVar2 + 0x20) + 1;
    }
    *(int *)(uVar2 + 0x20) = iVar14;
    if (1 < *(uint *)(puVar3[4] + 0x20)) {
      *(undefined4 *)(puVar3[4] + 0x24) = 1;
    }
  }
  return;
}



/* ===== js_register_xs_sanguosha_BFWebView @ 00272064 ===== */
/* signature: undefined __stdcall js_register_xs_sanguosha_BFWebView(JSContext * param_1, JSObject * param_2) */

/* js_register_xs_sanguosha_BFWebView(JSContext*, JSObject*) */

void js_register_xs_sanguosha_BFWebView(JSContext *param_1,JSObject *param_2)

{
  JSClass *pJVar1;
  uint uVar2;
  uint *puVar3;
  void *pvVar4;
  JSPropertySpec *pJVar5;
  uint uVar6;
  uint *puVar7;
  undefined4 uVar8;
  uint uVar9;
  uint *puVar10;
  int *piVar11;
  uint uVar12;
  int iVar13;
  int iVar14;
  int iVar15;
  int *piVar16;
  undefined4 *puVar17;
  size_t __size;
  char *pcVar18;
  int iVar19;
  uint *puVar20;
  uint local_2c;
  int iStack_20;
  uint local_1c [2];
  
  pJVar1 = calloc(1,0xdc);
  iVar15 = DAT_00272370 + 0x27207e;
  puVar7 = *(uint **)(iVar15 + DAT_00272374);
  pcVar18 = (char *)(DAT_00272378 + 0x272082);
  *(char **)pJVar1 = pcVar18;
  *puVar7 = (uint)pJVar1;
  uVar8 = *(undefined4 *)(iVar15 + DAT_0027237c);
  pJVar5 = (JSPropertySpec *)(DAT_00272380 + 0x2720da);
  *(undefined4 *)(pJVar1 + 8) = uVar8;
  *(undefined4 *)(pJVar1 + 0xc) = uVar8;
  *(undefined4 *)(pJVar1 + 0x10) = uVar8;
  *(undefined4 *)(pJVar1 + 0x14) = *(undefined4 *)(iVar15 + DAT_00272384);
  *(undefined4 *)(pJVar1 + 0x18) = *(undefined4 *)(iVar15 + DAT_00272388);
  *(undefined4 *)(pJVar1 + 0x1c) = *(undefined4 *)(iVar15 + DAT_0027238c);
  *(undefined4 *)(pJVar1 + 0x20) = *(undefined4 *)(iVar15 + DAT_00272390);
  *(undefined4 *)(pJVar1 + 0x24) = *(undefined4 *)(iVar15 + DAT_00272394);
  *(undefined4 *)(pJVar1 + 4) = 0x200;
  puVar20 = *(uint **)(iVar15 + DAT_00272398);
  uVar2 = JS_InitClass(param_1,param_2,(JSObject *)*puVar20,pJVar1,
                       *(_func_int_JSContext_ptr_uint_Value_ptr **)(iVar15 + DAT_0027239c),0,pJVar5,
                       (JSFunctionSpec *)(DAT_002723a0 + 0x2720de),(JSPropertySpec *)0x0,
                       (JSFunctionSpec *)0x0);
  puVar10 = *(uint **)(iVar15 + DAT_002723a4);
  *puVar10 = uVar2;
  JS_SetPropertyAttributes(param_1,param_2,pcVar18,3,&iStack_20);
  uVar2 = TypeTest<BFWebView>::s_id();
  piVar11 = *(int **)(iVar15 + DAT_002723a8);
  iVar15 = *piVar11;
  local_1c[0] = uVar2;
  if (iVar15 != 0) {
    piVar16 = *(int **)(iVar15 + 0x10);
    uVar6 = (uVar2 & 0xff) + DAT_002723ac + (uVar2 & 0xff000000) + (uVar2 >> 0x10 & 0xff) * 0x10000
            + (uVar2 >> 8 & 0xff) * 0x100 ^ DAT_002723b4;
    uVar9 = uVar6 << 8 ^ DAT_002723b0 - uVar6;
    uVar12 = (DAT_002723b8 - uVar6) - uVar9 ^ uVar9 >> 0xd;
    uVar6 = (uVar6 - uVar9) - uVar12 ^ uVar12 >> 0xc;
    uVar9 = (uVar9 - uVar12) - uVar6 ^ uVar6 << 0x10;
    uVar12 = (uVar12 - uVar6) - uVar9 ^ uVar9 >> 5;
    uVar6 = (uVar6 - uVar9) - uVar12 ^ uVar12 >> 3;
    uVar9 = (uVar9 - uVar12) - uVar6 ^ uVar6 << 10;
    iVar19 = *(int *)(((uVar9 >> 0xf ^ (uVar12 - uVar6) - uVar9) & piVar16[1] - 1U) * 0xc + *piVar16
                     );
    if (iVar19 != 0) {
      iVar19 = iVar19 - piVar16[5];
    }
    for (; iVar19 != 0; iVar19 = *(int *)(iVar19 + 0x20) - piVar16[5]) {
      if ((*(int *)(iVar19 + 0x28) == 4) &&
         (iVar13 = memcmp(*(void **)(iVar19 + 0x24),local_1c,4), iVar13 == 0)) {
        return;
      }
      if (*(int *)(iVar19 + 0x20) == 0) break;
    }
  }
  puVar3 = malloc(0x30);
  uVar6 = *puVar7;
  *puVar3 = uVar2;
  puVar3[1] = uVar6;
  puVar3[9] = (uint)puVar3;
  puVar3[2] = *puVar10;
  puVar3[3] = *puVar20;
  puVar3[6] = 0;
  puVar3[10] = 4;
  if (iVar15 == 0) {
    *piVar11 = (int)puVar3;
    puVar3[5] = 0;
    pvVar4 = malloc(0x2c);
    puVar3[4] = (uint)pvVar4;
    if (pvVar4 == (void *)0x0) goto LAB_00272334;
    memset(pvVar4,0,0x2c);
    *(uint **)(puVar3[4] + 0x10) = puVar3 + 4;
    *(undefined4 *)(puVar3[4] + 4) = 0x20;
    *(undefined4 *)(puVar3[4] + 8) = 5;
    *(undefined4 *)(puVar3[4] + 0x14) = 0x10;
    puVar17 = (undefined4 *)puVar3[4];
    pvVar4 = malloc(0x180);
    *puVar17 = pvVar4;
    if ((void *)**(undefined4 **)(*piVar11 + 0x10) == (void *)0x0) goto LAB_00272334;
    memset((void *)**(undefined4 **)(*piVar11 + 0x10),0,0x180);
    *(undefined4 *)(*(int *)(*piVar11 + 0x10) + 0x28) = DAT_002723bc;
  }
  else {
    *(uint **)(*(int *)(*(int *)(iVar15 + 0x10) + 0x10) + 8) = puVar3;
    puVar3[5] = *(int *)(*(int *)(iVar15 + 0x10) + 0x10) - *(int *)(*(int *)(iVar15 + 0x10) + 0x14);
    *(uint **)(*(int *)(iVar15 + 0x10) + 0x10) = puVar3 + 4;
  }
  uVar2 = DAT_002723b4;
  iVar13 = *piVar11;
  *(int *)(*(int *)(iVar13 + 0x10) + 0xc) = *(int *)(*(int *)(iVar13 + 0x10) + 0xc) + 1;
  iVar15 = DAT_002723b0;
  puVar3[4] = *(uint *)(iVar13 + 0x10);
  uVar2 = (uint)(byte)*puVar3 + DAT_002723ac + (uint)*(byte *)((int)puVar3 + 3) * 0x1000000 +
          (uint)*(byte *)((int)puVar3 + 2) * 0x10000 + (uint)*(byte *)((int)puVar3 + 1) * 0x100 ^
          uVar2;
  uVar6 = uVar2 << 8 ^ iVar15 - uVar2;
  uVar12 = (DAT_002723b8 - uVar2) - uVar6 ^ uVar6 >> 0xd;
  uVar9 = (uVar2 - uVar6) - uVar12 ^ uVar12 >> 0xc;
  uVar2 = (uVar6 - uVar12) - uVar9 ^ uVar9 << 0x10;
  uVar6 = uVar2 >> 5 ^ (uVar12 - uVar9) - uVar2;
  uVar9 = (uVar9 - uVar2) - uVar6 ^ uVar6 >> 3;
  uVar2 = (uVar2 - uVar6) - uVar9 ^ uVar9 << 10;
  uVar2 = uVar2 >> 0xf ^ (uVar6 - uVar9) - uVar2;
  puVar3[0xb] = uVar2;
  iVar19 = (uVar2 & (*(int **)(iVar13 + 0x10))[1] - 1U) * 0xc;
  iVar15 = **(int **)(iVar13 + 0x10) + iVar19;
  *(int *)(iVar15 + 4) = *(int *)(iVar15 + 4) + 1;
  puVar3[8] = *(uint *)(**(int **)(iVar13 + 0x10) + iVar19);
  puVar3[7] = 0;
  iVar15 = *(int *)(**(int **)(iVar13 + 0x10) + iVar19);
  if (iVar15 != 0) {
    *(uint **)(iVar15 + 0xc) = puVar3 + 4;
  }
  *(uint **)(**(int **)(iVar13 + 0x10) + iVar19) = puVar3 + 4;
  iVar19 = **(int **)(*piVar11 + 0x10) + iVar19;
  if (((uint)((*(int *)(iVar19 + 8) + 1) * 10) <= *(uint *)(iVar19 + 4)) &&
     (uVar2 = puVar3[4], *(int *)(uVar2 + 0x24) != 1)) {
    __size = *(int *)(uVar2 + 4) * 0x18;
    pvVar4 = malloc(__size);
    if (pvVar4 == (void *)0x0) {
LAB_00272334:
                    /* WARNING: Subroutine does not return */
      exit(-1);
    }
    memset(pvVar4,0,__size);
    iVar15 = 0;
    local_2c = 0;
    *(uint *)(uVar2 + 0x18) =
         (uint)((*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(uVar2 + 0xc)) != 0) +
         (*(uint *)(uVar2 + 0xc) >> (*(int *)(uVar2 + 8) + 1U & 0xff));
    *(undefined4 *)(puVar3[4] + 0x1c) = 0;
    for (; piVar11 = (int *)puVar3[4], local_2c < (uint)piVar11[1]; local_2c = local_2c + 1) {
      iVar19 = *(int *)(*piVar11 + iVar15);
      while (iVar19 != 0) {
        iVar14 = *(int *)(iVar19 + 0x10);
        uVar2 = puVar3[4];
        piVar11 = (int *)((int)pvVar4 +
                         (*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(iVar19 + 0x1c)) * 0xc);
        iVar13 = piVar11[1];
        piVar11[1] = iVar13 + 1U;
        if (*(uint *)(uVar2 + 0x18) < iVar13 + 1U) {
          *(int *)(uVar2 + 0x1c) = *(int *)(uVar2 + 0x1c) + 1;
          iVar13 = __udivsi3(piVar11[1],*(undefined4 *)(puVar3[4] + 0x18));
          piVar11[2] = iVar13;
        }
        *(undefined4 *)(iVar19 + 0xc) = 0;
        *(int *)(iVar19 + 0x10) = *piVar11;
        if (*piVar11 != 0) {
          *(int *)(*piVar11 + 0xc) = iVar19;
        }
        *piVar11 = iVar19;
        iVar19 = iVar14;
      }
      iVar15 = iVar15 + 0xc;
    }
    free((void *)*piVar11);
    *(int *)(puVar3[4] + 4) = *(int *)(puVar3[4] + 4) << 1;
    *(int *)(puVar3[4] + 8) = *(int *)(puVar3[4] + 8) + 1;
    iVar15 = 0;
    *(void **)puVar3[4] = pvVar4;
    uVar2 = puVar3[4];
    if (*(uint *)(uVar2 + 0xc) >> 1 < *(uint *)(uVar2 + 0x1c)) {
      iVar15 = *(int *)(uVar2 + 0x20) + 1;
    }
    *(int *)(uVar2 + 0x20) = iVar15;
    if (1 < *(uint *)(puVar3[4] + 0x20)) {
      *(undefined4 *)(puVar3[4] + 0x24) = 1;
    }
  }
  return;
}



/* ===== js_register_xs_sanguosha_JsbConnecter @ 00270b8c ===== */
/* signature: undefined __stdcall js_register_xs_sanguosha_JsbConnecter(JSContext * param_1, JSObject * param_2) */

/* js_register_xs_sanguosha_JsbConnecter(JSContext*, JSObject*) */

void js_register_xs_sanguosha_JsbConnecter(JSContext *param_1,JSObject *param_2)

{
  JSClass *pJVar1;
  uint uVar2;
  int iVar3;
  void *pvVar4;
  uint uVar5;
  undefined4 uVar6;
  uint uVar7;
  uint uVar8;
  int iVar9;
  int iVar10;
  int *piVar11;
  undefined4 *puVar12;
  size_t __size;
  char *pcVar13;
  int *piVar14;
  int iVar15;
  uint *puVar16;
  uint *puVar17;
  uint *puVar18;
  uint local_28;
  int iStack_20;
  uint local_1c [2];
  
  pJVar1 = calloc(1,0xdc);
  iVar3 = DAT_00270eb4;
  iVar10 = DAT_00270ea8 + 0x270ba6;
  puVar18 = *(uint **)(iVar10 + DAT_00270eac);
  pcVar13 = (char *)(DAT_00270eb0 + 0x270bac);
  *(char **)pJVar1 = pcVar13;
  *puVar18 = (uint)pJVar1;
  iVar15 = DAT_00270eb8;
  uVar6 = *(undefined4 *)(iVar10 + iVar3);
  *(undefined4 *)(pJVar1 + 8) = uVar6;
  *(undefined4 *)(pJVar1 + 0xc) = uVar6;
  *(undefined4 *)(pJVar1 + 0x10) = uVar6;
  *(undefined4 *)(pJVar1 + 0x14) = *(undefined4 *)(iVar10 + DAT_00270ebc);
  *(undefined4 *)(pJVar1 + 0x18) = *(undefined4 *)(iVar10 + DAT_00270ec0);
  *(undefined4 *)(pJVar1 + 0x1c) = *(undefined4 *)(iVar10 + DAT_00270ec4);
  *(undefined4 *)(pJVar1 + 0x20) = *(undefined4 *)(iVar10 + DAT_00270ec8);
  *(undefined4 *)(pJVar1 + 0x24) = *(undefined4 *)(iVar10 + DAT_00270ecc);
  *(undefined4 *)(pJVar1 + 4) = 0x200;
  uVar2 = JS_InitClass(param_1,param_2,(JSObject *)0x0,pJVar1,
                       (_func_int_JSContext_ptr_uint_Value_ptr *)(DAT_00270ed0 + 0x270bea),0,
                       (JSPropertySpec *)0x0,(JSFunctionSpec *)(iVar15 + 0x270bc0),
                       (JSPropertySpec *)0x0,(JSFunctionSpec *)(iVar15 + 0x270c38));
  puVar16 = *(uint **)(iVar10 + DAT_00270ed4);
  *puVar16 = uVar2;
  JS_SetPropertyAttributes(param_1,param_2,pcVar13,3,&iStack_20);
  piVar14 = *(int **)(iVar10 + DAT_00270ed8);
  puVar17 = *(uint **)(iVar10 + DAT_00270edc);
  if ((-1 < *piVar14 << 0x1f) && (iVar3 = __cxa_guard_acquire(piVar14), iVar3 != 0)) {
    std::type_info::name(*(type_info **)(iVar10 + DAT_00270ee0));
    uVar2 = FUN_0026e0cc();
    *puVar17 = uVar2;
    __cxa_guard_release(piVar14);
  }
  uVar2 = *puVar17;
  piVar14 = *(int **)(iVar10 + DAT_00270ee4);
  iVar3 = *piVar14;
  local_1c[0] = uVar2;
  if (iVar3 != 0) {
    piVar11 = *(int **)(iVar3 + 0x10);
    uVar5 = (uVar2 & 0xff) + DAT_00270ee8 + (uVar2 & 0xff000000) + (uVar2 >> 0x10 & 0xff) * 0x10000
            + (uVar2 >> 8 & 0xff) * 0x100 ^ DAT_00270ef0;
    uVar7 = uVar5 << 8 ^ DAT_00270eec - uVar5;
    uVar8 = (DAT_00270ef4 - uVar5) - uVar7 ^ uVar7 >> 0xd;
    uVar5 = (uVar5 - uVar7) - uVar8 ^ uVar8 >> 0xc;
    uVar7 = (uVar7 - uVar8) - uVar5 ^ uVar5 << 0x10;
    uVar8 = (uVar8 - uVar5) - uVar7 ^ uVar7 >> 5;
    uVar5 = (uVar5 - uVar7) - uVar8 ^ uVar8 >> 3;
    uVar7 = (uVar7 - uVar8) - uVar5 ^ uVar5 << 10;
    iVar15 = *(int *)(((uVar7 >> 0xf ^ (uVar8 - uVar5) - uVar7) & piVar11[1] - 1U) * 0xc + *piVar11)
    ;
    if (iVar15 != 0) {
      iVar15 = iVar15 - piVar11[5];
    }
    for (; iVar15 != 0; iVar15 = *(int *)(iVar15 + 0x20) - piVar11[5]) {
      if ((*(int *)(iVar15 + 0x28) == 4) &&
         (iVar10 = memcmp(*(void **)(iVar15 + 0x24),local_1c,4), iVar10 == 0)) {
        return;
      }
      if (*(int *)(iVar15 + 0x20) == 0) break;
    }
  }
  puVar17 = malloc(0x30);
  uVar5 = *puVar18;
  *puVar17 = uVar2;
  puVar17[1] = uVar5;
  puVar17[9] = (uint)puVar17;
  puVar17[2] = *puVar16;
  puVar17[3] = 0;
  puVar17[6] = 0;
  puVar17[10] = 4;
  if (iVar3 == 0) {
    *piVar14 = (int)puVar17;
    puVar17[5] = 0;
    pvVar4 = malloc(0x2c);
    puVar17[4] = (uint)pvVar4;
    if (pvVar4 == (void *)0x0) goto LAB_00270e6e;
    memset(pvVar4,0,0x2c);
    *(uint **)(puVar17[4] + 0x10) = puVar17 + 4;
    *(undefined4 *)(puVar17[4] + 4) = 0x20;
    *(undefined4 *)(puVar17[4] + 8) = 5;
    *(undefined4 *)(puVar17[4] + 0x14) = 0x10;
    puVar12 = (undefined4 *)puVar17[4];
    pvVar4 = malloc(0x180);
    *puVar12 = pvVar4;
    if ((void *)**(undefined4 **)(*piVar14 + 0x10) == (void *)0x0) goto LAB_00270e6e;
    memset((void *)**(undefined4 **)(*piVar14 + 0x10),0,0x180);
    *(undefined4 *)(*(int *)(*piVar14 + 0x10) + 0x28) = DAT_00270ef8;
  }
  else {
    *(uint **)(*(int *)(*(int *)(iVar3 + 0x10) + 0x10) + 8) = puVar17;
    puVar17[5] = *(int *)(*(int *)(iVar3 + 0x10) + 0x10) - *(int *)(*(int *)(iVar3 + 0x10) + 0x14);
    *(uint **)(*(int *)(iVar3 + 0x10) + 0x10) = puVar17 + 4;
  }
  iVar15 = DAT_00270eec;
  iVar10 = *piVar14;
  *(int *)(*(int *)(iVar10 + 0x10) + 0xc) = *(int *)(*(int *)(iVar10 + 0x10) + 0xc) + 1;
  iVar3 = DAT_00270ee8;
  puVar17[4] = *(uint *)(iVar10 + 0x10);
  uVar5 = (uint)(byte)*puVar17 + iVar3 + (uint)*(byte *)((int)puVar17 + 3) * 0x1000000 +
          (uint)*(byte *)((int)puVar17 + 2) * 0x10000 + (uint)*(byte *)((int)puVar17 + 1) * 0x100 ^
          DAT_00270ef0;
  uVar2 = uVar5 << 8 ^ iVar15 - uVar5;
  uVar8 = (DAT_00270ef4 - uVar5) - uVar2 ^ uVar2 >> 0xd;
  uVar7 = (uVar5 - uVar2) - uVar8 ^ uVar8 >> 0xc;
  uVar2 = (uVar2 - uVar8) - uVar7 ^ uVar7 << 0x10;
  uVar5 = uVar2 >> 5 ^ (uVar8 - uVar7) - uVar2;
  uVar7 = (uVar7 - uVar2) - uVar5 ^ uVar5 >> 3;
  uVar2 = (uVar2 - uVar5) - uVar7 ^ uVar7 << 10;
  uVar2 = uVar2 >> 0xf ^ (uVar5 - uVar7) - uVar2;
  puVar17[0xb] = uVar2;
  iVar15 = (uVar2 & (*(int **)(iVar10 + 0x10))[1] - 1U) * 0xc;
  iVar3 = **(int **)(iVar10 + 0x10) + iVar15;
  *(int *)(iVar3 + 4) = *(int *)(iVar3 + 4) + 1;
  puVar17[8] = *(uint *)(**(int **)(iVar10 + 0x10) + iVar15);
  puVar17[7] = 0;
  iVar3 = *(int *)(**(int **)(iVar10 + 0x10) + iVar15);
  if (iVar3 != 0) {
    *(uint **)(iVar3 + 0xc) = puVar17 + 4;
  }
  *(uint **)(**(int **)(iVar10 + 0x10) + iVar15) = puVar17 + 4;
  iVar15 = **(int **)(*piVar14 + 0x10) + iVar15;
  if (((uint)((*(int *)(iVar15 + 8) + 1) * 10) <= *(uint *)(iVar15 + 4)) &&
     (uVar2 = puVar17[4], *(int *)(uVar2 + 0x24) != 1)) {
    __size = *(int *)(uVar2 + 4) * 0x18;
    pvVar4 = malloc(__size);
    if (pvVar4 == (void *)0x0) {
LAB_00270e6e:
                    /* WARNING: Subroutine does not return */
      exit(-1);
    }
    memset(pvVar4,0,__size);
    iVar3 = 0;
    local_28 = 0;
    *(uint *)(uVar2 + 0x18) =
         (uint)((*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(uVar2 + 0xc)) != 0) +
         (*(uint *)(uVar2 + 0xc) >> (*(int *)(uVar2 + 8) + 1U & 0xff));
    *(undefined4 *)(puVar17[4] + 0x1c) = 0;
    for (; piVar14 = (int *)puVar17[4], local_28 < (uint)piVar14[1]; local_28 = local_28 + 1) {
      iVar15 = *(int *)(*piVar14 + iVar3);
      while (iVar15 != 0) {
        iVar9 = *(int *)(iVar15 + 0x10);
        uVar2 = puVar17[4];
        piVar14 = (int *)((int)pvVar4 +
                         (*(int *)(uVar2 + 4) * 2 - 1U & *(uint *)(iVar15 + 0x1c)) * 0xc);
        iVar10 = piVar14[1];
        piVar14[1] = iVar10 + 1U;
        if (*(uint *)(uVar2 + 0x18) < iVar10 + 1U) {
          *(int *)(uVar2 + 0x1c) = *(int *)(uVar2 + 0x1c) + 1;
          iVar10 = __udivsi3(piVar14[1],*(undefined4 *)(puVar17[4] + 0x18));
          piVar14[2] = iVar10;
        }
        *(undefined4 *)(iVar15 + 0xc) = 0;
        *(int *)(iVar15 + 0x10) = *piVar14;
        if (*piVar14 != 0) {
          *(int *)(*piVar14 + 0xc) = iVar15;
        }
        *piVar14 = iVar15;
        iVar15 = iVar9;
      }
      iVar3 = iVar3 + 0xc;
    }
    free((void *)*piVar14);
    *(int *)(puVar17[4] + 4) = *(int *)(puVar17[4] + 4) << 1;
    *(int *)(puVar17[4] + 8) = *(int *)(puVar17[4] + 8) + 1;
    iVar3 = 0;
    *(void **)puVar17[4] = pvVar4;
    uVar2 = puVar17[4];
    if (*(uint *)(uVar2 + 0xc) >> 1 < *(uint *)(uVar2 + 0x1c)) {
      iVar3 = *(int *)(uVar2 + 0x20) + 1;
    }
    *(int *)(uVar2 + 0x20) = iVar3;
    if (1 < *(uint *)(puVar17[4] + 0x20)) {
      *(undefined4 *)(puVar17[4] + 0x24) = 1;
    }
  }
  return;
}



/* ===== js_xs_sanguosha_BFButton_ccTouchBegan @ 0026e284 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFButton_ccTouchBegan(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFButton_ccTouchBegan(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFButton_ccTouchBegan(JSContext *param_1,uint param_2,Value *param_3)

{
  bool bVar1;
  JSObject *pJVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  undefined4 uVar6;
  char *pcVar7;
  int *piVar8;
  int local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
  }
  else {
    local_20 = *(undefined4 *)(param_3 + 8);
    local_1c = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(local_20,local_1c);
  puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
  iVar5 = DAT_0026e3bc;
  if ((puVar3 == (undefined4 *)0x0) || (piVar8 = (int *)*puVar3, piVar8 == (int *)0x0)) {
    cocos2d::CCLog((char *)(DAT_0026e3b4 + 0x26e2c6),DAT_0026e3b8 + 0x26e2c8,DAT_0026e3c0,
                   DAT_0026e3b0 + 0x26e2ea);
    pcVar7 = (char *)(iVar5 + 0x26e2d2);
    goto LAB_0026e364;
  }
  if (param_2 != 2) {
    JS_ReportError(param_1,(char *)(DAT_0026e400 + 0x26e3a4),param_2,2);
    return 0;
  }
  bVar1 = false;
  if (*(int *)(param_3 + 0x14) == -0x79) {
    pJVar2 = (JSObject *)
             FUN_0026e020(*(undefined4 *)(param_3 + 0x10),*(undefined4 *)(param_3 + 0x14));
    piVar4 = (int *)jsb_get_js_proxy(pJVar2);
    iVar5 = DAT_0026e3d0;
    if (piVar4 != (int *)0x0) {
      local_24 = *piVar4;
      bVar1 = true;
      if (local_24 != 0) goto LAB_0026e312;
    }
    cocos2d::CCLog((char *)(DAT_0026e3c8 + 0x26e306),DAT_0026e3cc + 0x26e308,DAT_0026e3d4,
                   DAT_0026e3c4 + 0x26e32a);
    pcVar7 = (char *)(iVar5 + 0x26e312);
  }
  else {
LAB_0026e312:
    if (*(int *)(param_3 + 0x1c) == -0x79) {
      pJVar2 = (JSObject *)
               FUN_0026e020(*(undefined4 *)(param_3 + 0x18),*(undefined4 *)(param_3 + 0x1c));
      piVar4 = (int *)jsb_get_js_proxy(pJVar2);
      iVar5 = DAT_0026e3e4;
      if ((piVar4 == (int *)0x0) || (*piVar4 == 0)) {
        cocos2d::CCLog((char *)(DAT_0026e3dc + 0x26e33c),DAT_0026e3e0 + 0x26e33e,DAT_0026e3e8,
                       DAT_0026e3d8 + 0x26e360);
        pcVar7 = (char *)(iVar5 + 0x26e348);
        goto LAB_0026e364;
      }
      if (bVar1) {
        uVar6 = (**(code **)(*piVar8 + 0x19c))(piVar8,local_24);
        *(undefined4 *)param_3 = uVar6;
        *(undefined4 *)(param_3 + 4) = 0xffffff83;
        return 1;
      }
    }
    cocos2d::CCLog((char *)(DAT_0026e3f0 + 0x26e358),DAT_0026e3f4 + 0x26e35a,DAT_0026e3f8,
                   DAT_0026e3ec + 0x26e37c);
    pcVar7 = (char *)(DAT_0026e3fc + 0x26e366);
  }
LAB_0026e364:
  cocos2d::CCLog(pcVar7);
  iVar5 = JS_IsExceptionPending(param_1);
  if (iVar5 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFButton_ccTouchEnded @ 0026e404 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFButton_ccTouchEnded(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFButton_ccTouchEnded(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFButton_ccTouchEnded(JSContext *param_1,uint param_2,Value *param_3)

{
  bool bVar1;
  JSObject *pJVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  undefined4 uVar6;
  char *pcVar7;
  int *piVar8;
  int local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
  }
  else {
    local_20 = *(undefined4 *)(param_3 + 8);
    local_1c = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(local_20,local_1c);
  puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
  iVar5 = DAT_0026e544;
  if ((puVar3 == (undefined4 *)0x0) || (piVar8 = (int *)*puVar3, piVar8 == (int *)0x0)) {
    cocos2d::CCLog((char *)(DAT_0026e53c + 0x26e446),DAT_0026e540 + 0x26e448,DAT_0026e548,
                   DAT_0026e538 + 0x26e490);
    pcVar7 = (char *)(iVar5 + 0x26e452);
    goto LAB_0026e4e4;
  }
  if (param_2 != 2) {
    JS_ReportError(param_1,(char *)(DAT_0026e58c + 0x26e52a),param_2,2);
    return 0;
  }
  bVar1 = false;
  if (*(int *)(param_3 + 0x14) == -0x79) {
    pJVar2 = (JSObject *)
             FUN_0026e020(*(undefined4 *)(param_3 + 0x10),*(undefined4 *)(param_3 + 0x14));
    piVar4 = (int *)jsb_get_js_proxy(pJVar2);
    iVar5 = DAT_0026e558;
    if (piVar4 != (int *)0x0) {
      local_24 = *piVar4;
      bVar1 = true;
      if (local_24 != 0) goto LAB_0026e492;
    }
    cocos2d::CCLog((char *)(DAT_0026e550 + 0x26e486),DAT_0026e554 + 0x26e488,DAT_0026e55c,
                   DAT_0026e54c + 0x26e4d0);
    pcVar7 = (char *)(iVar5 + 0x26e492);
  }
  else {
LAB_0026e492:
    if (*(int *)(param_3 + 0x1c) == -0x79) {
      pJVar2 = (JSObject *)
               FUN_0026e020(*(undefined4 *)(param_3 + 0x18),*(undefined4 *)(param_3 + 0x1c));
      piVar4 = (int *)jsb_get_js_proxy(pJVar2);
      iVar5 = DAT_0026e56c;
      if ((piVar4 == (int *)0x0) || (*piVar4 == 0)) {
        cocos2d::CCLog((char *)(DAT_0026e564 + 0x26e4bc),DAT_0026e568 + 0x26e4be,DAT_0026e570,
                       DAT_0026e560 + 0x26e506);
        pcVar7 = (char *)(iVar5 + 0x26e4c8);
        goto LAB_0026e4e4;
      }
      if (bVar1) {
        (**(code **)(*piVar8 + 0x1a4))(piVar8,local_24);
        uVar6 = (*(undefined4 **)(DAT_0026e588 + 0x26e516))[1];
        *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026e588 + 0x26e516);
        *(undefined4 *)(param_3 + 4) = uVar6;
        return 1;
      }
    }
    cocos2d::CCLog((char *)(DAT_0026e578 + 0x26e4d8),DAT_0026e57c + 0x26e4da,DAT_0026e580,
                   DAT_0026e574 + 0x26e522);
    pcVar7 = (char *)(DAT_0026e584 + 0x26e4e6);
  }
LAB_0026e4e4:
  cocos2d::CCLog(pcVar7);
  iVar5 = JS_IsExceptionPending(param_1);
  if (iVar5 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFButton_ccTouchMoved @ 0026e100 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFButton_ccTouchMoved(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFButton_ccTouchMoved(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFButton_ccTouchMoved(JSContext *param_1,uint param_2,Value *param_3)

{
  bool bVar1;
  JSObject *pJVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  undefined4 uVar6;
  char *pcVar7;
  int *piVar8;
  int local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
  }
  else {
    local_20 = *(undefined4 *)(param_3 + 8);
    local_1c = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(local_20,local_1c);
  puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
  iVar5 = DAT_0026e238;
  if ((puVar3 == (undefined4 *)0x0) || (piVar8 = (int *)*puVar3, piVar8 == (int *)0x0)) {
    cocos2d::CCLog((char *)(DAT_0026e22c + 0x26e140),DAT_0026e230 + 0x26e142,DAT_0026e23c,
                   DAT_0026e234 + 0x26e144);
    pcVar7 = (char *)(iVar5 + 0x26e14c);
    goto LAB_0026e1d8;
  }
  if (param_2 != 2) {
    JS_ReportError(param_1,(char *)(DAT_0026e280 + 0x26e21e),param_2,2);
    return 0;
  }
  bVar1 = false;
  if (*(int *)(param_3 + 0x14) == -0x79) {
    pJVar2 = (JSObject *)
             FUN_0026e020(*(undefined4 *)(param_3 + 0x10),*(undefined4 *)(param_3 + 0x14));
    piVar4 = (int *)jsb_get_js_proxy(pJVar2);
    iVar5 = DAT_0026e24c;
    if (piVar4 != (int *)0x0) {
      local_24 = *piVar4;
      bVar1 = true;
      if (local_24 != 0) goto LAB_0026e18a;
    }
    cocos2d::CCLog((char *)(DAT_0026e240 + 0x26e17e),DAT_0026e244 + 0x26e180,DAT_0026e250,
                   DAT_0026e248 + 0x26e182);
    pcVar7 = (char *)(iVar5 + 0x26e18a);
  }
  else {
LAB_0026e18a:
    if (*(int *)(param_3 + 0x1c) == -0x79) {
      pJVar2 = (JSObject *)
               FUN_0026e020(*(undefined4 *)(param_3 + 0x18),*(undefined4 *)(param_3 + 0x1c));
      piVar4 = (int *)jsb_get_js_proxy(pJVar2);
      iVar5 = DAT_0026e260;
      if ((piVar4 == (int *)0x0) || (*piVar4 == 0)) {
        cocos2d::CCLog((char *)(DAT_0026e254 + 0x26e1b2),DAT_0026e258 + 0x26e1b4,DAT_0026e264,
                       DAT_0026e25c + 0x26e1b6);
        pcVar7 = (char *)(iVar5 + 0x26e1be);
        goto LAB_0026e1d8;
      }
      if (bVar1) {
        (**(code **)(*piVar8 + 0x1a0))(piVar8,local_24);
        uVar6 = (*(undefined4 **)(DAT_0026e27c + 0x26e20a))[1];
        *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026e27c + 0x26e20a);
        *(undefined4 *)(param_3 + 4) = uVar6;
        return 1;
      }
    }
    cocos2d::CCLog((char *)(DAT_0026e268 + 0x26e1cc),DAT_0026e26c + 0x26e1ce,DAT_0026e274,
                   DAT_0026e270 + 0x26e1d0);
    pcVar7 = (char *)(DAT_0026e278 + 0x26e1da);
  }
LAB_0026e1d8:
  cocos2d::CCLog(pcVar7);
  iVar5 = JS_IsExceptionPending(param_1);
  if (iVar5 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFButton_constructor @ 00272a80 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFButton_constructor(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFButton_constructor(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFButton_constructor(JSContext *param_1,uint param_2,Value *param_3)

{
  BFButton *this;
  JSObject *pJVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  undefined4 local_28;
  undefined4 local_24;
  uint local_1c [2];
  
  if (param_2 == 0) {
    this = operator_new(0x180);
    BFButton::BFButton(this);
    if (this != (BFButton *)0x0) {
      cocos2d::CCObject::autorelease((CCObject *)this);
    }
    local_1c[0] = TypeTest<BFButton>::s_id();
    iVar2 = 0;
    if (**(int **)(DAT_00272ba0 + 0x272ab2) != 0) {
      piVar8 = *(int **)(**(int **)(DAT_00272ba0 + 0x272ab2) + 0x10);
      uVar4 = (local_1c[0] & 0xff) + DAT_00272ba4 + (local_1c[0] & 0xff000000) +
              (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
              DAT_00272ba8;
      uVar5 = DAT_00272bac - uVar4 ^ uVar4 << 8;
      uVar6 = (DAT_00272bb0 - uVar4) - uVar5 ^ uVar5 >> 0xd;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 0xc;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 0x10;
      uVar6 = (uVar6 - uVar4) - uVar5 ^ uVar5 >> 5;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 3;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 10;
      iVar7 = *(int *)(((uVar5 >> 0xf ^ (uVar6 - uVar4) - uVar5) & piVar8[1] - 1U) * 0xc + *piVar8);
      if (iVar7 != 0) goto LAB_00272b46;
      iVar2 = 0;
      while ((iVar2 != 0 &&
             (((*(int *)(iVar2 + 0x28) != 4 ||
               (iVar7 = memcmp(*(void **)(iVar2 + 0x24),local_1c,4), iVar7 != 0)) &&
              (iVar7 = *(int *)(iVar2 + 0x20), iVar2 = 0, iVar7 != 0))))) {
LAB_00272b46:
        iVar2 = iVar7 - piVar8[5];
      }
    }
    pJVar1 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(iVar2 + 4),*(JSObject **)(iVar2 + 8),
                          *(JSObject **)(iVar2 + 0xc));
    FUN_0026e028(&local_28,pJVar1);
    *(undefined4 *)param_3 = local_28;
    *(undefined4 *)(param_3 + 4) = local_24;
    iVar2 = jsb_new_proxy(this,pJVar1);
    JS_AddNamedObjectRoot(param_1,(JSObject **)(iVar2 + 4),(char *)(DAT_00272bb4 + 0x272b7e));
    uVar3 = 1;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_00272bb8 + 0x272b8e),param_2,0);
    uVar3 = 0;
  }
  return uVar3;
}



/* ===== js_xs_sanguosha_BFButton_finalize @ 0026e056 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFButton_finalize(JSFreeOp * param_1, JSObject * param_2) */

/* js_xs_sanguosha_BFButton_finalize(JSFreeOp*, JSObject*) */

JSFreeOp * js_xs_sanguosha_BFButton_finalize(JSFreeOp *param_1,JSObject *param_2)

{
  return param_1;
}



/* ===== js_xs_sanguosha_BFButton_setEventOnDisable @ 0026efb4 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFButton_setEventOnDisable(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFButton_setEventOnDisable(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFButton_setEventOnDisable(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFButton *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  int local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (this = (BFButton *)*puVar2, this == (BFButton *)0x0)) {
    pcVar6 = (char *)(DAT_0026f0a0 + 0x26f000);
    cocos2d::CCLog((char *)(DAT_0026f098 + 0x26effe),DAT_0026f09c + 0x26eff8,DAT_0026f0a4,
                   DAT_0026f094 + 0x26f002);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026f0c0 + 0x26f088),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToBoolean(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                              *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      BFButton::setEventOnDisable(this,(bool)('\x01' - (local_1c[0] == 0)));
      uVar5 = (*(undefined4 **)(DAT_0026f0bc + 0x26f074))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026f0bc + 0x26f074);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026f0b4 + 0x26f044);
    cocos2d::CCLog((char *)(DAT_0026f0ac + 0x26f03c),DAT_0026f0b0 + 0x26f03e,DAT_0026f0b8,
                   DAT_0026f0a8 + 0x26f046);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFButton_setFilterMove @ 0026ed94 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFButton_setFilterMove(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFButton_setFilterMove(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFButton_setFilterMove(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFButton *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  int local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (this = (BFButton *)*puVar2, this == (BFButton *)0x0)) {
    pcVar6 = (char *)(DAT_0026ee80 + 0x26ede0);
    cocos2d::CCLog((char *)(DAT_0026ee78 + 0x26edde),DAT_0026ee7c + 0x26edd8,DAT_0026ee84,
                   DAT_0026ee74 + 0x26ee12);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026eea0 + 0x26ee68),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToBoolean(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                              *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      BFButton::setFilterMove(this,(bool)('\x01' - (local_1c[0] == 0)));
      uVar5 = (*(undefined4 **)(DAT_0026ee9c + 0x26ee54))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026ee9c + 0x26ee54);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026ee94 + 0x26ee24);
    cocos2d::CCLog((char *)(DAT_0026ee8c + 0x26ee1c),DAT_0026ee90 + 0x26ee1e,DAT_0026ee98,
                   DAT_0026ee88 + 0x26ee56);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFButton_setSwallowTouch @ 0026eea4 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFButton_setSwallowTouch(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFButton_setSwallowTouch(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFButton_setSwallowTouch(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFButton *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  int local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (this = (BFButton *)*puVar2, this == (BFButton *)0x0)) {
    pcVar6 = (char *)(DAT_0026ef90 + 0x26eef0);
    cocos2d::CCLog((char *)(DAT_0026ef88 + 0x26eeee),DAT_0026ef8c + 0x26eee8,DAT_0026ef94,
                   DAT_0026ef84 + 0x26ef49);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026efb0 + 0x26ef78),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToBoolean(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                              *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      BFButton::setSwallowTouch(this,(bool)('\x01' - (local_1c[0] == 0)));
      uVar5 = (*(undefined4 **)(DAT_0026efac + 0x26ef64))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026efac + 0x26ef64);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026efa4 + 0x26ef34);
    cocos2d::CCLog((char *)(DAT_0026ef9c + 0x26ef2c),DAT_0026efa0 + 0x26ef2e,DAT_0026efa8,
                   DAT_0026ef98 + 0x26ef8d);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFCardView_constructor @ 00271960 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_constructor(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_constructor(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFCardView_constructor(JSContext *param_1,uint param_2,Value *param_3)

{
  BFCardView *this;
  JSObject *pJVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  undefined4 local_28;
  undefined4 local_24;
  uint local_1c [2];
  
  if (param_2 == 0) {
    this = operator_new(0x200);
    BFCardView::BFCardView(this);
    if (this != (BFCardView *)0x0) {
      cocos2d::CCObject::autorelease((CCObject *)this);
    }
    local_1c[0] = TypeTest<BFCardView>::s_id();
    iVar2 = 0;
    if (**(int **)(DAT_00271a80 + 0x271992) != 0) {
      piVar8 = *(int **)(**(int **)(DAT_00271a80 + 0x271992) + 0x10);
      uVar4 = (local_1c[0] & 0xff) + DAT_00271a84 + (local_1c[0] & 0xff000000) +
              (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
              DAT_00271a88;
      uVar5 = DAT_00271a8c - uVar4 ^ uVar4 << 8;
      uVar6 = (DAT_00271a90 - uVar4) - uVar5 ^ uVar5 >> 0xd;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 0xc;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 0x10;
      uVar6 = (uVar6 - uVar4) - uVar5 ^ uVar5 >> 5;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 3;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 10;
      iVar7 = *(int *)(((uVar5 >> 0xf ^ (uVar6 - uVar4) - uVar5) & piVar8[1] - 1U) * 0xc + *piVar8);
      if (iVar7 != 0) goto LAB_00271a26;
      iVar2 = 0;
      while ((iVar2 != 0 &&
             (((*(int *)(iVar2 + 0x28) != 4 ||
               (iVar7 = memcmp(*(void **)(iVar2 + 0x24),local_1c,4), iVar7 != 0)) &&
              (iVar7 = *(int *)(iVar2 + 0x20), iVar2 = 0, iVar7 != 0))))) {
LAB_00271a26:
        iVar2 = iVar7 - piVar8[5];
      }
    }
    pJVar1 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(iVar2 + 4),*(JSObject **)(iVar2 + 8),
                          *(JSObject **)(iVar2 + 0xc));
    FUN_0026e028(&local_28,pJVar1);
    *(undefined4 *)param_3 = local_28;
    *(undefined4 *)(param_3 + 4) = local_24;
    iVar2 = jsb_new_proxy(this,pJVar1);
    JS_AddNamedObjectRoot(param_1,(JSObject **)(iVar2 + 4),(char *)(DAT_00271a94 + 0x271a5e));
    uVar3 = 1;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_00271a98 + 0x271a6e),param_2,0);
    uVar3 = 0;
  }
  return uVar3;
}



/* ===== js_xs_sanguosha_BFCardView_finalize @ 0026e050 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_finalize(JSFreeOp * param_1, JSObject * param_2) */

/* js_xs_sanguosha_BFCardView_finalize(JSFreeOp*, JSObject*) */

JSFreeOp * js_xs_sanguosha_BFCardView_finalize(JSFreeOp *param_1,JSObject *param_2)

{
  return param_1;
}



/* ===== js_xs_sanguosha_BFCardView_getCellsCount @ 0026fa1c ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_getCellsCount(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_getCellsCount(JSContext*, unsigned int, JS::Value*) */

undefined8 js_xs_sanguosha_BFCardView_getCellsCount(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  undefined4 uVar7;
  JSContext *local_18;
  uint local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_18,(Value *)param_1);
    pJVar1 = local_18;
    uVar5 = local_14;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || (*piVar3 == 0)) {
    pcVar6 = (char *)(DAT_0026fac8 + 0x26fa64);
    cocos2d::CCLog((char *)(DAT_0026fac0 + 0x26fa62),DAT_0026fac4 + 0x26fa5c,DAT_0026facc,
                   DAT_0026fabc + 0x26fa63);
    cocos2d::CCLog(pcVar6);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar7 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar6);
    }
  }
  else if (param_2 == 0) {
    uVar7 = 1;
    (**(code **)(**(int **)(*piVar3 + 0x1d0) + 0x14))();
    int32_to_jsval((JSContext *)&local_18,(int)param_1);
    *(JSContext **)param_3 = local_18;
    *(uint *)(param_3 + 4) = local_14;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0026fad0 + 0x26fab2),param_2,0);
    uVar7 = 0;
  }
  return CONCAT44(local_18,uVar7);
}



/* ===== js_xs_sanguosha_BFCardView_getNormalCellWidth @ 0026f6c0 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_getNormalCellWidth(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_getNormalCellWidth(JSContext*, unsigned int, JS::Value*) */

undefined8
js_xs_sanguosha_BFCardView_getNormalCellWidth(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  undefined4 uVar7;
  undefined8 uVar8;
  JSContext *local_20;
  uint local_1c;
  Value *pVStack_18;
  
  local_20 = param_1;
  local_1c = param_2;
  pVStack_18 = param_3;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
    pJVar1 = local_20;
    uVar5 = local_1c;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || (*piVar3 == 0)) {
    pcVar6 = (char *)(DAT_0026f77c + 0x26f708);
    cocos2d::CCLog((char *)(DAT_0026f774 + 0x26f706),DAT_0026f778 + 0x26f700,DAT_0026f780,
                   (int)&DAT_0026f77c + DAT_0026f770);
    cocos2d::CCLog(pcVar6);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar7 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar6);
    }
  }
  else if (param_2 == 0) {
    uVar8 = __extendsfdf2(*(undefined4 *)(*piVar3 + 0x1e8));
    uVar7 = (undefined4)((ulonglong)uVar8 >> 0x20);
    iVar4 = __aeabi_dcmpeq((int)uVar8,uVar7,(int)uVar8,uVar7);
    if (iVar4 == 0) {
      uVar8 = CONCAT44(DAT_0026f76c,DAT_0026f768);
    }
    *(undefined8 *)param_3 = uVar8;
    uVar7 = 1;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0026f784 + 0x26f75a),param_2,0);
    uVar7 = 0;
  }
  return CONCAT44(local_20,uVar7);
}



/* ===== js_xs_sanguosha_BFCardView_minContainerOffset @ 00270088 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_minContainerOffset(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_minContainerOffset(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFCardView_minContainerOffset(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  undefined4 uVar7;
  JSContext *local_20;
  uint local_1c;
  Value *apVStack_18 [2];
  
  local_20 = param_1;
  local_1c = param_2;
  apVStack_18[0] = param_3;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
    pJVar1 = local_20;
    uVar5 = local_1c;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || ((int *)*piVar3 == (int *)0x0)) {
    pcVar6 = (char *)(DAT_00270138 + 0x2700d0);
    cocos2d::CCLog((char *)(DAT_00270130 + 0x2700ce),DAT_00270134 + 0x2700c8,DAT_0027013c,
                   DAT_0027012c + 0x270100);
    cocos2d::CCLog(pcVar6);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar7 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar6);
    }
  }
  else if (param_2 == 0) {
    (**(code **)(*(int *)*piVar3 + 0x200))(apVStack_18);
    ccpoint_to_jsval((JSContext *)&local_20,(CCPoint *)param_1);
    uVar7 = 1;
    *(JSContext **)param_3 = local_20;
    *(uint *)(param_3 + 4) = local_1c;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_00270140 + 0x27011e),param_2,0);
    uVar7 = 0;
  }
  return uVar7;
}



/* ===== js_xs_sanguosha_BFCardView_onSliderMoveEnded @ 0026ffd8 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_onSliderMoveEnded(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_onSliderMoveEnded(JSContext*, unsigned int, JS::Value*) */

undefined8
js_xs_sanguosha_BFCardView_onSliderMoveEnded(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  undefined4 *puVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  char *pcVar7;
  undefined4 uVar8;
  JSContext *local_18;
  uint local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_18,(Value *)param_1);
    pJVar1 = local_18;
    uVar5 = local_14;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
  if ((puVar3 == (undefined4 *)0x0) || ((BFCardView *)*puVar3 == (BFCardView *)0x0)) {
    pcVar7 = (char *)(DAT_00270078 + 0x270020);
    cocos2d::CCLog((char *)(DAT_00270070 + 0x27001e),DAT_00270074 + 0x270018,DAT_0027007c,
                   DAT_0027006c + 0x270023);
    cocos2d::CCLog(pcVar7);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar8 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar7);
    }
  }
  else if (param_2 == 0) {
    BFCardView::onSliderMoveEnded((BFCardView *)*puVar3);
    uVar8 = 1;
    uVar6 = (*(undefined4 **)(DAT_00270080 + 0x27004e))[1];
    *(undefined4 *)param_3 = **(undefined4 **)(DAT_00270080 + 0x27004e);
    *(undefined4 *)(param_3 + 4) = uVar6;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_00270084 + 0x270062),param_2,0);
    uVar8 = 0;
  }
  return CONCAT44(local_18,uVar8);
}



/* ===== js_xs_sanguosha_BFCardView_onSliderValueChange @ 00270144 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_onSliderValueChange(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_onSliderValueChange(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFCardView_onSliderValueChange(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  char *pcVar7;
  undefined8 uVar8;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_30,(Value *)param_1);
  }
  else {
    local_30 = *(undefined4 *)(param_3 + 8);
    local_2c = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_30,local_2c);
  piVar2 = (int *)jsb_get_js_proxy(pJVar1);
  if ((piVar2 == (int *)0x0) || (*piVar2 == 0)) {
    pcVar7 = (char *)(DAT_00270254 + 0x270190);
    cocos2d::CCLog((char *)(DAT_0027024c + 0x27018e),DAT_00270250 + 0x270188,DAT_00270258,
                   DAT_00270248 + 0x2701ee);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 2) {
      JS_ReportError(param_1,(char *)(DAT_00270274 + 0x27023a),param_2,2);
      return 0;
    }
    uVar4 = JS_ValueToNumber(param_1,&local_28,*(undefined4 *)(param_3 + 0x10),
                             *(undefined4 *)(param_3 + 0x14),&local_28);
    uVar5 = JS_ValueToNumber(param_1,&local_20,*(undefined4 *)(param_3 + 0x18),
                             *(undefined4 *)(param_3 + 0x1c),&local_20);
    if ((uVar4 & uVar5 & 1) != 0) {
      __truncdfsf2(local_28,local_24);
      uVar8 = __truncdfsf2(local_20,local_1c);
      BFCardView::onSliderValueChange((float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
      uVar6 = (*(undefined4 **)(DAT_00270270 + 0x270226))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_00270270 + 0x270226);
      *(undefined4 *)(param_3 + 4) = uVar6;
      return 1;
    }
    pcVar7 = (char *)(DAT_00270268 + 0x2701e6);
    cocos2d::CCLog((char *)(DAT_00270260 + 0x2701de),DAT_00270264 + 0x2701e0,DAT_0027026c,
                   DAT_0027025c + 0x270244);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFCardView_reloadData @ 0026fd04 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_reloadData(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_reloadData(JSContext*, unsigned int, JS::Value*) */

undefined8 js_xs_sanguosha_BFCardView_reloadData(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  char *pcVar7;
  undefined4 uVar8;
  JSContext *local_18;
  uint local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_18,(Value *)param_1);
    pJVar1 = local_18;
    uVar5 = local_14;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || (*piVar3 == 0)) {
    pcVar7 = (char *)(DAT_0026fda4 + 0x26fd4c);
    cocos2d::CCLog((char *)(DAT_0026fd9c + 0x26fd4a),DAT_0026fda0 + 0x26fd44,DAT_0026fda8,
                   DAT_0026fd98 + 0x26fd52);
    cocos2d::CCLog(pcVar7);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar8 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar7);
    }
  }
  else if (param_2 == 0) {
    BFCardView::reloadData();
    uVar8 = 1;
    uVar6 = (*(undefined4 **)(DAT_0026fdac + 0x26fd7a))[1];
    *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026fdac + 0x26fd7a);
    *(undefined4 *)(param_3 + 4) = uVar6;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0026fdb0 + 0x26fd8e),param_2,0);
    uVar8 = 0;
  }
  return CONCAT44(local_18,uVar8);
}



/* ===== js_xs_sanguosha_BFCardView_scrollViewDidScroll @ 0026e85c ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_scrollViewDidScroll(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_scrollViewDidScroll(JSContext*, unsigned int, JS::Value*) */

undefined8
js_xs_sanguosha_BFCardView_scrollViewDidScroll(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  uint uVar6;
  char *pcVar7;
  int *piVar8;
  undefined4 uVar9;
  JSContext *local_20;
  uint local_1c;
  Value *pVStack_18;
  
  local_20 = param_1;
  local_1c = param_2;
  pVStack_18 = param_3;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
    pJVar1 = local_20;
    uVar6 = local_1c;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar6 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar6);
  puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
  iVar5 = DAT_0026e958;
  if ((puVar3 == (undefined4 *)0x0) || (piVar8 = (int *)*puVar3, piVar8 == (int *)0x0)) {
    cocos2d::CCLog((char *)(DAT_0026e950 + 0x26e89c),DAT_0026e954 + 0x26e89e,DAT_0026e95c,
                   DAT_0026e94c + 0x26e901);
    pcVar7 = (char *)(iVar5 + 0x26e8a8);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026e984 + 0x26e922),param_2,1);
      uVar9 = 0;
      goto LAB_0026e928;
    }
    if (*(int *)(param_3 + 0x14) == -0x79) {
      pJVar2 = (JSObject *)
               FUN_0026e020(*(undefined4 *)(param_3 + 0x10),*(undefined4 *)(param_3 + 0x14));
      piVar4 = (int *)jsb_get_js_proxy(pJVar2);
      iVar5 = DAT_0026e96c;
      if ((piVar4 != (int *)0x0) && (*piVar4 != 0)) {
        (**(code **)(*piVar8 + 0x20c))(piVar8);
        uVar9 = (*(undefined4 **)(DAT_0026e988 + 0x26e940))[1];
        *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026e988 + 0x26e940);
        *(undefined4 *)(param_3 + 4) = uVar9;
        uVar9 = 1;
        goto LAB_0026e928;
      }
      cocos2d::CCLog((char *)(DAT_0026e964 + 0x26e8d6),DAT_0026e968 + 0x26e8d8,DAT_0026e970,
                     DAT_0026e960 + 0x26e93b);
      pcVar7 = (char *)(iVar5 + 0x26e8e2);
    }
    else {
      cocos2d::CCLog((char *)(DAT_0026e978 + 0x26e8f0),DAT_0026e97c + 0x26e8f2,0x290,
                     DAT_0026e974 + 0x26e953);
      pcVar7 = (char *)(DAT_0026e980 + 0x26e8fe);
    }
  }
  cocos2d::CCLog(pcVar7);
  iVar5 = JS_IsExceptionPending(param_1);
  uVar9 = 0;
  if (iVar5 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
LAB_0026e928:
  return CONCAT44(local_20,uVar9);
}



/* ===== js_xs_sanguosha_BFCardView_setCardViewSelIdx @ 002704bc ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_setCardViewSelIdx(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_setCardViewSelIdx(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFCardView_setCardViewSelIdx(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFCardView *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  int local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (this = (BFCardView *)*puVar2, this == (BFCardView *)0x0)) {
    pcVar6 = (char *)(DAT_002705a4 + 0x270508);
    cocos2d::CCLog((char *)(DAT_0027059c + 0x270506),DAT_002705a0 + 0x270500,DAT_002705a8,
                   DAT_00270598 + 0x27056d);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_002705c4 + 0x27058c),param_2,1);
      return 0;
    }
    uVar4 = jsval_to_int32(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                           *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      BFCardView::setCardViewSelIdx(this,local_1c[0]);
      uVar5 = (*(undefined4 **)(DAT_002705c0 + 0x270578))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_002705c0 + 0x270578);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_002705b8 + 0x27054c);
    cocos2d::CCLog((char *)(DAT_002705b0 + 0x270544),DAT_002705b4 + 0x270546,DAT_002705bc,
                   DAT_002705ac + 0x2705b1);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFCardView_setCellScaleValue @ 0027038c ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_setCellScaleValue(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_setCellScaleValue(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFCardView_setCellScaleValue(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  uint uVar5;
  undefined4 uVar6;
  char *pcVar7;
  undefined8 uVar8;
  undefined4 local_30;
  undefined4 local_2c;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_30,(Value *)param_1);
  }
  else {
    local_30 = *(undefined4 *)(param_3 + 8);
    local_2c = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_30,local_2c);
  piVar2 = (int *)jsb_get_js_proxy(pJVar1);
  if ((piVar2 == (int *)0x0) || (*piVar2 == 0)) {
    pcVar7 = (char *)(DAT_0027049c + 0x2703d8);
    cocos2d::CCLog((char *)(DAT_00270494 + 0x2703d6),DAT_00270498 + 0x2703d0,DAT_002704a0,
                   DAT_00270490 + 0x270410);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 2) {
      JS_ReportError(param_1,(char *)(DAT_002704b8 + 0x270484),param_2,2);
      return 0;
    }
    uVar4 = JS_ValueToNumber(param_1,&local_28,*(undefined4 *)(param_3 + 0x10),
                             *(undefined4 *)(param_3 + 0x14),&local_28);
    uVar5 = JS_ValueToNumber(param_1,&local_20,*(undefined4 *)(param_3 + 0x18),
                             *(undefined4 *)(param_3 + 0x1c),&local_20);
    if ((uVar4 & uVar5 & 1) != 0) {
      __truncdfsf2(local_28,local_24);
      uVar8 = __truncdfsf2(local_20,local_1c);
      BFCardView::setCellScaleValue((float)uVar8,(float)((ulonglong)uVar8 >> 0x20));
      uVar6 = (*(undefined4 **)(DAT_002704b4 + 0x270470))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_002704b4 + 0x270470);
      *(undefined4 *)(param_3 + 4) = uVar6;
      return 1;
    }
    pcVar7 = (char *)(DAT_002704b0 + 0x270430);
    cocos2d::CCLog((char *)(DAT_002704a8 + 0x270428),DAT_002704ac + 0x27042a,0x218,
                   DAT_002704a4 + 0x270466);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFCardView_setNormalCellWidth @ 0026fec4 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_setNormalCellWidth(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_setNormalCellWidth(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFCardView_setNormalCellWidth(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  piVar2 = (int *)jsb_get_js_proxy(pJVar1);
  if ((piVar2 == (int *)0x0) || (iVar3 = *piVar2, iVar3 == 0)) {
    pcVar6 = (char *)(DAT_0026ffb4 + 0x26ff10);
    cocos2d::CCLog((char *)(DAT_0026ffac + 0x26ff0e),DAT_0026ffb0 + 0x26ff08,DAT_0026ffb8,
                   DAT_0026ffa8 + 0x26ff65);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026ffd4 + 0x26ff9c),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToNumber(param_1,&local_20,*(undefined4 *)(param_3 + 0x10),
                             *(undefined4 *)(param_3 + 0x14),&local_20);
    if ((uVar4 & 1) != 0) {
      uVar5 = __truncdfsf2(local_20,local_1c);
      *(undefined4 *)(iVar3 + 0x1e8) = uVar5;
      uVar5 = (*(undefined4 **)(DAT_0026ffd0 + 0x26ff88))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026ffd0 + 0x26ff88);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026ffc8 + 0x26ff54);
    cocos2d::CCLog((char *)(DAT_0026ffc0 + 0x26ff4c),DAT_0026ffc4 + 0x26ff4e,DAT_0026ffcc,
                   DAT_0026ffbc + 0x26ffa9);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFCardView_setObserver @ 0026eb58 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_setObserver(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_setObserver(JSContext*, unsigned int, JS::Value*) */

undefined8 js_xs_sanguosha_BFCardView_setObserver(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  int iVar7;
  undefined4 uVar8;
  JSContext *local_20;
  uint local_1c;
  Value *pVStack_18;
  
  local_20 = param_1;
  local_1c = param_2;
  pVStack_18 = param_3;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
    pJVar1 = local_20;
    uVar5 = local_1c;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  iVar4 = DAT_0026ec4c;
  if ((piVar3 == (int *)0x0) || (iVar7 = *piVar3, iVar7 == 0)) {
    cocos2d::CCLog((char *)(DAT_0026ec44 + 0x26eb98),DAT_0026ec48 + 0x26eb9a,DAT_0026ec50,
                   DAT_0026ec40 + 0x26ec06);
    pcVar6 = (char *)(iVar4 + 0x26eba4);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026ec78 + 0x26ec1e),param_2,1);
      uVar8 = 0;
      goto LAB_0026ec24;
    }
    if (*(int *)(param_3 + 0x14) == -0x79) {
      pJVar2 = (JSObject *)
               FUN_0026e020(*(undefined4 *)(param_3 + 0x10),*(undefined4 *)(param_3 + 0x14));
      piVar3 = (int *)jsb_get_js_proxy(pJVar2);
      iVar4 = DAT_0026ec60;
      if ((piVar3 != (int *)0x0) && (*piVar3 != 0)) {
        *(int *)(iVar7 + 0x1f0) = *piVar3;
        uVar8 = (*(undefined4 **)(DAT_0026ec7c + 0x26ec36))[1];
        *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026ec7c + 0x26ec36);
        *(undefined4 *)(param_3 + 4) = uVar8;
        uVar8 = 1;
        goto LAB_0026ec24;
      }
      cocos2d::CCLog((char *)(DAT_0026ec58 + 0x26ebd4),DAT_0026ec5c + 0x26ebd6,0x200,
                     (int)&DAT_0026ec40 + DAT_0026ec54);
      pcVar6 = (char *)(iVar4 + 0x26ebe0);
    }
    else {
      cocos2d::CCLog((char *)(DAT_0026ec68 + 0x26ebec),DAT_0026ec6c + 0x26ebee,DAT_0026ec70,
                     DAT_0026ec64 + 0x26ec5a);
      pcVar6 = (char *)(DAT_0026ec74 + 0x26ebfa);
    }
  }
  cocos2d::CCLog(pcVar6);
  iVar4 = JS_IsExceptionPending(param_1);
  uVar8 = 0;
  if (iVar4 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
LAB_0026ec24:
  return CONCAT44(local_20,uVar8);
}



/* ===== js_xs_sanguosha_BFCardView_setScrollSlider @ 00270278 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFCardView_setScrollSlider(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFCardView_setScrollSlider(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFCardView_setScrollSlider(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFCardView *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  float fVar7;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (this = (BFCardView *)*puVar2, this == (BFCardView *)0x0)) {
    pcVar6 = (char *)(DAT_00270368 + 0x2702c4);
    cocos2d::CCLog((char *)(DAT_00270360 + 0x2702c2),DAT_00270364 + 0x2702bc,DAT_0027036c,
                   DAT_0027035c + 0x2702d1);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_00270388 + 0x270350),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToNumber(param_1,&local_20,*(undefined4 *)(param_3 + 0x10),
                             *(undefined4 *)(param_3 + 0x14),&local_20);
    if ((uVar4 & 1) != 0) {
      fVar7 = (float)__truncdfsf2(local_20,local_1c);
      BFCardView::setScrollSlider(this,fVar7);
      uVar5 = (*(undefined4 **)(DAT_00270384 + 0x27033c))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_00270384 + 0x27033c);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0027037c + 0x270308);
    cocos2d::CCLog((char *)(DAT_00270374 + 0x270300),DAT_00270378 + 0x270302,DAT_00270380,
                   DAT_00270370 + 0x270315);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFControlSlider_constructor @ 002713e4 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFControlSlider_constructor(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFControlSlider_constructor(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFControlSlider_constructor(JSContext *param_1,uint param_2,Value *param_3)

{
  BFControlSlider *this;
  JSObject *pJVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  undefined4 local_28;
  undefined4 local_24;
  uint local_1c [2];
  
  if (param_2 == 0) {
    this = operator_new(0x160);
    BFControlSlider::BFControlSlider(this);
    if (this != (BFControlSlider *)0x0) {
      cocos2d::CCObject::autorelease((CCObject *)this);
    }
    local_1c[0] = TypeTest<BFControlSlider>::s_id();
    iVar2 = 0;
    if (**(int **)(DAT_00271504 + 0x271416) != 0) {
      piVar8 = *(int **)(**(int **)(DAT_00271504 + 0x271416) + 0x10);
      uVar4 = (local_1c[0] & 0xff) + DAT_00271508 + (local_1c[0] & 0xff000000) +
              (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
              DAT_0027150c;
      uVar5 = DAT_00271510 - uVar4 ^ uVar4 << 8;
      uVar6 = (DAT_00271514 - uVar4) - uVar5 ^ uVar5 >> 0xd;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 0xc;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 0x10;
      uVar6 = (uVar6 - uVar4) - uVar5 ^ uVar5 >> 5;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 3;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 10;
      iVar7 = *(int *)(((uVar5 >> 0xf ^ (uVar6 - uVar4) - uVar5) & piVar8[1] - 1U) * 0xc + *piVar8);
      if (iVar7 != 0) goto LAB_002714aa;
      iVar2 = 0;
      while ((iVar2 != 0 &&
             (((*(int *)(iVar2 + 0x28) != 4 ||
               (iVar7 = memcmp(*(void **)(iVar2 + 0x24),local_1c,4), iVar7 != 0)) &&
              (iVar7 = *(int *)(iVar2 + 0x20), iVar2 = 0, iVar7 != 0))))) {
LAB_002714aa:
        iVar2 = iVar7 - piVar8[5];
      }
    }
    pJVar1 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(iVar2 + 4),*(JSObject **)(iVar2 + 8),
                          *(JSObject **)(iVar2 + 0xc));
    FUN_0026e028(&local_28,pJVar1);
    *(undefined4 *)param_3 = local_28;
    *(undefined4 *)(param_3 + 4) = local_24;
    iVar2 = jsb_new_proxy(this,pJVar1);
    JS_AddNamedObjectRoot(param_1,(JSObject **)(iVar2 + 4),(char *)(DAT_00271518 + 0x2714e2));
    uVar3 = 1;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0027151c + 0x2714f2),param_2,0);
    uVar3 = 0;
  }
  return uVar3;
}



/* ===== js_xs_sanguosha_BFControlSlider_create @ 00273118 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFControlSlider_create(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFControlSlider_create(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFControlSlider_create(JSContext *param_1,uint param_2,Value *param_3)

{
  char *pcVar1;
  JSObject *pJVar2;
  undefined4 *puVar3;
  CCSprite *pCVar4;
  int iVar5;
  BFControlSlider *pBVar6;
  js_proxy *pjVar7;
  int iVar8;
  char *pcVar9;
  int iVar10;
  CCSprite *pCVar11;
  undefined8 uVar12;
  undefined4 local_30;
  undefined4 local_2c;
  char *local_24;
  char *local_20;
  char *local_1c [2];
  
  iVar10 = DAT_00273308 + 0x273126;
  if (param_2 == 3) {
    if (*(int *)(param_3 + 0x14) != -0x79) {
LAB_0027320a:
      iVar8 = *(int *)(iVar10 + DAT_00273340);
      local_24 = (char *)(iVar8 + 0xc);
      iVar5 = jsval_to_std_string(param_1,iVar8,*(undefined4 *)(param_3 + 0x10),
                                  *(undefined4 *)(param_3 + 0x14),&local_24);
      pcVar9 = local_24;
      if (-1 < iVar5 << 0x1f) {
                    /* WARNING: Subroutine does not return */
        thunk_FUN_00a75f64(&local_24);
      }
      local_20 = (char *)(iVar8 + 0xc);
      uVar12 = jsval_to_std_string(param_1,&local_20,*(undefined4 *)(param_3 + 0x18),
                                   *(undefined4 *)(param_3 + 0x1c),&local_20);
      pcVar1 = local_20;
      if ((int)uVar12 << 0x1f < 0) {
        local_1c[0] = (char *)(iVar8 + 0xc);
        iVar5 = jsval_to_std_string(param_1,(int)((ulonglong)uVar12 >> 0x20),
                                    *(undefined4 *)(param_3 + 0x20),*(undefined4 *)(param_3 + 0x24),
                                    local_1c);
        if (-1 < iVar5 << 0x1f) {
                    /* WARNING: Subroutine does not return */
          thunk_FUN_00a75f64(local_1c);
        }
        pBVar6 = (BFControlSlider *)BFControlSlider::create(pcVar9,pcVar1,local_1c[0]);
        if (pBVar6 == (BFControlSlider *)0x0) {
          local_30 = **(undefined4 **)(iVar10 + DAT_0027333c);
          local_2c = (*(undefined4 **)(iVar10 + DAT_0027333c))[1];
        }
        else {
          pjVar7 = js_get_or_create_proxy<BFControlSlider>(param_1,pBVar6);
          FUN_0026e028(&local_30,*(undefined4 *)(pjVar7 + 4));
        }
        *(undefined4 *)param_3 = local_30;
        *(undefined4 *)(param_3 + 4) = local_2c;
                    /* WARNING: Subroutine does not return */
        thunk_FUN_00a75f64(local_1c);
      }
                    /* WARNING: Subroutine does not return */
      thunk_FUN_00a75f64(&local_20);
    }
    pJVar2 = (JSObject *)
             FUN_0026e020(*(undefined4 *)(param_3 + 0x10),*(undefined4 *)(param_3 + 0x14));
    puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
    iVar5 = DAT_00273318;
    if ((puVar3 == (undefined4 *)0x0) || (pCVar4 = (CCSprite *)*puVar3, pCVar4 == (CCSprite *)0x0))
    {
      cocos2d::CCLog((char *)(DAT_00273310 + 0x27315a),DAT_00273314 + 0x27315c,0x130,
                     DAT_0027330c + 0x2731c0);
      pcVar9 = (char *)(iVar5 + 0x273166);
    }
    else {
      if (*(int *)(param_3 + 0x1c) != -0x79) goto LAB_0027320a;
      pJVar2 = (JSObject *)
               FUN_0026e020(*(undefined4 *)(param_3 + 0x18),*(undefined4 *)(param_3 + 0x1c));
      puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
      iVar5 = DAT_00273328;
      if ((puVar3 == (undefined4 *)0x0) ||
         (pCVar11 = (CCSprite *)*puVar3, pCVar11 == (CCSprite *)0x0)) {
        cocos2d::CCLog((char *)(DAT_00273320 + 0x27318e),DAT_00273324 + 0x273190,0x13a,
                       DAT_0027331c + 0x2731f4);
        pcVar9 = (char *)(iVar5 + 0x27319a);
      }
      else {
        if (*(int *)(param_3 + 0x24) != -0x79) goto LAB_0027320a;
        pJVar2 = (JSObject *)
                 FUN_0026e020(*(undefined4 *)(param_3 + 0x20),*(undefined4 *)(param_3 + 0x24));
        puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
        if ((puVar3 != (undefined4 *)0x0) && ((CCSprite *)*puVar3 != (CCSprite *)0x0)) {
          pBVar6 = (BFControlSlider *)BFControlSlider::create(pCVar4,pCVar11,(CCSprite *)*puVar3);
          if (pBVar6 == (BFControlSlider *)0x0) {
            local_30 = **(undefined4 **)(iVar10 + DAT_0027333c);
            local_2c = (*(undefined4 **)(iVar10 + DAT_0027333c))[1];
          }
          else {
            pjVar7 = js_get_or_create_proxy<BFControlSlider>(param_1,pBVar6);
            FUN_0026e028(&local_30,*(undefined4 *)(pjVar7 + 4));
          }
          *(undefined4 *)param_3 = local_30;
          *(undefined4 *)(param_3 + 4) = local_2c;
          return 1;
        }
        cocos2d::CCLog((char *)(DAT_00273330 + 0x2731c0),DAT_00273334 + 0x2731c2,0x144,
                       DAT_0027332c + 0x273226);
        pcVar9 = (char *)(DAT_00273338 + 0x2731ce);
      }
    }
    cocos2d::CCLog(pcVar9);
    iVar10 = JS_IsExceptionPending(param_1);
    if (iVar10 == 0) {
      JS_ReportError(param_1,pcVar9);
    }
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_00273344 + 0x2732c2));
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFControlSlider_finalize @ 0026e04e ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFControlSlider_finalize(JSFreeOp * param_1, JSObject * param_2) */

/* js_xs_sanguosha_BFControlSlider_finalize(JSFreeOp*, JSObject*) */

JSFreeOp * js_xs_sanguosha_BFControlSlider_finalize(JSFreeOp *param_1,JSObject *param_2)

{
  return param_1;
}



/* ===== js_xs_sanguosha_BFControlSlider_setObserver @ 0026ea30 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFControlSlider_setObserver(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFControlSlider_setObserver(JSContext*, unsigned int, JS::Value*) */

undefined8
js_xs_sanguosha_BFControlSlider_setObserver(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  int iVar7;
  undefined4 uVar8;
  JSContext *local_20;
  uint local_1c;
  Value *pVStack_18;
  
  local_20 = param_1;
  local_1c = param_2;
  pVStack_18 = param_3;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
    pJVar1 = local_20;
    uVar5 = local_1c;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  iVar4 = DAT_0026eb24;
  if ((piVar3 == (int *)0x0) || (iVar7 = *piVar3, iVar7 == 0)) {
    cocos2d::CCLog((char *)(DAT_0026eb1c + 0x26ea72),DAT_0026eb20 + 0x26ea74,0x10e,
                   DAT_0026eb18 + 0x26eab2);
    pcVar6 = (char *)(iVar4 + 0x26ea7e);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026eb50 + 0x26eaf6),param_2,1);
      uVar8 = 0;
      goto LAB_0026eafc;
    }
    if (*(int *)(param_3 + 0x14) == -0x79) {
      pJVar2 = (JSObject *)
               FUN_0026e020(*(undefined4 *)(param_3 + 0x10),*(undefined4 *)(param_3 + 0x14));
      piVar3 = (int *)jsb_get_js_proxy(pJVar2);
      iVar4 = DAT_0026eb34;
      if ((piVar3 != (int *)0x0) && (*piVar3 != 0)) {
        *(int *)(iVar7 + 0x15c) = *piVar3;
        uVar8 = (*(undefined4 **)(DAT_0026eb54 + 0x26eb0c))[1];
        *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026eb54 + 0x26eb0c);
        *(undefined4 *)(param_3 + 4) = uVar8;
        uVar8 = 1;
        goto LAB_0026eafc;
      }
      cocos2d::CCLog((char *)(DAT_0026eb2c + 0x26eaac),DAT_0026eb30 + 0x26eaae,DAT_0026eb38,
                     DAT_0026eb28 + 0x26eaee);
      pcVar6 = (char *)(iVar4 + 0x26eab8);
    }
    else {
      cocos2d::CCLog((char *)(DAT_0026eb40 + 0x26eac4),DAT_0026eb44 + 0x26eac6,DAT_0026eb48,
                     DAT_0026eb3c + 0x26eb06);
      pcVar6 = (char *)(DAT_0026eb4c + 0x26ead2);
    }
  }
  cocos2d::CCLog(pcVar6);
  iVar4 = JS_IsExceptionPending(param_1);
  uVar8 = 0;
  if (iVar4 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
LAB_0026eafc:
  return CONCAT44(local_20,uVar8);
}



/* ===== js_xs_sanguosha_BFControlSlider_setValue @ 0026fdb4 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFControlSlider_setValue(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFControlSlider_setValue(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFControlSlider_setValue(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  int *piVar7;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (piVar7 = (int *)*puVar2, piVar7 == (int *)0x0)) {
    pcVar6 = (char *)(DAT_0026fea8 + 0x26fdfe);
    cocos2d::CCLog((char *)(DAT_0026fea0 + 0x26fdfc),DAT_0026fea4 + 0x26fdf6,0xfa,
                   DAT_0026fe9c + 0x26fe2a);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026fec0 + 0x26fe90),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToNumber(param_1,&local_20,*(undefined4 *)(param_3 + 0x10),
                             *(undefined4 *)(param_3 + 0x14),&local_20);
    if ((uVar4 & 1) != 0) {
      uVar5 = __truncdfsf2(local_20,local_1c);
      (**(code **)(*piVar7 + 0x270))(piVar7,uVar5);
      uVar5 = (*(undefined4 **)(DAT_0026febc + 0x26fe7c))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026febc + 0x26fe7c);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026feb8 + 0x26fe42);
    cocos2d::CCLog((char *)(DAT_0026feb0 + 0x26fe40),DAT_0026feb4 + 0x26fe3a,0xfe,
                   DAT_0026feac + 0x26fe6e);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFControlSlider_setValueNoNotify @ 0027063c ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFControlSlider_setValueNoNotify(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFControlSlider_setValueNoNotify(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFControlSlider_setValueNoNotify(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  float fVar7;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  piVar2 = (int *)jsb_get_js_proxy(pJVar1);
  if ((piVar2 == (int *)0x0) || (*piVar2 == 0)) {
    pcVar6 = (char *)(DAT_0027072c + 0x270688);
    cocos2d::CCLog((char *)(DAT_00270724 + 0x270686),DAT_00270728 + 0x270680,0xe6,
                   DAT_00270720 + 0x27069a);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_00270744 + 0x270714),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToNumber(param_1,&local_20,*(undefined4 *)(param_3 + 0x10),
                             *(undefined4 *)(param_3 + 0x14),&local_20);
    if ((uVar4 & 1) != 0) {
      fVar7 = (float)__truncdfsf2(local_20,local_1c);
      BFControlSlider::setValueNoNotify(fVar7);
      uVar5 = (*(undefined4 **)(DAT_00270740 + 0x270700))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_00270740 + 0x270700);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0027073c + 0x2706cc);
    cocos2d::CCLog((char *)(DAT_00270734 + 0x2706c4),DAT_00270738 + 0x2706c6,0xea,
                   DAT_00270730 + 0x2706de);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFSortTableWidget_ccTouchBegan @ 0026e6e0 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_ccTouchBegan(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFSortTableWidget_ccTouchBegan(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFSortTableWidget_ccTouchBegan(JSContext *param_1,uint param_2,Value *param_3)

{
  bool bVar1;
  JSObject *pJVar2;
  undefined4 *puVar3;
  int *piVar4;
  int iVar5;
  undefined4 uVar6;
  char *pcVar7;
  int *piVar8;
  int local_24;
  undefined4 local_20;
  undefined4 local_1c;
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
  }
  else {
    local_20 = *(undefined4 *)(param_3 + 8);
    local_1c = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(local_20,local_1c);
  puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
  iVar5 = DAT_0026e81c;
  if ((puVar3 == (undefined4 *)0x0) || (piVar8 = (int *)*puVar3, piVar8 == (int *)0x0)) {
    cocos2d::CCLog((char *)(DAT_0026e814 + 0x26e722),DAT_0026e818 + 0x26e724,DAT_0026e820,
                   DAT_0026e810 + 0x26e758);
    pcVar7 = (char *)(iVar5 + 0x26e72e);
    goto LAB_0026e7c4;
  }
  if (param_2 != 2) {
    JS_ReportError(param_1,(char *)(DAT_0026e858 + 0x26e804),param_2,2);
    return 0;
  }
  bVar1 = false;
  if (*(int *)(param_3 + 0x14) == -0x79) {
    pJVar2 = (JSObject *)
             FUN_0026e020(*(undefined4 *)(param_3 + 0x10),*(undefined4 *)(param_3 + 0x14));
    piVar4 = (int *)jsb_get_js_proxy(pJVar2);
    iVar5 = DAT_0026e830;
    if (piVar4 != (int *)0x0) {
      local_24 = *piVar4;
      bVar1 = true;
      if (local_24 != 0) goto LAB_0026e770;
    }
    cocos2d::CCLog((char *)(DAT_0026e828 + 0x26e764),DAT_0026e82c + 0x26e766,0x360,
                   DAT_0026e824 + 0x26e798);
    pcVar7 = (char *)(iVar5 + 0x26e770);
  }
  else {
LAB_0026e770:
    if (*(int *)(param_3 + 0x1c) == -0x79) {
      pJVar2 = (JSObject *)
               FUN_0026e020(*(undefined4 *)(param_3 + 0x18),*(undefined4 *)(param_3 + 0x1c));
      piVar4 = (int *)jsb_get_js_proxy(pJVar2);
      iVar5 = DAT_0026e840;
      if ((piVar4 == (int *)0x0) || (*piVar4 == 0)) {
        cocos2d::CCLog((char *)(DAT_0026e838 + 0x26e79c),DAT_0026e83c + 0x26e79e,0x368,
                       DAT_0026e834 + 0x26e7d0);
        pcVar7 = (char *)(iVar5 + 0x26e7a8);
        goto LAB_0026e7c4;
      }
      if (bVar1) {
        uVar6 = (**(code **)(*piVar8 + 0x19c))(piVar8,local_24);
        *(undefined4 *)param_3 = uVar6;
        *(undefined4 *)(param_3 + 4) = 0xffffff83;
        return 1;
      }
    }
    cocos2d::CCLog((char *)(DAT_0026e848 + 0x26e7b8),DAT_0026e84c + 0x26e7ba,DAT_0026e850,
                   DAT_0026e844 + 0x26e7ee);
    pcVar7 = (char *)(DAT_0026e854 + 0x26e7c6);
  }
LAB_0026e7c4:
  cocos2d::CCLog(pcVar7);
  iVar5 = JS_IsExceptionPending(param_1);
  if (iVar5 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFSortTableWidget_constructor @ 00271ee4 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_constructor(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFSortTableWidget_constructor(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFSortTableWidget_constructor(JSContext *param_1,uint param_2,Value *param_3)

{
  BFSortTableWidget *this;
  JSObject *pJVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  undefined4 local_28;
  undefined4 local_24;
  uint local_1c [2];
  
  if (param_2 == 0) {
    this = operator_new(0x120);
    BFSortTableWidget::BFSortTableWidget(this);
    if (this != (BFSortTableWidget *)0x0) {
      cocos2d::CCObject::autorelease((CCObject *)this);
    }
    local_1c[0] = TypeTest<BFSortTableWidget>::s_id();
    iVar2 = 0;
    if (**(int **)(DAT_00272004 + 0x271f16) != 0) {
      piVar8 = *(int **)(**(int **)(DAT_00272004 + 0x271f16) + 0x10);
      uVar4 = (local_1c[0] & 0xff) + DAT_00272008 + (local_1c[0] & 0xff000000) +
              (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
              DAT_0027200c;
      uVar5 = DAT_00272010 - uVar4 ^ uVar4 << 8;
      uVar6 = (DAT_00272014 - uVar4) - uVar5 ^ uVar5 >> 0xd;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 0xc;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 0x10;
      uVar6 = (uVar6 - uVar4) - uVar5 ^ uVar5 >> 5;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 3;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 10;
      iVar7 = *(int *)(((uVar5 >> 0xf ^ (uVar6 - uVar4) - uVar5) & piVar8[1] - 1U) * 0xc + *piVar8);
      if (iVar7 != 0) goto LAB_00271faa;
      iVar2 = 0;
      while ((iVar2 != 0 &&
             (((*(int *)(iVar2 + 0x28) != 4 ||
               (iVar7 = memcmp(*(void **)(iVar2 + 0x24),local_1c,4), iVar7 != 0)) &&
              (iVar7 = *(int *)(iVar2 + 0x20), iVar2 = 0, iVar7 != 0))))) {
LAB_00271faa:
        iVar2 = iVar7 - piVar8[5];
      }
    }
    pJVar1 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(iVar2 + 4),*(JSObject **)(iVar2 + 8),
                          *(JSObject **)(iVar2 + 0xc));
    FUN_0026e028(&local_28,pJVar1);
    *(undefined4 *)param_3 = local_28;
    *(undefined4 *)(param_3 + 4) = local_24;
    iVar2 = jsb_new_proxy(this,pJVar1);
    JS_AddNamedObjectRoot(param_1,(JSObject **)(iVar2 + 4),(char *)(DAT_00272018 + 0x271fe2));
    uVar3 = 1;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0027201c + 0x271ff2),param_2,0);
    uVar3 = 0;
  }
  return uVar3;
}



/* ===== js_xs_sanguosha_BFSortTableWidget_create @ 002735e4 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_create(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFSortTableWidget_create(JSContext*, unsigned int, JS::Value*) */

undefined8 js_xs_sanguosha_BFSortTableWidget_create(JSContext *param_1,uint param_2,Value *param_3)

{
  BFSortTableWidget *pBVar1;
  js_proxy *pjVar2;
  undefined4 uVar3;
  JSContext *pJVar4;
  JSContext *local_18;
  uint local_14;
  Value *pVStack_10;
  
  local_18 = param_1;
  local_14 = param_2;
  pVStack_10 = param_3;
  if (param_2 == 0) {
    pBVar1 = (BFSortTableWidget *)BFSortTableWidget::create();
    if (pBVar1 == (BFSortTableWidget *)0x0) {
      pJVar4 = (JSContext *)**(undefined4 **)(DAT_00273628 + 0x273610);
      local_14 = (*(undefined4 **)(DAT_00273628 + 0x273610))[1];
    }
    else {
      pjVar2 = js_get_or_create_proxy<BFSortTableWidget>(param_1,pBVar1);
      FUN_0026e028(&local_18,*(undefined4 *)(pjVar2 + 4));
      pJVar4 = local_18;
    }
    *(JSContext **)param_3 = pJVar4;
    *(uint *)(param_3 + 4) = local_14;
    uVar3 = 1;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0027362c + 0x273622));
    uVar3 = 0;
  }
  return CONCAT44(local_18,uVar3);
}



/* ===== js_xs_sanguosha_BFSortTableWidget_finalize @ 0026e052 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_finalize(JSFreeOp * param_1, JSObject * param_2) */

/* js_xs_sanguosha_BFSortTableWidget_finalize(JSFreeOp*, JSObject*) */

JSFreeOp * js_xs_sanguosha_BFSortTableWidget_finalize(JSFreeOp *param_1,JSObject *param_2)

{
  return param_1;
}



/* ===== js_xs_sanguosha_BFSortTableWidget_getSelectIdx @ 0026fad4 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_getSelectIdx(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFSortTableWidget_getSelectIdx(JSContext*, unsigned int, JS::Value*) */

undefined8
js_xs_sanguosha_BFSortTableWidget_getSelectIdx(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  undefined4 uVar7;
  JSContext *local_18;
  uint local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_18,(Value *)param_1);
    pJVar1 = local_18;
    uVar5 = local_14;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || (*piVar3 == 0)) {
    pcVar6 = (char *)(DAT_0026fb78 + 0x26fb1c);
    cocos2d::CCLog((char *)(DAT_0026fb70 + 0x26fb1a),DAT_0026fb74 + 0x26fb14,DAT_0026fb7c,
                   DAT_0026fb6c + 0x26fb44);
    cocos2d::CCLog(pcVar6);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar7 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar6);
    }
  }
  else if (param_2 == 0) {
    int32_to_jsval((JSContext *)&local_18,(int)param_1);
    uVar7 = 1;
    *(JSContext **)param_3 = local_18;
    *(uint *)(param_3 + 4) = local_14;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0026fb80 + 0x26fb60),param_2,0);
    uVar7 = 0;
  }
  return CONCAT44(local_18,uVar7);
}



/* ===== js_xs_sanguosha_BFSortTableWidget_init @ 0026e638 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_init(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFSortTableWidget_init(JSContext*, unsigned int, JS::Value*) */

undefined8 js_xs_sanguosha_BFSortTableWidget_init(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  char *pcVar7;
  undefined4 uVar8;
  JSContext *local_18;
  uint local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_18,(Value *)param_1);
    pJVar1 = local_18;
    uVar6 = local_14;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar6 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar6);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || ((int *)*piVar3 == (int *)0x0)) {
    pcVar7 = (char *)(DAT_0026e6d4 + 0x26e680);
    cocos2d::CCLog((char *)(DAT_0026e6cc + 0x26e67e),DAT_0026e6d0 + 0x26e678,DAT_0026e6d8,
                   DAT_0026e6c8 + 0x26e687);
    cocos2d::CCLog(pcVar7);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar8 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar7);
    }
  }
  else if (param_2 == 0) {
    uVar8 = 1;
    uVar5 = (**(code **)(*(int *)*piVar3 + 0x18))();
    *(undefined4 *)param_3 = uVar5;
    *(undefined4 *)(param_3 + 4) = 0xffffff83;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0026e6dc + 0x26e6be),param_2,0);
    uVar8 = 0;
  }
  return CONCAT44(local_18,uVar8);
}



/* ===== js_xs_sanguosha_BFSortTableWidget_setData @ 0026f910 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_setData(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFSortTableWidget_setData(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFSortTableWidget_setData(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFSortTableWidget *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  CCArray *local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) ||
     (this = (BFSortTableWidget *)*puVar2, this == (BFSortTableWidget *)0x0)) {
    pcVar6 = (char *)(DAT_0026f9f8 + 0x26f95c);
    cocos2d::CCLog((char *)(DAT_0026f9f0 + 0x26f95a),DAT_0026f9f4 + 0x26f954,DAT_0026f9fc,
                   DAT_0026f9ec + 0x26f9b1);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026fa18 + 0x26f9e0),param_2,1);
      return 0;
    }
    uVar4 = jsval_to_ccarray(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                             *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      BFSortTableWidget::setData(this,local_1c[0]);
      uVar5 = (*(undefined4 **)(DAT_0026fa14 + 0x26f9cc))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026fa14 + 0x26f9cc);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026fa0c + 0x26f9a0);
    cocos2d::CCLog((char *)(DAT_0026fa04 + 0x26f998),DAT_0026fa08 + 0x26f99a,DAT_0026fa10,
                   DAT_0026fa00 + 0x26f9f5);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFSortTableWidget_setSelectIdx @ 0026fb84 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_setSelectIdx(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFSortTableWidget_setSelectIdx(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFSortTableWidget_setSelectIdx(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFSortTableWidget *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  int local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) ||
     (this = (BFSortTableWidget *)*puVar2, this == (BFSortTableWidget *)0x0)) {
    pcVar6 = (char *)(DAT_0026fc6c + 0x26fbd0);
    cocos2d::CCLog((char *)(DAT_0026fc64 + 0x26fbce),DAT_0026fc68 + 0x26fbc8,DAT_0026fc70,
                   DAT_0026fc60 + 0x26fc27);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026fc8c + 0x26fc54),param_2,1);
      return 0;
    }
    uVar4 = jsval_to_int32(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                           *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      BFSortTableWidget::setSelectIdx(this,local_1c[0]);
      uVar5 = (*(undefined4 **)(DAT_0026fc88 + 0x26fc40))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026fc88 + 0x26fc40);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026fc80 + 0x26fc14);
    cocos2d::CCLog((char *)(DAT_0026fc78 + 0x26fc0c),DAT_0026fc7c + 0x26fc0e,DAT_0026fc84,
                   DAT_0026fc74 + 0x26fc6b);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFSortTableWidget_setTouchPriority @ 0026f7fc ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFSortTableWidget_setTouchPriority(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFSortTableWidget_setTouchPriority(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFSortTableWidget_setTouchPriority(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  int *piVar6;
  char *pcVar7;
  undefined4 local_28;
  undefined4 local_24;
  undefined4 local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (piVar6 = (int *)*puVar2, piVar6 == (int *)0x0)) {
    pcVar7 = (char *)(DAT_0026f8ec + 0x26f846);
    cocos2d::CCLog((char *)(DAT_0026f8e4 + 0x26f844),DAT_0026f8e8 + 0x26f83e,DAT_0026f8f0,
                   DAT_0026f8e0 + 0x26f868);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026f90c + 0x26f8d2),param_2,1);
      return 0;
    }
    uVar4 = jsval_to_int32(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                           *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      (**(code **)(*piVar6 + 0x1dc))(piVar6,local_1c[0]);
      uVar5 = (*(undefined4 **)(DAT_0026f908 + 0x26f8bc))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026f908 + 0x26f8bc);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar7 = (char *)(DAT_0026f900 + 0x26f88a);
    cocos2d::CCLog((char *)(DAT_0026f8f8 + 0x26f888),DAT_0026f8fc + 0x26f882,DAT_0026f904,
                   DAT_0026f8f4 + 0x26f8ac);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFWebView_constructor @ 00272460 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_constructor(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFWebView_constructor(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFWebView_constructor(JSContext *param_1,uint param_2,Value *param_3)

{
  BFWebView *this;
  JSObject *pJVar1;
  int iVar2;
  undefined4 uVar3;
  uint uVar4;
  uint uVar5;
  uint uVar6;
  int iVar7;
  int *piVar8;
  undefined4 local_28;
  undefined4 local_24;
  uint local_1c [2];
  
  if (param_2 == 0) {
    this = operator_new(0xf0);
    BFWebView::BFWebView(this);
    if (this != (BFWebView *)0x0) {
      cocos2d::CCObject::autorelease((CCObject *)this);
    }
    local_1c[0] = TypeTest<BFWebView>::s_id();
    iVar2 = 0;
    if (**(int **)(DAT_00272580 + 0x272490) != 0) {
      piVar8 = *(int **)(**(int **)(DAT_00272580 + 0x272490) + 0x10);
      uVar4 = (local_1c[0] & 0xff) + DAT_00272584 + (local_1c[0] & 0xff000000) +
              (local_1c[0] >> 0x10 & 0xff) * 0x10000 + (local_1c[0] >> 8 & 0xff) * 0x100 ^
              DAT_00272588;
      uVar5 = DAT_0027258c - uVar4 ^ uVar4 << 8;
      uVar6 = (DAT_00272590 - uVar4) - uVar5 ^ uVar5 >> 0xd;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 0xc;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 0x10;
      uVar6 = (uVar6 - uVar4) - uVar5 ^ uVar5 >> 5;
      uVar4 = (uVar4 - uVar5) - uVar6 ^ uVar6 >> 3;
      uVar5 = (uVar5 - uVar6) - uVar4 ^ uVar4 << 10;
      iVar7 = *(int *)(((uVar5 >> 0xf ^ (uVar6 - uVar4) - uVar5) & piVar8[1] - 1U) * 0xc + *piVar8);
      if (iVar7 != 0) goto LAB_00272524;
      iVar2 = 0;
      while ((iVar2 != 0 &&
             (((*(int *)(iVar2 + 0x28) != 4 ||
               (iVar7 = memcmp(*(void **)(iVar2 + 0x24),local_1c,4), iVar7 != 0)) &&
              (iVar7 = *(int *)(iVar2 + 0x20), iVar2 = 0, iVar7 != 0))))) {
LAB_00272524:
        iVar2 = iVar7 - piVar8[5];
      }
    }
    pJVar1 = (JSObject *)
             JS_NewObject(param_1,*(JSClass **)(iVar2 + 4),*(JSObject **)(iVar2 + 8),
                          *(JSObject **)(iVar2 + 0xc));
    FUN_0026e028(&local_28,pJVar1);
    *(undefined4 *)param_3 = local_28;
    *(undefined4 *)(param_3 + 4) = local_24;
    iVar2 = jsb_new_proxy(this,pJVar1);
    JS_AddNamedObjectRoot(param_1,(JSObject **)(iVar2 + 4),(char *)(DAT_00272594 + 0x27255c));
    uVar3 = 1;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_00272598 + 0x27256c),param_2,0);
    uVar3 = 0;
  }
  return uVar3;
}



/* ===== js_xs_sanguosha_BFWebView_finalize @ 0026e054 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_finalize(JSFreeOp * param_1, JSObject * param_2) */

/* js_xs_sanguosha_BFWebView_finalize(JSFreeOp*, JSObject*) */

JSFreeOp * js_xs_sanguosha_BFWebView_finalize(JSFreeOp *param_1,JSObject *param_2)

{
  return param_1;
}



/* ===== js_xs_sanguosha_BFWebView_init @ 0026e590 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_init(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFWebView_init(JSContext*, unsigned int, JS::Value*) */

undefined8 js_xs_sanguosha_BFWebView_init(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  undefined4 uVar5;
  uint uVar6;
  char *pcVar7;
  undefined4 uVar8;
  JSContext *local_18;
  uint local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_18,(Value *)param_1);
    pJVar1 = local_18;
    uVar6 = local_14;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar6 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar6);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || ((int *)*piVar3 == (int *)0x0)) {
    pcVar7 = (char *)(DAT_0026e62c + 0x26e5d8);
    cocos2d::CCLog((char *)(DAT_0026e624 + 0x26e5d6),DAT_0026e628 + 0x26e5d0,DAT_0026e630,
                   DAT_0026e620 + 0x26e640);
    cocos2d::CCLog(pcVar7);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar8 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar7);
    }
  }
  else if (param_2 == 0) {
    uVar8 = 1;
    uVar5 = (**(code **)(*(int *)*piVar3 + 0x18))();
    *(undefined4 *)param_3 = uVar5;
    *(undefined4 *)(param_3 + 4) = 0xffffff83;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0026e634 + 0x26e616),param_2,0);
    uVar8 = 0;
  }
  return CONCAT44(local_18,uVar8);
}



/* ===== js_xs_sanguosha_BFWebView_loadUrl @ 0026f584 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_loadUrl(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFWebView_loadUrl(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFWebView_loadUrl(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  int iVar3;
  undefined4 uVar4;
  char *pcVar5;
  BFWebView *this;
  undefined4 local_28;
  undefined4 local_24;
  char *local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (this = (BFWebView *)*puVar2, this == (BFWebView *)0x0)) {
    pcVar5 = (char *)(DAT_0026f690 + 0x26f5ce);
    cocos2d::CCLog((char *)(DAT_0026f688 + 0x26f5cc),DAT_0026f68c + 0x26f5c6,DAT_0026f694,
                   DAT_0026f684 + 0x26f620);
    cocos2d::CCLog(pcVar5);
    iVar3 = JS_IsExceptionPending(param_1);
    if (iVar3 == 0) {
      JS_ReportError(param_1,pcVar5);
    }
  }
  else {
    if (param_2 == 1) {
      local_1c[0] = (char *)(*(int *)(DAT_0026f698 + 0x26f5fa) + 0xc);
      iVar3 = jsval_to_std_string(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                                  *(undefined4 *)(param_3 + 0x14),local_1c);
      if (iVar3 << 0x1f < 0) {
        BFWebView::loadUrl(this,local_1c[0]);
        uVar4 = (*(undefined4 **)(DAT_0026f6b4 + 0x26f650))[1];
        *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026f6b4 + 0x26f650);
        *(undefined4 *)(param_3 + 4) = uVar4;
      }
      else {
        cocos2d::CCLog((char *)(DAT_0026f6a0 + 0x26f61a),DAT_0026f6a4 + 0x26f61c,DAT_0026f6a8,
                       DAT_0026f69c + 0x26f674);
        cocos2d::CCLog((char *)(DAT_0026f6ac + 0x26f628));
        iVar3 = JS_IsExceptionPending(param_1);
        if (iVar3 == 0) {
          JS_ReportError(param_1,(char *)(DAT_0026f6b0 + 0x26f63e));
        }
      }
                    /* WARNING: Subroutine does not return */
      thunk_FUN_00a75f64(local_1c);
    }
    JS_ReportError(param_1,(char *)(DAT_0026f6b8 + 0x26f66e),param_2,1);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFWebView_setContentSize @ 0026f244 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_setContentSize(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFWebView_setContentSize(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFWebView_setContentSize(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  undefined4 extraout_r1;
  undefined4 uVar5;
  int *piVar6;
  char *pcVar7;
  undefined4 local_28;
  undefined4 local_24;
  CCSize aCStack_20 [12];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (piVar6 = (int *)*puVar2, piVar6 == (int *)0x0)) {
    pcVar7 = (char *)(DAT_0026f33c + 0x26f290);
    cocos2d::CCLog((char *)(DAT_0026f334 + 0x26f28e),DAT_0026f338 + 0x26f288,0x4a8,
                   DAT_0026f330 + 0x26f2e4);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026f358 + 0x26f324),param_2,1);
      return 0;
    }
    cocos2d::CCSize::CCSize(aCStack_20);
    uVar4 = jsval_to_ccsize(param_1,extraout_r1,*(undefined4 *)(param_3 + 0x10),
                            *(undefined4 *)(param_3 + 0x14),aCStack_20);
    if ((uVar4 & 1) != 0) {
      (**(code **)(*piVar6 + 0x88))(piVar6,aCStack_20);
      uVar5 = (*(undefined4 **)(DAT_0026f354 + 0x26f30e))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026f354 + 0x26f30e);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar7 = (char *)(DAT_0026f34c + 0x26f2de);
    cocos2d::CCLog((char *)(DAT_0026f344 + 0x26f2dc),DAT_0026f348 + 0x26f2d6,DAT_0026f350,
                   (int)&DAT_0026f334 + DAT_0026f340);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFWebView_setIsNeedUpdatePos @ 0026f474 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_setIsNeedUpdatePos(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFWebView_setIsNeedUpdatePos(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_BFWebView_setIsNeedUpdatePos(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFWebView *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  int local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (this = (BFWebView *)*puVar2, this == (BFWebView *)0x0)) {
    pcVar6 = (char *)(DAT_0026f564 + 0x26f4c0);
    cocos2d::CCLog((char *)(DAT_0026f55c + 0x26f4be),DAT_0026f560 + 0x26f4b8,DAT_0026f568,
                   DAT_0026f558 + 0x26f4e5);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026f580 + 0x26f54a),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToBoolean(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                              *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      BFWebView::setIsNeedUpdatePos(this,(bool)('\x01' - (local_1c[0] == 0)));
      uVar5 = (*(undefined4 **)(DAT_0026f57c + 0x26f536))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026f57c + 0x26f536);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026f578 + 0x26f506);
    cocos2d::CCLog((char *)(DAT_0026f570 + 0x26f4fe),DAT_0026f574 + 0x26f500,0x470,
                   DAT_0026f56c + 0x26f529);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFWebView_setPosition @ 0026f35c ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_setPosition(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFWebView_setPosition(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFWebView_setPosition(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  undefined4 extraout_r1;
  undefined4 uVar5;
  int *piVar6;
  char *pcVar7;
  undefined4 local_28;
  undefined4 local_24;
  CCPoint aCStack_20 [12];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (piVar6 = (int *)*puVar2, piVar6 == (int *)0x0)) {
    pcVar7 = (char *)(DAT_0026f454 + 0x26f3a8);
    cocos2d::CCLog((char *)(DAT_0026f44c + 0x26f3a6),DAT_0026f450 + 0x26f3a0,0x480,
                   DAT_0026f448 + 0x26f3a5);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026f470 + 0x26f43a),param_2,1);
      return 0;
    }
    cocos2d::CCPoint::CCPoint(aCStack_20);
    uVar4 = jsval_to_ccpoint(param_1,extraout_r1,*(undefined4 *)(param_3 + 0x10),
                             *(undefined4 *)(param_3 + 0x14),aCStack_20);
    if ((uVar4 & 1) != 0) {
      (**(code **)(*piVar6 + 0x4c))(piVar6,aCStack_20);
      uVar5 = (*(undefined4 **)(DAT_0026f46c + 0x26f424))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026f46c + 0x26f424);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar7 = (char *)(DAT_0026f464 + 0x26f3f6);
    cocos2d::CCLog((char *)(DAT_0026f45c + 0x26f3f4),DAT_0026f460 + 0x26f3ee,DAT_0026f468,
                   DAT_0026f458 + 0x26f3f5);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFWebView_setTouchEnable @ 0026f134 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_setTouchEnable(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFWebView_setTouchEnable(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFWebView_setTouchEnable(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  BFWebView *this;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  int local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (this = (BFWebView *)*puVar2, this == (BFWebView *)0x0)) {
    pcVar6 = (char *)(DAT_0026f224 + 0x26f180);
    cocos2d::CCLog((char *)(DAT_0026f21c + 0x26f17e),DAT_0026f220 + 0x26f178,DAT_0026f228,
                   DAT_0026f218 + 0x26f1ad);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026f240 + 0x26f20a),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToBoolean(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                              *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      BFWebView::setTouchEnable(this,(bool)('\x01' - (local_1c[0] == 0)));
      uVar5 = (*(undefined4 **)(DAT_0026f23c + 0x26f1f6))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026f23c + 0x26f1f6);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_0026f238 + 0x26f1c6);
    cocos2d::CCLog((char *)(DAT_0026f230 + 0x26f1be),DAT_0026f234 + 0x26f1c0,0x4c0,
                   DAT_0026f22c + 0x26f1f1);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== js_xs_sanguosha_BFWebView_setVisible @ 0026ec80 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_BFWebView_setVisible(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_BFWebView_setVisible(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_BFWebView_setVisible(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  undefined4 *puVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  int *piVar6;
  char *pcVar7;
  undefined4 local_28;
  undefined4 local_24;
  int local_1c [2];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  puVar2 = (undefined4 *)jsb_get_js_proxy(pJVar1);
  if ((puVar2 == (undefined4 *)0x0) || (piVar6 = (int *)*puVar2, piVar6 == (int *)0x0)) {
    pcVar7 = (char *)(DAT_0026ed74 + 0x26ecca);
    cocos2d::CCLog((char *)(DAT_0026ed6c + 0x26ecc8),DAT_0026ed70 + 0x26ecc2,DAT_0026ed78,
                   DAT_0026ed68 + 0x26ecd7);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0026ed90 + 0x26ed5a),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToBoolean(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                              *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      (**(code **)(*piVar6 + 0x90))(piVar6,local_1c[0] != 0);
      uVar5 = (*(undefined4 **)(DAT_0026ed8c + 0x26ed44))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_0026ed8c + 0x26ed44);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar7 = (char *)(DAT_0026ed88 + 0x26ed10);
    cocos2d::CCLog((char *)(DAT_0026ed80 + 0x26ed0e),DAT_0026ed84 + 0x26ed08,0x498,
                   DAT_0026ed7c + 0x26ed1b);
    cocos2d::CCLog(pcVar7);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar7);
  }
  return 0;
}



/* ===== js_xs_sanguosha_JsbConnecter_finalize @ 0026e04c ===== */
/* signature: undefined __stdcall js_xs_sanguosha_JsbConnecter_finalize(JSFreeOp * param_1, JSObject * param_2) */

/* js_xs_sanguosha_JsbConnecter_finalize(JSFreeOp*, JSObject*) */

JSFreeOp * js_xs_sanguosha_JsbConnecter_finalize(JSFreeOp *param_1,JSObject *param_2)

{
  return param_1;
}



/* ===== js_xs_sanguosha_JsbConnecter_getClassTypeInfo @ 0026e98c ===== */
/* signature: undefined __stdcall js_xs_sanguosha_JsbConnecter_getClassTypeInfo(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_JsbConnecter_getClassTypeInfo(JSContext*, unsigned int, JS::Value*) */

undefined8
js_xs_sanguosha_JsbConnecter_getClassTypeInfo(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  undefined4 uVar7;
  JSContext *local_18;
  uint local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_18,(Value *)param_1);
    pJVar1 = local_18;
    uVar5 = local_14;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || ((undefined4 *)*piVar3 == (undefined4 *)0x0)) {
    pcVar6 = (char *)(DAT_0026ea28 + 0x26e9d4);
    cocos2d::CCLog((char *)(DAT_0026ea20 + 0x26e9d2),DAT_0026ea24 + 0x26e9cc,0x2d,
                   DAT_0026ea1c + 0x26e9e0);
    cocos2d::CCLog(pcVar6);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar7 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar6);
    }
  }
  else if (param_2 == 0) {
    uVar7 = 1;
    (*(code *)**(undefined4 **)*piVar3)();
    *(undefined4 *)param_3 = 0;
    *(undefined4 *)(param_3 + 4) = 0;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_0026ea2c + 0x26ea12),param_2,0);
    uVar7 = 0;
  }
  return CONCAT44(local_18,uVar7);
}



/* ===== js_xs_sanguosha_JsbConnecter_getInstance @ 00272e30 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_JsbConnecter_getInstance(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_JsbConnecter_getInstance(JSContext*, unsigned int, JS::Value*) */

undefined8 js_xs_sanguosha_JsbConnecter_getInstance(JSContext *param_1,uint param_2,Value *param_3)

{
  JsbConnecter *pJVar1;
  js_proxy *pjVar2;
  undefined4 uVar3;
  JSContext *pJVar4;
  JSContext *local_18;
  uint local_14;
  Value *pVStack_10;
  
  local_18 = param_1;
  local_14 = param_2;
  pVStack_10 = param_3;
  if (param_2 == 0) {
    pJVar1 = (JsbConnecter *)JsbConnecter::getInstance();
    if (pJVar1 == (JsbConnecter *)0x0) {
      pJVar4 = (JSContext *)**(undefined4 **)(DAT_00272e74 + 0x272e5c);
      local_14 = (*(undefined4 **)(DAT_00272e74 + 0x272e5c))[1];
    }
    else {
      pjVar2 = js_get_or_create_proxy<JsbConnecter>(param_1,pJVar1);
      FUN_0026e028(&local_18,*(undefined4 *)(pjVar2 + 4));
      pJVar4 = local_18;
    }
    *(JSContext **)param_3 = pJVar4;
    *(uint *)(param_3 + 4) = local_14;
    uVar3 = 1;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_00272e78 + 0x272e6e));
    uVar3 = 0;
  }
  return CONCAT44(local_18,uVar3);
}



/* ===== js_xs_sanguosha_JsbConnecter_getName @ 00270a8c ===== */
/* signature: undefined __stdcall js_xs_sanguosha_JsbConnecter_getName(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_JsbConnecter_getName(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_JsbConnecter_getName(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  char *pcVar6;
  JSContext *local_20;
  uint local_1c;
  Value *pVStack_18;
  undefined1 auStack_14 [4];
  
  local_20 = param_1;
  local_1c = param_2;
  pVStack_18 = param_3;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_20,(Value *)param_1);
    pJVar1 = local_20;
    uVar5 = local_1c;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || (*piVar3 == 0)) {
    pcVar6 = (char *)(DAT_00270b44 + 0x270ad4);
    cocos2d::CCLog((char *)(DAT_00270b3c + 0x270ad2),DAT_00270b40 + 0x270acc,0x3e,
                   DAT_00270b38 + 0x270b0f);
    cocos2d::CCLog(pcVar6);
    iVar4 = JS_IsExceptionPending(param_1);
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar6);
    }
  }
  else {
    if (param_2 == 0) {
      JsbConnecter::getName();
      std_string_to_jsval((JSContext *)&local_20,(string *)param_1);
      *(JSContext **)param_3 = local_20;
      *(uint *)(param_3 + 4) = local_1c;
                    /* WARNING: Subroutine does not return */
      thunk_FUN_00a75f64(auStack_14);
    }
    JS_ReportError(param_1,(char *)(DAT_00270b48 + 0x270b22),param_2,0);
  }
  return 0;
}



/* ===== js_xs_sanguosha_JsbConnecter_init @ 002709e0 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_JsbConnecter_init(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_JsbConnecter_init(JSContext*, unsigned int, JS::Value*) */

undefined8 js_xs_sanguosha_JsbConnecter_init(JSContext *param_1,uint param_2,Value *param_3)

{
  JSContext *pJVar1;
  JSObject *pJVar2;
  int *piVar3;
  int iVar4;
  uint uVar5;
  undefined4 uVar6;
  char *pcVar7;
  undefined4 uVar8;
  JSContext *local_18;
  uint local_14;
  
  local_18 = param_1;
  local_14 = param_2;
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_18,(Value *)param_1);
    pJVar1 = local_18;
    uVar5 = local_14;
  }
  else {
    pJVar1 = *(JSContext **)(param_3 + 8);
    uVar5 = *(uint *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(pJVar1,uVar5);
  piVar3 = (int *)jsb_get_js_proxy(pJVar2);
  if ((piVar3 == (int *)0x0) || (*piVar3 == 0)) {
    pcVar7 = (char *)(DAT_00270a80 + 0x270a28);
    cocos2d::CCLog((char *)(DAT_00270a78 + 0x270a26),DAT_00270a7c + 0x270a20,0x4f,
                   DAT_00270a74 + 0x270a41);
    cocos2d::CCLog(pcVar7);
    iVar4 = JS_IsExceptionPending(param_1);
    uVar8 = 0;
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar7);
    }
  }
  else if (param_2 == 0) {
    JsbConnecter::init();
    uVar8 = 1;
    uVar6 = (*(undefined4 **)(DAT_00270a84 + 0x270a56))[1];
    *(undefined4 *)param_3 = **(undefined4 **)(DAT_00270a84 + 0x270a56);
    *(undefined4 *)(param_3 + 4) = uVar6;
  }
  else {
    JS_ReportError(param_1,(char *)(DAT_00270a88 + 0x270a6a),param_2,0);
    uVar8 = 0;
  }
  return CONCAT44(local_18,uVar8);
}



/* ===== js_xs_sanguosha_JsbConnecter_invoke @ 00270850 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_JsbConnecter_invoke(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_JsbConnecter_invoke(JSContext*, unsigned int, JS::Value*) */

undefined4 js_xs_sanguosha_JsbConnecter_invoke(JSContext *param_1,uint param_2,Value *param_3)

{
  undefined4 uVar1;
  JSObject *pJVar2;
  undefined4 *puVar3;
  int iVar4;
  uint uVar5;
  uint uVar6;
  uint uVar7;
  undefined4 uVar8;
  char *pcVar9;
  string *psVar10;
  undefined4 local_30;
  undefined4 local_2c;
  int local_28;
  int local_24;
  int local_20;
  string asStack_1c [8];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_30,(Value *)param_1);
    uVar1 = local_30;
    uVar8 = local_2c;
  }
  else {
    uVar1 = *(undefined4 *)(param_3 + 8);
    uVar8 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar2 = (JSObject *)FUN_0026e020(uVar1,uVar8);
  puVar3 = (undefined4 *)jsb_get_js_proxy(pJVar2);
  if ((puVar3 == (undefined4 *)0x0) || (psVar10 = (string *)*puVar3, psVar10 == (string *)0x0)) {
    pcVar9 = (char *)(DAT_002709c0 + 0x27089a);
    cocos2d::CCLog((char *)(DAT_002709b8 + 0x270898),DAT_002709bc + 0x270892,0x60,
                   DAT_002709b4 + 0x27090f);
    cocos2d::CCLog(pcVar9);
    iVar4 = JS_IsExceptionPending(param_1);
    if (iVar4 == 0) {
      JS_ReportError(param_1,pcVar9);
    }
  }
  else {
    if (param_2 == 3) {
      local_28 = *(int *)(DAT_002709c4 + 0x2708c6) + 0xc;
      local_24 = local_28;
      local_20 = local_28;
      uVar5 = jsval_to_std_string(param_1,&local_28,*(undefined4 *)(param_3 + 0x10),
                                  *(undefined4 *)(param_3 + 0x14),&local_28);
      uVar6 = jsval_to_std_string(param_1,&local_24,*(undefined4 *)(param_3 + 0x18),
                                  *(undefined4 *)(param_3 + 0x1c),&local_24);
      uVar7 = jsval_to_std_string(param_1,*(undefined4 *)(param_3 + 0x20),
                                  *(undefined4 *)(param_3 + 0x20),*(undefined4 *)(param_3 + 0x24),
                                  &local_20);
      if ((uVar7 & uVar6 & uVar5 & 1) == 0) {
        cocos2d::CCLog((char *)(DAT_002709cc + 0x270914),DAT_002709d0 + 0x270916,0x68,
                       DAT_002709c8 + 0x270991);
        cocos2d::CCLog((char *)(DAT_002709d4 + 0x270922));
        iVar4 = JS_IsExceptionPending(param_1);
        if (iVar4 == 0) {
          JS_ReportError(param_1,(char *)(DAT_002709d8 + 0x270938));
        }
                    /* WARNING: Subroutine does not return */
        thunk_FUN_00a75f64(&local_20);
      }
      JsbConnecter::invoke(asStack_1c,psVar10,(string *)&local_28);
      std_string_to_jsval((JSContext *)&local_30,(string *)param_1);
      *(undefined4 *)param_3 = local_30;
      *(undefined4 *)(param_3 + 4) = local_2c;
                    /* WARNING: Subroutine does not return */
      thunk_FUN_00a75f64(asStack_1c);
    }
    JS_ReportError(param_1,(char *)(DAT_002709dc + 0x270988),param_2,3);
  }
  return 0;
}



/* ===== js_xs_sanguosha_JsbConnecter_setIdleTimerDisabled @ 00270748 ===== */
/* signature: undefined __stdcall js_xs_sanguosha_JsbConnecter_setIdleTimerDisabled(JSContext * param_1, uint param_2, Value * param_3) */

/* js_xs_sanguosha_JsbConnecter_setIdleTimerDisabled(JSContext*, unsigned int, JS::Value*) */

undefined4
js_xs_sanguosha_JsbConnecter_setIdleTimerDisabled(JSContext *param_1,uint param_2,Value *param_3)

{
  JSObject *pJVar1;
  int *piVar2;
  int iVar3;
  uint uVar4;
  undefined4 uVar5;
  char *pcVar6;
  undefined4 local_28;
  undefined4 local_24;
  undefined1 local_1c [8];
  
  if (*(uint *)(param_3 + 0xc) < 0xffffff87) {
    JS_ComputeThis((JSContext *)&local_28,(Value *)param_1);
  }
  else {
    local_28 = *(undefined4 *)(param_3 + 8);
    local_24 = *(undefined4 *)(param_3 + 0xc);
  }
  pJVar1 = (JSObject *)FUN_0026e020(local_28,local_24);
  piVar2 = (int *)jsb_get_js_proxy(pJVar1);
  if ((piVar2 == (int *)0x0) || (iVar3 = *piVar2, iVar3 == 0)) {
    pcVar6 = (char *)(DAT_00270834 + 0x270794);
    cocos2d::CCLog((char *)(DAT_0027082c + 0x270792),DAT_00270830 + 0x27078c,0x7a,
                   DAT_00270828 + 0x2707d7);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  else {
    if (param_2 != 1) {
      JS_ReportError(param_1,(char *)(DAT_0027084c + 0x27081c),param_2,1);
      return 0;
    }
    uVar4 = JS_ValueToBoolean(param_1,local_1c,*(undefined4 *)(param_3 + 0x10),
                              *(undefined4 *)(param_3 + 0x14),local_1c);
    if ((uVar4 & 1) != 0) {
      JsbConnecter::setIdleTimerDisabled(SUB41(iVar3,0));
      uVar5 = (*(undefined4 **)(DAT_00270848 + 0x270808))[1];
      *(undefined4 *)param_3 = **(undefined4 **)(DAT_00270848 + 0x270808);
      *(undefined4 *)(param_3 + 4) = uVar5;
      return 1;
    }
    pcVar6 = (char *)(DAT_00270844 + 0x2707d8);
    cocos2d::CCLog((char *)(DAT_0027083c + 0x2707d0),DAT_00270840 + 0x2707d2,0x7e,
                   DAT_00270838 + 0x27081b);
    cocos2d::CCLog(pcVar6);
    iVar3 = JS_IsExceptionPending(param_1);
  }
  if (iVar3 == 0) {
    JS_ReportError(param_1,pcVar6);
  }
  return 0;
}



/* ===== register_all_xs_sanguosha @ 002729dc ===== */
/* signature: undefined __stdcall register_all_xs_sanguosha(JSContext * param_1, JSObject * param_2) */

/* register_all_xs_sanguosha(JSContext*, JSObject*) */

void register_all_xs_sanguosha(JSContext *param_1,JSObject *param_2)

{
  JSObject *pJVar1;
  char *pcVar2;
  int local_28;
  int local_24;
  JSObject *local_1c;
  int local_18;
  int local_14;
  
  pcVar2 = (char *)(DAT_00272a78 + 0x2729e8);
  JS_GetProperty(param_1,param_2,pcVar2,(Value *)&local_18);
  if ((local_18 == **(int **)(DAT_00272a7c + 0x2729f8)) &&
     (local_14 == (*(int **)(DAT_00272a7c + 0x2729f8))[1])) {
    local_1c = (JSObject *)JS_NewObject(param_1,(JSClass *)0x0,(JSObject *)0x0,(JSObject *)0x0);
    FUN_0026e028(&local_28,local_1c);
    local_18 = local_28;
    local_14 = local_24;
    JS_SetProperty(param_1,param_2,pcVar2,(Value *)&local_18);
  }
  else {
    JS_ValueToObject(param_1,local_18,local_18,local_14,&local_1c);
  }
  pJVar1 = local_1c;
  js_register_xs_sanguosha_BFCardView(param_1,local_1c);
  js_register_xs_sanguosha_BFButton(param_1,pJVar1);
  js_register_xs_sanguosha_BFSortTableWidget(param_1,pJVar1);
  js_register_xs_sanguosha_BFControlSlider(param_1,pJVar1);
  js_register_xs_sanguosha_JsbConnecter(param_1,pJVar1);
  js_register_xs_sanguosha_BFWebView(param_1,pJVar1);
  return;
}



/* ===== register_all_xs_sanguosha_manual @ 002748a8 ===== */
/* signature: undefined __stdcall register_all_xs_sanguosha_manual(JSContext * param_1, JSObject * param_2) */

/* register_all_xs_sanguosha_manual(JSContext*, JSObject*) */

void register_all_xs_sanguosha_manual(JSContext *param_1,JSObject *param_2)

{
  int iVar1;
  JSObject *pJVar2;
  char *pcVar3;
  undefined4 *puVar4;
  int iVar5;
  int local_30;
  int local_2c;
  undefined4 local_24;
  int local_20;
  int local_1c;
  
  iVar5 = DAT_002749fc;
  pcVar3 = (char *)(DAT_002749f8 + 0x2748b4);
  JS_GetProperty(param_1,param_2,pcVar3,(Value *)&local_20);
  iVar5 = iVar5 + 0x2748c4;
  if ((local_20 == **(int **)(iVar5 + DAT_00274a00)) &&
     (local_1c == (*(int **)(iVar5 + DAT_00274a00))[1])) {
    local_24 = JS_NewObject(param_1,(JSClass *)0x0,(JSObject *)0x0,(JSObject *)0x0);
    FUN_002736a0(&local_30,local_24);
    local_20 = local_30;
    local_1c = local_2c;
    JS_SetProperty(param_1,param_2,pcVar3,(Value *)&local_20);
  }
  else {
    JS_ValueToObject(param_1,local_20,local_20,local_1c,&local_24);
  }
  pcVar3 = (char *)(DAT_00274a08 + 0x27491c);
  **(undefined4 **)(iVar5 + DAT_00274a04) = local_24;
  puVar4 = *(undefined4 **)(iVar5 + DAT_00274a0c);
  JS_DefineFunction(param_1,(JSObject *)*puVar4,pcVar3,
                    (_func_int_JSContext_ptr_uint_Value_ptr *)(DAT_00274a10 + 0x27492a),1,6);
  JS_DefineFunction(param_1,(JSObject *)*puVar4,(char *)(DAT_00274a14 + 0x274946),
                    (_func_int_JSContext_ptr_uint_Value_ptr *)(DAT_00274a18 + 0x27494a),1,6);
  JS_DefineFunction(param_1,(JSObject *)*puVar4,(char *)(DAT_00274a1c + 0x27495e),
                    (_func_int_JSContext_ptr_uint_Value_ptr *)(DAT_00274a20 + 0x274962),1,6);
  iVar1 = DAT_00274a28;
  JS_DefineFunction(param_1,(JSObject *)**(undefined4 **)(iVar5 + DAT_00274a24),pcVar3,
                    (_func_int_JSContext_ptr_uint_Value_ptr *)(DAT_00274a2c + 0x27497e),1,6);
  JS_DefineFunction(param_1,(JSObject *)**(undefined4 **)(iVar5 + DAT_00274a30),pcVar3,
                    (_func_int_JSContext_ptr_uint_Value_ptr *)(DAT_00274a34 + 0x27499a),1,6);
  anonEvaluate((JSContext *)&local_30,(JSObject *)param_1,(char *)param_2);
  pJVar2 = (JSObject *)FUN_00273698(local_30,local_2c);
  JS_DefineFunction(param_1,pJVar2,(char *)(iVar1 + 0x27498c),
                    (_func_int_JSContext_ptr_uint_Value_ptr *)(DAT_00274a3c + 0x2749c6),2,6);
  anonEvaluate((JSContext *)&local_30,(JSObject *)param_1,(char *)param_2);
  pJVar2 = (JSObject *)FUN_00273698(local_30,local_2c);
  JS_DefineFunction(param_1,pJVar2,(char *)(iVar1 + 0x27498c),
                    (_func_int_JSContext_ptr_uint_Value_ptr *)(DAT_00274a44 + 0x2749ee),0,6);
  return;
}



/* ===== ~BFButton @ 00277b04 ===== */
/* signature: undefined __thiscall ~BFButton(BFButton * this) */

/* non-virtual thunk to BFButton::~BFButton() */

void __thiscall BFButton::~BFButton(BFButton *this)

{
                    /* WARNING: Could not recover jumptable at 0x00277b10. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00277b14 + 0x277b10))(this + -0xe4);
  return;
}



/* ===== ~BFButton @ 00277b18 ===== */
/* signature: undefined __thiscall ~BFButton(BFButton * this) */

/* BFButton::~BFButton() */

BFButton * __thiscall BFButton::~BFButton(BFButton *this)

{
  int iVar1;
  
  iVar1 = *(int *)(DAT_00277b58 + 0x277b22);
  *(int *)this = iVar1 + 8;
  *(int *)(this + 0xe4) = iVar1 + 800;
  *(int *)(this + 0xe8) = iVar1 + 0x350;
  *(int *)(this + 0xec) = iVar1 + 0x35c;
  *(int *)(this + 0x108) = iVar1 + 0x36c;
  cocos2d::extension::CCControlButton::~CCControlButton((CCControlButton *)this);
  return this;
}



/* ===== ~BFButton @ 00277b5c ===== */
/* signature: undefined __thiscall ~BFButton(BFButton * this) */

/* non-virtual thunk to BFButton::~BFButton() */

void __thiscall BFButton::~BFButton(BFButton *this)

{
                    /* WARNING: Could not recover jumptable at 0x00277b68. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00277b6c + 0x277b68))(this + -0xe4);
  return;
}



/* ===== ~BFButton @ 00277b70 ===== */
/* signature: undefined __thiscall ~BFButton(BFButton * this) */

/* BFButton::~BFButton() */

BFButton * __thiscall BFButton::~BFButton(BFButton *this)

{
  ~BFButton(this);
  operator_delete(this);
  return this;
}



/* ===== ~BFCardView @ 00277fd0 ===== */
/* signature: undefined __thiscall ~BFCardView(BFCardView * this) */

/* non-virtual thunk to BFCardView::~BFCardView() */

void __thiscall BFCardView::~BFCardView(BFCardView *this)

{
                    /* WARNING: Could not recover jumptable at 0x00277fdc. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00277fe0 + 0x277fdc))(this + -0x1ac);
  return;
}



/* ===== ~BFCardView @ 00277fe4 ===== */
/* signature: undefined __thiscall ~BFCardView(BFCardView * this) */

/* non-virtual thunk to BFCardView::~BFCardView() */

void __thiscall BFCardView::~BFCardView(BFCardView *this)

{
                    /* WARNING: Could not recover jumptable at 0x00277ff0. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00277ff4 + 0x277ff0))(this + -0xe4);
  return;
}



/* ===== ~BFCardView @ 00277ff8 ===== */
/* signature: undefined __thiscall ~BFCardView(BFCardView * this) */

/* BFCardView::~BFCardView() */

BFCardView * __thiscall BFCardView::~BFCardView(BFCardView *this)

{
  int iVar1;
  
  iVar1 = *(int *)(DAT_0027803c + 0x278002);
  *(int *)this = iVar1 + 8;
  *(int *)(this + 0xe4) = iVar1 + 0x228;
  *(int *)(this + 0xe8) = iVar1 + 600;
  *(int *)(this + 0xec) = iVar1 + 0x264;
  *(int *)(this + 0x1ac) = iVar1 + 0x274;
  cocos2d::extension::CCTableView::~CCTableView((CCTableView *)this);
  return this;
}



/* ===== ~BFCardView @ 00278040 ===== */
/* signature: undefined __thiscall ~BFCardView(BFCardView * this) */

/* non-virtual thunk to BFCardView::~BFCardView() */

void __thiscall BFCardView::~BFCardView(BFCardView *this)

{
                    /* WARNING: Could not recover jumptable at 0x0027804c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00278050 + 0x27804c))(this + -0x1ac);
  return;
}



/* ===== ~BFCardView @ 00278054 ===== */
/* signature: undefined __thiscall ~BFCardView(BFCardView * this) */

/* non-virtual thunk to BFCardView::~BFCardView() */

void __thiscall BFCardView::~BFCardView(BFCardView *this)

{
                    /* WARNING: Could not recover jumptable at 0x00278060. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00278064 + 0x278060))(this + -0xe4);
  return;
}



/* ===== ~BFCardView @ 00278068 ===== */
/* signature: undefined __thiscall ~BFCardView(BFCardView * this) */

/* BFCardView::~BFCardView() */

BFCardView * __thiscall BFCardView::~BFCardView(BFCardView *this)

{
  ~BFCardView(this);
  operator_delete(this);
  return this;
}



/* ===== ~BFControlSlider @ 002780d8 ===== */
/* signature: undefined __thiscall ~BFControlSlider(BFControlSlider * this) */

/* non-virtual thunk to BFControlSlider::~BFControlSlider() */

void __thiscall BFControlSlider::~BFControlSlider(BFControlSlider *this)

{
                    /* WARNING: Could not recover jumptable at 0x002780e4. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_002780e8 + 0x2780e4))(this + -0xe4);
  return;
}



/* ===== ~BFControlSlider @ 002780ec ===== */
/* signature: undefined __thiscall ~BFControlSlider(BFControlSlider * this) */

/* BFControlSlider::~BFControlSlider() */

BFControlSlider * __thiscall BFControlSlider::~BFControlSlider(BFControlSlider *this)

{
  int iVar1;
  
  iVar1 = *(int *)(DAT_0027812c + 0x2780f6);
  *(int *)this = iVar1 + 8;
  *(int *)(this + 0xe4) = iVar1 + 0x2c0;
  *(int *)(this + 0xe8) = iVar1 + 0x2f0;
  *(int *)(this + 0xec) = iVar1 + 0x2fc;
  *(int *)(this + 0x108) = iVar1 + 0x30c;
  cocos2d::extension::CCControlSlider::~CCControlSlider((CCControlSlider *)this);
  return this;
}



/* ===== ~BFControlSlider @ 00278130 ===== */
/* signature: undefined __thiscall ~BFControlSlider(BFControlSlider * this) */

/* non-virtual thunk to BFControlSlider::~BFControlSlider() */

void __thiscall BFControlSlider::~BFControlSlider(BFControlSlider *this)

{
                    /* WARNING: Could not recover jumptable at 0x0027813c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00278140 + 0x27813c))(this + -0xe4);
  return;
}



/* ===== ~BFControlSlider @ 00278144 ===== */
/* signature: undefined __thiscall ~BFControlSlider(BFControlSlider * this) */

/* BFControlSlider::~BFControlSlider() */

BFControlSlider * __thiscall BFControlSlider::~BFControlSlider(BFControlSlider *this)

{
  ~BFControlSlider(this);
  operator_delete(this);
  return this;
}



/* ===== ~BFSortTableWidget @ 00279860 ===== */
/* signature: undefined __thiscall ~BFSortTableWidget(BFSortTableWidget * this) */

/* non-virtual thunk to BFSortTableWidget::~BFSortTableWidget() */

void __thiscall BFSortTableWidget::~BFSortTableWidget(BFSortTableWidget *this)

{
                    /* WARNING: Could not recover jumptable at 0x0027986c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279870 + 0x27986c))(this + -0x10c);
  return;
}



/* ===== ~BFSortTableWidget @ 00279874 ===== */
/* signature: undefined __thiscall ~BFSortTableWidget(BFSortTableWidget * this) */

/* non-virtual thunk to BFSortTableWidget::~BFSortTableWidget() */

void __thiscall BFSortTableWidget::~BFSortTableWidget(BFSortTableWidget *this)

{
                    /* WARNING: Could not recover jumptable at 0x00279880. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279884 + 0x279880))(this + -0x108);
  return;
}



/* ===== ~BFSortTableWidget @ 00279888 ===== */
/* signature: undefined __thiscall ~BFSortTableWidget(BFSortTableWidget * this) */

/* non-virtual thunk to BFSortTableWidget::~BFSortTableWidget() */

void __thiscall BFSortTableWidget::~BFSortTableWidget(BFSortTableWidget *this)

{
                    /* WARNING: Could not recover jumptable at 0x00279894. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279898 + 0x279894))(this + -0xe4);
  return;
}



/* ===== ~BFSortTableWidget @ 0027989c ===== */
/* signature: undefined __thiscall ~BFSortTableWidget(BFSortTableWidget * this) */

/* BFSortTableWidget::~BFSortTableWidget() */

BFSortTableWidget * __thiscall BFSortTableWidget::~BFSortTableWidget(BFSortTableWidget *this)

{
  int iVar1;
  int iVar2;
  int iVar3;
  
  iVar2 = DAT_00279930;
  iVar1 = *(int *)(DAT_0027992c + 0x2798a8);
  *(int *)this = iVar1 + 8;
  *(int *)(this + 0xe4) = iVar1 + 0x228;
  *(int *)(this + 0xe8) = iVar1 + 600;
  *(int *)(this + 0xec) = iVar1 + 0x264;
  iVar3 = DAT_00279934;
  *(int *)(this + 0x108) = iVar1 + 0x274;
  *(int *)(this + 0x10c) = iVar1 + 0x29c;
  iVar2 = *(int *)(iVar2 + 0x2798e4);
  iVar3 = *(int *)(iVar3 + 0x2798e6);
  if (*(CCObject **)(this + 0x110) != (CCObject *)0x0) {
    cocos2d::CCObject::release(*(CCObject **)(this + 0x110));
    *(undefined4 *)(this + 0x110) = 0;
  }
  *(int *)(this + 0x10c) = iVar2 + 8;
  *(int *)(this + 0x108) = iVar3 + 8;
  cocos2d::CCLayer::~CCLayer((CCLayer *)this);
  return this;
}



/* ===== ~BFSortTableWidget @ 00279938 ===== */
/* signature: undefined __thiscall ~BFSortTableWidget(BFSortTableWidget * this) */

/* non-virtual thunk to BFSortTableWidget::~BFSortTableWidget() */

void __thiscall BFSortTableWidget::~BFSortTableWidget(BFSortTableWidget *this)

{
                    /* WARNING: Could not recover jumptable at 0x00279944. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279948 + 0x279944))(this + -0x10c);
  return;
}



/* ===== ~BFSortTableWidget @ 0027994c ===== */
/* signature: undefined __thiscall ~BFSortTableWidget(BFSortTableWidget * this) */

/* non-virtual thunk to BFSortTableWidget::~BFSortTableWidget() */

void __thiscall BFSortTableWidget::~BFSortTableWidget(BFSortTableWidget *this)

{
                    /* WARNING: Could not recover jumptable at 0x00279958. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_0027995c + 0x279958))(this + -0x108);
  return;
}



/* ===== ~BFSortTableWidget @ 00279960 ===== */
/* signature: undefined __thiscall ~BFSortTableWidget(BFSortTableWidget * this) */

/* non-virtual thunk to BFSortTableWidget::~BFSortTableWidget() */

void __thiscall BFSortTableWidget::~BFSortTableWidget(BFSortTableWidget *this)

{
                    /* WARNING: Could not recover jumptable at 0x0027996c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00279970 + 0x27996c))(this + -0xe4);
  return;
}



/* ===== ~BFSortTableWidget @ 00279974 ===== */
/* signature: undefined __thiscall ~BFSortTableWidget(BFSortTableWidget * this) */

/* BFSortTableWidget::~BFSortTableWidget() */

BFSortTableWidget * __thiscall BFSortTableWidget::~BFSortTableWidget(BFSortTableWidget *this)

{
  ~BFSortTableWidget(this);
  operator_delete(this);
  return this;
}



/* ===== ~BFWebView @ 00279c6c ===== */
/* signature: undefined __thiscall ~BFWebView(BFWebView * this) */

/* BFWebView::~BFWebView() */

undefined8 __thiscall BFWebView::~BFWebView(BFWebView *this)

{
  CCObject *this_00;
  
  *(int *)this = *(int *)(DAT_00279cb8 + 0x279c78) + 8;
  this_00 = *(CCObject **)(this + 0xe4);
  if (this_00 != (CCObject *)0x0) {
    cocos2d::CCObject::release(this_00);
    *(undefined4 *)(this + 0xe4) = 0;
  }
  if (this[0xec] != (BFWebView)0x0) {
    cocos2d::CCNode::unschedule((_func_void_float *)this);
  }
  cocos2d::CCNode::~CCNode((CCNode *)this);
  return CONCAT44(this,this);
}



/* ===== ~BFWebView @ 00279cc0 ===== */
/* signature: undefined __thiscall ~BFWebView(BFWebView * this) */

/* BFWebView::~BFWebView() */

BFWebView * __thiscall BFWebView::~BFWebView(BFWebView *this)

{
  ~BFWebView(this);
  operator_delete(this);
  return this;
}



/* ===== ~BFWebViewImp @ 00269678 ===== */
/* signature: undefined __thiscall ~BFWebViewImp(BFWebViewImp * this) */

/* BFWebViewImp::~BFWebViewImp() */

BFWebViewImp * __thiscall BFWebViewImp::~BFWebViewImp(BFWebViewImp *this)

{
  *(int *)this = *(int *)(DAT_00269694 + 0x269682) + 8;
  *(undefined4 *)(this + 0x14) = 0;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}



/* ===== ~BFWebViewImp @ 00269698 ===== */
/* signature: undefined __thiscall ~BFWebViewImp(BFWebViewImp * this) */

/* BFWebViewImp::~BFWebViewImp() */

BFWebViewImp * __thiscall BFWebViewImp::~BFWebViewImp(BFWebViewImp *this)

{
  ~BFWebViewImp(this);
  operator_delete(this);
  return this;
}



/* ===== ~JSB_BFWebViewDelegate @ 0027391c ===== */
/* signature: undefined __thiscall ~JSB_BFWebViewDelegate(JSB_BFWebViewDelegate * this) */

/* JSB_BFWebViewDelegate::~JSB_BFWebViewDelegate() */

JSB_BFWebViewDelegate * __thiscall
JSB_BFWebViewDelegate::~JSB_BFWebViewDelegate(JSB_BFWebViewDelegate *this)

{
  int iVar1;
  
  iVar1 = *(int *)(DAT_00273958 + 0x273926);
  *(int *)(this + 0x14) = iVar1 + 0x34;
  *(int *)this = iVar1 + 8;
  if (this[0x1c] != (JSB_BFWebViewDelegate)0x0) {
    iVar1 = ScriptingCore::getInstance();
    JS_RemoveObjectRoot(*(JSContext **)(iVar1 + 8),(JSObject **)(this + 0x18));
  }
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}



/* ===== ~JSB_BFWebViewDelegate @ 0027395c ===== */
/* signature: undefined __thiscall ~JSB_BFWebViewDelegate(JSB_BFWebViewDelegate * this) */

/* JSB_BFWebViewDelegate::~JSB_BFWebViewDelegate() */

JSB_BFWebViewDelegate * __thiscall
JSB_BFWebViewDelegate::~JSB_BFWebViewDelegate(JSB_BFWebViewDelegate *this)

{
  ~JSB_BFWebViewDelegate(this);
  operator_delete(this);
  return this;
}



/* ===== ~JSB_XS_BFCardViewDelegate @ 00273a00 ===== */
/* signature: undefined __thiscall ~JSB_XS_BFCardViewDelegate(JSB_XS_BFCardViewDelegate * this) */

/* non-virtual thunk to JSB_XS_BFCardViewDelegate::~JSB_XS_BFCardViewDelegate() */

void __thiscall
JSB_XS_BFCardViewDelegate::~JSB_XS_BFCardViewDelegate(JSB_XS_BFCardViewDelegate *this)

{
                    /* WARNING: Could not recover jumptable at 0x00273a0c. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00273a10 + 0x273a0c))(this + -0x14);
  return;
}



/* ===== ~JSB_XS_BFCardViewDelegate @ 00273a14 ===== */
/* signature: undefined __thiscall ~JSB_XS_BFCardViewDelegate(JSB_XS_BFCardViewDelegate * this) */

/* JSB_XS_BFCardViewDelegate::~JSB_XS_BFCardViewDelegate() */

JSB_XS_BFCardViewDelegate * __thiscall
JSB_XS_BFCardViewDelegate::~JSB_XS_BFCardViewDelegate(JSB_XS_BFCardViewDelegate *this)

{
  int iVar1;
  int iVar2;
  
  iVar1 = *(int *)(DAT_00273a60 + 0x273a20);
  iVar2 = *(int *)(DAT_00273a64 + 0x273a24);
  *(int *)(this + 0x14) = iVar1 + 0x2c;
  *(int *)this = iVar1 + 8;
  if (this[0x1c] != (JSB_XS_BFCardViewDelegate)0x0) {
    iVar1 = ScriptingCore::getInstance();
    JS_RemoveObjectRoot(*(JSContext **)(iVar1 + 8),(JSObject **)(this + 0x18));
  }
  *(int *)(this + 0x14) = iVar2 + 8;
  cocos2d::CCObject::~CCObject((CCObject *)this);
  return this;
}



/* ===== ~JSB_XS_BFCardViewDelegate @ 00273a68 ===== */
/* signature: undefined __thiscall ~JSB_XS_BFCardViewDelegate(JSB_XS_BFCardViewDelegate * this) */

/* non-virtual thunk to JSB_XS_BFCardViewDelegate::~JSB_XS_BFCardViewDelegate() */

void __thiscall
JSB_XS_BFCardViewDelegate::~JSB_XS_BFCardViewDelegate(JSB_XS_BFCardViewDelegate *this)

{
                    /* WARNING: Could not recover jumptable at 0x00273a74. Too many branches */
                    /* WARNING: Treating indirect jump as call */
  (*(code *)(DAT_00273a78 + 0x273a74))(this + -0x14);
  return;
}



/* ===== ~JSB_XS_BFCardViewDelegate @ 00273a7c ===== */
/* signature: undefined __thiscall ~JSB_XS_BFCardViewDelegate(JSB_XS_BFCardViewDelegate * this) */

/* JSB_XS_BFCardViewDelegate::~JSB_XS_BFCardViewDelegate() */

JSB_XS_BFCardViewDelegate * __thiscall
JSB_XS_BFCardViewDelegate::~JSB_XS_BFCardViewDelegate(JSB_XS_BFCardViewDelegate *this)

{
  ~JSB_XS_BFCardViewDelegate(this);
  operator_delete(this);
  return this;
}


