package app.lawnchair.launcherclient;

import android.os.Bundle;
import app.lawnchair.launcherclient.WindowLayoutParams;
import app.lawnchair.launcherclient.ILauncherClientProxyCallback;

interface ILauncherClientProxy {

    void closeOverlay(int options);

    void endScroll();

    void onPause();

    void onResume();

    void onScroll(float progress);

    void openOverlay(int options);

    void startScroll();

    void windowAttached(inout WindowLayoutParams attrs, int options);

    void windowAttached2(inout Bundle bundle);

    void setActivityState(int activityState);

    void windowDetached(boolean isChangingConfigurations);

    void onQsbClick(inout Intent intent);

    int init(ILauncherClientProxyCallback callback);

    int reconnect();

    oneway void requestVoiceDetection(in boolean start);

    String getVoiceSearchLanguage();

    boolean isVoiceDetectionRunning();

    boolean hasOverlayContent();

    boolean startSearch(in byte[] data, in Bundle bundle);
}
