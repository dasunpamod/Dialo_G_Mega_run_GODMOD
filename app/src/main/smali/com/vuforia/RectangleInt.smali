.class public Lcom/vuforia/RectangleInt;
.super Lcom/vuforia/Area;
.source "RectangleInt.java"


# instance fields
.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/vuforia/VuforiaJNI;->new_RectangleInt__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vuforia/RectangleInt;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/vuforia/VuforiaJNI;->new_RectangleInt__SWIG_2(IIII)J

    move-result-wide p1

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/vuforia/RectangleInt;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 2

    invoke-static {p1, p2}, Lcom/vuforia/VuforiaJNI;->RectangleInt_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/vuforia/Area;-><init>(JZ)V

    iput-wide p1, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/vuforia/RectangleInt;)V
    .locals 2

    invoke-static {p1}, Lcom/vuforia/RectangleInt;->getCPtr(Lcom/vuforia/RectangleInt;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/vuforia/VuforiaJNI;->new_RectangleInt__SWIG_1(JLcom/vuforia/RectangleInt;)J

    move-result-wide v0

    const/4 p1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/vuforia/RectangleInt;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/vuforia/RectangleInt;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method protected declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v0, p0, Lcom/vuforia/RectangleInt;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vuforia/RectangleInt;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/vuforia/VuforiaJNI;->delete_RectangleInt(J)V

    :cond_0
    iput-wide v2, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    :cond_1
    invoke-super {p0}, Lcom/vuforia/Area;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lcom/vuforia/RectangleInt;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/vuforia/RectangleInt;

    iget-wide v2, p1, Lcom/vuforia/RectangleInt;->swigCPtr:J

    iget-wide v4, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/vuforia/RectangleInt;->delete()V

    return-void
.end method

.method public getAreaSize()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RectangleInt_getAreaSize(JLcom/vuforia/RectangleInt;)I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RectangleInt_getHeight(JLcom/vuforia/RectangleInt;)I

    move-result v0

    return v0
.end method

.method public getLeftTopX()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RectangleInt_getLeftTopX(JLcom/vuforia/RectangleInt;)I

    move-result v0

    return v0
.end method

.method public getLeftTopY()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RectangleInt_getLeftTopY(JLcom/vuforia/RectangleInt;)I

    move-result v0

    return v0
.end method

.method public getRightBottomX()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RectangleInt_getRightBottomX(JLcom/vuforia/RectangleInt;)I

    move-result v0

    return v0
.end method

.method public getRightBottomY()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RectangleInt_getRightBottomY(JLcom/vuforia/RectangleInt;)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RectangleInt_getType(JLcom/vuforia/RectangleInt;)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 2

    iget-wide v0, p0, Lcom/vuforia/RectangleInt;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/vuforia/VuforiaJNI;->RectangleInt_getWidth(JLcom/vuforia/RectangleInt;)I

    move-result v0

    return v0
.end method
