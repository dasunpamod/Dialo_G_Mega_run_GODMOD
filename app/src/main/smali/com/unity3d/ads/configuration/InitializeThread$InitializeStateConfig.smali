.class public Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;
.super Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
.source "InitializeThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/configuration/InitializeThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitializeStateConfig"
.end annotation


# instance fields
.field private _configuration:Lcom/unity3d/ads/configuration/Configuration;

.field private _maxRetries:I

.field private _retries:I

.field private _retryDelay:I


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/configuration/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$1;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_maxRetries:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    iput-object p1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    return-void
.end method


# virtual methods
.method public execute()Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads init: load configuration from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-virtual {v0}, Lcom/unity3d/ads/configuration/Configuration;->makeRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;

    iget-object v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_configuration:Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateLoadCache;-><init>(Lcom/unity3d/ads/configuration/Configuration;)V

    return-object v0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    iget v2, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_maxRetries:I

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    iget v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retries:I

    new-instance v0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;

    iget v1, p0, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateConfig;->_retryDelay:I

    invoke-direct {v0, p0, v1}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateRetry;-><init>(Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;I)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;

    invoke-direct {v1, v0, p0}, Lcom/unity3d/ads/configuration/InitializeThread$InitializeStateNetworkError;-><init>(Ljava/lang/Exception;Lcom/unity3d/ads/configuration/InitializeThread$InitializeState;)V

    return-object v1
.end method
