.class public abstract Landroid/media/PlayerBase;
.super Ljava/lang/Object;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/PlayerBase$IAppOpsCallbackWrapper;,
        Landroid/media/PlayerBase$IPlayerWrapper;,
        Landroid/media/PlayerBase$PlayerIdCard;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_APP_OPS:Z = false

.field private static final TAG:Ljava/lang/String; = "PlayerBase"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field protected mAttributes:Landroid/media/AudioAttributes;

.field protected mAuxEffectSendLevel:F

.field private mHasAppOpsPlayAudio:Z

.field private final mImplType:I

.field protected mLeftVolume:F

.field private final mLock:Ljava/lang/Object;

.field private mPanMultiplierL:F

.field private mPanMultiplierR:F

.field private mPlayerIId:I

.field protected mRightVolume:F

.field private mStartDelayMs:I

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static synthetic -wrap0(Landroid/media/PlayerBase;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio()V

    return-void
.end method

.method constructor <init>(Landroid/media/AudioAttributes;I)V
    .registers 6

    const/4 v2, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iput v1, p0, Landroid/media/PlayerBase;->mRightVolume:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    iput-boolean v2, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/PlayerBase;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/PlayerBase;->mStartDelayMs:I

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    if-nez p1, :cond_2f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    iput p2, p0, Landroid/media/PlayerBase;->mImplType:I

    iput v2, p0, Landroid/media/PlayerBase;->mState:I

    return-void
.end method

.method public static deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p0, v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use of STREAM_ACCESSIBILITY is reserved for volume control"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const-string/jumbo v0, "Use of stream types is deprecated for operations other than volume control"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "See the documentation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for what to use instead with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "android.media.AudioAttributes to qualify your playback use case"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static getService()Landroid/media/IAudioService;
    .registers 2

    sget-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_7

    sget-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    return-object v1

    :cond_7
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    sget-object v1, Landroid/media/PlayerBase;->sService:Landroid/media/IAudioService;

    return-object v1
.end method

.method private updateAppOpsPlayAudio()V
    .registers 3

    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync(Z)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method basePause()V
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_16

    const/4 v1, 0x3

    :try_start_4
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v3, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget v4, p0, Landroid/media/PlayerBase;->mState:I

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->playerEvent(II)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v2

    :goto_12
    return-void

    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    const-string/jumbo v1, "PlayerBase"

    const-string/jumbo v2, "Error talking to audio service, PAUSED state will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method protected baseRegisterPlayer()V
    .registers 9

    const/4 v2, -0x1

    const-string/jumbo v3, "appops"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    iput-object v3, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-direct {p0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio()V

    new-instance v3, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;

    invoke-direct {v3, p0}, Landroid/media/PlayerBase$IAppOpsCallbackWrapper;-><init>(Landroid/media/PlayerBase;)V

    iput-object v3, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    :try_start_18
    iget-object v3, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/16 v6, 0x1c

    invoke-interface {v3, v6, v4, v5}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_25} :catch_3e

    :goto_25
    :try_start_25
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v3

    new-instance v4, Landroid/media/PlayerBase$PlayerIdCard;

    iget v5, p0, Landroid/media/PlayerBase;->mImplType:I

    iget-object v6, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    new-instance v7, Landroid/media/PlayerBase$IPlayerWrapper;

    invoke-direct {v7, p0}, Landroid/media/PlayerBase$IPlayerWrapper;-><init>(Landroid/media/PlayerBase;)V

    invoke-direct {v4, v5, v6, v7}, Landroid/media/PlayerBase$PlayerIdCard;-><init>(ILandroid/media/AudioAttributes;Landroid/media/IPlayer;)V

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_3a} :catch_43

    move-result v2

    :goto_3b
    iput v2, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    return-void

    :catch_3e
    move-exception v1

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    goto :goto_25

    :catch_43
    move-exception v1

    const-string/jumbo v3, "PlayerBase"

    const-string/jumbo v4, "Error talking to audio service, player will not be tracked"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3b
.end method

