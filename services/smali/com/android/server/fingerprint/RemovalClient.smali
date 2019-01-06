.class public abstract Lcom/android/server/fingerprint/RemovalClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "RemovalClient.java"


# instance fields
.field private mFingerId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V
    .registers 23

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    move/from16 v0, p6

    iput v0, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    return-void
.end method

.method private sendRemoved(III)Z
    .registers 12

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v1

    if-eqz v1, :cond_11

    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getHalDeviceId()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onRemoved(JIII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_15

    :cond_11
    :goto_11
    if-nez p3, :cond_20

    const/4 v2, 0x1

    :goto_14
    return v2

    :catch_15
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to notify Removed:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :cond_20
    move v2, v7

    goto :goto_14
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .registers 5

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 6

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for remove!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(III)Z
    .registers 7

    if-eqz p1, :cond_11

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    :cond_11
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/fingerprint/RemovalClient;->sendRemoved(III)Z

    move-result v0

    return v0
.end method

.method public start()I
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getGroupId()I

    move-result v3

    iget v4, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-interface {v0, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->remove(II)I

    move-result v2

    if-eqz v2, :cond_52

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRemove with id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/fingerprint/RemovalClient;->mFingerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "fingerprintd_remove_start_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/fingerprint/RemovalClient;->onError(II)Z
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_47} :catch_48

    return v2

    :catch_48
    move-exception v1

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "startRemove failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_52
    return v6
.end method

.method public stop(Z)I
    .registers 10

    const/4 v7, 0x3

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/server/fingerprint/RemovalClient;->mAlreadyCancelled:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopRemove: already cancelled!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_20

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopRemoval: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_20
    :try_start_20
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v2

    if-eqz v2, :cond_41

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopRemoval failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_41
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/RemovalClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is no longer removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_66} :catch_6a

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/fingerprint/RemovalClient;->mAlreadyCancelled:Z

    return v6

    :catch_6a
    move-exception v1

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopRemoval failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method
