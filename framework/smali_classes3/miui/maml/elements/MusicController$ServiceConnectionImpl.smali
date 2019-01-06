.class Lmiui/maml/elements/MusicController$ServiceConnectionImpl;
.super Ljava/lang/Object;
.source "MusicController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceConnectionImpl"
.end annotation


# instance fields
.field private mMusicControllerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lmiui/maml/elements/MusicController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/elements/MusicController;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicController$ServiceConnectionImpl;->mMusicControllerRef:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    instance-of v2, p2, Lmiui/maml/elements/MusicListenerService$RCBinder;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lmiui/maml/elements/MusicController$ServiceConnectionImpl;->mMusicControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicController;

    if-eqz v1, :cond_23

    move-object v0, p2

    check-cast v0, Lmiui/maml/elements/MusicListenerService$RCBinder;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicListenerService$RCBinder;->getService()Lmiui/maml/elements/MusicListenerService;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/maml/elements/MusicController;->-set0(Lmiui/maml/elements/MusicController;Lmiui/maml/elements/MusicListenerService;)Lmiui/maml/elements/MusicListenerService;

    invoke-static {v1}, Lmiui/maml/elements/MusicController;->-get1(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v2

    invoke-static {v1}, Lmiui/maml/elements/MusicController;->-get0(Lmiui/maml/elements/MusicController;)Landroid/media/RemoteController$OnClientUpdateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/MusicListenerService;->registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    :cond_23
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lmiui/maml/elements/MusicController$ServiceConnectionImpl;->mMusicControllerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicController;

    if-eqz v0, :cond_1f

    invoke-static {v0}, Lmiui/maml/elements/MusicController;->-get1(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v0}, Lmiui/maml/elements/MusicController;->-get1(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;

    move-result-object v1

    invoke-static {v0}, Lmiui/maml/elements/MusicController;->-get0(Lmiui/maml/elements/MusicController;)Landroid/media/RemoteController$OnClientUpdateListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicListenerService;->unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    invoke-static {v0, v3}, Lmiui/maml/elements/MusicController;->-set0(Lmiui/maml/elements/MusicController;Lmiui/maml/elements/MusicListenerService;)Lmiui/maml/elements/MusicListenerService;

    :cond_1f
    return-void
.end method
