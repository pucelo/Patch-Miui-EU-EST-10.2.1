.class Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;
.super Ljava/lang/Object;
.source "HttpEventController.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/g$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 9

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v6, v6, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/g;->c()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v6, v6, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/g;->d()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v6, v6, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/controller/g;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    add-int/lit8 v6, v4, 0x1e

    if-ge v6, v1, :cond_2

    add-int/lit8 v6, v4, 0x1e

    invoke-interface {v0, v4, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    :goto_2
    move-object v5, v3

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v6, v6, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    new-instance v7, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;

    invoke-direct {v7, p0, v5}, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;Ljava/util/List;)V

    invoke-static {v6, v3, v7}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/controller/g;Ljava/util/List;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    add-int/lit8 v4, v4, 0x1e

    goto :goto_1

    :cond_2
    invoke-interface {v0, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v6, ""

    invoke-static {v6, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v6, ""

    invoke-static {v6, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    :try_start_1
    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v6, v6, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$2;

    invoke-direct {v8, p0}, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$2;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;)V

    invoke-virtual {v6, v7, v8}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Ljava/lang/String;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v6, ""

    invoke-static {v6, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v2

    const-string/jumbo v6, ""

    invoke-static {v6, v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
