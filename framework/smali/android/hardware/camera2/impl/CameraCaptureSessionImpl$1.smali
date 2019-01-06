.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;
.super Ljava/lang/Object;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureBufferLost(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;J)V
    .registers 6

    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .registers 4

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .registers 4

    return-void
.end method

.method public onCapturePartial(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .registers 4

    return-void
.end method

.method public onCaptureSequenceAborted(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 4

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-wrap0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    return-void
.end method

.method public onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraDevice;IJ)V
    .registers 6

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v0, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-wrap0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V

    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .registers 7

    return-void
.end method
