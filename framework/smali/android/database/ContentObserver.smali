.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$NotificationRunnable;,
        Landroid/database/ContentObserver$Transport;
    }
.end annotation


# instance fields
.field mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mTransport:Landroid/database/ContentObserver$Transport;


# direct methods
.method static synthetic -wrap0(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private dispatchChange(ZLandroid/net/Uri;I)V
    .registers 6

    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_8

    invoke-virtual {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/database/ContentObserver$NotificationRunnable;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/database/ContentObserver$NotificationRunnable;-><init>(Landroid/database/ContentObserver;ZLandroid/net/Uri;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchChange(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public final dispatchChange(ZLandroid/net/Uri;)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;I)V

    return-void
.end method

.method public getContentObserver()Landroid/database/IContentObserver;
    .registers 3

    iget-object v1, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    if-nez v0, :cond_e

    new-instance v0, Landroid/database/ContentObserver$Transport;

    invoke-direct {v0, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    iput-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    :cond_e
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onChange(Z)V
    .registers 2

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public releaseContentObserver()Landroid/database/IContentObserver;
    .registers 4

    iget-object v2, p0, Landroid/database/ContentObserver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/database/ContentObserver$Transport;->releaseContentObserver()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v2

    return-object v0

    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method
