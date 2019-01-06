.class abstract Landroid/media/AudioStatusHandler$AudioState;
.super Ljava/lang/Object;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "AudioState"
.end annotation


# instance fields
.field final DEFAULT_STATE:I

.field mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

.field mPid:I

.field mStartTime:J

.field mState:I

.field mUsage:I

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;II)V

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioStatusHandler;II)V
    .registers 6

    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    iput p2, p0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    iget v0, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    return-void
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onConfigChanaged()Z
.end method

.method public abstract onMessageReceived(Landroid/os/Message;)Z
.end method

.method public abstract onStateChanged()V
.end method

.method public update(Landroid/os/Bundle;)Z
    .registers 10

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_b
    return v4

    :cond_c
    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mUsage:I

    const-string/jumbo v3, "usage"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_18

    return v4

    :cond_18
    const-string/jumbo v2, "pid"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v2, "state"

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    if-ne v0, v2, :cond_31

    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    if-ne v1, v2, :cond_31

    return v4

    :cond_31
    iput v0, p0, Landroid/media/AudioStatusHandler$AudioState;->mPid:I

    iput v1, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    iget-wide v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_41

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    :cond_41
    iget v2, p0, Landroid/media/AudioStatusHandler$AudioState;->mState:I

    iget v3, p0, Landroid/media/AudioStatusHandler$AudioState;->DEFAULT_STATE:I

    if-ne v2, v3, :cond_49

    iput-wide v6, p0, Landroid/media/AudioStatusHandler$AudioState;->mStartTime:J

    :cond_49
    invoke-virtual {p0}, Landroid/media/AudioStatusHandler$AudioState;->onStateChanged()V

    const/4 v2, 0x1

    return v2
.end method

.method public updateDeviceState(Landroid/media/AudioStatusHandler$DeviceState;)Z
    .registers 3

    iput-object p1, p0, Landroid/media/AudioStatusHandler$AudioState;->mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

    const/4 v0, 0x1

    return v0
.end method
