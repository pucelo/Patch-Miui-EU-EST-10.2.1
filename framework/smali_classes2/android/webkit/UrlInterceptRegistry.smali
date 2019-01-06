.class public final Landroid/webkit/UrlInterceptRegistry;
.super Ljava/lang/Object;
.source "UrlInterceptRegistry.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "intercept"

.field private static mDisabled:Z

.field private static mHandlerList:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized getHandlers()Ljava/util/LinkedList;
    .registers 2

    const-class v1, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;

    :cond_e
    sget-object v0, Landroid/webkit/UrlInterceptRegistry;->mHandlerList:Ljava/util/LinkedList;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/PluginData;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const-class v4, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v4

    :try_start_4
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    move-result v3

    if-eqz v3, :cond_c

    monitor-exit v4

    return-object v5

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/UrlInterceptHandler;

    invoke-interface {v1, p0, p1}, Landroid/webkit/UrlInterceptHandler;->getPluginData(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/PluginData;
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    move-result-object v0

    if-eqz v0, :cond_14

    monitor-exit v4

    return-object v0

    :cond_28
    monitor-exit v4

    return-object v5

    :catchall_2a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized getSurrogate(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/CacheManager$CacheResult;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v5, 0x0

    const-class v4, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v4

    :try_start_4
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->urlInterceptDisabled()Z
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_2a

    move-result v3

    if-eqz v3, :cond_c

    monitor-exit v4

    return-object v5

    :cond_c
    :try_start_c
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/UrlInterceptHandler;

    invoke-interface {v0, p0, p1}, Landroid/webkit/UrlInterceptHandler;->service(Ljava/lang/String;Ljava/util/Map;)Landroid/webkit/CacheManager$CacheResult;
    :try_end_23
    .catchall {:try_start_c .. :try_end_23} :catchall_2a

    move-result-object v2

    if-eqz v2, :cond_14

    monitor-exit v4

    return-object v2

    :cond_28
    monitor-exit v4

    return-object v5

    :catchall_2a
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized registerHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1a

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_17
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setUrlInterceptDisabled(Z)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_3
    sput-boolean p0, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unregisterHandler(Landroid/webkit/UrlInterceptHandler;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v1, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Landroid/webkit/UrlInterceptRegistry;->getHandlers()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_d

    move-result v0

    monitor-exit v1

    return v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized urlInterceptDisabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Landroid/webkit/UrlInterceptRegistry;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Landroid/webkit/UrlInterceptRegistry;->mDisabled:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method
