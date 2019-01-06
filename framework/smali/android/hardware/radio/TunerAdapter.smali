.class Landroid/hardware/radio/TunerAdapter;
.super Landroid/hardware/radio/RadioTuner;
.source "TunerAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BroadcastRadio.TunerAdapter"


# instance fields
.field private mBand:I

.field private mIsClosed:Z

.field private final mTuner:Landroid/hardware/radio/ITuner;


# direct methods
.method constructor <init>(Landroid/hardware/radio/ITuner;I)V
    .registers 4

    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_e
    iput-object p1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    iput p2, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    return-void
.end method


# virtual methods
.method public cancel()I
    .registers 5

    :try_start_0
    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v2}, Landroid/hardware/radio/ITuner;->cancel()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v2, 0x0

    return v2

    :catch_7
    move-exception v0

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "service died"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x20

    return v2

    :catch_14
    move-exception v1

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "Can\'t cancel"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x26

    return v2
.end method

.method public cancelAnnouncement()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->cancelAnnouncement()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .registers 5

    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    monitor-enter v2

    :try_start_3
    iget-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z

    if-eqz v1, :cond_12

    const-string/jumbo v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "Tuner is already closed"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_1c

    monitor-exit v2

    return-void

    :cond_12
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Landroid/hardware/radio/TunerAdapter;->mIsClosed:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_1c

    monitor-exit v2

    :try_start_16
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->close()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1f

    :goto_1b
    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_1f
    move-exception v0

    const-string/jumbo v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "Exception trying to close tuner"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The argument must be an array of length 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a

    return v3

    :catch_1a
    move-exception v0

    const-string/jumbo v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1
.end method

.method public getMetadataImage(I)Landroid/graphics/Bitmap;
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->getImage(I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMute()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->isMuted()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    return v1
.end method

.method public getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    array-length v1, p1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_10

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The argument must be an array of length 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->getProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_19} :catch_1a

    return v3

    :catch_1a
    move-exception v0

    const-string/jumbo v1, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v2, "service died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, -0x20

    return v1
.end method

.method public getProgramList(Ljava/util/Map;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->getProgramList(Ljava/util/Map;)Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasControl()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->isClosed()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_9

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isAnalogForced()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->isAnalogForced()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAntennaConnected()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->isAntennaConnected()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public scan(IZ)I
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_2
    iget-object v4, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    if-ne p1, v2, :cond_a

    :goto_6
    invoke-interface {v4, v2, p2}, Landroid/hardware/radio/ITuner;->scan(ZZ)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_9} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_c

    return v3

    :cond_a
    move v2, v3

    goto :goto_6

    :catch_c
    move-exception v0

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "service died"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x20

    return v2

    :catch_19
    move-exception v1

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "Can\'t scan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x26

    return v2
.end method

.method public setAnalogForced(Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->setAnalogForced(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v2, p1}, Landroid/hardware/radio/ITuner;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$BandConfig;->getType()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    const/4 v2, 0x0

    return v2

    :catch_d
    move-exception v0

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "service died"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x20

    return v2

    :catch_1a
    move-exception v1

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "Can\'t set configuration"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x16

    return v2
.end method

.method public setMute(Z)I
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v2, p1}, Landroid/hardware/radio/ITuner;->setMuted(Z)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_5} :catch_14
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v2, 0x0

    return v2

    :catch_7
    move-exception v0

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "service died"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x20

    return v2

    :catch_14
    move-exception v1

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "Can\'t set muted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/high16 v2, -0x80000000

    return v2
.end method

.method public startBackgroundScan()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1}, Landroid/hardware/radio/ITuner;->startBackgroundScan()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public step(IZ)I
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_2
    iget-object v4, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    if-ne p1, v2, :cond_a

    :goto_6
    invoke-interface {v4, v2, p2}, Landroid/hardware/radio/ITuner;->step(ZZ)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_9} :catch_19
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_c

    return v3

    :cond_a
    move v2, v3

    goto :goto_6

    :catch_c
    move-exception v0

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "service died"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x20

    return v2

    :catch_19
    move-exception v1

    const-string/jumbo v2, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v3, "Can\'t step"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v2, -0x26

    return v2
.end method

.method public tune(II)I
    .registers 8

    :try_start_0
    iget-object v3, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    iget v4, p0, Landroid/hardware/radio/TunerAdapter;->mBand:I

    invoke-static {v4, p1, p2}, Landroid/hardware/radio/ProgramSelector;->createAmFmSelector(III)Landroid/hardware/radio/ProgramSelector;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_b
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_b} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_1a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    const/4 v3, 0x0

    return v3

    :catch_d
    move-exception v0

    const-string/jumbo v3, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v4, "service died"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, -0x20

    return v3

    :catch_1a
    move-exception v1

    const-string/jumbo v3, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v4, "Can\'t tune"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, -0x16

    return v3

    :catch_27
    move-exception v2

    const-string/jumbo v3, "BroadcastRadio.TunerAdapter"

    const-string/jumbo v4, "Can\'t tune"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v3, -0x26

    return v3
.end method

.method public tune(Landroid/hardware/radio/ProgramSelector;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/hardware/radio/TunerAdapter;->mTuner:Landroid/hardware/radio/ITuner;

    invoke-interface {v1, p1}, Landroid/hardware/radio/ITuner;->tune(Landroid/hardware/radio/ProgramSelector;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "service died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
