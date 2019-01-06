.class public abstract Lcom/android/server/fingerprint/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field protected static final DEBUG:Z = true

.field private static final DEFAULT_SUCCESS_VIBRATION_PATTERN:[J

.field protected static final ERROR_ESRCH:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static final VIBRATE_DURATION:I = 0x3c


# instance fields
.field protected mAlreadyCancelled:Z

.field private final mContext:Landroid/content/Context;

.field private final mErrorVibrationEffect:Landroid/os/VibrationEffect;

.field private final mGroupId:I

.field private final mHalDeviceId:J

.field private final mIsRestricted:Z

.field private final mOwner:Ljava/lang/String;

.field private mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private final mSuccessVibrationEffect:Landroid/os/VibrationEffect;

.field private final mTargetUserId:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/fingerprint/ClientMonitor;->DEFAULT_SUCCESS_VIBRATION_PATTERN:[J

    return-void

    nop

    :array_a
    .array-data 8
        0x0
        0x1e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V
    .registers 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    iput-object p4, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    iput-object p5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p6, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    iput p7, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    iput-boolean p8, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    iput-object p9, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getSuccessVibrationEffect(Landroid/content/Context;)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mSuccessVibrationEffect:Landroid/os/VibrationEffect;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mErrorVibrationEffect:Landroid/os/VibrationEffect;

    if-eqz p4, :cond_26

    const/4 v1, 0x0

    :try_start_23
    invoke-interface {p4, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_26} :catch_27

    :cond_26
    :goto_26
    return-void

    :catch_27
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method

.method private static getSuccessVibrationEffect(Landroid/content/Context;)Landroid/os/VibrationEffect;
    .registers 9

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz v0, :cond_12

    array-length v3, v0

    if-nez v3, :cond_1f

    :cond_12
    sget-object v2, Lcom/android/server/fingerprint/ClientMonitor;->DEFAULT_SUCCESS_VIBRATION_PATTERN:[J

    :cond_14
    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2e

    aget-wide v4, v2, v7

    invoke-static {v4, v5, v6}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v3

    return-object v3

    :cond_1f
    array-length v3, v0

    new-array v2, v3, [J

    const/4 v1, 0x0

    :goto_23
    array-length v3, v0

    if-ge v1, v3, :cond_14

    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_2e
    invoke-static {v2, v6}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    return-void
.end method

.method public destroy()V
    .registers 7

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v1, :cond_d

    :try_start_5
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_b} :catch_10

    :goto_b
    iput-object v5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    :cond_d
    iput-object v5, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method protected finalize()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_25

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z
    :try_end_25
    .catchall {:try_start_0 .. :try_end_25} :catchall_29

    :cond_25
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_29
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
.end method

.method public final getGroupId()I
    .registers 2

    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mGroupId:I

    return v0
.end method

.method public final getHalDeviceId()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mHalDeviceId:J

    return-wide v0
.end method

.method public final getIsRestricted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mIsRestricted:Z

    return v0
.end method

.method public final getOwnerString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-object v0
.end method

.method public final getTargetUserId()I
    .registers 2

    iget v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mTargetUserId:I

    return v0
.end method

.method public final getToken()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract notifyUserActivity()V
.end method

.method public onAcquired(II)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-nez v1, :cond_7

    return v5

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAcquired(JII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_10} :catch_16
    .catchall {:try_start_7 .. :try_end_10} :catchall_26

    if-nez p1, :cond_15

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    :cond_15
    return v4

    :catch_16
    move-exception v0

    :try_start_17
    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to invoke sendAcquired:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_26

    if-nez p1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    :cond_25
    return v5

    :catchall_26
    move-exception v1

    if-nez p1, :cond_2c

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->notifyUserActivity()V

    :cond_2c
    throw v1
.end method

.method public abstract onAuthenticated(II)Z
.end method

.method public abstract onEnrollResult(III)Z
.end method

.method public abstract onEnumerationResult(III)Z
.end method

.method public onError(II)Z
    .registers 7

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v1, :cond_d

    :try_start_4
    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/ClientMonitor;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p1, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_f

    :cond_d
    :goto_d
    const/4 v1, 0x1

    return v1

    :catch_f
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to invoke sendError:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public abstract onRemoved(III)Z
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method

.method public final vibrateError()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_11

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_11
    return-void
.end method

.method public final vibrateSuccess()V
    .registers 5

    iget-object v1, p0, Lcom/android/server/fingerprint/ClientMonitor;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    if-eqz v0, :cond_11

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_11
    return-void
.end method
