.class public Lcom/unity3d/ads/api/Resolve;
.super Ljava/lang/Object;
.source "Resolve.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .locals 2
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    new-instance v0, Lcom/unity3d/ads/api/Resolve$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/Resolve$1;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/unity3d/ads/request/WebRequestThread;->resolve(Ljava/lang/String;Lcom/unity3d/ads/request/IResolveHostListener;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v0

    invoke-virtual {p2, p1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/unity3d/ads/request/ResolveHostError;->INVALID_HOST:Lcom/unity3d/ads/request/ResolveHostError;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {p2, p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
