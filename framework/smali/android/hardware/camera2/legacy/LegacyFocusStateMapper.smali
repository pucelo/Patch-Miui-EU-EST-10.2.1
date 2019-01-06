.class public Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;
.super Ljava/lang/Object;
.source "LegacyFocusStateMapper.java"


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAfModePrevious:Ljava/lang/String;

.field private mAfRun:I

.field private mAfState:I

.field private mAfStatePrevious:I

.field private final mCamera:Landroid/hardware/Camera;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;I)I
    .registers 2

    iput p1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "LegacyFocusStateMapper"

    sput-object v0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    iput v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I

    const-string/jumbo v0, "camera must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method private static afStateToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_3c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1f
    const-string/jumbo v0, "ACTIVE_SCAN"

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "FOCUSED_LOCKED"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "INACTIVE"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "NOT_FOCUSED_LOCKED"

    return-object v0

    :pswitch_2f
    const-string/jumbo v0, "PASSIVE_FOCUSED"

    return-object v0

    :pswitch_33
    const-string/jumbo v0, "PASSIVE_SCAN"

    return-object v0

    :pswitch_37
    const-string/jumbo v0, "PASSIVE_UNFOCUSED"

    return-object v0

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_27
        :pswitch_33
        :pswitch_2f
        :pswitch_1f
        :pswitch_23
        :pswitch_2b
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method public mapResultTriggers(Landroid/hardware/camera2/impl/CameraMetadataNative;)V
    .registers 5

    const-string/jumbo v1, "result must not be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_18

    monitor-exit v1

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    iput v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfStatePrevious:I

    return-void

    :catchall_18
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public processRequestTriggers(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/Camera$Parameters;)V
    .registers 12

    const/4 v7, 0x0

    const-string/jumbo v6, "captureRequest must not be null"

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {p1, v6, v7}, Landroid/hardware/camera2/utils/ParamsUtils;->getOrDefault(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    invoke-static {v6, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_26
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_6d

    monitor-exit v7

    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_35
    iput-object v0, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfModePrevious:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3a
    iget v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_70

    monitor-exit v6

    new-instance v1, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;

    invoke-direct {v1, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$1;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    const-string/jumbo v6, "auto"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    :cond_4b
    :goto_4b
    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6, v1}, Landroid/hardware/Camera;->setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V

    :cond_50
    packed-switch v3, :pswitch_data_f2

    sget-object v6, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processRequestTriggers - ignoring unknown control.afTrigger = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6c
    :goto_6c
    :pswitch_6c
    return-void

    :catchall_6d
    move-exception v6

    monitor-exit v7

    throw v6

    :catchall_70
    move-exception v7

    monitor-exit v6

    throw v7

    :cond_73
    const-string/jumbo v6, "macro"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    const-string/jumbo v6, "continuous-picture"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4b

    const-string/jumbo v6, "continuous-video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    goto :goto_4b

    :pswitch_8f
    const-string/jumbo v6, "auto"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b2

    :cond_98
    const/4 v2, 0x3

    :goto_99
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_9c
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v4, v6, 0x1

    iput v4, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    iput v2, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    :try_end_a4
    .catchall {:try_start_9c .. :try_end_a4} :catchall_d1

    monitor-exit v7

    if-eqz v2, :cond_6c

    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    new-instance v7, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;

    invoke-direct {v7, p0, v4, v0}, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper$2;-><init>(Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_6c

    :cond_b2
    const-string/jumbo v6, "macro"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_98

    const-string/jumbo v6, "continuous-picture"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c6

    :cond_c4
    const/4 v2, 0x1

    goto :goto_99

    :cond_c6
    const-string/jumbo v6, "continuous-video"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c4

    const/4 v2, 0x0

    goto :goto_99

    :catchall_d1
    move-exception v6

    monitor-exit v7

    throw v6

    :pswitch_d4
    iget-object v7, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_d7
    iget-object v8, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_ee

    :try_start_da
    iget v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    add-int/lit8 v5, v6, 0x1

    iput v5, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfRun:I

    const/4 v6, 0x0

    iput v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mAfState:I
    :try_end_e3
    .catchall {:try_start_da .. :try_end_e3} :catchall_eb

    :try_start_e3
    monitor-exit v8

    iget-object v6, p0, Landroid/hardware/camera2/legacy/LegacyFocusStateMapper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_e9
    .catchall {:try_start_e3 .. :try_end_e9} :catchall_ee

    monitor-exit v7

    goto :goto_6c

    :catchall_eb
    move-exception v6

    :try_start_ec
    monitor-exit v8

    throw v6
    :try_end_ee
    .catchall {:try_start_ec .. :try_end_ee} :catchall_ee

    :catchall_ee
    move-exception v6

    monitor-exit v7

    throw v6

    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_8f
        :pswitch_d4
    .end packed-switch
.end method
