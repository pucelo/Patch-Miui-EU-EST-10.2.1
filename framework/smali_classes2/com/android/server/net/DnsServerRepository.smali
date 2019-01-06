.class Lcom/android/server/net/DnsServerRepository;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"


# static fields
.field public static final NUM_CURRENT_SERVERS:I = 0x3

.field public static final NUM_SERVERS:I = 0xc

.field public static final TAG:Ljava/lang/String; = "DnsServerRepository"


# instance fields
.field private mAllServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/16 v1, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    return-void
.end method

.method private declared-synchronized updateCurrentServers()Z
    .registers 11

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_e
    if-ltz v3, :cond_3d

    const/16 v7, 0xc

    if-ge v3, v7, :cond_22

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/net/DnsServerEntry;

    iget-wide v8, v7, Lcom/android/server/net/DnsServerEntry;->expiry:J

    cmp-long v7, v8, v4

    if-gez v7, :cond_3d

    :cond_22
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/net/DnsServerEntry;

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    iget-object v8, v6, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    iget-object v8, v6, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v0, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    :cond_3d
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/DnsServerEntry;

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_62

    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    iget-object v8, v1, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_64

    move-result v7

    or-int/2addr v0, v7

    goto :goto_43

    :cond_62
    monitor-exit p0

    return v0

    :catchall_64
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized updateExistingEntry(Ljava/net/InetAddress;J)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/DnsServerEntry;

    if-eqz v0, :cond_10

    iput-wide p2, v0, Lcom/android/server/net/DnsServerEntry;->expiry:J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_13

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :cond_10
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized addServers(J[Ljava/lang/String;)Z
    .registers 15

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v8, p1

    add-long v4, v6, v8

    const/4 v8, 0x0

    array-length v9, p3

    :goto_c
    if-ge v8, v9, :cond_32

    aget-object v1, p3, v8
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_3d

    :try_start_10
    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_13} :catch_30
    .catchall {:try_start_10 .. :try_end_13} :catchall_3d

    move-result-object v0

    :try_start_14
    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/net/DnsServerRepository;->updateExistingEntry(Ljava/net/InetAddress;J)Z

    move-result v10

    if-nez v10, :cond_2d

    cmp-long v10, v4, v6

    if-lez v10, :cond_2d

    new-instance v2, Lcom/android/server/net/DnsServerEntry;

    invoke-direct {v2, v0, v4, v5}, Lcom/android/server/net/DnsServerEntry;-><init>(Ljava/net/InetAddress;J)V

    iget-object v10, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    :goto_2d
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :catch_30
    move-exception v3

    goto :goto_2d

    :cond_32
    iget-object v8, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/android/server/net/DnsServerRepository;->updateCurrentServers()Z
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_3d

    move-result v8

    monitor-exit p0

    return v8

    :catchall_3d
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public declared-synchronized setDnsServersOn(Landroid/net/LinkProperties;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
