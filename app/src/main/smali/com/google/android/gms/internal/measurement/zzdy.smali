.class final Lcom/google/android/gms/internal/measurement/zzdy;
.super Lcom/google/android/gms/internal/measurement/zzef;
.source "com.google.android.gms:play-services-measurement-impl@@17.0.1"


# instance fields
.field private final zzc:I

.field private final zzd:I


# direct methods
.method constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzef;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/measurement/zzdy;->zzb(III)I

    iput p2, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzc:I

    iput p3, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(I)B
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzdv;->zza()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int v1, v0, v1

    or-int/2addr v1, p1

    if-gez v1, :cond_1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index < 0: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 v2, 0x28

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index > length: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzc:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzd:I

    return v0
.end method

.method final zzb(I)B
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzb:[B

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzc:I

    add-int/2addr v1, p1

    aget-byte p1, v0, v1

    return p1
.end method

.method protected final zze()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzdy;->zzc:I

    return v0
.end method
