.class public Landroid/content/SyncContext;
.super Ljava/lang/Object;
.source "SyncContext.java"


# static fields
.field private static final HEARTBEAT_SEND_INTERVAL_IN_MS:J = 0x3e8L


# instance fields
.field private mLastHeartbeatSendTime:J

.field private mSyncContext:Landroid/content/ISyncContext;


# direct methods
.method public constructor <init>(Landroid/content/ISyncContext;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    return-void
.end method

.method private updateHeartbeat()V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_e

    return-void

    :cond_e
    :try_start_e
    iput-wide v2, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v1}, Landroid/content/ISyncContext;->sendHeartbeat()V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_19} :catch_1a

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    goto :goto_19
.end method


# virtual methods
.method public getSyncContextBinder()Landroid/os/IBinder;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v0}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_5
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v1, p1}, Landroid/content/ISyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public setStatusText(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/SyncContext;->updateHeartbeat()V

    return-void
.end method
