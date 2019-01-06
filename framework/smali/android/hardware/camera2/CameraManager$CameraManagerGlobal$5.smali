.class Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->scheduleCameraServiceReconnectionLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->getCameraService()Landroid/hardware/ICameraService;

    move-result-object v0

    if-nez v0, :cond_15

    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->-get0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_f
    iget-object v1, p0, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal$5;->this$1:Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;

    invoke-static {v1}, Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;->-wrap0(Landroid/hardware/camera2/CameraManager$CameraManagerGlobal;)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    monitor-exit v2

    :cond_15
    return-void

    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method
