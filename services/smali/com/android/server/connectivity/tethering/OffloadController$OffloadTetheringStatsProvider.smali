.class Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "OffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/OffloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OffloadTetheringStatsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/OffloadController;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/tethering/OffloadController;Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;-><init>(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .registers 11

    const/4 v8, 0x0

    new-instance v4, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI;

    invoke-direct {v4, p0}, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/OffloadController;->-get1(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    if-ne v6, v7, :cond_65

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    :goto_19
    new-instance v3, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-direct {v3, v6, v7, v8}, Landroid/net/NetworkStats;-><init>(JI)V

    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    iput v8, v0, Landroid/net/NetworkStats$Entry;->set:I

    iput v8, v0, Landroid/net/NetworkStats$Entry;->tag:I

    const/4 v6, 0x1

    if-ne p1, v6, :cond_6f

    const/4 v6, -0x5

    :goto_2f
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/OffloadController;->-get0(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget-wide v6, v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->rxBytes:J

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, v5, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface$ForwardedStats;->txBytes:J

    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_3f

    :cond_65
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/OffloadController;->-get1(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_19

    :cond_6f
    const/4 v6, -0x1

    goto :goto_2f

    :cond_71
    return-object v3
.end method

.method synthetic lambda$-com_android_server_connectivity_tethering_OffloadController$OffloadTetheringStatsProvider_11400()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap8(Lcom/android/server/connectivity/tethering/OffloadController;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_connectivity_tethering_OffloadController$OffloadTetheringStatsProvider_12382(JLjava/lang/String;)V
    .registers 7

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get2(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0, p3}, Lcom/android/server/connectivity/tethering/OffloadController;->-wrap1(Lcom/android/server/connectivity/tethering/OffloadController;Ljava/lang/String;)Z

    return-void

    :cond_15
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get2(Lcom/android/server/connectivity/tethering/OffloadController;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/OffloadController$OffloadTetheringStatsProvider;->this$0:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->-get1(Lcom/android/server/connectivity/tethering/OffloadController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;

    invoke-direct {v1, p2, p3, p0, p1}, Lcom/android/server/connectivity/tethering/-$Lambda$M3tXj934m-dXV_AxdqUj05-IfpI$1;-><init>(JLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
