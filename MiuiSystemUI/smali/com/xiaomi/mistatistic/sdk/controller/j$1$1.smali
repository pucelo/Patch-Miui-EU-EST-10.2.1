.class Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;
.super Ljava/lang/Object;
.source "NetworkUtils.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/j$1;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/IBinder;

.field final synthetic b:Landroid/content/ServiceConnection;

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Landroid/os/IBinder;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->a:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->b:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v4, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->a:Landroid/os/IBinder;

    invoke-static {v2}, Lcom/xiaomi/xmsf/push/service/a$a;->a(Landroid/os/IBinder;)Lcom/xiaomi/xmsf/push/service/a;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v3, v3, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->d:Ljava/util/Map;

    invoke-interface {v0, v2, v3}, Lcom/xiaomi/xmsf/push/service/a;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

    invoke-interface {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Z)Z

    const-string/jumbo v2, "connected, do remote http post"

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->b:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "error while uploading the logs by IPC."

    invoke-static {v2, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    iget-object v2, v2, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/j$b;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j$b;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/j$1$1;->c:Lcom/xiaomi/mistatistic/sdk/controller/j$1;

    invoke-static {v2, v4}, Lcom/xiaomi/mistatistic/sdk/controller/j$1;->a(Lcom/xiaomi/mistatistic/sdk/controller/j$1;Z)Z

    goto :goto_0
.end method
