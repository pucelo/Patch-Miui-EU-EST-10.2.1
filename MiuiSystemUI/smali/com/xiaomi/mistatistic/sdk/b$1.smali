.class Lcom/xiaomi/mistatistic/sdk/b$1;
.super Ljava/lang/Object;
.source "MIStatsExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/b;->a(Lcom/xiaomi/mistatistic/sdk/b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isTest()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https://data.mistat.xiaomi.com/micrash"

    :goto_0
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/b$1;->a:Ljava/util/Map;

    new-instance v3, Lcom/xiaomi/mistatistic/sdk/b$1$1;

    invoke-direct {v3, p0}, Lcom/xiaomi/mistatistic/sdk/b$1$1;-><init>(Lcom/xiaomi/mistatistic/sdk/b$1;)V

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/j;->a(Ljava/lang/String;Ljava/util/Map;Lcom/xiaomi/mistatistic/sdk/controller/j$b;)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "http://10.99.168.145:8097/micrash"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Error to upload the exception "

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
