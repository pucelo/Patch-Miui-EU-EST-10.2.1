.class public Landroid/widget/RemoteViewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsAdapter$AsyncRemoteAdapterAction;,
        Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;,
        Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;,
        Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;,
        Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;,
        Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    }
.end annotation


# static fields
.field private static final MULTI_USER_PERM:Ljava/lang/String; = "android.permission.INTERACT_ACROSS_USERS_FULL"

.field private static final REMOTE_VIEWS_CACHE_DURATION:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "RemoteViewsAdapter"

.field private static sCacheRemovalQueue:Landroid/os/Handler; = null

.field private static sCacheRemovalThread:Landroid/os/HandlerThread; = null

.field private static final sCachedRemoteViewsCaches:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDefaultCacheSize:I = 0x28

.field private static final sDefaultLoadingViewHeight:I = 0x32

.field private static final sDefaultMessageType:I = 0x0

.field private static final sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnbindServiceDelay:I = 0x1388

.field private static final sUnbindServiceMessageType:I = 0x1


# instance fields
.field private final mAppWidgetId:I

.field private final mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

.field private final mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

.field private mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDataReady:Z

.field private final mIntent:Landroid/content/Intent;

.field private mMainQueue:Landroid/os/Handler;

.field private mNotifyDataSetChangedAfterOnServiceConnected:Z

.field private mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field private mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

.field private mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field private mVisibleWindowLowerBound:I

.field private mVisibleWindowUpperBound:I

.field private mWorkerQueue:Landroid/os/Handler;

.field private mWorkerThread:Landroid/os/HandlerThread;


