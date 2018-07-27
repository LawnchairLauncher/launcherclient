package ch.deletescape.lawnchair.launcherclient;

import ch.deletescape.lawnchair.launcherclient.WindowLayoutParams;
import ch.deletescape.lawnchair.launcherclient.ILauncherClientProxyCallback;
import android.view.WindowManager.LayoutParams;
import com.google.android.libraries.launcherclient.ILauncherOverlayCallback;

interface ILauncherClientProxy {

    oneway void startScroll();

    oneway void onScroll(in float progress);

    oneway void endScroll();

    oneway void windowAttached(in WindowLayoutParams lp, in int flags);

    oneway void windowDetached(in boolean isChangingConfigurations);

    oneway void closeOverlay(in int flags);

    oneway void onPause();

    oneway void onResume();

    oneway void openOverlay(in int flags);

    oneway void requestVoiceDetection(in boolean start);

    String getVoiceSearchLanguage();

    boolean isVoiceDetectionRunning();

    boolean hasOverlayContent();

    oneway void windowAttached2(in Bundle bundle);

    oneway void setActivityState(in int flags);

    boolean startSearch(in byte[] data, in Bundle bundle);

    void onQsbClick(inout Intent intent);

    int init(ILauncherClientProxyCallback callback);

    int reconnect();
}
