.class Landroid/media/AudioStatusHandler$ModeState;
.super Landroid/media/AudioStatusHandler$AudioState;
.source "AudioStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ModeState"
.end annotation


# instance fields
.field private mModeMask:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/AudioStatusHandler;


# direct methods
.method public constructor <init>(Landroid/media/AudioStatusHandler;)V
    .registers 5

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-direct {p0, p1, v0, v0}, Landroid/media/AudioStatusHandler$AudioState;-><init>(Landroid/media/AudioStatusHandler;II)V

    invoke-static {p1}, Landroid/media/AudioStatusHandler;->-get3(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mode_mask_for_notify"

    const/4 v2, -0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    if-nez v0, :cond_21

    const-string/jumbo v0, "3"

    iput-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    :cond_21
    return-void
.end method

.method private cancelModeNotification()V
    .registers 4

    iget-object v1, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v1}, Landroid/media/AudioStatusHandler;->-get3(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get0()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "cancelAudioStatusNotification id 10001"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method private isSpeakerOn()Z
    .registers 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/media/AudioStatusHandler$ModeState;->mDeviceState:Landroid/media/AudioStatusHandler$DeviceState;

    iget v1, v1, Landroid/media/AudioStatusHandler$DeviceState;->mConfig:I

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private sendModeNotification()V
    .registers 4

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->showNotifyForMode()Z

    move-result v0

    if-nez v0, :cond_24

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendModeStatusNotification not communication mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_24
    invoke-static {}, Landroid/media/AudioStatusHandler;->-get0()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendModeStatusNotification type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mUsage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " speakerOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->isSpeakerOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_70
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v0}, Landroid/media/AudioStatusHandler;->-get3(Landroid/media/AudioStatusHandler;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioStatusHandler$ModeState;->mPid:I

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->isSpeakerOn()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/AudioStatusNotify;->sendAudioStatusNotification(Landroid/content/Context;IZ)V

    return-void
.end method

.method private sendOrUpdateModeMsg()V
    .registers 12

    const/16 v10, 0x2711

    const-wide/16 v8, 0x0

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->showNotifyForMode()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v4, v10}, Landroid/media/AudioStatusHandler;->-wrap0(Landroid/media/AudioStatusHandler;I)V

    iget-object v4, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    const/16 v5, 0x2712

    invoke-static {v4, v5, v8, v9}, Landroid/media/AudioStatusHandler;->-wrap1(Landroid/media/AudioStatusHandler;IJ)V

    return-void

    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_23

    iput-wide v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    :cond_23
    iget-wide v4, p0, Landroid/media/AudioStatusHandler$ModeState;->mStartTime:J

    sub-long v4, v0, v4

    const-wide/32 v6, 0x1d4c0

    sub-long v2, v6, v4

    cmp-long v4, v2, v8

    if-gez v4, :cond_32

    const-wide/16 v2, 0x0

    :cond_32
    iget-object v4, p0, Landroid/media/AudioStatusHandler$ModeState;->this$0:Landroid/media/AudioStatusHandler;

    invoke-static {v4, v10, v2, v3}, Landroid/media/AudioStatusHandler;->-wrap1(Landroid/media/AudioStatusHandler;IJ)V

    return-void
.end method

.method private showNotifyForMode()Z
    .registers 4

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get0()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {}, Landroid/media/AudioStatusHandler;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showNotifyForMode mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " modeString "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v0, p0, Landroid/media/AudioStatusHandler$ModeState;->mModeMask:Ljava/lang/String;

    iget v1, p0, Landroid/media/AudioStatusHandler$ModeState;->mState:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    return v0

    :cond_40
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public isActive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigChanaged()Z
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendOrUpdateModeMsg()V

    const/4 v0, 0x1

    return v0
.end method

.method public onMessageReceived(Landroid/os/Message;)Z
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    :goto_5
    const/4 v0, 0x0

    return v0

    :pswitch_7
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendModeNotification()V

    goto :goto_5

    :pswitch_b
    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->cancelModeNotification()V

    goto :goto_5

    nop

    :pswitch_data_10
    .packed-switch 0x2711
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public onStateChanged()V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioStatusHandler$ModeState;->sendOrUpdateModeMsg()V

    return-void
.end method
