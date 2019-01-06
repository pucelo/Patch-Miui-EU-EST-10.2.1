.class public Landroid/media/AudioStatusHandler;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioStatusHandler$1;,
        Landroid/media/AudioStatusHandler$AudioState;,
        Landroid/media/AudioStatusHandler$DeviceState;,
        Landroid/media/AudioStatusHandler$ModeState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DELAY:J = 0x1d4c0L

.field public static final KEY_PID:Ljava/lang/String; = "pid"

.field public static final KEY_STATE:Ljava/lang/String; = "state"

.field public static final KEY_USAGE:Ljava/lang/String; = "usage"

.field public static final MODE_MASK_FOR_NOTIFY:Ljava/lang/String; = "mode_mask_for_notify"

.field public static final MODE_MASK_FOR_NOTIFY_DEFAULT:Ljava/lang/String; = "3"

.field private static final MSG_CANCEL_MODE_NOTIFICATION:I = 0x2712

.field private static final MSG_SEND_MODE_NOTIFICATION:I = 0x2711

.field private static final TAG:Ljava/lang/String;

.field private static sAudioStatusHandler:Landroid/media/AudioStatusHandler;


# instance fields
.field private mAudioState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioStatusHandler$AudioState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDeviceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/AudioStatusHandler$DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandle:Landroid/os/Handler;

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/AudioStatusHandler;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/AudioStatusHandler;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/AudioStatusHandler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/AudioStatusHandler;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/AudioStatusHandler;IJ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioStatusHandler;->sendMessage(IJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-class v0, Landroid/media/AudioStatusHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    sget-object v0, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/media/AudioStatusHandler;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    new-instance v0, Landroid/media/AudioStatusHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/media/AudioStatusHandler$1;-><init>(Landroid/media/AudioStatusHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    iput-object p1, p0, Landroid/media/AudioStatusHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addAudioState(I)Landroid/media/AudioStatusHandler$AudioState;
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$AudioState;

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    packed-switch p1, :pswitch_data_4c

    :goto_13
    if-eqz v0, :cond_4a

    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioStatusHandler$DeviceState;

    if-nez v1, :cond_27

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;

    move-result-object v1

    :cond_27
    invoke-virtual {v0, v1}, Landroid/media/AudioStatusHandler$AudioState;->updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z

    iget-object v3, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2d
    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_47

    monitor-exit v3

    return-object v0

    :pswitch_41
    new-instance v0, Landroid/media/AudioStatusHandler$ModeState;

    invoke-direct {v0, p0}, Landroid/media/AudioStatusHandler$ModeState;-><init>(Landroid/media/AudioStatusHandler;)V

    goto :goto_13

    :catchall_47
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_4a
    return-object v4

    nop

    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_41
    .end packed-switch
.end method

.method private addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;
    .registers 6

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$DeviceState;

    if-eqz v0, :cond_f

    return-object v0

    :cond_f
    new-instance v0, Landroid/media/AudioStatusHandler$DeviceState;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioStatusHandler$DeviceState;-><init>(Landroid/media/AudioStatusHandler;I)V

    iget-object v2, p0, Landroid/media/AudioStatusHandler;->mStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_17
    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mDeviceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_22

    monitor-exit v2

    return-object v0

    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private cancelMessage(I)V
    .registers 3

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/media/AudioStatusHandler;
    .registers 3

    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v0, :cond_13

    const-class v1, Landroid/media/AudioStatusHandler;

    monitor-enter v1

    :try_start_7
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    if-nez v0, :cond_12

    new-instance v0, Landroid/media/AudioStatusHandler;

    invoke-direct {v0, p0}, Landroid/media/AudioStatusHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_16

    :cond_12
    monitor-exit v1

    :cond_13
    sget-object v0, Landroid/media/AudioStatusHandler;->sAudioStatusHandler:Landroid/media/AudioStatusHandler;

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private sendMessage(IJ)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->cancelMessage(I)V

    iget-object v0, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    iget-object v1, p0, Landroid/media/AudioStatusHandler;->mHandle:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public handleAudioStatusChanged(Landroid/os/Bundle;)V
    .registers 7

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    return-void

    :cond_9
    const-string/jumbo v2, "usage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/media/AudioStatusHandler;->addAudioState(I)Landroid/media/AudioStatusHandler$AudioState;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0, p1}, Landroid/media/AudioStatusHandler$AudioState;->update(Landroid/os/Bundle;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3c

    :cond_1e
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_3b

    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAudioStatusChanged no update for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void

    :cond_3c
    sget-boolean v2, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v2, :cond_75

    sget-object v2, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleAudioStatusChanged type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    return-void
.end method

.method public handleSetForceUse(IILjava/lang/String;)V
    .registers 10

    invoke-direct {p0, p1}, Landroid/media/AudioStatusHandler;->addDeviceState(I)Landroid/media/AudioStatusHandler$DeviceState;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/AudioStatusHandler$DeviceState;->update(IILjava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2c

    :cond_e
    sget-boolean v3, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v3, :cond_2b

    sget-object v3, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSetForceUse no update for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return-void

    :cond_2c
    sget-boolean v3, Landroid/media/AudioStatusHandler;->DEBUG:Z

    if-eqz v3, :cond_6f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "handleSetForceUse("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/media/AudioStatusHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleSetForceUse type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6f
    iget-object v3, p0, Landroid/media/AudioStatusHandler;->mAudioState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioStatusHandler$AudioState;

    if-eqz v0, :cond_83

    invoke-virtual {v0, v1}, Landroid/media/AudioStatusHandler$AudioState;->updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z

    invoke-virtual {v0}, Landroid/media/AudioStatusHandler$AudioState;->onConfigChanaged()Z

    :cond_83
    return-void
.end method
