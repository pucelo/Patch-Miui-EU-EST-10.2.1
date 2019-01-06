.class public Lcom/android/server/net/NetworkPinner;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkPinner$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sCM:Landroid/net/ConnectivityManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field protected static final sLock:Ljava/lang/Object;

.field protected static sNetwork:Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Landroid/net/ConnectivityManager;
    .registers 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/server/net/NetworkPinner$Callback;
    .registers 1

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/server/net/NetworkPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private static maybeInitConnectivityManager(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1c

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Bad luck, ConnectivityService not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    return-void
.end method

.method public static pin(Landroid/content/Context;Landroid/net/NetworkRequest;)V
    .registers 6

    sget-object v2, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    if-nez v1, :cond_19

    invoke-static {p0}, Lcom/android/server/net/NetworkPinner;->maybeInitConnectivityManager(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/net/NetworkPinner$Callback;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/android/server/net/NetworkPinner$Callback;-><init>(Lcom/android/server/net/NetworkPinner$Callback;)V

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_28

    :try_start_12
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    invoke-virtual {v1, p1, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_19
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_19} :catch_1b
    .catchall {:try_start_12 .. :try_end_19} :catchall_28

    :cond_19
    :goto_19
    monitor-exit v2

    return-void

    :catch_1b
    move-exception v0

    :try_start_1c
    sget-object v1, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to register network callback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_28

    goto :goto_19

    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static unpin()V
    .registers 4

    sget-object v2, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_26

    if-eqz v1, :cond_1a

    :try_start_7
    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    sget-object v1, Lcom/android/server/net/NetworkPinner;->sCM:Landroid/net/ConnectivityManager;

    sget-object v3, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_14
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_14} :catch_1c
    .catchall {:try_start_7 .. :try_end_14} :catchall_26

    :goto_14
    const/4 v1, 0x0

    :try_start_15
    sput-object v1, Lcom/android/server/net/NetworkPinner;->sCallback:Lcom/android/server/net/NetworkPinner$Callback;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_26

    :cond_1a
    monitor-exit v2

    return-void

    :catch_1c
    move-exception v0

    :try_start_1d
    sget-object v1, Lcom/android/server/net/NetworkPinner;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Failed to unregister network callback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_26

    goto :goto_14

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method
