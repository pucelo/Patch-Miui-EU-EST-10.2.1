.class public Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;
.super Ljava/lang/Object;
.source "URLStatsRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->c:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->d:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->e:Ljava/util/List;

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string/jumbo v1, "file"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string/jumbo v1, "ftp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string/jumbo v1, "http"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string/jumbo v1, "https"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    const-string/jumbo v1, "jar"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->c:Ljava/util/List;

    const-string/jumbo v1, "http"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static enableAutoRecord()Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->b()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    if-nez v5, :cond_1

    :try_start_0
    sget-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    :goto_0
    sget-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    :cond_0
    const-string/jumbo v5, "MI_STAT"

    const-string/jumbo v6, "The statistics is disabled."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_1
    sget-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    return v5

    :cond_2
    :try_start_1
    sget-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v0, 0x0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_4

    const-class v5, Ljava/net/URL;

    const-string/jumbo v6, "streamHandlers"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    :goto_2
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Hashtable;

    sget-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$1;

    invoke-direct {v5}, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder$1;-><init>()V

    invoke-static {v5}, Ljava/net/URL;->setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->f:Ljava/lang/Boolean;

    const-string/jumbo v5, "failed to enable url interceptor"

    invoke-static {v5, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/net/URL;

    const-string/jumbo v5, "www.xiaomi.com"

    const-string/jumbo v6, ""

    invoke-direct {v2, v1, v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-class v5, Ljava/net/URL;

    const-string/jumbo v6, "handlers"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URLStreamHandler;

    sget-object v5, Lcom/xiaomi/mistatistic/sdk/URLStatsRecorder;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
