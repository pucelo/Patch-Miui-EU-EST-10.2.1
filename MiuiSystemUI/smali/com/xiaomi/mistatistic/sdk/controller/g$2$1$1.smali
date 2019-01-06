.class Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;
.super Ljava/lang/Object;
.source "HttpEventController.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "http data complete, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-void

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ok"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-virtual {v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lorg/json/JSONObject;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/controller/g;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->b:Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g$2;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/g$2;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/g;->a(Lcom/xiaomi/mistatistic/sdk/controller/g;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$2$1$1;->a:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "upload events response exception:"

    invoke-static {v3, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
