.class abstract Lcom/google/android/gms/measurement/internal/zzjm;
.super Lcom/google/android/gms/measurement/internal/zzjn;
.source "com.google.android.gms:play-services-measurement@@17.0.1"


# instance fields
.field private zzb:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjp;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzjn;-><init>(Lcom/google/android/gms/measurement/internal/zzjp;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/measurement/internal/zzjp;->zza(Lcom/google/android/gms/measurement/internal/zzjm;)V

    return-void
.end method


# virtual methods
.method final zzaj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zzb:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final zzak()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjm;->zzaj()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final zzal()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zzb:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzjm;->zze()Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zza:Lcom/google/android/gms/measurement/internal/zzjp;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzjp;->zzp()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzjm;->zzb:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract zze()Z
.end method
