.class Landroid/hardware/camera2/impl/CameraDeviceImpl$2;
.super Ljava/lang/Object;
.source "CameraDeviceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_1f

    move-result-object v1

    if-nez v1, :cond_10

    monitor-exit v2

    return-void

    :cond_10
    :try_start_10
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->-get12(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1f

    move-result-object v0

    monitor-exit v2

    if-eqz v0, :cond_1e

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;->this$0:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;->onUnconfigured(Landroid/hardware/camera2/CameraDevice;)V

    :cond_1e
    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method
