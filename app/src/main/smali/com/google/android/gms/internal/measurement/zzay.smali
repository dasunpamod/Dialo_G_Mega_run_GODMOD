.class final Lcom/google/android/gms/internal/measurement/zzay;
.super Lcom/google/android/gms/internal/measurement/zzz$zzb;
.source "com.google.android.gms:play-services-measurement-sdk-api@@17.0.1"


# instance fields
.field private final synthetic zzc:Ljava/lang/Long;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Ljava/lang/String;

.field private final synthetic zzf:Landroid/os/Bundle;

.field private final synthetic zzg:Z

.field private final synthetic zzh:Z

.field private final synthetic zzi:Lcom/google/android/gms/internal/measurement/zzz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/measurement/zzz;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzi:Lcom/google/android/gms/internal/measurement/zzz;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzc:Ljava/lang/Long;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/measurement/zzay;->zze:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzf:Landroid/os/Bundle;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzg:Z

    iput-boolean p7, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzh:Z

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzz$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzz;)V

    return-void
.end method


# virtual methods
.method final zza()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzc:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/measurement/zzay;->zza:J

    :goto_0
    move-wide v8, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzc:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzi:Lcom/google/android/gms/internal/measurement/zzz;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzz;->zzc(Lcom/google/android/gms/internal/measurement/zzz;)Lcom/google/android/gms/internal/measurement/zzk;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/zzay;->zze:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzf:Landroid/os/Bundle;

    iget-boolean v6, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzg:Z

    iget-boolean v7, p0, Lcom/google/android/gms/internal/measurement/zzay;->zzh:Z

    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/measurement/zzk;->logEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZJ)V

    return-void
.end method
