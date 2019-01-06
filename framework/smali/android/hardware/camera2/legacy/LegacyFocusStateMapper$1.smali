.class Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

.field final synthetic val$afMode:Ljava/lang/String;

.field final synthetic val$currentAfRun:I


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V
    .registers 4

    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    iput p2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    iput-object p3, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .registers 9

    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get2(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    invoke-static {v2}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get1(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I

    move-result v0

    iget v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    if-eq v2, v0, :cond_30

    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAutoFocusMoving - ignoring move callbacks from old af run"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$currentAfRun:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_7 .. :try_end_2e} :catchall_6e

    monitor-exit v3

    return-void

    :cond_30
    if-eqz p1, :cond_45

    const/4 v1, 0x1

    :goto_33
    :try_start_33
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    const-string/jumbo v4, "continuous-picture"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    :cond_3e
    :goto_3e
    iget-object v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->this$0:Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;

    invoke-static {v2, v1}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-set0(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_6e

    monitor-exit v3

    return-void

    :cond_45
    const/4 v1, 0x2

    goto :goto_33

    :cond_47
    :try_start_47
    const-string/jumbo v4, "continuous-video"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAutoFocus - got unexpected onAutoFocus in mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;->val$afMode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6d
    .catchall {:try_start_47 .. :try_end_6d} :catchall_6e

    goto :goto_3e

    :catchall_6e
    move-exception v2

    monitor-exit v3

    throw v2
.end method
