.class public final Landroid/net/nsd/NsdManager;
.super Ljava/lang/Object;
.source "NsdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/nsd/NsdManager$DiscoveryListener;,
        Landroid/net/nsd/NsdManager$RegistrationListener;,
        Landroid/net/nsd/NsdManager$ResolveListener;,
        Landroid/net/nsd/NsdManager$ServiceHandler;
    }
.end annotation


# static fields
.field public static final ACTION_NSD_STATE_CHANGED:Ljava/lang/String; = "android.net.nsd.STATE_CHANGED"

.field private static final BASE:I = 0x60000

.field private static final DBG:Z = false

.field public static final DISABLE:I = 0x60019

.field public static final DISCOVER_SERVICES:I = 0x60001

.field public static final DISCOVER_SERVICES_FAILED:I = 0x60003

.field public static final DISCOVER_SERVICES_STARTED:I = 0x60002

.field public static final ENABLE:I = 0x60018

.field private static final EVENT_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_NSD_STATE:Ljava/lang/String; = "nsd_state"

.field public static final FAILURE_ALREADY_ACTIVE:I = 0x3

.field public static final FAILURE_INTERNAL_ERROR:I = 0x0

.field public static final FAILURE_MAX_LIMIT:I = 0x4

.field private static FIRST_LISTENER_KEY:I = 0x0

.field public static final NATIVE_DAEMON_EVENT:I = 0x6001a

.field public static final NSD_STATE_DISABLED:I = 0x1

.field public static final NSD_STATE_ENABLED:I = 0x2

.field public static final PROTOCOL_DNS_SD:I = 0x1

.field public static final REGISTER_SERVICE:I = 0x60009

.field public static final REGISTER_SERVICE_FAILED:I = 0x6000a

.field public static final REGISTER_SERVICE_SUCCEEDED:I = 0x6000b

.field public static final RESOLVE_SERVICE:I = 0x60012

.field public static final RESOLVE_SERVICE_FAILED:I = 0x60013

.field public static final RESOLVE_SERVICE_SUCCEEDED:I = 0x60014

.field public static final SERVICE_FOUND:I = 0x60004

.field public static final SERVICE_LOST:I = 0x60005

.field public static final STOP_DISCOVERY:I = 0x60006

.field public static final STOP_DISCOVERY_FAILED:I = 0x60007

.field public static final STOP_DISCOVERY_SUCCEEDED:I = 0x60008

.field private static final TAG:Ljava/lang/String;

.field public static final UNREGISTER_SERVICE:I = 0x6000c

.field public static final UNREGISTER_SERVICE_FAILED:I = 0x6000d

.field public static final UNREGISTER_SERVICE_SUCCEEDED:I = 0x6000e


# instance fields
.field private final mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mConnected:Ljava/util/concurrent/CountDownLatch;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

.field private mListenerKey:I

.field private final mListenerMap:Landroid/util/SparseArray;

.field private final mMapLock:Ljava/lang/Object;

.field private final mService:Landroid/net/nsd/INsdManager;

