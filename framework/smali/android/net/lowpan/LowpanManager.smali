.class public Landroid/net/lowpan/LowpanManager;
.super Ljava/lang/Object;
.source "LowpanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanManager$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinderCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/net/lowpan/ILowpanInterface;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/lowpan/LowpanInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mInterfaceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/lowpan/LowpanInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;

.field private final mService:Landroid/net/lowpan/ILowpanManager;


# direct methods
.method static synthetic -get0(Landroid/net/lowpan/LowpanManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanManager;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/net/lowpan/LowpanManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanManager;Landroid/os/Looper;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    iput-object p3, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method constructor <init>(Landroid/net/lowpan/ILowpanManager;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    iput-object p1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    iput-object v1, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    iput-object v1, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/net/lowpan/LowpanManager;
    .registers 2

    const-string/jumbo v0, "lowpan"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/lowpan/LowpanManager;

    return-object v0
.end method

.method public static getManager()Landroid/net/lowpan/LowpanManager;
    .registers 4

    const/4 v3, 0x0

    const-string/jumbo v2, "lowpan"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {v0}, Landroid/net/lowpan/ILowpanManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;

    move-result-object v1

    new-instance v2, Landroid/net/lowpan/LowpanManager;

    invoke-direct {v2, v1}, Landroid/net/lowpan/LowpanManager;-><init>(Landroid/net/lowpan/ILowpanManager;)V

    return-object v2

    :cond_14
    return-object v3
.end method


# virtual methods
.method public getInterface()Landroid/net/lowpan/LowpanInterface;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/net/lowpan/LowpanManager;->getInterfaceList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_f

    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Landroid/net/lowpan/LowpanManager;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/LowpanInterface;

    move-result-object v1

    return-object v1

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method public getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
    .registers 11

    const/4 v1, 0x0

    :try_start_1
    iget-object v6, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    monitor-enter v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_58

    :try_start_4
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/lowpan/LowpanInterface;

    move-object v1, v0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_55

    move-object v2, v1

    :goto_1d
    if-nez v2, :cond_61

    :try_start_1f
    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Landroid/net/lowpan/LowpanInterface;

    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/net/lowpan/LowpanManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v5, p1, v7}, Landroid/net/lowpan/LowpanInterface;-><init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_5e

    :try_start_2c
    iget-object v7, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    monitor-enter v7
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_55

    :try_start_2f
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/net/lowpan/LowpanInterface;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_2f .. :try_end_38} :catchall_52

    :try_start_38
    monitor-exit v7

    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mBinderCache:Ljava/util/Map;

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v5, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    new-instance v7, Landroid/net/lowpan/LowpanManager$1;

    invoke-direct {v7, p0, v3, p1}, Landroid/net/lowpan/LowpanManager$1;-><init>(Landroid/net/lowpan/LowpanManager;Ljava/lang/String;Landroid/net/lowpan/ILowpanInterface;)V

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_50
    .catchall {:try_start_38 .. :try_end_50} :catchall_55

    :goto_50
    :try_start_50
    monitor-exit v6
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_51} :catch_58

    return-object v1

    :catchall_52
    move-exception v5

    :try_start_53
    monitor-exit v7

    throw v5
    :try_end_55
    .catchall {:try_start_53 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception v5

    :goto_56
    :try_start_56
    monitor-exit v6

    throw v5
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_58} :catch_58

    :catch_58
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    :catchall_5e
    move-exception v5

    move-object v1, v2

    goto :goto_56

    :cond_61
    move-object v1, v2

    goto :goto_50

    :cond_63
    move-object v2, v1

    goto :goto_1d
.end method

.method public getInterface(Ljava/lang/String;)Landroid/net/lowpan/LowpanInterface;
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    monitor-enter v5
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_28

    :try_start_4
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mInterfaceCache:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/lowpan/LowpanInterface;

    move-object v1, v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_25

    :cond_16
    :goto_16
    :try_start_16
    monitor-exit v5
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_17} :catch_28

    return-object v1

    :cond_18
    :try_start_18
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v4, p1}, Landroid/net/lowpan/ILowpanManager;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-virtual {p0, v2}, Landroid/net/lowpan/LowpanManager;->getInterface(Landroid/net/lowpan/ILowpanInterface;)Landroid/net/lowpan/LowpanInterface;
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_25

    move-result-object v1

    goto :goto_16

    :catchall_25
    move-exception v4

    :try_start_26
    monitor-exit v5

    throw v4
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_28} :catch_28

    :catch_28
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public getInterfaceList()[Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v1}, Landroid/net/lowpan/ILowpanManager;->getInterfaceList()[Ljava/lang/String;
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

.method public registerCallback(Landroid/net/lowpan/LowpanManager$Callback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanManager;->registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanManager$Callback;Landroid/os/Handler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    new-instance v0, Landroid/net/lowpan/LowpanManager$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanManager$2;-><init>(Landroid/net/lowpan/LowpanManager;Landroid/os/Handler;Landroid/net/lowpan/LowpanManager$Callback;)V

    :try_start_5
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v2, v0}, Landroid/net/lowpan/ILowpanManager;->addListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_1c

    iget-object v3, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v3

    :try_start_d
    iget-object v2, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_22

    monitor-exit v3

    return-void

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public unregisterCallback(Landroid/net/lowpan/LowpanManager$Callback;)V
    .registers 8

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v5, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    monitor-enter v5

    :try_start_c
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/net/lowpan/ILowpanManagerListener;

    move-object v2, v0

    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mListenerMap:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_24

    monitor-exit v5

    if-eqz v2, :cond_2d

    :try_start_1e
    iget-object v4, p0, Landroid/net/lowpan/LowpanManager;->mService:Landroid/net/lowpan/ILowpanManager;

    invoke-interface {v4, v2}, Landroid/net/lowpan/ILowpanManager;->removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_27

    return-void

    :catchall_24
    move-exception v4

    monitor-exit v5

    throw v4

    :catch_27
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_2d
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Attempt to unregister an unknown callback"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
