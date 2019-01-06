.class public Lmiui/maml/LifecycleResourceManager;
.super Lmiui/maml/ResourceManager;
.source "LifecycleResourceManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LifecycleResourceManager"

.field public static final TIME_DAY:I = 0x5265c00

.field public static final TIME_HOUR:I = 0x36ee80

.field private static mLastCheckCacheTime:J


# instance fields
.field private mCheckTime:J

.field private mInactiveTime:J


# direct methods
.method public constructor <init>(Lmiui/maml/ResourceLoader;JJ)V
    .registers 6

    invoke-direct {p0, p1}, Lmiui/maml/ResourceManager;-><init>(Lmiui/maml/ResourceLoader;)V

    iput-wide p2, p0, Lmiui/maml/LifecycleResourceManager;->mInactiveTime:J

    iput-wide p4, p0, Lmiui/maml/LifecycleResourceManager;->mCheckTime:J

    return-void
.end method


# virtual methods
.method public checkCache()V
    .registers 15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v8, Lmiui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    sub-long v8, v2, v8

    iget-wide v10, p0, Lmiui/maml/LifecycleResourceManager;->mCheckTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_f

    return-void

    :cond_f
    const-string/jumbo v8, "LifecycleResourceManager"

    const-string/jumbo v9, "begin check cache... "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    monitor-enter v9

    :try_start_20
    iget-object v8, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v8}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2e
    :goto_2e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v8, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v8, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/ResourceManager$BitmapInfo;

    if-eqz v0, :cond_2e

    iget-wide v10, v0, Lmiui/maml/ResourceManager$BitmapInfo;->mLastVisitTime:J

    sub-long v10, v2, v10

    iget-wide v12, p0, Lmiui/maml/LifecycleResourceManager;->mInactiveTime:J

    cmp-long v8, v10, v12

    if-lez v8, :cond_2e

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catchall {:try_start_20 .. :try_end_51} :catchall_52

    goto :goto_2e

    :catchall_52
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_55
    :try_start_55
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_59
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_85

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v8, "LifecycleResourceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove cache: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lmiui/maml/LifecycleResourceManager;->mBitmapsCache:Landroid/util/LruCache;

    invoke-virtual {v8, v6}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_84
    .catchall {:try_start_55 .. :try_end_84} :catchall_52

    goto :goto_59

    :cond_85
    monitor-exit v9

    sput-wide v2, Lmiui/maml/LifecycleResourceManager;->mLastCheckCacheTime:J

    return-void
.end method

.method public finish(Z)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmiui/maml/LifecycleResourceManager;->checkCache()V

    :cond_5
    invoke-super {p0, p1}, Lmiui/maml/ResourceManager;->finish(Z)V

    return-void
.end method

.method public pause()V
    .registers 1

    invoke-virtual {p0}, Lmiui/maml/LifecycleResourceManager;->checkCache()V

    return-void
.end method
