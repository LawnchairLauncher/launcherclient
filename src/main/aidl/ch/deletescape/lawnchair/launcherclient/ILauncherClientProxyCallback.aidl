package ch.deletescape.lawnchair.launcherclient;

interface ILauncherClientProxyCallback {

    oneway void overlayScrollChanged(float progress);

    oneway void overlayStatusChanged(int status);

    void onServiceConnected();

    void onServiceDisconnected();

    void onQsbResult(int resultCode);
}
