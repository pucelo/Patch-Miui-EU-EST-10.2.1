.class public abstract Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;
.super Ljava/lang/Object;
.source "BaseFaceUnlockManager.java"

# interfaces
.implements Lcom/android/keyguard/faceunlock/IPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;,
        Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;
    }
.end annotation


# static fields
.field public static DEBUG:Z

.field private static mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field public static sInitFaceUlockUtil:Z

.field public static sStageInFaceUnlockTime:J

.field public static sStartFaceUnlockTime:J


# instance fields
.field protected mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

.field protected mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

.field private mCloseCameraHandler:Landroid/os/Handler;

.field private mCloseCameraRunnable:Ljava/lang/Runnable;

.field private mCloseCameraThread:Landroid/os/HandlerThread;

.field protected mContext:Landroid/content/Context;

.field protected mFaceUnlockView:Landroid/view/TextureView;

.field protected mFailedCount:I

.field protected mFailedLiveCount:I

.field protected mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mHasFace:Z

.field protected mHasInit:Z

.field protected mHelpStringResId:I

.field protected mIsDetecting:Z

.field protected mIsSuccess:Z

.field protected mIsTrigger:Z

.field protected mLiveAttack:Z

.field protected mLiveAttackValue:I

.field protected mMainHandler:Landroid/os/Handler;

.field protected mNoFaceDetectedValue:I

.field protected mPreviewFrame:[B

.field protected mReport:[I

.field protected mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

.field protected mSkipIfNotFound:Z

.field protected mStartSetMeteringAreasTime:J

.field protected mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 1

    sget-object v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;
    .locals 0

    sput-object p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sInitFaceUlockUtil:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "face_unlock"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "close_camera"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraThread:Landroid/os/HandlerThread;

    const/16 v0, 0x14

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mReport:[I

    iput v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mNoFaceDetectedValue:I

    iput-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    iput-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mLiveAttack:Z

    iput-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mSkipIfNotFound:Z

    new-instance v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;-><init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;-><init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private newWorkerHandler()Landroid/os/Handler;
    .locals 2

    new-instance v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;-><init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;Landroid/os/Looper;)V

    return-object v0
.end method


# virtual methods
.method protected abstract getFeatureCount()I
.end method

.method protected abstract getRunOutTime()I
.end method

.method protected abstract getVersion()Ljava/lang/String;
.end method

.method protected handlePassed()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsSuccess:Z

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect()V

    return-void
.end method

.method public hasInit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasInit:Z

    return v0
.end method

.method public initFaceUnlockUtil()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlock(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mSharedPreferenceUtil:Lcom/android/keyguard/faceunlock/SharedPreferenceUtil;

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->newWorkerHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceJiajia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlockUseCamera1(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/keyguard/faceunlock/Camera1Util;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/faceunlock/Camera1Util;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sInitFaceUlockUtil:Z

    :cond_1
    new-instance v0, Lcom/android/keyguard/FingerprintHelper;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFingerprintHelper:Lcom/android/keyguard/FingerprintHelper;

    invoke-static {}, Lcom/android/keyguard/BoostFrameworkHelper;->initBoostFramework()V

    return-void

    :cond_2
    new-instance v0, Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isIrCamera()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/keyguard/faceunlock/Camera2Util;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    goto :goto_0
.end method

.method protected isFaceJiajia()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isFaceUnlockLocked()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract isIrCamera()Z
.end method

.method public openCameraSucced(Ljava/lang/String;Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect()V

    return-void

    :cond_0
    if-eqz p2, :cond_3

    sget-boolean v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "open camera succeed time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sStageInFaceUnlockTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sStageInFaceUnlockTime:J

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFaceUnlockView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->startPreview(Landroid/graphics/SurfaceTexture;Z)V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getRunOutTime()I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceJiajia()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getRunOutTime()I

    move-result v2

    add-int/lit16 v2, v2, 0x1388

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "open Camera failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->release(Z)V

    return-void
.end method

.method public release(Z)V
    .locals 4

    const/16 v1, 0x3ef

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasInit:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->releaseFaceUnlock()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected abstract releaseFaceUnlock()V
.end method

.method public resetFailCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    iput v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    return-void
.end method

.method public runOnFaceUnlockWorkerThread(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startFaceUnlock(Landroid/view/TextureView;Lcom/android/keyguard/faceunlock/FaceUnlockCallback;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceUnlockLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFaceUnlockView:Landroid/view/TextureView;

    iput-object p2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sStartFaceUnlockTime:J

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceUnlockLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getFeatureCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasInit:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsSuccess:Z

    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsDetecting:Z

    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mLiveAttack:Z

    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    iput-boolean v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mSkipIfNotFound:Z

    iput v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mLiveAttackValue:I

    iput v6, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mNoFaceDetectedValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mStartSetMeteringAreasTime:J

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start open camera time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->sScreenTurnedOnTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  sdk version="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->sStageInFaceUnlockTime:J

    invoke-static {}, Lcom/android/keyguard/BoostFrameworkHelper;->setBoostCPUAndDDR()V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->openCamera(I)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsTrigger="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";isFaceUnlockLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceUnlockLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";getFeatureCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->getFeatureCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";mHasInit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected stopDetect()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect(Z)V

    return-void
.end method

.method protected stopDetect(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mWorkerHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->isFaceJiajia()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCloseCameraRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->closeCamera()V

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsSuccess:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    iget v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->trackFaceUnlockLocked()V

    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mLiveAttack:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    iget v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mFailedLiveCount:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/keyguard/analytics/AnalyticsHelper;->trackFaceUnlockLocked()V

    :cond_3
    return-void
.end method

.method public stopFaceUnlock()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect()V

    :cond_0
    return-void
.end method
