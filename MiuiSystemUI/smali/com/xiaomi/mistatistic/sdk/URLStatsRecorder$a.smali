.class Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;
.super Ljava/net/URLStreamHandler;
.source "URLStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/net/URLStreamHandler;


# direct methods
.method public constructor <init>(Ljava/net/URLStreamHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/net/URL;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/net/URLStreamHandler;

    const-string/jumbo v8, "openConnection"

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URLConnection;

    instance-of v6, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v6, :cond_0

    instance-of v6, v4, Ljava/net/HttpURLConnection;

    if-nez v6, :cond_1

    return-object v4

    :cond_0
    new-instance v5, Lcom/xiaomi/mistatistic/sdk/network/d;

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v5, v4}, Lcom/xiaomi/mistatistic/sdk/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v5, v0, v1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(J)V

    return-object v5

    :cond_1
    new-instance v5, Lcom/xiaomi/mistatistic/sdk/network/c;

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v4}, Lcom/xiaomi/mistatistic/sdk/network/c;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v5, v0, v1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method

.method protected openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/net/URL;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-class v7, Ljava/net/Proxy;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const-class v7, Ljava/net/URLStreamHandler;

    const-string/jumbo v8, "openConnection"

    invoke-virtual {v7, v8, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;->a:Ljava/net/URLStreamHandler;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    aput-object p2, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URLConnection;

    instance-of v6, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-nez v6, :cond_0

    instance-of v6, v4, Ljava/net/HttpURLConnection;

    if-nez v6, :cond_1

    return-object v4

    :cond_0
    new-instance v5, Lcom/xiaomi/mistatistic/sdk/network/d;

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    invoke-direct {v5, v4}, Lcom/xiaomi/mistatistic/sdk/network/d;-><init>(Ljavax/net/ssl/HttpsURLConnection;)V

    invoke-virtual {v5, v0, v1}, Lcom/xiaomi/mistatistic/sdk/network/d;->a(J)V

    return-object v5

    :cond_1
    new-instance v5, Lcom/xiaomi/mistatistic/sdk/network/c;

    check-cast v4, Ljava/net/HttpURLConnection;

    invoke-direct {v5, v4}, Lcom/xiaomi/mistatistic/sdk/network/c;-><init>(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v5, v0, v1}, Lcom/xiaomi/mistatistic/sdk/network/c;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v2

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a()Lcom/xiaomi/mistatistic/sdk/controller/g;

    move-result-object v6

    new-instance v7, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)V

    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
.end method
