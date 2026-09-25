package com.bf.sgscq;

import android.os.Bundle;
import org.cocos2dx.lib.Cocos2dxActivity;

/** Minimal channel-free Cocos entry point. */
public final class SanguoshaDemo extends Cocos2dxActivity {
    static {
        System.loadLibrary("cocos2djs");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
}
