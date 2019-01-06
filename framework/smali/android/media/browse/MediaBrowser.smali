.class public final Landroid/media/browse/MediaBrowser;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/browse/MediaBrowser$ConnectionCallback;,
        Landroid/media/browse/MediaBrowser$ItemCallback;,
        Landroid/media/browse/MediaBrowser$MediaItem;,
        Landroid/media/browse/MediaBrowser$MediaServiceConnection;,
        Landroid/media/browse/MediaBrowser$ServiceCallbacks;,
        Landroid/media/browse/MediaBrowser$Subscription;,
        Landroid/media/browse/MediaBrowser$SubscriptionCallback;
    }
.end annotation


# static fields
.field private static final CONNECT_STATE_CONNECTED:I = 0x3

.field private static final CONNECT_STATE_CONNECTING:I = 0x2

.field private static final CONNECT_STATE_DISCONNECTED:I = 0x1

.field private static final CONNECT_STATE_DISCONNECTING:I = 0x0

.field private static final CONNECT_STATE_SUSPENDED:I = 0x4

.field private static final DBG:Z = false

.field public static final EXTRA_PAGE:Ljava/lang/String; = "android.media.browse.extra.PAGE"

.field public static final EXTRA_PAGE_SIZE:Ljava/lang/String; = "android.media.browse.extra.PAGE_SIZE"

.field private static final TAG:Ljava/lang/String; = "MediaBrowser"


# instance fields
.field private final mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

.field private final mContext:Landroid/content/Context;

.field private volatile mExtras:Landroid/os/Bundle;

.field private final mHandler:Landroid/os/Handler;

.field private volatile mMediaSessionToken:Landroid/media/session/MediaSession$Token;

.field private final mRootHints:Landroid/os/Bundle;

.field private volatile mRootId:Ljava/lang/String;

.field private mServiceBinder:Landroid/service/media/IMediaBrowserService;

.field private mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field private final mServiceComponent:Landroid/content/ComponentName;

.field private mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

.field private volatile mState:I

.field private final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/browse/MediaBrowser$Subscription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ConnectionCallback;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/browse/MediaBrowser;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/browse/MediaBrowser;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/browse/MediaBrowser;)Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserService;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/browse/MediaBrowser;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-object v0
.end method

