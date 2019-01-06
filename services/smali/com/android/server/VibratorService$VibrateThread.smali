.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private mForceStop:Z

.field private final mUid:I

.field private final mUsageHint:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get4(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->-get4(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private delayLocked(J)J
    .registers 14

    const-wide/16 v8, 0x0

    move-wide v2, p1

    cmp-long v5, p1, v8

    if-lez v5, :cond_24

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long v0, p1, v6

    :goto_d
    :try_start_d
    invoke-virtual {p0, v2, v3}, Lcom/android/server/VibratorService$VibrateThread;->wait(J)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_17

    :goto_10
    iget-boolean v5, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v5, :cond_19

    :cond_14
    sub-long v6, p1, v2

    return-wide v6

    :catch_17
    move-exception v4

    goto :goto_10

    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v2, v0, v6

    cmp-long v5, v2, v8

    if-lez v5, :cond_14

    goto :goto_d

    :cond_24
    return-wide v8
.end method

.method private getTotalOnDuration([J[III)J
    .registers 13

    move v1, p3

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    :cond_4
    aget v3, p2, v1

    if-eqz v3, :cond_1c

    add-int/lit8 v2, v1, 0x1

    aget-wide v6, p1, v1

    add-long/2addr v4, v6

    array-length v3, p1

    if-lt v2, v3, :cond_1d

    if-ltz p4, :cond_1b

    if-eqz v0, :cond_1b

    move v1, p4

    const/4 v0, 0x0

    :goto_16
    if-ne v1, p3, :cond_4

    const-wide/16 v6, 0x3e8

    return-wide v6

    :cond_1b
    move v1, v2

    :cond_1c
    return-wide v4

    :cond_1d
    move v1, v2

    goto :goto_16
.end method


# virtual methods
.method public cancel()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->-get3(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->notify()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playWaveform()Z
    .registers 21

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v2

    array-length v13, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v3}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v14

    const/4 v9, 0x0

    const-wide/16 v4, 0x0

    move v12, v9

    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v3, :cond_6c

    if-ge v12, v13, :cond_6a

    aget v6, v2, v12

    add-int/lit8 v9, v12, 0x1

    aget-wide v10, v15, v12

    const-wide/16 v18, 0x0

    cmp-long v3, v10, v18

    if-gtz v3, :cond_34

    move v12, v9

    goto :goto_1e

    :cond_34
    if-eqz v6, :cond_53

    const-wide/16 v18, 0x0

    cmp-long v3, v4, v18

    if-gtz v3, :cond_5f

    add-int/lit8 v3, v9, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v3, v14}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    invoke-static/range {v3 .. v8}, Lcom/android/server/VibratorService;->-wrap1(Lcom/android/server/VibratorService;JIII)V

    :cond_53
    :goto_53
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v16

    if-eqz v6, :cond_5d

    sub-long v4, v4, v16

    :cond_5d
    :goto_5d
    move v12, v9

    goto :goto_1e

    :cond_5f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3, v6}, Lcom/android/server/VibratorService;->-wrap2(Lcom/android/server/VibratorService;I)V
    :try_end_66
    .catchall {:try_start_1 .. :try_end_66} :catchall_67

    goto :goto_53

    :catchall_67
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_6a
    if-gez v14, :cond_74

    :cond_6c
    :try_start_6c
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z
    :try_end_70
    .catchall {:try_start_6c .. :try_end_70} :catchall_67

    xor-int/lit8 v3, v3, 0x1

    monitor-exit p0

    return v3

    :cond_74
    move v9, v14

    goto :goto_5d
.end method

.method public run()V
    .registers 4

    const/4 v1, -0x8

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_22

    :cond_18
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_22
    move-exception v1

    iget-object v2, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->-get5(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v1
.end method
