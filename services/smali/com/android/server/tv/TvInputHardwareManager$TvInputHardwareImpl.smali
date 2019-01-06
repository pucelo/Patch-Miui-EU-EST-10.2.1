.class Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
.super Landroid/media/tv/ITvInputHardware$Stub;
.source "TvInputHardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TvInputHardwareImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;
    }
.end annotation


# instance fields
.field private mActiveConfig:Landroid/media/tv/TvStreamConfig;

.field private final mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

.field private mAudioPatch:Landroid/media/AudioPatch;

.field private mAudioSink:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioSource:Landroid/media/AudioDevicePort;

.field private mCommittedVolume:F

.field private mDesiredChannelMask:I

.field private mDesiredFormat:I

.field private mDesiredSamplingRate:I

.field private final mImplLock:Ljava/lang/Object;

.field private final mInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mOverrideAudioAddress:Ljava/lang/String;

.field private mOverrideAudioType:I

.field private mReleased:Z

.field private mSourceVolume:F

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Landroid/media/AudioPatch;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioPatch;)Landroid/media/AudioPatch;
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/AudioDevicePort;)Landroid/media/AudioDevicePort;
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->stopCapture(Landroid/media/tv/TvStreamConfig;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->handleAudioSinkUpdated()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Landroid/media/tv/ITvInputHardware$Stub;-><init>()V

    iput-boolean v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    iput v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    if-eqz v0, :cond_61

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    :cond_61
    return-void
.end method

.method private findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;
    .registers 8

    const/4 v4, 0x0

    if-nez p1, :cond_4

    return-object v4

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v3

    if-eqz v3, :cond_15

    return-object v4

    :cond_15
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v3

    if-ne v3, p1, :cond_19

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    return-object v1

    :cond_36
    return-object v4
.end method

.method private findAudioSinkFromAudioPolicy(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioDevicePort;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    invoke-static {v0}, Landroid/media/AudioManager;->listAudioDevicePorts(Ljava/util/ArrayList;)I

    move-result v4

    if-eqz v4, :cond_14

    return-void

    :cond_14
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v3

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioDevicePort;

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_23

    invoke-virtual {v1}, Landroid/media/AudioDevicePort;->type()I

    move-result v4

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-nez v4, :cond_23

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_43
    return-void
.end method

.method private handleAudioSinkUpdated()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private startCapture(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_2e

    if-eqz v3, :cond_a

    monitor-exit v2

    return v1

    :cond_a
    if-eqz p1, :cond_e

    if-nez p2, :cond_10

    :cond_e
    monitor-exit v2

    return v1

    :cond_10
    :try_start_10
    invoke-virtual {p2}, Landroid/media/tv/TvStreamConfig;->getType()I
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_2e

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_19

    monitor-exit v2

    return v1

    :cond_19
    :try_start_19
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_2e

    move-result v0

    if-nez v0, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    monitor-exit v2

    return v1

    :catchall_2e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private stopCapture(Landroid/media/tv/TvStreamConfig;)Z
    .registers 7

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    iget-boolean v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_23

    if-eqz v3, :cond_a

    monitor-exit v2

    return v1

    :cond_a
    if-nez p1, :cond_e

    monitor-exit v2

    return v1

    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v3}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v4}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I
    :try_end_1d
    .catchall {:try_start_e .. :try_end_1d} :catchall_23

    move-result v0

    if-nez v0, :cond_21

    const/4 v1, 0x1

    :cond_21
    monitor-exit v2

    return v1

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateAudioConfigLocked()V
    .registers 35

    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSinkLocked()Z

    move-result v19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioSourceLocked()Z

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    if-eqz v29, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    move-object/from16 v29, v0

    if-nez v29, :cond_47

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    if-eqz v29, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    :cond_46
    return-void

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap4(Lcom/android/server/tv/TvInputHardwareManager;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v30, v0

    invoke-static/range {v30 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap2(Lcom/android/server/tv/TvInputHardwareManager;)F

    move-result v30

    mul-float v28, v29, v30

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_fb

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    move/from16 v29, v0

    cmpl-float v29, v28, v29

    if-eqz v29, :cond_fb

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->gains()[Landroid/media/AudioGain;

    move-result-object v30

    const/16 v29, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    :goto_92
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_a4

    aget-object v9, v30, v29

    invoke-virtual {v9}, Landroid/media/AudioGain;->mode()I

    move-result v32

    and-int/lit8 v32, v32, 0x1

    if-eqz v32, :cond_1c4

    move-object/from16 v23, v9

    :cond_a4
    if-eqz v23, :cond_1ce

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->maxValue()I

    move-result v29

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->minValue()I

    move-result v30

    sub-int v29, v29, v30

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->stepValue()I

    move-result v30

    div-int v27, v29, v30

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->minValue()I

    move-result v10

    const/high16 v29, 0x3f800000    # 1.0f

    cmpg-float v29, v28, v29

    if-gez v29, :cond_1c8

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->stepValue()I

    move-result v29

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v30, v0

    mul-float v30, v30, v28

    move/from16 v0, v30

    float-to-double v0, v0

    move-wide/from16 v30, v0

    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    add-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    mul-int v29, v29, v30

    add-int v10, v10, v29

    :goto_dd
    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v11, v0, [I

    const/16 v29, 0x0

    aput v10, v11, v29

    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->channelMask()I

    move-result v29

    const/16 v30, 0x1

    const/16 v31, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v30

    move/from16 v2, v29

    move/from16 v3, v31

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/media/AudioGain;->buildConfig(II[II)Landroid/media/AudioGainConfig;

    move-result-object v24

    :cond_fb
    :goto_fb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v21

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v6, v0, [Landroid/media/AudioPatch;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aput-object v29, v6, v30

    if-nez v26, :cond_1da

    move/from16 v13, v19

    :goto_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_128
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_1f0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioDevicePort;

    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->activeConfig()Landroid/media/AudioPortConfig;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    move/from16 v17, v0

    if-eqz v15, :cond_166

    if-nez v18, :cond_150

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v18

    :cond_150
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v14, v0, :cond_15a

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v14

    :cond_15a
    const/16 v29, 0x1

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_166

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    move-result v14

    :cond_166
    if-eqz v15, :cond_172

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v18

    if-eq v0, v1, :cond_1dd

    :cond_172
    :goto_172
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-nez v29, :cond_193

    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_193

    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v18, v29, v30

    :cond_193
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v0, v14}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-nez v29, :cond_1a0

    const/4 v14, 0x1

    :cond_1a0
    invoke-virtual {v7}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-nez v29, :cond_1b0

    const/16 v17, 0x1

    :cond_1b0
    const/16 v29, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v29

    invoke-virtual {v7, v0, v14, v1, v2}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v15

    const/4 v13, 0x1

    :cond_1bd
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_128

    :cond_1c4
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_92

    :cond_1c8
    invoke-virtual/range {v23 .. v23}, Landroid/media/AudioGain;->maxValue()I

    move-result v10

    goto/16 :goto_dd

    :cond_1ce
    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v30, "No audio source gain with MODE_JOINT support exists."

    invoke-static/range {v29 .. v30}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fb

    :cond_1da
    const/4 v13, 0x1

    goto/16 :goto_11e

    :cond_1dd
    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v29

    move/from16 v0, v29

    if-ne v0, v14, :cond_172

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, v17

    if-eq v0, v1, :cond_1bd

    goto :goto_172

    :cond_1f0
    const/16 v29, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioPortConfig;

    if-eqz v21, :cond_200

    if-eqz v24, :cond_278

    :cond_200
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-eqz v29, :cond_2ed

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->samplingRate()I

    move-result v25

    :cond_21a
    :goto_21a
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->channelMasks()[I

    move-result-object v30

    const/16 v29, 0x0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v31, v0

    :goto_22d
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_249

    aget v12, v30, v29

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->channelMask()I

    move-result v32

    invoke-static/range {v32 .. v32}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v32

    invoke-static {v12}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_30e

    move/from16 v20, v12

    :cond_249
    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->formats()[I

    move-result-object v29

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    move-result v30

    invoke-static/range {v29 .. v30}, Lcom/android/server/tv/TvInputHardwareManager;->-wrap1([II)Z

    move-result v29

    if-eqz v29, :cond_263

    invoke-virtual {v15}, Landroid/media/AudioPortConfig;->format()I

    move-result v22

    :cond_263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v25

    move/from16 v2, v20

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/AudioDevicePort;->buildConfig(IIILandroid/media/AudioGainConfig;)Landroid/media/AudioDevicePortConfig;

    move-result-object v21

    const/4 v13, 0x1

    :cond_278
    if-eqz v13, :cond_2ec

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mCommittedVolume:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    if-eqz v29, :cond_29a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    :cond_29a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [Landroid/media/AudioPortConfig;

    move-object/from16 v30, v0

    const/16 v29, 0x0

    aput-object v21, v30, v29

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v29

    new-array v0, v0, [Landroid/media/AudioPortConfig;

    move-object/from16 v29, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/media/AudioPortConfig;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-static {v6, v0, v1}, Landroid/media/AudioManager;->createAudioPatch([Landroid/media/AudioPatch;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)I

    const/16 v29, 0x0

    aget-object v29, v6, v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v24, :cond_2ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/media/AudioManager;->setAudioPortGain(Landroid/media/AudioPort;Landroid/media/AudioGainConfig;)I

    :cond_2ec
    return-void

    :cond_2ed
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_21a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/media/AudioDevicePort;->samplingRates()[I

    move-result-object v29

    const/16 v30, 0x0

    aget v25, v29, v30

    goto/16 :goto_21a

    :cond_30e
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_22d
.end method

.method private updateAudioSinkLocked()Z
    .registers 5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    if-nez v2, :cond_a

    return v3

    :cond_a
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    iget v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    if-nez v2, :cond_2a

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioSinkFromAudioPolicy(Ljava/util/List;)V

    :cond_1c
    :goto_1c
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_3a

    const/4 v2, 0x1

    return v2

    :cond_2a
    iget v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_3a
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSink:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method private updateAudioSourceLocked()Z
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    if-nez v2, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v2}, Landroid/media/tv/TvInputHardwareInfo;->getAudioType()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getAudioAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->findAudioDevicePort(ILjava/lang/String;)Landroid/media/AudioDevicePort;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    if-nez v2, :cond_26

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    :cond_25
    :goto_25
    return v1

    :cond_26
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioSource:Landroid/media/AudioDevicePort;

    invoke-virtual {v1, v0}, Landroid/media/AudioDevicePort;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_25
.end method


# virtual methods
.method public dispatchKeyEventToHdmi(Landroid/view/KeyEvent;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Device already released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_14
    monitor-exit v1

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_20

    return v2

    :cond_20
    return v2
.end method

.method public onMediaStreamVolumeChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public overrideAudioSink(ILjava/lang/String;III)V
    .registers 8

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioType:I

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mOverrideAudioAddress:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredSamplingRate:I

    iput p4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredChannelMask:I

    iput p5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mDesiredFormat:I

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioListener:Landroid/media/AudioManager$OnAudioPortUpdateListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterAudioPortUpdateListener(Landroid/media/AudioManager$OnAudioPortUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-get1(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    invoke-static {v0}, Landroid/media/AudioManager;->releaseAudioPatch(Landroid/media/AudioPatch;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mAudioPatch:Landroid/media/AudioPatch;

    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    monitor-exit v1

    return-void

    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setStreamVolume(F)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Device already released."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_13
    :try_start_13
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mSourceVolume:F

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_10

    monitor-exit v1

    return-void
.end method

.method public setSurface(Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mImplLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    iget-boolean v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mReleased:Z

    if-eqz v4, :cond_15

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Device already released."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v1

    monitor-exit v3

    throw v1

    :cond_15
    const/4 v0, 0x0

    if-nez p1, :cond_3a

    :try_start_18
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_38

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v0

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    :cond_31
    :goto_31
    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->updateAudioConfigLocked()V
    :try_end_34
    .catchall {:try_start_18 .. :try_end_34} :catchall_12

    if-nez v0, :cond_7a

    :goto_36
    monitor-exit v3

    return v1

    :cond_38
    monitor-exit v3

    return v1

    :cond_3a
    if-nez p2, :cond_3e

    monitor-exit v3

    return v2

    :cond_3e
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {p2, v4}, Landroid/media/tv/TvStreamConfig;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_63

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/tv/TvInputHal;->removeStream(ILandroid/media/tv/TvStreamConfig;)I

    move-result v0

    if-eqz v0, :cond_63

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;

    :cond_63
    if-nez v0, :cond_31

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v4}, Lcom/android/server/tv/TvInputHardwareManager;->-get3(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v5}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v5

    invoke-virtual {v4, v5, p1, p2}, Lcom/android/server/tv/TvInputHal;->addOrUpdateStream(ILandroid/view/Surface;Landroid/media/tv/TvStreamConfig;)I

    move-result v0

    if-nez v0, :cond_31

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->mActiveConfig:Landroid/media/tv/TvStreamConfig;
    :try_end_79
    .catchall {:try_start_3e .. :try_end_79} :catchall_12

    goto :goto_31

    :cond_7a
    move v1, v2

    goto :goto_36
.end method
