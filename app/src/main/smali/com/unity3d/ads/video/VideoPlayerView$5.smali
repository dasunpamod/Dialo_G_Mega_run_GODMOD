.class Lcom/unity3d/ads/video/VideoPlayerView$5;
.super Ljava/lang/Object;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/video/VideoPlayerView;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/video/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/video/VideoPlayerView;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView$5;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/video/VideoPlayerView$5;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-static {v0, p1}, Lcom/unity3d/ads/video/VideoPlayerView;->access$102(Lcom/unity3d/ads/video/VideoPlayerView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    :cond_0
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object p1

    sget-object v0, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v1, Lcom/unity3d/ads/video/VideoPlayerEvent;->COMPLETED:Lcom/unity3d/ads/video/VideoPlayerEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/unity3d/ads/video/VideoPlayerView$5;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-static {v4}, Lcom/unity3d/ads/video/VideoPlayerView;->access$000(Lcom/unity3d/ads/video/VideoPlayerView;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p1, v0, v1, v2}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView$5;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-virtual {p1}, Lcom/unity3d/ads/video/VideoPlayerView;->stopVideoProgressTimer()V

    return-void
.end method
