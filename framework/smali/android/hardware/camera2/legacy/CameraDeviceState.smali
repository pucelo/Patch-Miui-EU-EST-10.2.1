.class public Landroid/hardware/camera2/legacy/CameraDeviceState;
.super Ljava/lang/Object;
.source "CameraDeviceState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final NO_CAPTURE_ERROR:I = -0x1

.field private static final STATE_CAPTURING:I = 0x4

.field private static final STATE_CONFIGURING:I = 0x2

.field private static final STATE_ERROR:I = 0x0

.field private static final STATE_IDLE:I = 0x3

.field private static final STATE_UNCONFIGURED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CameraDeviceState"

.field private static final sStateNames:[Ljava/lang/String;


# instance fields
.field private mCurrentError:I

.field private mCurrentHandler:Landroid/os/Handler;

.field private mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

.field private mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

.field private mCurrentState:I


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/legacy/CameraDeviceState;)I
    .registers 2

    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    return v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/legacy/CameraDeviceState;)Landroid/hardware/camera2/legacy/RequestHolder;
    .registers 2

    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "ERROR"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "UNCONFIGURED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "CONFIGURING"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "IDLE"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "CAPTURING"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    return-void
.end method

.method private doStateTransition(I)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    return-void
.end method

.method private doStateTransition(IJI)V
    .registers 13

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq p1, v1, :cond_30

    const-string/jumbo v0, "UNKNOWN"

    if-ltz p1, :cond_16

    sget-object v1, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge p1, v1, :cond_16

    sget-object v1, Landroid/hardware/camera2/legacy/CameraDeviceState;->sStateNames:[Ljava/lang/String;

    aget-object v0, v1, p1

    :cond_16
    const-string/jumbo v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Legacy camera service transitioning to state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    if-eqz p1, :cond_4a

    if-eq p1, v5, :cond_4a

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, p1, :cond_4a

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_4a

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$5;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$5;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4a
    packed-switch p1, :pswitch_data_15e

    :pswitch_4d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transition to unknown state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_67
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eqz v1, :cond_7d

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_7d

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$6;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$6;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7d
    iput v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    :cond_7f
    :goto_7f
    return-void

    :pswitch_80
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v6, :cond_aa

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v5, :cond_aa

    const-string/jumbo v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot call configure while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto :goto_7f

    :cond_aa
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v7, :cond_c0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_c0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_c0

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$7;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$7;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c0
    iput v7, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto :goto_7f

    :pswitch_c3
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v5, :cond_7f

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v7, :cond_f2

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f2

    const-string/jumbo v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot call idle while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto :goto_7f

    :cond_f2
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v5, :cond_108

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_108

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_108

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$8;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$8;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_108
    iput v5, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto/16 :goto_7f

    :pswitch_10c
    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    if-eq v1, v5, :cond_138

    iget v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_138

    const-string/jumbo v1, "CameraDeviceState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot call capture while in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    invoke-direct {p0, v4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    goto/16 :goto_7f

    :cond_138
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v1, :cond_14d

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v1, :cond_14d

    const/4 v1, -0x1

    if-eq p4, v1, :cond_152

    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$9;

    invoke-direct {v2, p0, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState$9;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_14d
    :goto_14d
    const/4 v1, 0x4

    iput v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    goto/16 :goto_7f

    :cond_152
    iget-object v1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/legacy/CameraDeviceState$10;

    invoke-direct {v2, p0, p2, p3}, Landroid/hardware/camera2/legacy/CameraDeviceState$10;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;J)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_14d

    nop

    :pswitch_data_15e
    .packed-switch 0x0
        :pswitch_67
        :pswitch_4d
        :pswitch_80
        :pswitch_c3
        :pswitch_10c
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized setCameraDeviceCallbacks(Landroid/os/Handler;Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z
    .registers 5

    monitor-enter p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/hardware/camera2/legacy/CameraDeviceState;->setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCaptureResult(Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;ILjava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    monitor-enter p0

    :try_start_4
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_34

    const-string/jumbo v2, "CameraDeviceState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot receive result while in state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_59

    if-ne v2, v5, :cond_32

    :goto_30
    monitor-exit p0

    return v0

    :cond_32
    move v0, v1

    goto :goto_30

    :cond_34
    :try_start_34
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    if-eqz v2, :cond_48

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentListener:Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;

    if-eqz v2, :cond_48

    if-eq p3, v5, :cond_4e

    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v3, Landroid/hardware/camera2/legacy/CameraDeviceState$1;

    invoke-direct {v3, p0, p3, p4, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$1;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;ILjava/lang/Object;Landroid/hardware/camera2/legacy/RequestHolder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_48
    :goto_48
    iget v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_4a
    .catchall {:try_start_34 .. :try_end_4a} :catchall_59

    if-ne v2, v5, :cond_5c

    :goto_4c
    monitor-exit p0

    return v0

    :cond_4e
    :try_start_4e
    iget-object v2, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v3, Landroid/hardware/camera2/legacy/CameraDeviceState$2;

    invoke-direct {v3, p0, p2, p1}, Landroid/hardware/camera2/legacy/CameraDeviceState$2;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_59

    goto :goto_48

    :catchall_59
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5c
    move v0, v1

    goto :goto_4c
.end method

.method public declared-synchronized setCaptureStart(Landroid/hardware/camera2/legacy/RequestHolder;JI)Z
    .registers 7

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentRequest:Landroid/hardware/camera2/legacy/RequestHolder;

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2, p3, p4}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(IJI)V

    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_11

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConfiguring()Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_2
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setError(I)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput p1, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setIdle()Z
    .registers 3

    monitor-enter p0

    const/4 v0, 0x3

    :try_start_2
    invoke-direct {p0, v0}, Landroid/hardware/camera2/legacy/CameraDeviceState;->doStateTransition(I)V

    iget v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentError:I
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_f

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRepeatingRequestError(JI)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$3;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/hardware/camera2/legacy/CameraDeviceState$3;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRequestQueueEmpty()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/legacy/CameraDeviceState;->mCurrentHandler:Landroid/os/Handler;

    new-instance v1, Landroid/hardware/camera2/legacy/CameraDeviceState$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/CameraDeviceState$4;-><init>(Landroid/hardware/camera2/legacy/CameraDeviceState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
