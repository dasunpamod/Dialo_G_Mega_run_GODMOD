.class public Lcom/vuforia/VirtualButton;
.super Ljava/lang/Object;
.source "VirtualButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuforia/VirtualButton$SENSITIVITY;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/vuforia/VirtualButton;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/VirtualButton;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method protected declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/vuforia/VirtualButton;->swigCMemOwn:Z

    if-nez v0, :cond_0

    iput-wide v2, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/VirtualButton;->swigCMemOwn:Z

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/vuforia/VirtualButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vuforia/VirtualButton;

    iget-wide v2, p1, Lcom/vuforia/VirtualButton;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getArea()Lcom/vuforia/Area;
    .locals 5

    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VirtualButton_getArea(JLcom/vuforia/VirtualButton;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v2, 0x0

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    new-instance v3, Lcom/vuforia/Area;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, Lcom/vuforia/Area;-><init>(JZ)V

    invoke-virtual {v3}, Lcom/vuforia/Area;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    return-object v2

    :pswitch_0
    new-instance v2, Lcom/vuforia/RectangleInt;

    invoke-direct {v2, v0, v1, v4}, Lcom/vuforia/RectangleInt;-><init>(JZ)V

    return-object v2

    :pswitch_1
    new-instance v2, Lcom/vuforia/Rectangle;

    invoke-direct {v2, v0, v1, v4}, Lcom/vuforia/Rectangle;-><init>(JZ)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getID()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VirtualButton_getID(JLcom/vuforia/VirtualButton;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VirtualButton_getName(JLcom/vuforia/VirtualButton;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->VirtualButton_isEnabled(JLcom/vuforia/VirtualButton;)Z

    move-result v0

    return v0
.end method

.method public setArea(Lcom/vuforia/Area;)Z
    .locals 6

    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {p1}, Lcom/vuforia/Area;->getCPtr(Lcom/vuforia/Area;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/vuforia/VuforiaJNI;->VirtualButton_setArea(JLcom/vuforia/VirtualButton;JLcom/vuforia/Area;)Z

    move-result p1

    return p1
.end method

.method public setEnabled(Z)Z
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->VirtualButton_setEnabled(JLcom/vuforia/VirtualButton;Z)Z

    move-result p1

    return p1
.end method

.method public setSensitivity(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/VirtualButton;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/vuforia/VuforiaJNI;->VirtualButton_setSensitivity(JLcom/vuforia/VirtualButton;I)Z

    move-result p1

    return p1
.end method
