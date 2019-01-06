.class Lcom/xiaomi/mistatistic/sdk/controller/l$2;
.super Ljava/lang/Object;
.source "RemoteDataUploadManager.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/asyncjobs/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Ljava/lang/String;JJIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/xiaomi/mistatistic/sdk/controller/l;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/l;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/l;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->a:J

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZ)V
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "upload failed, set Uploading "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/l;->d()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "RDUM"

    invoke-static {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->c:Lcom/xiaomi/mistatistic/sdk/controller/l;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->a:J

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/controller/l$2;->b:J

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/mistatistic/sdk/controller/l;->a(Lcom/xiaomi/mistatistic/sdk/controller/l;JJZ)V

    goto :goto_0
.end method
