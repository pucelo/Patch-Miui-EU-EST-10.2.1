.class public Lmiui/maml/elements/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicController$ServiceConnectionImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MAML_MusicController"


# instance fields
.field private mBind:Z

.field private mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mRCService:Lmiui/maml/elements/MusicListenerService;


# direct methods
.method static synthetic -get0(Lmiui/maml/elements/MusicController;)Landroid/media/RemoteController$OnClientUpdateListener;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/elements/MusicController;Lmiui/maml/elements/MusicListenerService;)Lmiui/maml/elements/MusicListenerService;
    .registers 2

    iput-object p1, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/elements/MusicController$ServiceConnectionImpl;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicController$ServiceConnectionImpl;-><init>(Lmiui/maml/elements/MusicController;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getRemoteController()Landroid/media/RemoteController;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicListenerService;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    goto :goto_5
.end method


# virtual methods
.method public enableNotificationService()V
    .registers 1

    return-void
.end method

.method public getEstimatedMediaPosition()J
    .registers 5

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    :goto_a
    return-wide v2

    :cond_b
    const-wide/16 v2, 0x0

    goto :goto_a
.end method

.method public getRemoteControlClientPackageName()Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_b
    return-object v1
.end method

.method public rating(Landroid/media/Rating;)V
    .registers 8

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-virtual {v0}, Landroid/media/RemoteController;->editMetadata()Landroid/media/RemoteController$MetadataEditor;

    move-result-object v2

    const v3, 0x10000001

    invoke-virtual {v2, v3, p1}, Landroid/media/RemoteController$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    invoke-virtual {v2}, Landroid/media/RemoteController$MetadataEditor;->apply()V
    :try_end_14
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v1

    const-string/jumbo v3, "MAML_MusicController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "RATING_KEY_BY_USER: failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public registerListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 6

    iget-boolean v1, p0, Lmiui/maml/elements/MusicController;->mBind:Z

    if-nez v1, :cond_22

    iput-object p1, p0, Lmiui/maml/elements/MusicController;->mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.notification.MusicListenerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/elements/MusicController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/MusicController;->mBind:Z

    :cond_22
    return-void
.end method

.method public seekTo(J)Z
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    :try_start_8
    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteController;->seekTo(J)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_d

    move-result v2

    return v2

    :catch_d
    move-exception v1

    return v2
.end method

.method public sendMediaKeyEvent(II)Z
    .registers 8

    const/4 v4, 0x0

    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    if-nez v0, :cond_8

    return v4

    :cond_8
    :try_start_8
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    const/16 v3, 0x1002

    invoke-virtual {v2, v3}, Landroid/view/KeyEvent;->setSource(I)V

    invoke-virtual {v0, v2}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_17

    move-result v3

    return v3

    :catch_17
    move-exception v1

    return v4
.end method

.method public unregisterListener()V
    .registers 3

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/MusicListenerService;->unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    :cond_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/MusicController;->mBind:Z

    return-void
.end method
