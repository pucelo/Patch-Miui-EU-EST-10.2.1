.class Lcom/android/server/net/NetworkPinner$Callback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkPinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPinner$Callback;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/net/NetworkPinner$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 6

    sget-object v1, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get2()Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_44

    move-result-object v0

    if-eq p0, v0, :cond_b

    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_3d

    sget-object v0, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    if-nez v0, :cond_3d

    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    sput-object p1, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wifi alternate reality enabled on network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_42
    .catchall {:try_start_b .. :try_end_42} :catchall_44

    monitor-exit v1

    return-void

    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 6

    sget-object v1, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get2()Lcom/android/server/net/NetworkPinner$Callback;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_46

    move-result-object v0

    if-eq p0, v0, :cond_b

    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get1()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/server/net/NetworkPinner;->unpin()V

    invoke-static {}, Lcom/android/server/net/NetworkPinner;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Wifi alternate reality disabled on network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    sget-object v0, Lcom/android/server/net/NetworkPinner;->sLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_44
    .catchall {:try_start_b .. :try_end_44} :catchall_46

    monitor-exit v1

    return-void

    :catchall_46
    move-exception v0

    monitor-exit v1

    throw v0
.end method
