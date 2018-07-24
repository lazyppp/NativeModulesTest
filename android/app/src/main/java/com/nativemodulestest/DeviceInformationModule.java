package com.nativemodulestest;

import android.os.Build;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;


public class DeviceInformationModule extends ReactContextBaseJavaModule{
    public DeviceInformationModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }
    @Override
    public String getName() {
        return "DeviceInformation";
    }
    @ReactMethod
    public void getOSInfo(Callback callback) {
        callback.invoke("android",Build.VERSION.RELEASE);
    }
}
