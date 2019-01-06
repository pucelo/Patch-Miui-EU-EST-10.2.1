.class Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;
.super Ljava/lang/Object;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IdleDrainListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;


# direct methods
.method private constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    return-void
.end method


# virtual methods
.method public onDrained()V
    .registers 8

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get2(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-result-object v2

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_9
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get5(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_43

    move-result v2

    if-eqz v2, :cond_13

    monitor-exit v3

    return-void

    :cond_13
    :try_start_13
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get2(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;I)Z
    :try_end_1f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_13 .. :try_end_1f} :catch_21
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_1f} :catch_46
    .catchall {:try_start_13 .. :try_end_1f} :catchall_43

    :goto_1f
    monitor-exit v3

    return-void

    :catch_21
    move-exception v0

    :try_start_22
    const-string/jumbo v2, "CameraCaptureSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;->this$0:Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->-get3(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Exception while unconfiguring outputs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_22 .. :try_end_42} :catchall_43

    goto :goto_1f

    :catchall_43
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_46
    move-exception v1

    goto :goto_1f
.end method
