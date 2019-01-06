.class Lcom/xiaomi/mistatistic/sdk/controller/d$b;
.super Landroid/os/HandlerThread;
.source "AsyncJobDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/d;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 7

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-static {v5, v6}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;Landroid/os/Handler;)Landroid/os/Handler;

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    return-void

    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/xiaomi/mistatistic/sdk/controller/d$b;->a:Lcom/xiaomi/mistatistic/sdk/controller/d;

    invoke-static {v5}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaomi/mistatistic/sdk/controller/d$a;

    :try_start_2
    invoke-interface {v3}, Lcom/xiaomi/mistatistic/sdk/controller/d$a;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v5, "error while executing job."

    invoke-static {v5, v4}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