# direct methods
.method static synthetic -get0(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/RemoteViewsAdapter;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/RemoteViewsAdapter;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    return v0
.end method

.method static synthetic -get4(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViews$OnClickHandler;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get9()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->enqueueDeferredUnbindServiceMessage()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->onNotifyDataSetChanged()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/widget/RemoteViewsAdapter;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/widget/RemoteViewsAdapter;)V
    .registers 1

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;Z)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-boolean v2, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    iput-boolean v2, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    if-nez v2, :cond_1a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Non-null Intent must be specified."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    const-string/jumbo v2, "remoteAdapterAppWidgetId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    new-instance v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-direct {v2, p0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;)V

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    const-string/jumbo v2, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "remoteAdapterAppWidgetId"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3a
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "RemoteViewsCache-loader"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    if-eqz p4, :cond_6a

    new-instance v1, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-direct {v1, v2}, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;-><init>(Landroid/os/HandlerThread;)V

    :cond_6a
    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_8c

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "RemoteViewsAdapter-cachePruner"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    :cond_8c
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCallback:Ljava/lang/ref/WeakReference;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v1, Landroid/content/Intent$FilterComparison;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    sget-object v2, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_ab
    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e1

    sget-object v1, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v3

    monitor-enter v3
    :try_end_c4
    .catchall {:try_start_ab .. :try_end_c4} :catchall_de

    :try_start_c4
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    if-lez v1, :cond_d1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z
    :try_end_d1
    .catchall {:try_start_c4 .. :try_end_d1} :catchall_db

    :cond_d1
    :try_start_d1
    monitor-exit v3

    :goto_d2
    iget-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    if-nez v1, :cond_d9

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z
    :try_end_d9
    .catchall {:try_start_d1 .. :try_end_d9} :catchall_de

    :cond_d9
    monitor-exit v2

    return-void

    :catchall_db
    move-exception v1

    :try_start_dc
    monitor-exit v3

    throw v1
    :try_end_de
    .catchall {:try_start_dc .. :try_end_de} :catchall_de

    :catchall_de
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_e1
    :try_start_e1
    new-instance v1, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    const/16 v3, 0x28

    invoke-direct {v1, v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;-><init>(I)V

    iput-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_de

    goto :goto_d2
.end method

.method private enqueueDeferredUnbindServiceMessage()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private getVisibleWindow(III)[I
    .registers 8

    const/4 v3, 0x0

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    :cond_5
    new-array v3, v3, [I

    return-object v3

    :cond_8
    if-ltz p1, :cond_5

    if-ltz p2, :cond_5

    if-gt p1, p2, :cond_1e

    add-int/lit8 v3, p2, 0x1

    sub-int/2addr v3, p1

    new-array v2, v3, [I

    move v0, p1

    const/4 v1, 0x0

    :goto_15
    if-gt v0, p2, :cond_3e

    aput v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_1e
    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p3

    sub-int v3, p3, p1

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_2b
    if-gt v0, p2, :cond_34

    aput v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    :cond_34
    move v0, p1

    :goto_35
    if-ge v0, p3, :cond_3e

    aput v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    :cond_3e
    return-object v2
.end method

.method private loadNextIndexInBackground()V
    .registers 3

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$2;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$2;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onNotifyDataSetChanged()V
    .registers 11

    const/4 v7, 0x0

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v2

    :try_start_7
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_5c
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_3c

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v8

    :try_start_d
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_7c

    monitor-exit v8

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->updateTemporaryMetaData()V

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v8

    monitor-enter v8

    :try_start_1d
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    iget v4, v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iget v6, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    iget v9, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    invoke-direct {p0, v6, v9, v4}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(III)[I
    :try_end_2c
    .catchall {:try_start_1d .. :try_end_2c} :catchall_7f

    move-result-object v5

    monitor-exit v8

    array-length v8, v5

    move v6, v7

    :goto_30
    if-ge v6, v8, :cond_82

    aget v3, v5, v6

    if-ge v3, v4, :cond_39

    invoke-direct {p0, v3, v7}, Landroid/widget/RemoteViewsAdapter;->updateRemoteViews(IZ)V

    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    :catch_3c
    move-exception v1

    const-string/jumbo v6, "RemoteViewsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_5c
    move-exception v0

    const-string/jumbo v6, "RemoteViewsAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_7c
    move-exception v6

    monitor-exit v8

    throw v6

    :catchall_7f
    move-exception v6

    monitor-exit v8

    throw v6

    :cond_82
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v8, Landroid/widget/RemoteViewsAdapter$5;

    invoke-direct {v8, p0}, Landroid/widget/RemoteViewsAdapter$5;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iput-boolean v7, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    return-void
.end method

.method private processException(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    const-string/jumbo v1, "RemoteViewsAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_30
    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->reset()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_48

    monitor-exit v0

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v2

    :try_start_37
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_4b

    monitor-exit v2

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v2, Landroid/widget/RemoteViewsAdapter$3;

    invoke-direct {v2, p0}, Landroid/widget/RemoteViewsAdapter$3;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_48
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_4b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private requestBindService()Z
    .registers 5

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v2, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->bind(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_13
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    return v0
.end method

.method private updateRemoteViews(IZ)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v11

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    :try_start_b
    move/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v5

    move/from16 v0, p1

    invoke-interface {v11, v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->getItemId(I)J
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_86
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_16} :catch_53

    move-result-wide v6

    if-nez v5, :cond_b9

    const-string/jumbo v3, "RemoteViewsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error in updateRemoteViews("

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v16, "): "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v16, " null RemoteViews "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v16, "returned from RemoteViewsFactory."

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_53
    move-exception v10

    const-string/jumbo v3, "RemoteViewsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error in updateRemoteViews("

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v16, "): "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v10}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_86
    move-exception v9

    const-string/jumbo v3, "RemoteViewsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Error in updateRemoteViews("

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v16, "): "

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b9
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v13

    monitor-enter v13

    :try_start_c6
    invoke-virtual {v13, v12}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->isViewTypeInRange(I)Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v3

    iget v2, v3, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_d4
    .catchall {:try_start_c6 .. :try_end_d4} :catchall_10a

    monitor-exit v13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-object/from16 v16, v0

    monitor-enter v16

    if-eqz v15, :cond_10d

    :try_start_de
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/RemoteViewsAdapter;->getVisibleWindow(III)[I

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->insert(ILandroid/widget/RemoteViews;J[I)V

    move-object v14, v5

    if-eqz p2, :cond_108

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    new-instance v4, Landroid/widget/RemoteViewsAdapter$4;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v1, v5}, Landroid/widget/RemoteViewsAdapter$4;-><init>(Landroid/widget/RemoteViewsAdapter;ILandroid/widget/RemoteViews;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_108
    .catchall {:try_start_de .. :try_end_108} :catchall_117

    :cond_108
    :goto_108
    monitor-exit v16

    return-void

    :catchall_10a
    move-exception v3

    monitor-exit v13

    throw v3

    :cond_10d
    :try_start_10d
    const-string/jumbo v3, "RemoteViewsAdapter"

    const-string/jumbo v4, "Error: widget\'s RemoteViewsFactory returns more view types than  indicated by getViewTypeCount() "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_10d .. :try_end_116} :catchall_117

    goto :goto_108

    :catchall_117
    move-exception v3

    monitor-exit v16

    throw v3
.end method

.method private updateTemporaryMetaData()V
    .registers 13

    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v9}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v3

    :try_start_6
    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->hasStableIds()Z

    move-result v5

    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewTypeCount()I

    move-result v8

    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getCount()I

    move-result v0

    new-instance v6, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    invoke-interface {v3}, Lcom/android/internal/widget/IRemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v10}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;-><init>(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    if-lez v0, :cond_36

    iget-object v9, v6, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    if-nez v9, :cond_36

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Lcom/android/internal/widget/IRemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v4

    if-eqz v4, :cond_36

    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;

    iget-object v11, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-direct {v10, v11}, Landroid/widget/RemoteViewsAdapter$HandlerThreadExecutor;-><init>(Landroid/os/HandlerThread;)V

    invoke-virtual {v6, v4, v9, v10}, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->loadFirstViewHeight(Landroid/widget/RemoteViews;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    :cond_36
    iget-object v9, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v9}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v7

    monitor-enter v7
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_3d} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_3d} :catch_54

    :try_start_3d
    iput-boolean v5, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I

    iput v0, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    iput-object v6, v7, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->loadingTemplate:Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_49

    :try_start_47
    monitor-exit v7

    :goto_48
    return-void

    :catchall_49
    move-exception v9

    monitor-exit v7

    throw v9
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_4c} :catch_4c
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4c} :catch_54

    :catch_4c
    move-exception v1

    const-string/jumbo v9, "updateMetaData"

    invoke-direct {p0, v9, v1}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_48

    :catch_54
    move-exception v2

    const-string/jumbo v9, "updateMetaData"

    invoke-direct {p0, v9, v2}, Landroid/widget/RemoteViewsAdapter;->processException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_48
.end method


# virtual methods
.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    :cond_9
    invoke-super {p0}, Landroid/widget/BaseAdapter;->finalize()V

    return-void

    :catchall_d
    move-exception v0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->finalize()V

    throw v0
.end method

.method public getCount()I
    .registers 3

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 6

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v0, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v0

    iget-wide v2, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->itemId:J
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_19

    monitor-exit v1

    return-wide v2

    :cond_15
    const-wide/16 v2, 0x0

    monitor-exit v1

    return-wide v2

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getItemViewType(I)I
    .registers 6

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v3

    :try_start_4
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->containsMetaDataAt(I)Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaDataAt(I)Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;

    move-result-object v2

    iget v1, v2, Landroid/widget/RemoteViewsAdapter$RemoteViewsIndexMetaData;->typeId:I
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_25

    monitor-exit v3

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_1c
    invoke-virtual {v0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getMappedViewType(I)I
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_28

    move-result v2

    monitor-exit v0

    return v2

    :cond_22
    const/4 v2, 0x0

    monitor-exit v3

    return v2

    :catchall_25
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_28
    move-exception v2

    monitor-exit v0

    throw v2
.end method

.method public getRemoteViewsServiceIntent()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 14

    iget-object v7, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getRemoteViewsAt(I)Landroid/widget/RemoteViews;

    move-result-object v5

    if-eqz v5, :cond_42

    const/4 v3, 0x1

    :goto_c
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v2

    const/4 v1, 0x0

    if-eqz p2, :cond_22

    instance-of v6, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v6, :cond_22

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    move-object v0, p2

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object v6, v0

    invoke-virtual {v8, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->removeView(Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    :cond_22
    if-nez v3, :cond_44

    xor-int/lit8 v6, v2, 0x1

    if-eqz v6, :cond_44

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    :goto_2b
    instance-of v6, p2, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    if-eqz v6, :cond_4b

    move-object v0, p2

    check-cast v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-object v4, v0

    :goto_33
    if-eqz v3, :cond_5f

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;Z)V

    if-eqz v1, :cond_40

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_5c

    :cond_40
    :goto_40
    monitor-exit v7

    return-object v4

    :cond_42
    const/4 v3, 0x0

    goto :goto_c

    :cond_44
    :try_start_44
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queuePositionsToBePreloadedFromRequestedPosition(I)Z

    move-result v1

    goto :goto_2b

    :cond_4b
    new-instance v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-direct {v4, v6, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)V

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mAsyncViewLoadExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v6}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->setExecutor(Ljava/util/concurrent/Executor;)V
    :try_end_5b
    .catchall {:try_start_44 .. :try_end_5b} :catchall_5c

    goto :goto_33

    :catchall_5c
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_5f
    :try_start_5f
    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->getLoadingTemplate(Landroid/content/Context;)Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;

    move-result-object v6

    iget-object v6, v6, Landroid/widget/RemoteViewsAdapter$LoadingViewTemplate;->remoteViews:Landroid/widget/RemoteViews;

    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    const/4 v9, 0x0

    invoke-virtual {v4, v6, v8, v9}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->onRemoteViewsLoaded(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews$OnClickHandler;Z)V

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mRequestedViews:Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;

    invoke-virtual {v6, p1, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayoutRefSet;->add(ILandroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;)V

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v6, p1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->queueRequestedPositionToLoad(I)V

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->loadNextIndexInBackground()V
    :try_end_80
    .catchall {:try_start_5f .. :try_end_80} :catchall_5c

    goto :goto_40
.end method

.method public getViewTypeCount()I
    .registers 3

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->viewTypeCount:I
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    const/4 v0, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_1c

    :goto_6
    return v0

    :pswitch_7
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter;->mContext:Landroid/content/Context;

    iget v3, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->unbind(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_1a
    const/4 v0, 0x1

    goto :goto_6

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method

.method public hasStableIds()Z
    .registers 3

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    iget-boolean v1, v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->hasStableIds:Z
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_b

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isDataReady()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter;->mDataReady:Z

    return v0
.end method

.method public isEmpty()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public notifyDataSetChanged()V
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mMainQueue:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mServiceConnection:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    invoke-virtual {v0}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_14

    iput-boolean v1, p0, Landroid/widget/RemoteViewsAdapter;->mNotifyDataSetChangedAfterOnServiceConnected:Z

    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter;->requestBindService()Z

    return-void

    :cond_14
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter;->mWorkerQueue:Landroid/os/Handler;

    new-instance v1, Landroid/widget/RemoteViewsAdapter$6;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViewsAdapter$6;-><init>(Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveRemoteViewsCache()V
    .registers 9

    new-instance v0, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;

    new-instance v4, Landroid/content/Intent$FilterComparison;

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter;->mIntent:Landroid/content/Intent;

    invoke-direct {v4, v5}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    iget v5, p0, Landroid/widget/RemoteViewsAdapter;->mAppWidgetId:I

    invoke-direct {v0, v4, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;-><init>(Landroid/content/Intent$FilterComparison;I)V

    sget-object v5, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    monitor-enter v5

    :try_start_11
    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    sget-object v6, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v6

    monitor-enter v6
    :try_end_34
    .catchall {:try_start_11 .. :try_end_34} :catchall_6c

    :try_start_34
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get1(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v4

    iget v1, v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_69

    :try_start_3c
    monitor-exit v6

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    monitor-enter v6
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_6c

    :try_start_40
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-static {v4}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->-get0(Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_6f

    move-result v2

    :try_start_4a
    monitor-exit v6

    if-lez v1, :cond_56

    if-lez v2, :cond_56

    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sCachedRemoteViewsCaches:Ljava/util/HashMap;

    iget-object v6, p0, Landroid/widget/RemoteViewsAdapter;->mCache:Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    invoke-virtual {v4, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    new-instance v3, Landroid/widget/RemoteViewsAdapter$1;

    invoke-direct {v3, p0, v0}, Landroid/widget/RemoteViewsAdapter$1;-><init>(Landroid/widget/RemoteViewsAdapter;Landroid/widget/RemoteViewsAdapter$RemoteViewsCacheKey;)V

    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sRemoteViewsCacheRemoveRunnables:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Landroid/widget/RemoteViewsAdapter;->sCacheRemovalQueue:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_67
    .catchall {:try_start_4a .. :try_end_67} :catchall_6c

    monitor-exit v5

    return-void

    :catchall_69
    move-exception v4

    :try_start_6a
    monitor-exit v6

    throw v4
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_6c

    :catchall_6c
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_6f
    move-exception v4

    :try_start_70
    monitor-exit v6

    throw v4
    :try_end_72
    .catchall {:try_start_70 .. :try_end_72} :catchall_6c
.end method

.method public setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter;->mRemoteViewsOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    return-void
.end method

.method public setVisibleRangeHint(II)V
    .registers 3

    iput p1, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowLowerBound:I

    iput p2, p0, Landroid/widget/RemoteViewsAdapter;->mVisibleWindowUpperBound:I

    return-void
.end method

.method superNotifyDataSetChanged()V
    .registers 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