.method baseRelease()V
    .registers 6

    :try_start_0
    iget-object v3, p0, Landroid/media/PlayerBase;->mStateLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_23

    :try_start_3
    iget v2, p0, Landroid/media/PlayerBase;->mState:I

    if-eqz v2, :cond_13

    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v2

    iget v4, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v2, v4}, Landroid/media/IAudioService;->releasePlayer(I)V

    const/4 v2, 0x0

    iput v2, p0, Landroid/media/PlayerBase;->mState:I
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_20

    :cond_13
    :try_start_13
    monitor-exit v3
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_14} :catch_23

    :goto_14
    :try_start_14
    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/media/PlayerBase;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_2e

    :cond_1f
    :goto_1f
    return-void

    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3

    throw v2
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_23} :catch_23

    :catch_23
    move-exception v0

    const-string/jumbo v2, "PlayerBase"

    const-string/jumbo v3, "Error talking to audio service, the player will still be tracked"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :catch_2e
    move-exception v1

    goto :goto_1f
.end method

.method baseSetAuxEffectSendLevel(F)I
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iput p1, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_14

    move-result v0

    if-eqz v0, :cond_e

    monitor-exit v1

    return v2

    :cond_e
    monitor-exit v1

    invoke-virtual {p0, v2, p1}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I

    move-result v0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method baseSetPan(F)V
    .registers 6

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_25

    sub-float v1, v3, v0

    :try_start_16
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_2e

    :goto_1c
    monitor-exit v2

    iget v1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iget v2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    invoke-virtual {p0, v1, v2}, Landroid/media/PlayerBase;->baseSetVolume(FF)V

    return-void

    :cond_25
    const/high16 v1, 0x3f800000    # 1.0f

    :try_start_27
    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    add-float v1, v3, v0

    iput v1, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2e

    goto :goto_1c

    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method baseSetStartDelayMs(I)V
    .registers 4

    iget-object v1, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/PlayerBase;->mStartDelayMs:I
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method baseSetVolume(FF)V
    .registers 6

    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iput p1, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iput p2, p0, Landroid/media/PlayerBase;->mRightVolume:F

    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_16

    move-result v0

    monitor-exit v2

    iget v1, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v1, p1

    iget v2, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v2, p2

    invoke-virtual {p0, v0, v1, v2}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method baseStart()V
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_26

    const/4 v1, 0x2

    :try_start_4
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v3, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget v4, p0, Landroid/media/PlayerBase;->mState:I

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->playerEvent(II)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_23

    :try_start_11
    monitor-exit v2
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_12} :catch_26

    :goto_12
    iget-object v2, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_15
    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v1, v3}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_31

    :cond_21
    monitor-exit v2

    return-void

    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v2

    throw v1
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_26} :catch_26

    :catch_26
    move-exception v0

    const-string/jumbo v1, "PlayerBase"

    const-string/jumbo v2, "Error talking to audio service, STARTED state will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :catchall_31
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method baseStop()V
    .registers 6

    :try_start_0
    iget-object v2, p0, Landroid/media/PlayerBase;->mStateLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_16

    const/4 v1, 0x4

    :try_start_4
    iput v1, p0, Landroid/media/PlayerBase;->mState:I

    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v1

    iget v3, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget v4, p0, Landroid/media/PlayerBase;->mState:I

    invoke-interface {v1, v3, v4}, Landroid/media/IAudioService;->playerEvent(II)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v2

    :goto_12
    return-void

    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    const-string/jumbo v1, "PlayerBase"

    const-string/jumbo v2, "Error talking to audio service, STOPPED state will not be tracked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Illegal null AudioAttributes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    :try_start_b
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v2

    iget v3, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    invoke-interface {v2, v3, p1}, Landroid/media/IAudioService;->playerAttributes(ILandroid/media/AudioAttributes;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_23

    :goto_14
    iget-object v3, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_17
    iget-object v2, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    if-eq v2, p1, :cond_2e

    const/4 v0, 0x1

    :goto_1c
    iput-object p1, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync(Z)V
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_30

    monitor-exit v3

    return-void

    :catch_23
    move-exception v1

    const-string/jumbo v2, "PlayerBase"

    const-string/jumbo v3, "Error talking to audio service, STARTED state will not be tracked"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    :cond_2e
    const/4 v0, 0x0

    goto :goto_1c

    :catchall_30
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method protected getStartDelayMs()I
    .registers 3

    iget-object v0, p0, Landroid/media/PlayerBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/media/PlayerBase;->mStartDelayMs:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method isRestricted_sync()Z
    .registers 7

    const/4 v5, 0x0

    iget-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    if-eqz v3, :cond_6

    return v5

    :cond_6
    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_11

    return v5

    :cond_11
    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_47

    iget-object v3, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v3}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_47

    const/4 v0, 0x0

    :try_start_26
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2d} :catch_3c
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_2d} :catch_31

    move-result v0

    :goto_2e
    if-eqz v0, :cond_47

    return v5

    :catch_31
    move-exception v2

    const-string/jumbo v3, "PlayerBase"

    const-string/jumbo v4, "Null AudioService in isRestricted_sync()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_3c
    move-exception v1

    const-string/jumbo v3, "PlayerBase"

    const-string/jumbo v4, "Cannot access AudioService in isRestricted_sync()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_47
    const/4 v3, 0x1

    return v3
