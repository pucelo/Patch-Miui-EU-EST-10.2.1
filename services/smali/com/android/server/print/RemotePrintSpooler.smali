.class final Lcom/android/server/print/RemotePrintSpooler;
.super Ljava/lang/Object;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;,
        Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;,
        Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;,
        Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;,
        Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;,
        Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;
    }
.end annotation


# static fields
.field private static final BIND_SPOOLER_SERVICE_TIMEOUT:J

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "RemotePrintSpooler"


# instance fields
.field private final mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

.field private mCanUnbind:Z

.field private final mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

.field private final mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

.field private final mContext:Landroid/content/Context;

.field private final mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

.field private mDestroyed:Z

.field private final mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

.field private final mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

.field private final mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

.field private final mIntent:Landroid/content/Intent;

.field private mIsBinding:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mIsLowPriority:Z

.field private final mLock:Ljava/lang/Object;

.field private mRemoteInstance:Landroid/print/IPrintSpooler;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

.field private final mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/print/RemotePrintSpooler;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/RemotePrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/IPrintSpooler;)Landroid/print/IPrintSpooler;
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->onAllPrintJobsHandled()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->setClientLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_b

    const v0, 0x1d4c0

    :goto_7
    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    return-void

    :cond_b
    const/16 v0, 0x2710

    goto :goto_7
.end method