.method static synthetic -get6(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get7(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    return-object v0
.end method

.method static synthetic -get8(Landroid/media/browse/MediaBrowser;)I
    .registers 2

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    return v0
.end method

.method static synthetic -get9(Landroid/media/browse/MediaBrowser;)Landroid/util/ArrayMap;
    .registers 2

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/browse/MediaBrowser;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set1(Landroid/media/browse/MediaBrowser;Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaSession$Token;
    .registers 2

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    return-object p1
.end method

.method static synthetic -set2(Landroid/media/browse/MediaBrowser;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set3(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserService;)Landroid/service/media/IMediaBrowserService;
    .registers 2

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    return-object p1
.end method

.method static synthetic -set4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)Landroid/service/media/IMediaBrowserServiceCallbacks;
    .registers 2

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    return-object p1
.end method

.method static synthetic -set5(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;
    .registers 2

    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    return-object p1
.end method

.method static synthetic -set6(Landroid/media/browse/MediaBrowser;I)I
    .registers 2

    iput p1, p0, Landroid/media/browse/MediaBrowser;->mState:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$ServiceCallbacks;
    .registers 2

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->getNewServiceCallbacks()Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->isCurrent(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/media/browse/MediaBrowser;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser;->forceCloseConnection()V

    return-void
.end method

.method static synthetic -wrap4(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser;->onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;->onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;->onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-nez p1, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    if-nez p2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service component must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    if-nez p3, :cond_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "connection callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iput-object p1, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    iput-object p3, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    if-nez p4, :cond_41

    :goto_3e
    iput-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    return-void

    :cond_41
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3e
.end method

.method private forceCloseConnection()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    if-eqz v1, :cond_c

    :try_start_5
    iget-object v1, p0, Landroid/media/browse/MediaBrowser;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_c} :catch_1a

    :cond_c
    :goto_c
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/browse/MediaBrowser;->mState:I

    iput-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    iput-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iput-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object v3, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    return-void

    :catch_1a
    move-exception v0

    goto :goto_c
.end method

.method private getNewServiceCallbacks()Landroid/media/browse/MediaBrowser$ServiceCallbacks;
    .registers 2

    new-instance v0, Landroid/media/browse/MediaBrowser$ServiceCallbacks;

    invoke-direct {v0, p0}, Landroid/media/browse/MediaBrowser$ServiceCallbacks;-><init>(Landroid/media/browse/MediaBrowser;)V

    return-object v0
.end method

.method private static getStateLabel(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "CONNECT_STATE_DISCONNECTING"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "CONNECT_STATE_DISCONNECTED"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "CONNECT_STATE_CONNECTING"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "CONNECT_STATE_CONNECTED"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "CONNECT_STATE_SUSPENDED"

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
    .end packed-switch
.end method

.method private isCurrent(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    if-ne v0, p1, :cond_a

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-nez v0, :cond_4b

    :cond_a
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz v0, :cond_4a

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eq v0, v1, :cond_4a

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return v3

    :cond_4b
    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eq v0, v1, :cond_a

    return v1
.end method

.method private final onConnectionFailed(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .registers 4

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$7;

    invoke-direct {v1, p0, p1}, Landroid/media/browse/MediaBrowser$7;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final onLoadChildren(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/os/Bundle;)V
    .registers 12

    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/browse/MediaBrowser$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/browse/MediaBrowser$8;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final onServiceConnected(Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    .registers 12

    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/media/browse/MediaBrowser$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/browse/MediaBrowser$6;-><init>(Landroid/media/browse/MediaBrowser;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .registers 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parentId cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    if-nez p3, :cond_1a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "callback cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/browse/MediaBrowser$Subscription;

    if-nez v1, :cond_2e

    new-instance v1, Landroid/media/browse/MediaBrowser$Subscription;

    invoke-direct {v1}, Landroid/media/browse/MediaBrowser$Subscription;-><init>()V

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2e
    invoke-virtual {v1, p2, p3}, Landroid/media/browse/MediaBrowser$Subscription;->putCallback(Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_49

    if-nez p2, :cond_40

    :try_start_39
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2, p1, v3}, Landroid/service/media/IMediaBrowserService;->addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    :cond_40
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v3, p3, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    iget-object v4, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2, p1, v3, p2, v4}, Landroid/service/media/IMediaBrowserService;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    return-void

    :catch_4a
    move-exception v0

    const-string/jumbo v2, "MediaBrowser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addSubscription failed with RemoteException parentId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_49
.end method

.method private unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .registers 11

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "parentId cannot be empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    iget-object v5, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/browse/MediaBrowser$Subscription;

    if-nez v4, :cond_1a

    return-void

    :cond_1a
    if-nez p2, :cond_3f

    :try_start_1c
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_31

    iget-object v5, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v5, p1, v6}, Landroid/service/media/IMediaBrowserService;->removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    iget-object v5, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v6, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    const/4 v7, 0x0

    invoke-interface {v5, p1, v7, v6}, Landroid/service/media/IMediaBrowserService;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_6d

    :cond_31
    :goto_31
    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser$Subscription;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_39

    if-nez p2, :cond_3e

    :cond_39
    iget-object v5, p0, Landroid/media/browse/MediaBrowser;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    return-void

    :cond_3f
    :try_start_3f
    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser$Subscription;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4}, Landroid/media/browse/MediaBrowser$Subscription;->getOptionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_4d
    if-ltz v2, :cond_31

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p2, :cond_6a

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_64

    iget-object v5, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v6, p2, Landroid/media/browse/MediaBrowser$SubscriptionCallback;->mToken:Landroid/os/Binder;

    iget-object v7, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v5, p1, v6, v7}, Landroid/service/media/IMediaBrowserService;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V

    :cond_64
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_6a} :catch_6d

    :cond_6a
    add-int/lit8 v2, v2, -0x1

    goto :goto_4d

    :catch_6d
    move-exception v1

    const-string/jumbo v5, "MediaBrowser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeSubscription failed with RemoteException parentId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method


# virtual methods
.method public connect()V
    .registers 4

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    if-eqz v0, :cond_30

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect() called while neither disconnecting nor disconnected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$1;

    invoke-direct {v1, p0}, Landroid/media/browse/MediaBrowser$1;-><init>(Landroid/media/browse/MediaBrowser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disconnect()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/media/browse/MediaBrowser$2;

    invoke-direct {v1, p0}, Landroid/media/browse/MediaBrowser$2;-><init>(Landroid/media/browse/MediaBrowser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dump()V
    .registers 4

    const-string/jumbo v0, "MediaBrowser"

    const-string/jumbo v1, "MediaBrowser..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mServiceComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCallback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mCallback:Landroid/media/browse/MediaBrowser$ConnectionCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mRootHints="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootHints:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceConnection:Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mServiceBinder="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mServiceCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mRootId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mMediaSessionToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 4

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getExtras() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "mediaId cannot be empty."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    if-nez p2, :cond_1a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "cb cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1a
    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_33

    const-string/jumbo v2, "MediaBrowser"

    const-string/jumbo v3, "Not connected, unable to retrieve the MediaItem."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/browse/MediaBrowser$3;

    invoke-direct {v3, p0, p2, p1}, Landroid/media/browse/MediaBrowser$3;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_33
    new-instance v1, Landroid/media/browse/MediaBrowser$4;

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, p2, p1}, Landroid/media/browse/MediaBrowser$4;-><init>(Landroid/media/browse/MediaBrowser;Landroid/os/Handler;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    :try_start_3a
    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mServiceBinder:Landroid/service/media/IMediaBrowserService;

    iget-object v3, p0, Landroid/media/browse/MediaBrowser;->mServiceCallbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2, p1, v1, v3}, Landroid/service/media/IMediaBrowserService;->getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v0

    const-string/jumbo v2, "MediaBrowser"

    const-string/jumbo v3, "Remote error getting media item."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/browse/MediaBrowser;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/media/browse/MediaBrowser$5;

    invoke-direct {v3, p0, p2, p1}, Landroid/media/browse/MediaBrowser$5;-><init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$ItemCallback;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_41
.end method

.method public getRoot()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getRoot() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->getStateLabel(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mRootId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .registers 4

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getServiceComponent() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .registers 4

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSessionToken() called while not connected (state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v0, p0, Landroid/media/browse/MediaBrowser;->mMediaSessionToken:Landroid/media/session/MediaSession$Token;

    return-object v0
.end method

.method public isConnected()Z
    .registers 3

    iget v0, p0, Landroid/media/browse/MediaBrowser;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/media/browse/MediaBrowser;->subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .registers 6

    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "options cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-direct {p0, p1, v0, p3}, Landroid/media/browse/MediaBrowser;->subscribeInternal(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/browse/MediaBrowser;->unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V
    .registers 5

    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0, p1, p2}, Landroid/media/browse/MediaBrowser;->unsubscribeInternal(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method
