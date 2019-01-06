.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private mMediaPlayPauseKeyPending:Z

.field private mSession:Landroid/media/session/MediaSession;


# direct methods
.method static synthetic -set0(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$CallbackMessageHandler;
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    return-object p1
.end method

.method static synthetic -set1(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;
    .registers 2

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/session/MediaSession$Callback;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleMediaPlayPauseKeySingleTapIfPending()V
    .registers 11

    const-wide/16 v8, 0x0

    iget-boolean v6, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-nez v6, :cond_7

    return-void

    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    iget-object v6, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    const/16 v7, 0x17

    invoke-virtual {v6, v7}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    iget-object v6, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v6}, Landroid/media/session/MediaSession;->-get1(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v3

    if-nez v3, :cond_3d

    const-wide/16 v4, 0x0

    :goto_1b
    if-eqz v3, :cond_44

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_42

    const/4 v2, 0x1

    :goto_25
    const-wide/16 v6, 0x204

    and-long/2addr v6, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_46

    const/4 v1, 0x1

    :goto_2d
    const-wide/16 v6, 0x202

    and-long/2addr v6, v4

    cmp-long v6, v6, v8

    if-eqz v6, :cond_48

    const/4 v0, 0x1

    :goto_35
    if-eqz v2, :cond_4a

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    goto :goto_1b

    :cond_42
    const/4 v2, 0x0

    goto :goto_25

    :cond_44
    const/4 v2, 0x0

    goto :goto_25

    :cond_46
    const/4 v1, 0x0

    goto :goto_2d

    :cond_48
    const/4 v0, 0x0

    goto :goto_35

    :cond_4a
    if-nez v2, :cond_3c

    if-eqz v1, :cond_3c

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    goto :goto_3c
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4

    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onFastForward()V
    .registers 1

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .registers 13

    const/16 v10, 0x17

    const/4 v9, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    if-eqz v4, :cond_47

    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v4, :cond_47

    const-string/jumbo v4, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    const-string/jumbo v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_47

    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v4}, Landroid/media/session/MediaSession;->-get1(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v1

    if-nez v1, :cond_48

    const-wide/16 v2, 0x0

    :goto_36
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_c8

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_d2

    :cond_47
    return v9

    :cond_48
    invoke-virtual {v1}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v2

    goto :goto_36

    :sswitch_4d
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_57

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;->handleMediaPlayPauseKeySingleTapIfPending()V

    :cond_56
    :goto_56
    return v8

    :cond_57
    iget-boolean v4, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    if-eqz v4, :cond_6d

    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {v4, v10}, Landroid/media/session/MediaSession$CallbackMessageHandler;->removeMessages(I)V

    iput-boolean v9, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    const-wide/16 v4, 0x20

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_56

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    goto :goto_56

    :cond_6d
    iput-boolean v8, p0, Landroid/media/session/MediaSession$Callback;->mMediaPlayPauseKeyPending:Z

    iget-object v4, p0, Landroid/media/session/MediaSession$Callback;->mHandler:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v10, v6, v7}, Landroid/media/session/MediaSession$CallbackMessageHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_56

    :sswitch_7a
    const-wide/16 v4, 0x4

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    return v8

    :sswitch_85
    const-wide/16 v4, 0x2

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    return v8

    :sswitch_90
    const-wide/16 v4, 0x20

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    return v8

    :sswitch_9b
    const-wide/16 v4, 0x10

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    return v8

    :sswitch_a6
    const-wide/16 v4, 0x1

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    return v8

    :sswitch_b1
    const-wide/16 v4, 0x40

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    return v8

    :sswitch_bc
    const-wide/16 v4, 0x8

    and-long/2addr v4, v2

    cmp-long v4, v4, v6

    if-eqz v4, :cond_47

    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    return v8

    nop

    :sswitch_data_c8
    .sparse-switch
        0x4f -> :sswitch_4d
        0x55 -> :sswitch_4d
    .end sparse-switch

    :sswitch_data_d2
    .sparse-switch
        0x56 -> :sswitch_a6
        0x57 -> :sswitch_90
        0x58 -> :sswitch_9b
        0x59 -> :sswitch_bc
        0x5a -> :sswitch_b1
        0x7e -> :sswitch_7a
        0x7f -> :sswitch_85
    .end sparse-switch
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onPlay()V
    .registers 1

    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPrepare()V
    .registers 1

    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onRewind()V
    .registers 1

    return-void
.end method

.method public onSeekTo(J)V
    .registers 3

    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .registers 2

    return-void
.end method

.method public onSkipToNext()V
    .registers 1

    return-void
.end method

.method public onSkipToPrevious()V
    .registers 1

    return-void
.end method

.method public onSkipToQueueItem(J)V
    .registers 3

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method
