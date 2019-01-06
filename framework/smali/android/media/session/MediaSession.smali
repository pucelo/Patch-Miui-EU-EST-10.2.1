.class public final Landroid/media/session/MediaSession;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/MediaSession$Callback;,
        Landroid/media/session/MediaSession$CallbackMessageHandler;,
        Landroid/media/session/MediaSession$CallbackStub;,
        Landroid/media/session/MediaSession$Command;,
        Landroid/media/session/MediaSession$QueueItem;,
        Landroid/media/session/MediaSession$Token;
    }
.end annotation


# static fields
.field public static final FLAG_EXCLUSIVE_GLOBAL_PRIORITY:I = 0x10000

.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MediaSession"


# instance fields
.field private mActive:Z

.field private final mBinder:Landroid/media/session/ISession;

.field private mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

.field private final mCbStub:Landroid/media/session/MediaSession$CallbackStub;

.field private final mController:Landroid/media/session/MediaController;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxBitmapSize:I

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private final mSessionToken:Landroid/media/session/MediaSession$Token;

.field private mVolumeProvider:Landroid/media/VolumeProvider;


# direct methods
.method static synthetic -get0(Landroid/media/session/MediaSession;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;
    .registers 2

    iget-object v0, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/session/MediaSession;)Landroid/media/VolumeProvider;
    .registers 2

    iget-object v0, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/session/MediaSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchAdjustVolume(I)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap10(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap13(Landroid/media/session/MediaSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPrepare()V

    return-void
.end method

.method static synthetic -wrap14(Landroid/media/session/MediaSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPrevious()V

    return-void
.end method

.method static synthetic -wrap15(Landroid/media/session/MediaSession;Landroid/media/Rating;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/Rating;)V

    return-void
.end method

.method static synthetic -wrap16(Landroid/media/session/MediaSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchRewind()V

    return-void
.end method

.method static synthetic -wrap17(Landroid/media/session/MediaSession;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSeekTo(J)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/media/session/MediaSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchSetVolumeTo(I)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/media/session/MediaSession;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchSkipToItem(J)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/session/MediaSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchFastForward()V

    return-void
.end method

.method static synthetic -wrap20(Landroid/media/session/MediaSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchStop()V

    return-void
.end method

.method static synthetic -wrap21(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/session/MediaSession;->postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/media/session/MediaSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchNext()V

    return-void
.end method

.method static synthetic -wrap5(Landroid/media/session/MediaSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPause()V

    return-void
.end method

.method static synthetic -wrap6(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/session/MediaSession;->dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/media/session/MediaSession;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/session/MediaSession;->dispatchPlay()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/session/MediaSession;->mActive:Z

    if-nez p1, :cond_18

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "context cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "tag cannot be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    new-instance v2, Landroid/media/session/MediaSession$CallbackStub;

    invoke-direct {v2, p0}, Landroid/media/session/MediaSession$CallbackStub;-><init>(Landroid/media/session/MediaSession;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    const-string/jumbo v2, "media_session"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaSessionManager;

    :try_start_44
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCbStub:Landroid/media/session/MediaSession$CallbackStub;

    invoke-virtual {v1, v2, p2, p3}, Landroid/media/session/MediaSessionManager;->createSession(Landroid/media/session/MediaSession$CallbackStub;Ljava/lang/String;I)Landroid/media/session/ISession;

    move-result-object v2

    iput-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    new-instance v2, Landroid/media/session/MediaSession$Token;

    iget-object v3, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v3}, Landroid/media/session/ISession;->getController()Landroid/media/session/ISessionController;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/media/session/MediaSession$Token;-><init>(Landroid/media/session/ISessionController;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    new-instance v2, Landroid/media/session/MediaController;

    iget-object v3, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-direct {v2, p1, v3}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v2, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;
    :try_end_62
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_62} :catch_63

    return-void

    :catch_63
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Remote error creating session."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private dispatchAdjustVolume(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x15

    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const/16 v0, 0x14

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchFastForward()V
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchMediaButton(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchNext()V
    .registers 2

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchPause()V
    .registers 2

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchPlay()V
    .registers 2

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPrepare()V
    .registers 2

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private dispatchPrevious()V
    .registers 2

    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchRate(Landroid/media/Rating;)V
    .registers 3

    const/16 v0, 0x13

    invoke-direct {p0, v0, p1}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchRewind()V
    .registers 2

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method private dispatchSeekTo(J)V
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x12

    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchSetVolumeTo(I)V
    .registers 4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x16

    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchSkipToItem(J)V
    .registers 6

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private dispatchStop()V
    .registers 2

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Landroid/media/session/MediaSession;->postToCallback(I)V

    return-void
.end method

.method public static isActiveState(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x3
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 6

    new-instance v0, Landroid/media/session/MediaSession$Command;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/session/MediaSession$Command;-><init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private postToCallback(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;)V

    return-void
.end method

.method private postToCallback(ILjava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/session/MediaSession;->postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method private postToCallback(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 6

    iget-object v1, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaSession$CallbackMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCallingPackage()Ljava/lang/String;
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1}, Landroid/media/session/ISession;->getCallingPackage()Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Dead object in getCallingPackage."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getController()Landroid/media/session/MediaController;
    .registers 2

    iget-object v0, p0, Landroid/media/session/MediaSession;->mController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 2

    iget-object v0, p0, Landroid/media/session/MediaSession;->mSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public isActive()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/session/MediaSession;->mActive:Z

    return v0
.end method

.method public notifyRemoteVolumeChanged(Landroid/media/VolumeProvider;)V
    .registers 6

    iget-object v2, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_9

    :try_start_5
    iget-object v1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;

    if-eq p1, v1, :cond_14

    :cond_9
    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v3, "Received update from stale volume provider"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1f

    monitor-exit v2

    return-void

    :cond_14
    monitor-exit v2

    :try_start_15
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_22

    :goto_1e
    return-void

    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_22
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Error in notifyVolumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e
.end method

.method public release()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1}, Landroid/media/session/ISession;->destroy()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Error releasing session: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "event cannot be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    :try_start_f
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1, p2}, Landroid/media/session/ISession;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Error sending event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public setActive(Z)V
    .registers 5

    iget-boolean v1, p0, Landroid/media/session/MediaSession;->mActive:Z

    if-ne v1, p1, :cond_5

    return-void

    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setActive(Z)V

    iput-boolean p1, p0, Landroid/media/session/MediaSession;->mActive:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Failure in setActive."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public setCallback(Landroid/media/session/MediaSession$Callback;Landroid/os/Handler;)V
    .registers 8

    iget-object v3, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-nez p1, :cond_18

    :try_start_5
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v2, :cond_13

    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-get0(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/media/session/MediaSession$Callback;->-set1(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_3e

    monitor-exit v3

    return-void

    :cond_18
    :try_start_18
    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-static {v2}, Landroid/media/session/MediaSession$CallbackMessageHandler;->-get0(Landroid/media/session/MediaSession$CallbackMessageHandler;)Landroid/media/session/MediaSession$Callback;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroid/media/session/MediaSession$Callback;->-set1(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    :cond_26
    if-nez p2, :cond_2e

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    move-object p2, v0

    :cond_2e
    invoke-static {p1, p0}, Landroid/media/session/MediaSession$Callback;->-set1(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;

    new-instance v1, Landroid/media/session/MediaSession$CallbackMessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Landroid/media/session/MediaSession$CallbackMessageHandler;-><init>(Landroid/media/session/MediaSession;Landroid/os/Looper;Landroid/media/session/MediaSession$Callback;)V

    iput-object v1, p0, Landroid/media/session/MediaSession;->mCallback:Landroid/media/session/MediaSession$CallbackMessageHandler;
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_3e

    monitor-exit v3

    return-void

    :catchall_3e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setExtras(Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Dead object in setExtras."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setFlags(I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setFlags(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Failure in setFlags."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Failure in setMediaButtonReceiver."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .registers 5

    if-eqz p1, :cond_d

    new-instance v1, Landroid/media/MediaMetadata$Builder;

    iget v2, p0, Landroid/media/session/MediaSession;->mMaxBitmapSize:I

    invoke-direct {v1, p1, v2}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;I)V

    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setMetadata(Landroid/media/MediaMetadata;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 5

    iput-object p1, p0, Landroid/media/session/MediaSession;->mPlaybackState:Landroid/media/session/PlaybackState;

    :try_start_2
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Dead object in setPlaybackState."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 5

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Attributes cannot be null for local playback."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Failure in setPlaybackToLocal."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .registers 6

    if-nez p1, :cond_b

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "volumeProvider may not be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    iget-object v1, p0, Landroid/media/session/MediaSession;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_e
    iput-object p1, p0, Landroid/media/session/MediaSession;->mVolumeProvider:Landroid/media/VolumeProvider;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_30

    monitor-exit v1

    new-instance v1, Landroid/media/session/MediaSession$1;

    invoke-direct {v1, p0}, Landroid/media/session/MediaSession$1;-><init>(Landroid/media/session/MediaSession;)V

    invoke-virtual {p1, v1}, Landroid/media/VolumeProvider;->setCallback(Landroid/media/VolumeProvider$Callback;)V

    :try_start_19
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getVolumeControl()I

    move-result v2

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getMaxVolume()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/media/session/ISession;->setPlaybackToRemote(II)V

    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-virtual {p1}, Landroid/media/VolumeProvider;->getCurrentVolume()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/media/session/ISession;->setCurrentVolume(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2f} :catch_33

    :goto_2f
    return-void

    :catchall_30
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_33
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Failure in setPlaybackToRemote."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2f
.end method

.method public setQueue(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    if-nez p1, :cond_9

    :goto_5
    invoke-interface {v2, v1}, Landroid/media/session/ISession;->setQueue(Landroid/content/pm/ParceledListSlice;)V

    :goto_8
    return-void

    :cond_9
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_e} :catch_f

    goto :goto_5

    :catch_f
    move-exception v0

    const-string/jumbo v1, "Dead object in setQueue."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setQueueTitle(Ljava/lang/CharSequence;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "Dead object in setQueueTitle."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setRatingType(I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setRatingType(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Error in setRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public setSessionActivity(Landroid/app/PendingIntent;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/session/MediaSession;->mBinder:Landroid/media/session/ISession;

    invoke-interface {v1, p1}, Landroid/media/session/ISession;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "MediaSession"

    const-string/jumbo v2, "Failure in setLaunchPendingIntent."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
