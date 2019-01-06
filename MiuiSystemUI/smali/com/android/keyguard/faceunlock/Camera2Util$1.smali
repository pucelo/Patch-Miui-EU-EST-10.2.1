.class Lcom/android/keyguard/faceunlock/Camera2Util$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
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

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/faceunlock/Camera2Util;->-set0(Lcom/android/keyguard/faceunlock/Camera2Util;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get3(Lcom/android/keyguard/faceunlock/Camera2Util;)Lcom/android/keyguard/faceunlock/IPreviewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get0(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get0(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0, v3}, Lcom/android/keyguard/faceunlock/Camera2Util;->-set0(Lcom/android/keyguard/faceunlock/Camera2Util;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    :cond_0
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get3(Lcom/android/keyguard/faceunlock/Camera2Util;)Lcom/android/keyguard/faceunlock/IPreviewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get0(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get0(Lcom/android/keyguard/faceunlock/Camera2Util;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0, v3}, Lcom/android/keyguard/faceunlock/Camera2Util;->-set0(Lcom/android/keyguard/faceunlock/Camera2Util;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    :cond_0
    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0, p1}, Lcom/android/keyguard/faceunlock/Camera2Util;->-set0(Lcom/android/keyguard/faceunlock/Camera2Util;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/Camera2Util;->-get3(Lcom/android/keyguard/faceunlock/Camera2Util;)Lcom/android/keyguard/faceunlock/IPreviewCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/Camera2Util$1;->this$0:Lcom/android/keyguard/faceunlock/Camera2Util;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/Camera2Util;->mCameraId:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/faceunlock/IPreviewCallback;->openCameraSucced(Ljava/lang/String;Z)V

    return-void
.end method