.method public constructor <init>(Landroid/content/Context;IZLcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-direct {v0}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;-><init>(Lcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintSpooler$MyServiceConnection;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    iput-object p4, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    iput-boolean p3, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;-><init>(Lcom/android/server/print/RemotePrintSpooler;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.printspooler"

    const-string/jumbo v3, "com.android.printspooler.model.PrintSpoolerService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-void
.end method

.method private bindLocked()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v12, 0x0

    :goto_2
    iget-boolean v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    goto :goto_2

    :cond_c
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v8, :cond_11

    return-void

    :cond_11
    iput-boolean v9, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    :try_start_13
    iget-boolean v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v8, :cond_5f

    const/4 v2, 0x1

    :goto_18
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/print/RemotePrintSpooler;->mIntent:Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v11, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v8, v9, v10, v2, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_63

    const-string/jumbo v8, "RemotePrintSpooler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[user: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/print/RemotePrintSpooler;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] bindService failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v9, "bindError"

    invoke-direct {v8, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_56
    .catchall {:try_start_13 .. :try_end_56} :catchall_56

    :catchall_56
    move-exception v8

    iput-boolean v12, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    iget-object v9, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    throw v8

    :cond_5f
    const v2, 0x4000001

    goto :goto_18

    :cond_63
    :try_start_63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    :goto_67
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v8, :cond_76

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_56

    iput-boolean v12, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsBinding:Z

    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    return-void

    :cond_76
    :try_start_76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v6

    sget-wide v8, Lcom/android/server/print/RemotePrintSpooler;->BIND_SPOOLER_SERVICE_TIMEOUT:J

    sub-long v4, v8, v0

    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-gtz v8, :cond_8f

    new-instance v8, Ljava/util/concurrent/TimeoutException;

    const-string/jumbo v9, "Cannot get spooler!"

    invoke-direct {v8, v9}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8f
    iget-object v8, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_56

    goto :goto_67
.end method

.method private clearClientLocked()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error clearing print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method private getRemoteInstanceLazy()Landroid/print/IPrintSpooler;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->bindLocked()V

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onAllPrintJobsHandled()V
    .registers 3

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCallbacks:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    return-void
.end method

.method private setClientLocked()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mClient:Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;

    invoke-interface {v1, v2}, Landroid/print/IPrintSpooler;->setClient(Landroid/print/IPrintSpoolerClient;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting print spooler client"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private throwIfCalledOnMainThread()V
    .registers 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Cannot invoke on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    return-void
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    return-void
.end method

.method private unbindLocked()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-nez v1, :cond_b

    return-void

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_b} :catch_1c

    :cond_b
    :goto_b
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    if-eqz v1, :cond_6

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->clearClientLocked()V

    iput-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_1c
    move-exception v0

    goto :goto_b
.end method


# virtual methods
.method public clearCustomPrinterIconCache()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_23

    monitor-exit v2

    :try_start_d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mClearCustomPrinterIconCache:Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)Ljava/lang/Void;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_16} :catch_29
    .catchall {:try_start_d .. :try_end_16} :catchall_42

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_26

    :goto_21
    monitor-exit v2

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_29
    move-exception v0

    :try_start_2a
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error clearing custom printer icon cache."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_42

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_37
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_21

    :catchall_3f
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_42
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_47
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    monitor-exit v2

    throw v1

    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final createPrintJob(Landroid/print/PrintJobInfo;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->createPrintJob(Landroid/print/PrintJobInfo;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error creating print job."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_40
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    throw v1

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final destroy()V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 9

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v3, "destroyed="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    iget-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mDestroyed:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v3, "bound="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mRemoteInstance:Landroid/print/IPrintSpooler;

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "true"

    :goto_2d
    invoke-virtual {v3, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_67

    :try_start_37
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1}, Landroid/print/IPrintSpooler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    invoke-static {v1, p1, v3}, Lcom/android/internal/os/TransferPipe;->dumpAsync(Landroid/os/IBinder;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_48} :catch_4e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_37 .. :try_end_48} :catch_4e
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_48} :catch_4e
    .catch Ljava/lang/InterruptedException; {:try_start_37 .. :try_end_48} :catch_4e
    .catchall {:try_start_37 .. :try_end_48} :catchall_67

    :goto_48
    monitor-exit v2

    return-void

    :cond_4a
    :try_start_4a
    const-string/jumbo v1, "false"

    goto :goto_2d

    :catch_4e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to dump remote instance: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_66
    .catchall {:try_start_4a .. :try_end_66} :catchall_67

    goto :goto_48

    :catchall_67
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    .registers 6

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    monitor-exit v2

    :try_start_d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetCustomPrinterIconCaller:Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/print/RemotePrintSpooler$GetCustomPrinterIconCaller;->getCustomPrinterIcon(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_16} :catch_2a
    .catchall {:try_start_d .. :try_end_16} :catchall_45

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_1b
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    monitor-exit v2

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_2a
    move-exception v0

    :try_start_2b
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error getting custom printer icon."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_45

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_39
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    monitor-exit v2

    return-object v1

    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_45
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_4a
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_53

    monitor-exit v2

    throw v1

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 7

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    monitor-exit v2

    :try_start_d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfoCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfoCaller;->getPrintJobInfo(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_16} :catch_2a
    .catchall {:try_start_d .. :try_end_16} :catchall_45

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_1b
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    monitor-exit v2

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_2a
    move-exception v0

    :try_start_2b
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error getting print job info."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_45

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_38
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_42

    monitor-exit v2

    const/4 v1, 0x0

    return-object v1

    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_45
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_4a
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_53

    monitor-exit v2

    throw v1

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    monitor-exit v2

    :try_start_d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mGetPrintJobInfosCaller:Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$GetPrintJobInfosCaller;->getPrintJobInfos(Landroid/print/IPrintSpooler;Landroid/content/ComponentName;II)Ljava/util/List;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_2a
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_16} :catch_2a
    .catchall {:try_start_d .. :try_end_16} :catchall_45

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_1b
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    monitor-exit v2

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_2a
    move-exception v0

    :try_start_2b
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error getting print jobs."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_45

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_38
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_42

    monitor-exit v2

    const/4 v1, 0x0

    return-object v1

    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_45
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_4a
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_53

    monitor-exit v2

    throw v1

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public increasePriority()V
    .registers 5

    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    if-eqz v1, :cond_29

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mIsLowPriority:Z

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_a
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    :goto_d
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_22

    if-nez v1, :cond_25

    :try_start_11
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_17
    .catchall {:try_start_11 .. :try_end_16} :catchall_22

    goto :goto_d

    :catch_17
    move-exception v0

    :try_start_18
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v3, "Interrupted while waiting for operation to complete"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    goto :goto_d

    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_25
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->unbindLocked()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    monitor-exit v2

    :cond_29
    return-void
.end method

.method public final onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_23

    monitor-exit v2

    :try_start_d
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCustomPrinterIconLoadedCaller:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)Ljava/lang/Void;
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_16} :catch_29
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_16} :catch_29
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_16} :catch_29
    .catchall {:try_start_d .. :try_end_16} :catchall_42

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_1a
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_26

    :goto_21
    monitor-exit v2

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_29
    move-exception v0

    :try_start_2a
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error loading new custom printer icon."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_42

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_37
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3f

    goto :goto_21

    :catchall_3f
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_42
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_47
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_50

    monitor-exit v2

    throw v1

    :catchall_50
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final pruneApprovedPrintServices(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/print/IPrintSpooler;->pruneApprovedPrintServices(Ljava/util/List;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error pruning approved print services."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_40
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    throw v1

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final removeObsoletePrintJobs()V
    .registers 5

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1}, Landroid/print/IPrintSpooler;->removeObsoletePrintJobs()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error removing obsolete print jobs ."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_40
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    throw v1

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting print job cancelling."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_40
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    throw v1

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    .registers 8

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_25

    monitor-exit v2

    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobStatusCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobStateCaller;->setPrintJobState(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_2b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_2b
    .catchall {:try_start_e .. :try_end_17} :catchall_45

    move-result v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_1c
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    monitor-exit v2

    return v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting print job state."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_45

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_39
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    monitor-exit v2

    return v3

    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_45
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_4a
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_53

    monitor-exit v2

    throw v1

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setPrintJobTag(Landroid/print/PrintJobId;Ljava/lang/String;)Z
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_25

    monitor-exit v2

    :try_start_e
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mSetPrintJobTagCaller:Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->setPrintJobTag(Landroid/print/IPrintSpooler;Landroid/print/PrintJobId;Ljava/lang/String;)Z
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_17} :catch_2b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_17} :catch_2b
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_17} :catch_2b
    .catchall {:try_start_e .. :try_end_17} :catchall_45

    move-result v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_1c
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_28

    monitor-exit v2

    return v1

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting print job tag."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_45

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_39
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_40
    .catchall {:try_start_39 .. :try_end_40} :catchall_42

    monitor-exit v2

    return v3

    :catchall_42
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_45
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_4a
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_53

    monitor-exit v2

    throw v1

    :catchall_53
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setProgress(Landroid/print/PrintJobId;F)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setProgress(Landroid/print/PrintJobId;F)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting progress."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_40
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    throw v1

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setStatus(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    .registers 8

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/print/IPrintSpooler;->setStatusRes(Landroid/print/PrintJobId;ILjava/lang/CharSequence;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting status."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_40
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    throw v1

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_21

    monitor-exit v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->setStatus(Landroid/print/PrintJobId;Ljava/lang/CharSequence;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_27
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_27
    .catchall {:try_start_d .. :try_end_14} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_18
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_24

    :goto_1f
    monitor-exit v2

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_27
    move-exception v0

    :try_start_28
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error setting status."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_40

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_35
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_3d

    goto :goto_1f

    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_40
    move-exception v1

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_45
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_4c
    .catchall {:try_start_45 .. :try_end_4c} :catchall_4e

    monitor-exit v2

    throw v1

    :catchall_4e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    .registers 7

    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfCalledOnMainThread()V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->throwIfDestroyedLocked()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_24

    monitor-exit v2

    :try_start_d
    invoke-direct {p0}, Lcom/android/server/print/RemotePrintSpooler;->getRemoteInstanceLazy()Landroid/print/IPrintSpooler;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/print/IPrintSpooler;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_2a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_d .. :try_end_14} :catch_2a
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_14} :catch_2a
    .catchall {:try_start_d .. :try_end_14} :catchall_46

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_1b
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_27

    :goto_22
    monitor-exit v2

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_2a
    move-exception v0

    :try_start_2b
    const-string/jumbo v1, "RemotePrintSpooler"

    const-string/jumbo v2, "Error writing print job data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_46

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_3b
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_43

    goto :goto_22

    :catchall_43
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_46
    move-exception v1

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-object v2, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x1

    :try_start_4e
    iput-boolean v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mCanUnbind:Z

    iget-object v3, p0, Lcom/android/server/print/RemotePrintSpooler;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_57

    monitor-exit v2

    throw v1

    :catchall_57
    move-exception v1

    monitor-exit v2

    throw v1
.end method
