.class final Lcom/google/android/gms/internal/measurement/zzal;
.super Lcom/google/android/gms/internal/measurement/zzz$zzb;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.0.1"


# instance fields
.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzgo;

.field private final synthetic zzd:Lcom/google/android/gms/internal/measurement/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzz;Lcom/google/android/gms/measurement/internal/zzgo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzd:Lcom/google/android/gms/internal/measurement/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzc:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzd:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzz;->zzc(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/measurement/zzz$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zzal;->zzc:Lcom/google/android/gms/measurement/internal/zzgo;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzz$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzgo;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/measurement/zzk;->setEventInterceptor(Lcom/google/android/gms/internal/measurement/zzq;)V

    return-void
.end method
