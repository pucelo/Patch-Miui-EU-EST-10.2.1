.class Lcom/android/server/tv/TvInputHardwareManager$Connection;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputHardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Connection"
.end annotation


# instance fields
.field private mCallback:Landroid/media/tv/ITvInputHardwareCallback;

.field private mCallingUid:Ljava/lang/Integer;

.field private mConfigs:[Landroid/media/tv/TvStreamConfig;

.field private mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

.field private final mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

.field private mInfo:Landroid/media/tv/TvInputInfo;

.field private mOnFirstFrameCaptured:Ljava/lang/Runnable;

.field private mResolvedUserId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/server/tv/TvInputHardwareManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInputStateLocked()I

    move-result v0

    return v0
.end method

.method public constructor <init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    return-void
.end method

.method private getConfigsLengthLocked()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    array-length v0, v0

    goto :goto_5
.end method

.method private getInputStateLocked()I
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLengthLocked()I

    move-result v0

    if-lez v0, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputHardwareInfo;->getCableConnectionStatus()I

    move-result v1

    packed-switch v1, :pswitch_data_16

    const/4 v1, 0x1

    return v1

    :pswitch_13
    return v2

    :pswitch_14
    const/4 v1, 0x2

    return v1

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method public binderDied()V
    .registers 8

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->this$0:Lcom/android/server/tv/TvInputHardwareManager;

    invoke-static {v0}, Lcom/android/server/tv/TvInputHardwareManager;->-get10(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_d
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_12

    monitor-exit v6

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    return-object v0
.end method

.method public getCallingUidLocked()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConfigsLocked()[Landroid/media/tv/TvStreamConfig;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    return-object v0
.end method

.method public getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    return-object v0
.end method

.method public getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    return-object v0
.end method

.method public getHardwareLocked()Landroid/media/tv/ITvInputHardware;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    return-object v0
.end method

.method public getInfoLocked()Landroid/media/tv/TvInputInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    return-object v0
.end method

.method public getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    return-object v0
.end method

.method public getResolvedUserIdLocked()Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    return-object v0
.end method

.method public resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 10

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    if-eqz v1, :cond_f

    :try_start_5
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-interface {v1}, Landroid/media/tv/ITvInputHardwareCallback;->onReleased()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_2d

    :goto_a
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    :cond_f
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    iput-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    iput-object p4, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    iput-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardware:Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    if-eqz v1, :cond_2c

    :try_start_23
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2c} :catch_39

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "error in Connection::resetLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    :catch_39
    move-exception v0

    invoke-static {}, Lcom/android/server/tv/TvInputHardwareManager;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "error in Connection::resetLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method public setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mOnFirstFrameCaptured:Ljava/lang/Runnable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Connection{ mHardwareInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mHardwareInfo:Landroid/media/tv/TvInputHardwareInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mInfo:Landroid/media/tv/TvInputInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallback:Landroid/media/tv/ITvInputHardwareCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mConfigs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mCallingUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mCallingUid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mResolvedUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mResolvedUserId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;->mConfigs:[Landroid/media/tv/TvStreamConfig;

    return-void
.end method
