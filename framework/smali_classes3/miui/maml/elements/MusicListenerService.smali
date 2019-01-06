.class public Lmiui/maml/elements/MusicListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "MusicListenerService.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicListenerService$RCBinder;
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.service.notification.MusicListenerService"

.field private static final BITMAP_HEIGHT:I = 0x400

.field private static final BITMAP_WIDTH:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "MusicListenerService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mClientUpdateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/RemoteController$OnClientUpdateListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mRemoteController:Landroid/media/RemoteController;

.field private mRemoteControllerEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    new-instance v0, Lmiui/maml/elements/MusicListenerService$RCBinder;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicListenerService$RCBinder;-><init>(Lmiui/maml/elements/MusicListenerService;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    return-void
.end method

.method private disableRemoteController()V
    .registers 4

    iget-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    :cond_17
    return-void
.end method

.method private enableRemoteController()V
    .registers 6

    const/16 v4, 0x400

    iget-boolean v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-nez v2, :cond_31

    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    new-instance v2, Landroid/media/RemoteController;

    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    :try_start_1a
    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    move-result v2

    iput-boolean v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_22} :catch_32

    :goto_22
    iget-boolean v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    invoke-virtual {v2, v4, v4}, Landroid/media/RemoteController;->setArtworkConfiguration(II)Z

    iget-object v2, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v1

    const-string/jumbo v2, "MusicListenerService"

    const-string/jumbo v3, "fail to register RemoteController!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :cond_3d
    const-string/jumbo v2, "MusicListenerService"

    const-string/jumbo v3, "fail to register RemoteController!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method


# virtual methods
.method public getRemoteController()Landroid/media/RemoteController;
    .registers 2

    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.service.notification.MusicListenerService"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "MusicListenerService"

    const-string/jumbo v1, "onBind: success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    return-object v0

    :cond_19
    const-string/jumbo v0, "MusicListenerService"

    const-string/jumbo v1, "onBind: fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public onClientChange(Z)V
    .registers 6

    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    goto :goto_6

    :cond_1e
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_24
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2f
    return-void
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .registers 6

    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    goto :goto_6

    :cond_1e
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_24
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2f
    return-void
.end method

.method public onClientNowPlayingContentChange()V
    .registers 1

    return-void
.end method

.method public onClientPlayItemResponse(Z)V
    .registers 2

    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .registers 6

    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_6

    :cond_1e
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_24
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2f
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .registers 17

    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v0, :cond_23

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_6

    :cond_23
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_29
    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_34
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .registers 6

    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v0, :cond_1e

    invoke-interface {v0, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    goto :goto_6

    :cond_1e
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_24
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2f
    return-void
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .registers 2

    return-void
.end method

.method public onCreate()V
    .registers 3

    invoke-virtual {p0}, Lmiui/maml/elements/MusicListenerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/media/RemoteController;

    iget-object v1, p0, Lmiui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    const-string/jumbo v0, "MusicListenerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationPosted: pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 7

    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->enableRemoteController()V

    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    return-void

    :cond_24
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .registers 6

    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_20
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_26
    iget-object v3, p0, Lmiui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-direct {p0}, Lmiui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_31
    return-void
.end method
