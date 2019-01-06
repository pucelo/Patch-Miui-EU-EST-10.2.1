.class Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;
.super Ljava/lang/Object;
.source "LegacyFaceDetectMapper.java"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;-><init>(Landroid/hardware/Camera;Landroid/hardware/camera2/CameraCharacteristics;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)V
    .registers 2

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .registers 7

    if-nez p1, :cond_19

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get2(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get1(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;

    invoke-static {v1, p1}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-set0(Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;[Landroid/hardware/Camera$Face;)[Landroid/hardware/Camera$Face;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_28

    :cond_17
    :goto_17
    monitor-exit v2

    return-void

    :cond_19
    array-length v0, p1

    goto :goto_3

    :cond_1b
    if-lez v0, :cond_17

    :try_start_1d
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFaceDetectMapper;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "onFaceDetection - Ignored some incoming faces sinceface detection was disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_28

    goto :goto_17

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method
