.class public Lcom/android/server/UidStateHelper;
.super Ljava/lang/Object;
.source "UidStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UidStateHelper$1;,
        Lcom/android/server/UidStateHelper$2;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final MSG_DISPATCH_UID_STATE_CHANGE:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/UidStateHelper;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mObserverInstalled:Z

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mStateLock:Ljava/lang/Object;

.field private final mUidForeground:Landroid/util/SparseBooleanArray;

.field private final mUidPidForeground:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private mUidStateObervers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/internal/app/IUidStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/UidStateHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/UidStateHelper;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/UidStateHelper;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/UidStateHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/UidStateHelper;->computeUidForegroundLocked(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/UidStateHelper;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/UidStateHelper;->dispatchUidStateChange(II)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "UidProcStateHelper"

    sput-object v0, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/UidStateHelper;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/UidStateHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/UidStateHelper$1;-><init>(Lcom/android/server/UidStateHelper;)V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v1, Lcom/android/server/UidStateHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/UidStateHelper$2;-><init>(Lcom/android/server/UidStateHelper;)V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mActivityManager:Landroid/app/IActivityManager;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/UidStateHelper;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/UidStateHelper;->mHandler:Landroid/os/Handler;

    :try_start_47
    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/UidStateHelper;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_51} :catch_52

    :goto_51
    return-void

    :catch_52
    move-exception v0

    goto :goto_51
.end method

.method private computeUidForegroundLocked(I)V
    .registers 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseBooleanArray;

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_10
    if-ge v0, v3, :cond_19

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_33

    const/4 v4, 0x1

    :cond_19
    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    if-eq v1, v4, :cond_32

    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_2b

    move v5, v6

    :cond_2b
    invoke-virtual {v7, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_32
    return-void

    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method private dispatchUidStateChange(II)V
    .registers 8

    iget-object v4, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_1b

    iget-object v4, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IUidStateChangeCallback;

    if-eqz v0, :cond_16

    :try_start_13
    invoke-interface {v0, p1, p2}, Lcom/android/internal/app/IUidStateChangeCallback;->onUidStateChange(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_19

    :cond_16
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :catch_19
    move-exception v1

    goto :goto_16

    :cond_1b
    iget-object v4, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public static get()Lcom/android/server/UidStateHelper;
    .registers 1

    sget-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/UidStateHelper;

    invoke-direct {v0}, Lcom/android/server/UidStateHelper;-><init>()V

    sput-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    :cond_b
    sget-object v0, Lcom/android/server/UidStateHelper;->sInstance:Lcom/android/server/UidStateHelper;

    return-object v0
.end method


# virtual methods
.method public isUidForeground(I)Z
    .registers 5

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit v1

    return v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isUidForeground(IZ)Z
    .registers 13

    const/4 v5, 0x1

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-nez v6, :cond_8

    return v5

    :cond_8
    iget-object v6, p0, Lcom/android/server/UidStateHelper;->mStateLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_b
    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mUidForeground:Landroid/util/SparseBooleanArray;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v2

    if-eqz p2, :cond_5e

    const/4 v1, 0x0

    iget-object v7, p0, Lcom/android/server/UidStateHelper;->mUidPidForeground:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseBooleanArray;

    if-eqz v4, :cond_32

    const/4 v0, 0x0

    :goto_20
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v0, v7, :cond_32

    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ExtraActivityManagerService;->hasForegroundActivities(I)Z

    move-result v7

    or-int/2addr v1, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_32
    if-eq v2, v1, :cond_58

    sget-object v7, Lcom/android/server/UidStateHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ProcessObserver may miss callback, isUidFg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isFgByPids="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catchall {:try_start_b .. :try_end_58} :catchall_60

    :cond_58
    if-nez v2, :cond_5c

    :goto_5a
    monitor-exit v6

    return v1

    :cond_5c
    move v1, v5

    goto :goto_5a

    :cond_5e
    monitor-exit v6

    return v2

    :catchall_60
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public registerUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ProcessObserver not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    monitor-enter p0

    :try_start_e
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterUidStateObserver(Lcom/android/internal/app/IUidStateChangeCallback;)V
    .registers 4

    iget-boolean v0, p0, Lcom/android/server/UidStateHelper;->mObserverInstalled:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ProcessObserver not installed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    monitor-enter p0

    :try_start_e
    iget-object v0, p0, Lcom/android/server/UidStateHelper;->mUidStateObervers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method
