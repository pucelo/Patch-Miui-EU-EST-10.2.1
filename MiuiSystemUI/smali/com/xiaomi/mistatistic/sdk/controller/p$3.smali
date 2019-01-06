.class Lcom/xiaomi/mistatistic/sdk/controller/p$3;
.super Ljava/lang/Object;
.source "UploadPolicyEngine.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/p;->a(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/p;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/p;IJ)V
    .locals 1

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    iput p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->a:I

    iput-wide p3, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v4, 0x4

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->a:I

    invoke-static {v1, v2}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;I)I

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;J)J

    :goto_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;)I

    move-result v1

    const-string/jumbo v2, "upload_policy"

    invoke-static {v0, v2, v1}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;)I

    move-result v1

    if-eq v1, v4, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->b:J

    invoke-static {v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/p;->a(Lcom/xiaomi/mistatistic/sdk/controller/p;J)J

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-static {v1}, Lcom/xiaomi/mistatistic/sdk/controller/p;->b(Lcom/xiaomi/mistatistic/sdk/controller/p;)J

    move-result-wide v2

    const-string/jumbo v1, "upload_interval"

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/controller/k;->b(Landroid/content/Context;Ljava/lang/String;J)V

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a()Lcom/xiaomi/mistatistic/sdk/controller/d;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/mistatistic/sdk/controller/p$3$1;

    invoke-direct {v2, p0}, Lcom/xiaomi/mistatistic/sdk/controller/p$3$1;-><init>(Lcom/xiaomi/mistatistic/sdk/controller/p$3;)V

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/controller/p$3;->c:Lcom/xiaomi/mistatistic/sdk/controller/p;

    invoke-static {v3}, Lcom/xiaomi/mistatistic/sdk/controller/p;->b(Lcom/xiaomi/mistatistic/sdk/controller/p;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/xiaomi/mistatistic/sdk/controller/d;->a(Lcom/xiaomi/mistatistic/sdk/controller/d$a;J)V

    goto :goto_1
.end method