.end method

.method abstract playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method abstract playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method abstract playerPause()V
.end method

.method abstract playerSetAuxEffectSendLevel(ZF)I
.end method

.method abstract playerSetVolume(ZFF)V
.end method

.method abstract playerStart()V
.end method

.method abstract playerStop()V
.end method

.method public setStartDelayMs(I)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    return-void
.end method

.method updateAppOpsPlayAudio_sync(Z)V
    .registers 13

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    const/4 v2, 0x1

    :try_start_5
    iget-object v6, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    if-eqz v6, :cond_1f

    iget-object v6, p0, Landroid/media/PlayerBase;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v7, p0, Landroid/media/PlayerBase;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v7}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x1c

    invoke-interface {v6, v10, v7, v8, v9}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v2

    :cond_1f
    if-nez v2, :cond_4f

    :goto_21
    iput-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_23} :catch_51

    :goto_23
    :try_start_23
    iget-boolean v4, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    if-ne v3, v4, :cond_29

    if-eqz p1, :cond_4e

    :cond_29
    invoke-static {}, Landroid/media/PlayerBase;->getService()Landroid/media/IAudioService;

    move-result-object v4

    iget v5, p0, Landroid/media/PlayerBase;->mPlayerIId:I

    iget-boolean v6, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    invoke-interface {v4, v5, v6}, Landroid/media/IAudioService;->playerHasOpPlayAudio(IZ)V

    invoke-virtual {p0}, Landroid/media/PlayerBase;->isRestricted_sync()Z

    move-result v4

    if-nez v4, :cond_55

    iget v4, p0, Landroid/media/PlayerBase;->mLeftVolume:F

    iget v5, p0, Landroid/media/PlayerBase;->mPanMultiplierL:F

    mul-float/2addr v4, v5

    iget v5, p0, Landroid/media/PlayerBase;->mRightVolume:F

    iget v6, p0, Landroid/media/PlayerBase;->mPanMultiplierR:F

    mul-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v4, v5}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    iget v4, p0, Landroid/media/PlayerBase;->mAuxEffectSendLevel:F

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4e} :catch_61

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    move v4, v5

    goto :goto_21

    :catch_51
    move-exception v0

    iput-boolean v5, p0, Landroid/media/PlayerBase;->mHasAppOpsPlayAudio:Z

    goto :goto_23

    :cond_55
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_58
    invoke-virtual {p0, v4, v5, v6}, Landroid/media/PlayerBase;->playerSetVolume(ZFF)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/media/PlayerBase;->playerSetAuxEffectSendLevel(ZF)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_60} :catch_61

    goto :goto_4e

    :catch_61
    move-exception v1

    goto :goto_4e
.end method