.field private final mServiceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/nsd/NsdServiceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/nsd/NsdManager;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/nsd/NsdManager;)Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/nsd/NsdManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/nsd/NsdManager;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/net/nsd/NsdManager;->getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/nsd/NsdManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->removeListener(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const-class v0, Landroid/net/nsd/NsdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "DISCOVER_SERVICES"

    const v2, 0x60001

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "DISCOVER_SERVICES_STARTED"

    const v2, 0x60002

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "DISCOVER_SERVICES_FAILED"

    const v2, 0x60003

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "SERVICE_FOUND"

    const v2, 0x60004

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "SERVICE_LOST"

    const v2, 0x60005

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "STOP_DISCOVERY"

    const v2, 0x60006

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "STOP_DISCOVERY_FAILED"

    const v2, 0x60007

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "STOP_DISCOVERY_SUCCEEDED"

    const v2, 0x60008

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "REGISTER_SERVICE"

    const v2, 0x60009

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "REGISTER_SERVICE_FAILED"

    const v2, 0x6000a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "REGISTER_SERVICE_SUCCEEDED"

    const v2, 0x6000b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "UNREGISTER_SERVICE"

    const v2, 0x6000c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "UNREGISTER_SERVICE_FAILED"

    const v2, 0x6000d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "UNREGISTER_SERVICE_SUCCEEDED"

    const v2, 0x6000e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "RESOLVE_SERVICE"

    const v2, 0x60012

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "RESOLVE_SERVICE_FAILED"

    const v2, 0x60013

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "RESOLVE_SERVICE_SUCCEEDED"

    const v2, 0x60014

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "ENABLE"

    const v2, 0x60018

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "DISABLE"

    const v2, 0x60019

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    const-string/jumbo v1, "NATIVE_DAEMON_EVENT"

    const v2, 0x6001a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    sput v0, Landroid/net/nsd/NsdManager;->FIRST_LISTENER_KEY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/nsd/INsdManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/net/nsd/NsdManager;->FIRST_LISTENER_KEY:I

    iput v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    iput-object p1, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->init()V

    return-void
.end method

.method private static checkListener(Ljava/lang/Object;)V
    .registers 2

    const-string/jumbo v0, "listener cannot be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static checkProtocol(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    :goto_3
    const-string/jumbo v1, "Unsupported protocol"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static checkServiceInfo(Landroid/net/nsd/NsdServiceInfo;)V
    .registers 3

    const-string/jumbo v0, "NsdServiceInfo cannot be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Service name cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Service type cannot be empty"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    return-void
.end method

.method private static fatal(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Landroid/net/nsd/NsdManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getListenerKey(Ljava/lang/Object;)I
    .registers 6

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkListener(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    const/4 v1, 0x1

    :goto_10
    const-string/jumbo v3, "listener not registered"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_1b
    .catchall {:try_start_6 .. :try_end_1b} :catchall_20

    move-result v1

    monitor-exit v2

    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_10

    :catchall_20
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getMessenger()Landroid/os/Messenger;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    invoke-interface {v1}, Landroid/net/nsd/INsdManager;->getMessenger()Landroid/os/Messenger;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static getNsdServiceInfoType(Landroid/net/nsd/NsdServiceInfo;)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_6

    const-string/jumbo v0, "?"

    return-object v0

    :cond_6
    invoke-virtual {p0}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .registers 7

    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v1

    if-nez v1, :cond_c

    const-string/jumbo v3, "Failed to obtain service Messenger"

    invoke-static {v3}, Landroid/net/nsd/NsdManager;->fatal(Ljava/lang/String;)V

    :cond_c
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "NsdManager"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Landroid/net/nsd/NsdManager$ServiceHandler;-><init>(Landroid/net/nsd/NsdManager;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v4, p0, Landroid/net/nsd/NsdManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/nsd/NsdManager;->mHandler:Landroid/net/nsd/NsdManager$ServiceHandler;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    :try_start_2b
    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_30} :catch_31

    :goto_30
    return-void

    :catch_31
    move-exception v0

    const-string/jumbo v3, "Interrupted wait at init"

    invoke-static {v3}, Landroid/net/nsd/NsdManager;->fatal(Ljava/lang/String;)V

    goto :goto_30
.end method

.method public static nameOf(I)Ljava/lang/String;
    .registers 3

    sget-object v1, Landroid/net/nsd/NsdManager;->EVENT_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_f

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_f
    return-object v0
.end method

.method private nextListenerKey()I
    .registers 3

    sget v0, Landroid/net/nsd/NsdManager;->FIRST_LISTENER_KEY:I

    iget v1, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    iget v0, p0, Landroid/net/nsd/NsdManager;->mListenerKey:I

    return v0
.end method

.method private putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I
    .registers 8

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkListener(Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_26

    const/4 v2, 0x1

    :goto_10
    const-string/jumbo v4, "listener already in use"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-direct {p0}, Landroid/net/nsd/NsdManager;->nextListenerKey()I

    move-result v0

    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_28

    monitor-exit v3

    return v0

    :cond_26
    const/4 v2, 0x0

    goto :goto_10

    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private removeListener(I)V
    .registers 4

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mServiceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public disconnect()V
    .registers 2

    iget-object v0, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    return-void
.end method

.method public discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V
    .registers 9

    const-string/jumbo v2, "Service type cannot be empty"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/net/nsd/NsdManager;->checkProtocol(I)V

    new-instance v1, Landroid/net/nsd/NsdServiceInfo;

    invoke-direct {v1}, Landroid/net/nsd/NsdServiceInfo;-><init>()V

    invoke-virtual {v1, p1}, Landroid/net/nsd/NsdServiceInfo;->setServiceType(Ljava/lang/String;)V

    invoke-direct {p0, p3, v1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v0

    iget-object v2, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x60001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public registerService(Landroid/net/nsd/NsdServiceInfo;ILandroid/net/nsd/NsdManager$RegistrationListener;)V
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v1

    if-lez v1, :cond_21

    const/4 v1, 0x1

    :goto_8
    const-string/jumbo v3, "Invalid port number"

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkServiceInfo(Landroid/net/nsd/NsdServiceInfo;)V

    invoke-static {p2}, Landroid/net/nsd/NsdManager;->checkProtocol(I)V

    invoke-direct {p0, p3, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v0

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x60009

    invoke-virtual {v1, v3, v2, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void

    :cond_21
    move v1, v2

    goto :goto_8
.end method

.method public resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V
    .registers 7

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->checkServiceInfo(Landroid/net/nsd/NsdServiceInfo;)V

    invoke-direct {p0, p2, p1}, Landroid/net/nsd/NsdManager;->putListener(Ljava/lang/Object;Landroid/net/nsd/NsdServiceInfo;)I

    move-result v0

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x60012

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mService:Landroid/net/nsd/INsdManager;

    invoke-interface {v1, p1}, Landroid/net/nsd/INsdManager;->setEnabled(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x60006

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method

.method public unregisterService(Landroid/net/nsd/NsdManager$RegistrationListener;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/net/nsd/NsdManager;->getListenerKey(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/net/nsd/NsdManager;->mAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x6000c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    return-void
.end method
