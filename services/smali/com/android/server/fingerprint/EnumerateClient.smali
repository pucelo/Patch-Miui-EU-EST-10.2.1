.class public abstract Lcom/android/server/fingerprint/EnumerateClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnumerateClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .registers 20

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    move/from16 v7, p6

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .registers 5

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 6

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 13

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v1

    if-nez v1, :cond_9

    return v7

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getHalDeviceId()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnumerated(JIII)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_13} :catch_17

    :goto_13
    if-nez p3, :cond_22

    move v2, v7

    :goto_16
    return v2

    :catch_17
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to notify enumerated:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_22
    move v2, v8

    goto :goto_16
.end method

.method public onRemoved(III)Z
    .registers 6

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enumerate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    :try_start_5
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enumerate()I

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start enumerate for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getTargetUserId()I

    move-result v5

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

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "fingerprintd_enum_start_error"

    invoke-static {v3, v4, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/fingerprint/EnumerateClient;->onError(II)Z
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_43} :catch_44

    return v2

    :catch_44
    move-exception v1

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "startEnumeration failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4e
    return v6
.end method

.method public stop(Z)I
    .registers 9

    const/4 v6, 0x3

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/server/fingerprint/EnumerateClient;->mAlreadyCancelled:Z

    if-eqz v3, :cond_10

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopEnumerate: already cancelled!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_10
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnumerateClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_20

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopEnumeration: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_20
    :try_start_20
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v2

    if-eqz v2, :cond_4c

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stop enumeration failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_40} :catch_41

    return v2

    :catch_41
    move-exception v1

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopEnumeration failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v6

    :cond_4c
    if-eqz p1, :cond_52

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v5}, Lcom/android/server/fingerprint/EnumerateClient;->onError(II)Z

    :cond_52
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/fingerprint/EnumerateClient;->mAlreadyCancelled:Z

    return v5
.end method
