.class final Landroid/preference/SeekBarVolumizer$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field private mListening:Z

.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$Receiver;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$Receiver;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method

.method private updateVolumeSlider(II)V
    .registers 7

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-static {p1}, Landroid/preference/SeekBarVolumizer;->-wrap0(I)Z

    move-result v1

    :goto_c
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get8(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_3d

    if-eqz v1, :cond_3d

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3d

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    if-nez v2, :cond_4a

    if-nez p2, :cond_4c

    const/4 v0, 0x1

    :goto_2e
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get10(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$H;

    move-result-object v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-get4(Landroid/preference/SeekBarVolumizer;)I

    move-result v3

    invoke-virtual {v2, p2, v3, v0}, Landroid/preference/SeekBarVolumizer$H;->postUpdateSlider(IIZ)V

    :cond_3d
    return-void

    :cond_3e
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get9(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    if-ne p1, v2, :cond_48

    const/4 v1, 0x1

    goto :goto_c

    :cond_48
    const/4 v1, 0x0

    goto :goto_c

    :cond_4a
    const/4 v0, 0x1

    goto :goto_2e

    :cond_4c
    const/4 v0, 0x0

    goto :goto_2e
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v5, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    :cond_1f
    :goto_1f
    return-void

    :cond_20
    const-string/jumbo v4, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4e

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get7(Landroid/preference/SeekBarVolumizer;)Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v5

    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->-set3(Landroid/preference/SeekBarVolumizer;I)I

    :cond_40
    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get0(Landroid/preference/SeekBarVolumizer;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-wrap2(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_1f

    :cond_4e
    const-string/jumbo v4, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const-string/jumbo v4, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-get1(Landroid/preference/SeekBarVolumizer;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    invoke-direct {p0, v1, v3}, Landroid/preference/SeekBarVolumizer$Receiver;->updateVolumeSlider(II)V

    goto :goto_1f

    :cond_6c
    const-string/jumbo v4, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    iget-object v5, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v5}, Landroid/preference/SeekBarVolumizer;->-get6(Landroid/preference/SeekBarVolumizer;)Landroid/app/NotificationManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v5

    invoke-static {v4, v5}, Landroid/preference/SeekBarVolumizer;->-set4(Landroid/preference/SeekBarVolumizer;I)I

    iget-object v4, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v4}, Landroid/preference/SeekBarVolumizer;->-wrap2(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_1f
.end method

.method public setListening(Z)V
    .registers 4

    iget-boolean v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-ne v1, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->mListening:Z

    if-eqz p1, :cond_2d

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_2c
    return-void

    :cond_2d
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$Receiver;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get3(Landroid/preference/SeekBarVolumizer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_2c
.end method
