.class public abstract Lcom/android/server/fingerprint/EnrollClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "EnrollClient.java"


# static fields
.field private static final ENROLLMENT_TIMEOUT_MS:I = 0xea60

.field private static final MS_PER_SEC:J = 0x3e8L


# instance fields
.field private mCryptoToken:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;)V
    .registers 23

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v2 .. v11}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    move-object/from16 v0, p8

    array-length v2, v0

    move-object/from16 v0, p8

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    return-void
.end method

.method private sendEnrollResult(III)Z
    .registers 13

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v1

    if-nez v1, :cond_9

    return v7

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->vibrateSuccess()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xfb

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    :try_start_15
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getHalDeviceId()J

    move-result-wide v2

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onEnrollResult(JIII)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1f} :catch_25

    if-nez p3, :cond_23

    move v2, v7

    :goto_22
    return v2

    :cond_23
    move v2, v8

    goto :goto_22

    :catch_25
    move-exception v0

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to notify EnrollResult:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method


# virtual methods
.method public onAuthenticated(II)Z
    .registers 5

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onAuthenticated() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnrollResult(III)Z
    .registers 7

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v0

    if-eqz v0, :cond_24

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "TargetUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    if-nez p3, :cond_35

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getTargetUserId()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    :cond_35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/fingerprint/EnrollClient;->sendEnrollResult(III)Z

    move-result v0

    return v0
.end method

.method public onEnumerationResult(III)Z
    .registers 6

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onRemoved(III)Z
    .registers 6

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for enroll!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public start()I
    .registers 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "enroll: no fingerprint HAL!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    return v4

    :cond_12
    const/16 v3, 0x3c

    :try_start_14
    iget-object v4, p0, Lcom/android/server/fingerprint/EnrollClient;->mCryptoToken:[B

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getGroupId()I

    move-result v5

    const/16 v6, 0x3c

    invoke-interface {v0, v4, v5, v6}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->enroll([BII)I

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startEnroll failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "fingerprintd_enroll_start_error"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_4b} :catch_4c

    return v2

    :catch_4c
    move-exception v1

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "startEnroll failed"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_56
    return v7
.end method

.method public stop(Z)I
    .registers 9

    const/4 v6, 0x0

    iget-boolean v3, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    if-eqz v3, :cond_f

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopEnroll: already cancelled!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_f
    invoke-virtual {p0}, Lcom/android/server/fingerprint/EnrollClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_20

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "stopEnrollment: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    return v3

    :cond_20
    :try_start_20
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v2

    if-eqz v2, :cond_4b

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startEnrollCancel failed, result = "

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

    const-string/jumbo v4, "stopEnrollment failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4b
    if-eqz p1, :cond_51

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v6}, Lcom/android/server/fingerprint/EnrollClient;->onError(II)Z

    :cond_51
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/fingerprint/EnrollClient;->mAlreadyCancelled:Z

    return v6
.end method
