.class final Lcom/unity3d/ads/api/Purchasing$1;
.super Ljava/lang/Object;
.source "Purchasing.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/Purchasing;->initiatePurchasingCommand(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$eventString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/ads/api/Purchasing$1;->val$eventString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/unity3d/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unity3d/ads/api/Purchasing;->purchaseInterface:Lcom/unity3d/ads/purchasing/IPurchasing;

    iget-object v1, p0, Lcom/unity3d/ads/api/Purchasing$1;->val$eventString:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/unity3d/ads/purchasing/IPurchasing;->onPurchasingCommand(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
