.class Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;
.super Ljava/lang/Object;
.source "RemoteDataUploadJob.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v2, p1}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->b(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;->a(Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c;)Z

    move-result v3

    invoke-interface {v2, v0, v3}, Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;->a(ZZ)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Upload MiStat data failed: "

    invoke-static {v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
