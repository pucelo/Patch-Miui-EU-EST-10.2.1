.class Lcom/android/server/broadcastradio/Tuner;
.super Landroid/hardware/radio/ITuner$Stub;
.source "Tuner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadioService.Tuner"


# instance fields
.field private final mClientCallback:Landroid/hardware/radio/ITunerCallback;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mIsClosed:Z

.field private mIsMuted:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNativeContext:J

.field private mRegion:I

.field private final mTunerCallback:Lcom/android/server/broadcastradio/TunerCallback;

.field private final mWithAudio:Z


# direct methods
.method constructor <init>(Landroid/hardware/radio/ITunerCallback;IIZI)V
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/hardware/radio/ITuner$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z

    iput-boolean v2, p0, Lcom/android/server/broadcastradio/Tuner;->mIsMuted:Z

    iput-object p1, p0, Lcom/android/server/broadcastradio/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    new-instance v1, Lcom/android/server/broadcastradio/TunerCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/broadcastradio/TunerCallback;-><init>(Lcom/android/server/broadcastradio/Tuner;Landroid/hardware/radio/ITunerCallback;I)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/TunerCallback;

    iput p3, p0, Lcom/android/server/broadcastradio/Tuner;->mRegion:I

    iput-boolean p4, p0, Lcom/android/server/broadcastradio/Tuner;->mWithAudio:Z

    invoke-direct {p0, p2, p4, p5}, Lcom/android/server/broadcastradio/Tuner;->nativeInit(IZI)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    new-instance v1, Lcom/android/server/broadcastradio/-$Lambda$B3g7x97xEp_kpgRrmZTNuVQljJA;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/-$Lambda$B3g7x97xEp_kpgRrmZTNuVQljJA;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    :try_start_29
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v1}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/broadcastradio/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/Tuner;->close()V

    goto :goto_35
.end method

.method private checkNotClosedLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Tuner is closed, no further operations are allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method private native nativeCancel(J)V
.end method

.method private native nativeCancelAnnouncement(J)V
.end method

.method private native nativeClose(J)V
.end method

.method private native nativeFinalize(J)V
.end method

.method private native nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;
.end method

.method private native nativeGetImage(JI)[B
.end method

.method private native nativeGetProgramInformation(J)Landroid/hardware/radio/RadioManager$ProgramInfo;
.end method

.method private native nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeInit(IZI)J
.end method

.method private native nativeIsAnalogForced(J)Z
.end method

.method private native nativeIsAntennaConnected(J)Z
.end method

.method private native nativeScan(JZZ)V
.end method

.method private native nativeSetAnalogForced(JZ)V
.end method

.method private native nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V
.end method

.method private native nativeSetMuted(JZ)V
.end method

.method private native nativeStartBackgroundScan(J)Z
.end method

.method private native nativeStep(JZZ)V
.end method

.method private native nativeTune(JLandroid/hardware/radio/ProgramSelector;)V
.end method


# virtual methods
.method synthetic -com_android_server_broadcastradio_Tuner-mthref-0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/broadcastradio/Tuner;->close()V

    return-void
.end method

.method public cancel()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeCancel(J)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelAnnouncement()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeCancelAnnouncement(J)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public close()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_24

    if-eqz v0, :cond_9

    monitor-exit v1

    return-void

    :cond_9
    const/4 v0, 0x1

    :try_start_a
    iput-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z

    iget-object v0, p0, Lcom/android/server/broadcastradio/Tuner;->mTunerCallback:Lcom/android/server/broadcastradio/TunerCallback;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/TunerCallback;->detach()V

    iget-object v0, p0, Lcom/android/server/broadcastradio/Tuner;->mClientCallback:Landroid/hardware/radio/ITunerCallback;

    invoke-interface {v0}, Landroid/hardware/radio/ITunerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/broadcastradio/Tuner;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeClose(J)V
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_24

    monitor-exit v1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/broadcastradio/Tuner;->nativeFinalize(J)V

    invoke-super {p0}, Landroid/hardware/radio/ITuner$Stub;->finalize()V

    return-void
.end method

.method public getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;
    .registers 5

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    iget v0, p0, Lcom/android/server/broadcastradio/Tuner;->mRegion:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/broadcastradio/Tuner;->nativeGetConfiguration(JI)Landroid/hardware/radio/RadioManager$BandConfig;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getImage(I)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_d

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Image ID is missing"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v2, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    iget-wide v4, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeGetImage(JI)[B
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1d

    move-result-object v0

    monitor-exit v2

    if-eqz v0, :cond_1c

    array-length v1, v0

    if-nez v1, :cond_20

    :cond_1c
    return-object v6

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_20
    array-length v1, v0

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;
    .registers 5

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeGetProgramInformation(J)Landroid/hardware/radio/RadioManager$ProgramInfo;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getProgramList(Ljava/util/Map;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/radio/RadioManager$ProgramInfo;",
            ">;"
        }
    .end annotation

    move-object v1, p1

    iget-object v3, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v4, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v4, v5, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeGetProgramList(JLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1b

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Program list is not ready"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_18

    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1b
    monitor-exit v3

    return-object v0
.end method

.method public isAnalogForced()Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeIsAnalogForced(J)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isAntennaConnected()Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeIsAntennaConnected(J)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isClosed()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsClosed:Z

    return v0
.end method

.method public isMuted()Z
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mWithAudio:Z

    if-nez v0, :cond_f

    const-string/jumbo v0, "BroadcastRadioService.Tuner"

    const-string/jumbo v1, "Tuner did not request audio, pretending it was muted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_f
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_12
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsMuted:Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_19

    monitor-exit v1

    return v0

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public scan(ZZ)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/server/broadcastradio/Tuner;->nativeScan(JZZ)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAnalogForced(Z)V
    .registers 6

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeSetAnalogForced(JZ)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The argument must not be a null pointer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeSetConfiguration(JLandroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getRegion()I

    move-result v0

    iput v0, p0, Lcom/android/server/broadcastradio/Tuner;->mRegion:I
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_1e

    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMuted(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mWithAudio:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can\'t operate on mute - no audio requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/Tuner;->mIsMuted:Z
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_22

    if-ne v0, p1, :cond_19

    monitor-exit v1

    return-void

    :cond_19
    :try_start_19
    iput-boolean p1, p0, Lcom/android/server/broadcastradio/Tuner;->mIsMuted:Z

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeSetMuted(JZ)V
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_22

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public startBackgroundScan()Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/broadcastradio/Tuner;->nativeStartBackgroundScan(J)Z
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_e

    move-result v0

    monitor-exit v1

    return v0

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public step(ZZ)V
    .registers 7

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/server/broadcastradio/Tuner;->nativeStep(JZZ)V
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The argument must not be a null pointer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string/jumbo v0, "BroadcastRadioService.Tuner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tuning to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/broadcastradio/Tuner;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_28
    invoke-direct {p0}, Lcom/android/server/broadcastradio/Tuner;->checkNotClosedLocked()V

    iget-wide v2, p0, Lcom/android/server/broadcastradio/Tuner;->mNativeContext:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/broadcastradio/Tuner;->nativeTune(JLandroid/hardware/radio/ProgramSelector;)V
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_32

    monitor-exit v1

    return-void

    :catchall_32
    move-exception v0

    monitor-exit v1

    throw v0
.end method
