.class Lcom/android/keyguard/faceunlock/Camera2Util$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/faceunlock/Camera2Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/Camera2Util;


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/Camera2Util;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v1}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get0(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iput-object p1, v1, Lcom/android/keyguard/faceunlock/Camera2Util;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/Camera2Util;->previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/Camera2Util;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/Camera2Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v2, v2, Lcom/android/keyguard/faceunlock/Camera2Util;->previewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/faceunlock/Camera2Util$2;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v3}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get1(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method
