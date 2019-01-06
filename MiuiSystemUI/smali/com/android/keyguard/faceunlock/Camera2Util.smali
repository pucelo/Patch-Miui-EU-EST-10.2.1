.class public Lcom/android/keyguard/faceunlock/Camera2Util;
.super Lcom/android/keyguard/faceunlock/AbstractCameraUtil;
.source "Camera2Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/faceunlock/Camera2Util$1;,
        Lcom/android/keyguard/faceunlock/Camera2Util$2;
    }
.end annotation


# instance fields
.field mCameraCaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraHandler:Landroid/os/Handler;

.field public mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field protected mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field public mIRCameraId:Ljava/lang/String;

.field private mIsIrCamera:Z

.field private mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

.field private mPreviewImageReader:Landroid/media/ImageReader;

.field private mSnapshotImageReader:Landroid/media/ImageReader;

.field protected previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private final stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/faceunlock/Camera2Util;)Lcom/android/keyguard/faceunlock/IPreviewCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/faceunlock/Camera2Util;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/faceunlock/Camera2Util;Landroid/media/Image;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/faceunlock/Camera2Util;->convertYUV420888ToNV21(Landroid/media/Image;)[B

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/faceunlock/Camera2Util;-><init>(Landroid/content/Context;Landroid/os/Handler;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;-><init>()V

    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    const-string/jumbo v0, "5"

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mIRCameraId:Ljava/lang/String;

    new-instance v0, Lcom/android/keyguard/faceunlock/Camera2Util$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/faceunlock/Camera2Util$1;-><init>(Lcom/android/keyguard/faceunlock/Camera2Util;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->stateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lcom/android/keyguard/faceunlock/Camera2Util$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/faceunlock/Camera2Util$2;-><init>(Lcom/android/keyguard/faceunlock/Camera2Util;)V

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraCaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    iput-object p2, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraHandler:Landroid/os/Handler;

    const-string/jumbo v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iput-boolean p3, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mIsIrCamera:Z

    return-void
.end method

.method private convertYUV420888ToNV21(Landroid/media/Image;)[B
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int v5, v1, v3

    add-int/lit8 v5, v5, 0x1

    new-array v4, v5, [B

    invoke-virtual {v0, v4, v7, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4, v1, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-object v4
.end method

.method private getFrontFacingCameraId(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v3, "-1"

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v1, v6, v5

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    move-object v3, v1

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0
.end method

.method private getIRCameraId(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const-string/jumbo v3, "-1"

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    add-int/lit8 v4, v5, -0x1

    :goto_0
    if-lez v4, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    aget-object v3, v1, v4

    :cond_0
    return-object v3

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method


# virtual methods
.method public closeCamera()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/faceunlock/Camera2Util$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/faceunlock/Camera2Util$5;-><init>(Lcom/android/keyguard/faceunlock/Camera2Util;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->runOnCameraWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public closeCameraImmediately()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v3, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    sget-boolean v1, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "face_unlock"

    const-string/jumbo v2, "close camera"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v3, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewImageReader:Landroid/media/ImageReader;

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mSnapshotImageReader:Landroid/media/ImageReader;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mSnapshotImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v3, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mSnapshotImageReader:Landroid/media/ImageReader;

    :cond_3
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "face_unlock"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-boolean v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mIsIrCamera:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0, v1}, Lcom/android/keyguard/faceunlock/Camera2Util;->getIRCameraId(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-direct {p0, v1}, Lcom/android/keyguard/faceunlock/Camera2Util;->getFrontFacingCameraId(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public openCamera(I)V
    .locals 1

    new-instance v0, Lcom/android/keyguard/faceunlock/Camera2Util$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/faceunlock/Camera2Util$3;-><init>(Lcom/android/keyguard/faceunlock/Camera2Util;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->runOnCameraWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runOnCameraWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setCameraCallback(Lcom/android/keyguard/faceunlock/IPreviewCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewCallback:Lcom/android/keyguard/faceunlock/IPreviewCallback;

    return-void
.end method

.method public setMeteringAreas([I)V
    .locals 0

    return-void
.end method

.method public startPreview(Landroid/graphics/SurfaceTexture;Z)V
    .locals 8

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->width:I

    iget v5, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->height:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->width:I

    iget v5, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->height:I

    const/16 v6, 0x23

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    iput-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewImageReader:Landroid/media/ImageReader;

    new-instance v2, Lcom/android/keyguard/faceunlock/Camera2Util$4;

    invoke-direct {v2, p0}, Lcom/android/keyguard/faceunlock/Camera2Util$4;-><init>(Lcom/android/keyguard/faceunlock/Camera2Util;)V

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewImageReader:Landroid/media/ImageReader;

    iget-object v5, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v5}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v5, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mPreviewImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v5, p0, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraCaptureSessionCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-static {v4, v1, v5, p2}, Lcom/android/keyguard/faceunlock/Camera2Helper;->createCaptureSession(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/keyguard/faceunlock/Camera2Util;->closeCamera()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
