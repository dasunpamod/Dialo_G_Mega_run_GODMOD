.class public Lcom/unity3d/ads/api/Connectivity;
.super Ljava/lang/Object;
.source "Connectivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setConnectionMonitoring(Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 0
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->setConnectionMonitoring(Z)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {p1, p0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    return-void
.end method
