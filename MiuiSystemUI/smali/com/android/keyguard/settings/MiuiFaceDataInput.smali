.class public Lcom/android/keyguard/settings/MiuiFaceDataInput;
.super Lmiui/preference/PreferenceActivity;
.source "MiuiFaceDataInput.java"

# interfaces
.implements Lcom/android/keyguard/faceunlock/IPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/settings/MiuiFaceDataInput$1;
    }
.end annotation


# instance fields
.field private mAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

.field private mCancelOrOkButton:Landroid/widget/Button;

.field private mConfig:[I

.field private mConfirmLockLaunched:Z

.field private final mDelayedHide:Ljava/lang/Runnable;

.field private mFaceInputMsg:Landroid/widget/TextView;

.field private mFaceInputTitle:Landroid/widget/TextView;

.field private mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHasFaceData:Z

.field private mHasStart:Z

.field private mImage:[B

.field private mIsDetect:Z

.field private mIsKeyguardPasswordSecured:Z

.field private mLite:Lcom/megvii/facepp/sdk/Lite;

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

.field private mOpenCameraStart:Z

.field private mSavedFeature:[B

.field private mStartDetectTime:J

.field private mSucceed:Z

.field private mSurface:Lcom/android/keyguard/settings/CameraView;

.field private mValidFaceData:Z

.field private mWorkerHandler:Landroid/os/Handler;

.field private textureView:Landroid/view/TextureView;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/faceunlock/AbstractCameraUtil;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCancelOrOkButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/view/TextureView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/megvii/facepp/sdk/Lite;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLite:Lcom/megvii/facepp/sdk/Lite;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Lcom/android/keyguard/settings/CameraView;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSurface:Lcom/android/keyguard/settings/CameraView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/settings/MiuiFaceDataInput;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/settings/MiuiFaceDataInput;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/settings/MiuiFaceDataInput;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mStartDetectTime:J

    return-wide p1
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "detect"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHandlerThread:Landroid/os/HandlerThread;

    const/16 v0, 0x2710

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSavedFeature:[B

    const v0, 0x9c40

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mImage:[B

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfig:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$1;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    iput-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    return-void
.end method

.method private isAvailableFaceData()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasFaceData:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mValidFaceData:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private start()V
    .locals 8

    const/16 v7, 0x14

    const/4 v3, 0x1

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsDetect:Z

    iput-boolean v3, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->prepare()I

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLite:Lcom/megvii/facepp/sdk/Lite;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfig:[I

    aget v1, v1, v6

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfig:[I

    aget v2, v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfig:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfig:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/megvii/facepp/sdk/Lite;->setConfig(FFFF)I

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLite:Lcom/megvii/facepp/sdk/Lite;

    const/16 v1, 0x1cc

    const/16 v2, 0x258

    invoke-virtual {v0, v7, v7, v1, v2}, Lcom/megvii/facepp/sdk/Lite;->setDetectArea(IIII)I

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->startPreview(Landroid/graphics/SurfaceTexture;Z)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110266

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lmiui/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    :cond_0
    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v2, "com.android.keyguard.settings.MiuiFaceDataSuggestion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_1

    if-ne p2, v2, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v1, p0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/keyguard/settings/MiuiFaceDataInput$6;

    invoke-direct {v2, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$6;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f0d006c

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->setContentView(I)V

    new-instance v1, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v1, p0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    new-instance v1, Lcom/android/keyguard/LockPatternUtilsWrapper;

    iget-object v4, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v1, v4}, Lcom/android/keyguard/LockPatternUtilsWrapper;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "face_unlock_has_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v5

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasFaceData:Z

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "face_unlock_valid_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v5

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mValidFaceData:Z

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLockPatternUtilsWrapper:Lcom/android/keyguard/LockPatternUtilsWrapper;

    invoke-virtual {v1}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getActivePasswordQuality()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsKeyguardPasswordSecured:Z

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/megvii/facepp/sdk/Lite;->getInstance()Lcom/megvii/facepp/sdk/Lite;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/MiuiKeyguardUtils;->isSupportFaceUnlockUseCamera1(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/keyguard/faceunlock/Camera1Util;

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/android/keyguard/faceunlock/Camera1Util;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f03002d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfig:[I

    if-eqz p1, :cond_0

    const-string/jumbo v1, "key_confirm_lock_launched"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    :cond_0
    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsKeyguardPasswordSecured:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->isAvailableFaceData()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.MiuiConfirmCommonPassword"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    :cond_1
    :goto_4
    const v1, 0x7f0a0199

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputTitle:Landroid/widget/TextView;

    const v1, 0x7f0a0198

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceInputMsg:Landroid/widget/TextView;

    const v1, 0x7f0a0076

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/settings/CameraView;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSurface:Lcom/android/keyguard/settings/CameraView;

    const v1, 0x7f0a0075

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/TextureView;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->textureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setAlpha(F)V

    const v1, 0x7f0a019a

    invoke-virtual {p0, v1}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCancelOrOkButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCancelOrOkButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCancelOrOkButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$2;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto/16 :goto_1

    :cond_4
    move v1, v3

    goto/16 :goto_2

    :cond_5
    new-instance v1, Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    invoke-direct {v1, v4, v5}, Lcom/android/keyguard/faceunlock/Camera2Util;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    goto/16 :goto_3

    :cond_6
    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsKeyguardPasswordSecured:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->isAvailableFaceData()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.android.systemui"

    const-string/jumbo v4, "com.android.keyguard.settings.MiuiFaceDataIntroduction"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onDestroy()V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/settings/MiuiFaceDataInput$4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$4;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onPause()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/settings/MiuiFaceDataInput$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput$3;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    iput-boolean v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->finish()V

    :cond_1
    return-void
.end method

.method public onPreviewFrame([BLjava/lang/String;)V
    .locals 13

    const/4 v5, 0x1

    const/4 v12, 0x0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsDetect:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mStartDetectTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsDetect:Z

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLite:Lcom/megvii/facepp/sdk/Lite;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v2, v1, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v3, v1, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v4, v1, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->angle:I

    iget-object v6, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSavedFeature:[B

    iget-object v7, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mImage:[B

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/megvii/facepp/sdk/Lite;->saveFeature([BIIIZ[B[B)I

    move-result v10

    const-string/jumbo v0, "face_unlock"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "face data input result ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_1

    const-string/jumbo v0, "face_unlock_input_success"

    invoke-static {v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mWorkerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mDelayedHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v5, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mSucceed:Z

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_unlock_valid_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_unlock_has_feature"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_unlcok_apply_for_lock"

    invoke-static {}, Lcom/android/keyguard/LockPatternUtilsWrapper;->getCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v5, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v2, v2, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->width:I

    iget-object v3, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v3, v3, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->height:I

    invoke-direct {v1, v12, v12, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v2, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    iget v2, v2, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->angle:I

    invoke-virtual {v0, p1, v1, v2, v12}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->getBitMap([BLandroid/graphics/Rect;IZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->closeCamera()V

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mLite:Lcom/megvii/facepp/sdk/Lite;

    invoke-virtual {v0}, Lcom/megvii/facepp/sdk/Lite;->reset()I

    iput-boolean v12, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mHasStart:Z

    iput-boolean v12, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mOpenCameraStart:Z

    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;

    invoke-direct {v0, p0, v8}, Lcom/android/keyguard/settings/MiuiFaceDataInput$7;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    packed-switch v10, :pswitch_data_0

    :pswitch_0
    const v11, 0x7f110689

    :goto_1
    move v9, v11

    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;

    invoke-direct {v0, p0, v9}, Lcom/android/keyguard/settings/MiuiFaceDataInput$8;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->runOnUiThread(Ljava/lang/Runnable;)V

    iput-boolean v12, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mIsDetect:Z

    goto :goto_0

    :pswitch_1
    const v11, 0x7f110284

    goto :goto_1

    :pswitch_2
    const v11, 0x7f110281

    goto :goto_1

    :pswitch_3
    const v11, 0x7f110295

    goto :goto_1

    :pswitch_4
    const v11, 0x7f110286

    goto :goto_1

    :pswitch_5
    const v11, 0x7f110288

    goto :goto_1

    :pswitch_6
    const v11, 0x7f110287

    goto :goto_1

    :pswitch_7
    const v11, 0x7f110285

    goto :goto_1

    :pswitch_8
    const v11, 0x7f110292

    goto :goto_1

    :pswitch_9
    const v11, 0x7f110291

    goto :goto_1

    :pswitch_a
    const v11, 0x7f110293

    goto :goto_1

    :pswitch_b
    const v11, 0x7f110282

    goto :goto_1

    :pswitch_c
    const v11, 0x7f11028c

    goto :goto_1

    :pswitch_d
    const v11, 0x7f110689

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_c
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "key_confirm_lock_launched"

    iget-boolean v1, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mConfirmLockLaunched:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public openCameraSucced(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/settings/MiuiFaceDataInput;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->initAll()V

    invoke-direct {p0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->start()V

    :cond_0
    new-instance v0, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;

    invoke-direct {v0, p0, p2}, Lcom/android/keyguard/settings/MiuiFaceDataInput$5;-><init>(Lcom/android/keyguard/settings/MiuiFaceDataInput;Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/settings/MiuiFaceDataInput;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
