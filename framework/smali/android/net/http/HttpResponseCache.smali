.class public final Landroid/net/http/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lcom/android/okhttp/OkCacheContainer;


# instance fields
.field private final delegate:Lcom/android/okhttp/AndroidShimResponseCache;


# direct methods
.method private constructor <init>(Lcom/android/okhttp/AndroidShimResponseCache;)V
    .registers 2

    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    iput-object p1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    return-void
.end method

.method public static getInstalled()Landroid/net/http/HttpResponseCache;
    .registers 2

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    instance-of v1, v0, Landroid/net/http/HttpResponseCache;

    if-eqz v1, :cond_b

    check-cast v0, Landroid/net/http/HttpResponseCache;

    return-object v0

    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method public static declared-synchronized install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v6, Landroid/net/http/HttpResponseCache;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v1

    instance-of v5, v1, Landroid/net/http/HttpResponseCache;

    if-eqz v5, :cond_1c

    move-object v0, v1

    check-cast v0, Landroid/net/http/HttpResponseCache;

    move-object v2, v0

    iget-object v4, v2, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v4, p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->isEquivalent(Ljava/io/File;J)Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2a

    move-result v5

    if-eqz v5, :cond_19

    monitor-exit v6

    return-object v2

    :cond_19
    :try_start_19
    invoke-virtual {v4}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    :cond_1c
    invoke-static {p0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->create(Ljava/io/File;J)Lcom/android/okhttp/AndroidShimResponseCache;

    move-result-object v4

    new-instance v3, Landroid/net/http/HttpResponseCache;

    invoke-direct {v3, v4}, Landroid/net/http/HttpResponseCache;-><init>(Lcom/android/okhttp/AndroidShimResponseCache;)V

    invoke-static {v3}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V
    :try_end_28
    .catchall {:try_start_19 .. :try_end_28} :catchall_2a

    monitor-exit v6

    return-object v3

    :catchall_2a
    move-exception v5

    monitor-exit v6

    throw v5
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    :cond_a
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->close()V

    return-void
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/net/ResponseCache;->setDefault(Ljava/net/ResponseCache;)V

    :cond_a
    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->delete()V

    return-void
.end method

.method public flush()V
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v1}, Lcom/android/okhttp/AndroidShimResponseCache;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/okhttp/AndroidShimResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/android/okhttp/Cache;
    .registers 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getCache()Lcom/android/okhttp/Cache;

    move-result-object v0

    return-object v0
.end method

.method public getHitCount()I
    .registers 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getHitCount()I

    move-result v0

    return v0
.end method

.method public getNetworkCount()I
    .registers 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getNetworkCount()I

    move-result v0

    return v0
.end method

.method public getRequestCount()I
    .registers 2

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->getRequestCount()I

    move-result v0

    return v0
.end method

.method public maxSize()J
    .registers 3

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0}, Lcom/android/okhttp/AndroidShimResponseCache;->maxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/okhttp/AndroidShimResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public size()J
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/net/http/HttpResponseCache;->delegate:Lcom/android/okhttp/AndroidShimResponseCache;

    invoke-virtual {v1}, Lcom/android/okhttp/AndroidShimResponseCache;->size()J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    return-wide v2

    :catch_7
    move-exception v0

    const-wide/16 v2, -0x1

    return-wide v2
.end method
