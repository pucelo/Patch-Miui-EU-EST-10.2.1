.class public Lcom/android/keyguard/faceunlock/Camera1Util;
.super Lcom/android/keyguard/faceunlock/AbstractCameraUtil;
.source "Camera1Util.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/hardware/Camera$ErrorCallback;


# instance fields
.field public mAngle:I

.field public mCamera:Landroid/hardware/Camera;

.field private mCameraHandler:Landroid/os/Handler;

.field public mCameraId:I

.field private volatile mHasStartCloseCamera:Z

.field private mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/faceunlock/Camera1Util;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/Camera1Util;->openCameraInternal(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    iput-object p2, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    return-void
.end method

.method private calBestPreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Size;
    .locals 6

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v4, v5, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v4, Lcom/android/keyguard/faceunlock/Camera1Util$3;

    invoke-direct {v4, p0, p2, p3}, Lcom/android/keyguard/faceunlock/Camera1Util$3;-><init>(Lcom/android/keyguard/faceunlock/Camera1Util;II)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    return-object v4
.end method

.method private getFrontFacingCameraId()I
    .locals 5

    const/4 v1, -0x1

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private isValid([I)Z
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v0, 0x0

    array-length v1, p1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    aget v1, p1, v3

    if-ltz v1, :cond_0

    aget v1, p1, v3

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_0

    aget v1, p1, v5

    if-ltz v1, :cond_0

    aget v1, p1, v5

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_0

    aget v1, p1, v4

    if-ltz v1, :cond_0

    aget v1, p1, v4

    const/16 v2, 0x280

    if-gt v1, v2, :cond_0

    aget v1, p1, v6

    if-ltz v1, :cond_0

    aget v1, p1, v6

    const/16 v2, 0x280

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method private openCameraInternal(I)V
    .locals 7

    const/4 v6, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/Camera1Util;->getFrontFacingCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "face_unlock"

    const-string/jumbo v4, "open camera1 faild"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "0"

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->setFaceUnlockCameraProperty(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string/jumbo v3, "1"

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->setFaceUnlockCameraProperty(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    iget v5, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    invoke-direct {p0, v3, v4, v5}, Lcom/android/keyguard/faceunlock/Camera1Util;->calBestPreviewSize(Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    iput v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iput v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    const-string/jumbo v3, "instant-aec"

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "xiaomi-face-mode"

    const-string/jumbo v4, "on"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "zsl"

    const-string/jumbo v4, "off"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    const-string/jumbo v3, "auto-exposure"

    const-string/jumbo v4, "center-weighted"

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/faceunlock/Camera1Util;->getCameraAngle(I)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mAngle:I

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mAngle:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "0"

    invoke-static {v3}, Lcom/android/keyguard/MiuiKeyguardUtils;->setFaceUnlockCameraProperty(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v6}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public closeCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/Camera1Util;->closeCameraImmediately()V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/faceunlock/Camera1Util$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/faceunlock/Camera1Util$2;-><init>(Lcom/android/keyguard/faceunlock/Camera1Util;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public closeCameraImmediately()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mHasStartCloseCamera:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mHasStartCloseCamera:Z

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    iput-object v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mHasStartCloseCamera:Z

    sget-boolean v0, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "close camera"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "0"

    invoke-static {v0}, Lcom/android/keyguard/MiuiKeyguardUtils;->setFaceUnlockCameraProperty(Ljava/lang/String;)V

    return-void
.end method

.method public getCameraAngle(I)I
    .locals 5

    const/16 v2, 0x5a

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iget v3, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v3, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v0

    rem-int/lit16 v2, v3, 0x168

    rsub-int v3, v2, 0x168

    rem-int/lit16 v2, v3, 0x168

    :goto_1
    return v2

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x10e

    goto :goto_0

    :cond_0
    iget v3, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v0

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v2, v3, 0x168

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onError(ILandroid/hardware/Camera;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mHasStartCloseCamera:Z

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/Camera1Util;->closeCamera()V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    iget v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->onPreviewFrame([BLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openCamera(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/Camera1Util;->openCameraInternal(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/faceunlock/Camera1Util$1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/faceunlock/Camera1Util$1;-><init>(Lcom/android/keyguard/faceunlock/Camera1Util;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    return-void
.end method

.method public setMeteringAreas([I)V
    .locals 17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    if-eqz v13, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/keyguard/faceunlock/Camera1Util;->isValid([I)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v12

    invoke-virtual {v12}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v13

    if-lez v13, :cond_0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/high16 v8, 0x43960000    # 300.0f

    const/4 v13, 0x4

    aget v13, p1, v13

    const/4 v14, 0x6

    aget v14, p1, v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v6, v13, v14

    const/4 v13, 0x5

    aget v13, p1, v13

    const/4 v14, 0x7

    aget v14, p1, v14

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v5, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    sub-float v1, v13, v5

    move v2, v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v1, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float v2, v6, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/faceunlock/Camera1Util;->width:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-float v13, v1, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float v3, v13, v14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/keyguard/faceunlock/Camera1Util;->height:I

    int-to-float v13, v13

    const/high16 v14, 0x3f800000    # 1.0f

    mul-float/2addr v13, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    div-float v13, v2, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    mul-float v4, v13, v14

    const/high16 v11, 0x44070000    # 540.0f

    new-instance v10, Landroid/graphics/Rect;

    const/high16 v13, 0x40000000    # 2.0f

    div-float v13, v11, v13

    sub-float v13, v3, v13

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    div-float v14, v11, v14

    sub-float v14, v4, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    div-float v15, v11, v15

    add-float/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    const/high16 v16, 0x40000000    # 2.0f

    div-float v16, v11, v16

    add-float v16, v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v10, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string/jumbo v13, "unlock_internal"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v10, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Landroid/hardware/Camera$Area;

    const/16 v14, 0x3e8

    invoke-direct {v13, v10, v14}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v9}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    const-string/jumbo v13, "auto-exposure"

    const-string/jumbo v14, "spot-metering"

    invoke-virtual {v12, v13, v14}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v13, v12}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera1Util;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
