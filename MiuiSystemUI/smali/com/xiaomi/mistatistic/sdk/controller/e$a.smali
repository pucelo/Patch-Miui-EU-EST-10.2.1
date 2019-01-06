.class Lcom/xiaomi/mistatistic/sdk/controller/e$a;
.super Ljava/lang/Object;
.source "DeviceIdHolder.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string/jumbo v2, "imei"

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string/jumbo v2, "device_id"

    const-string/jumbo v3, ""

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Ljava/lang/String;)Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    const-string/jumbo v2, "imei"

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/k;->d(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/e$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/e;->a(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1
.end method
