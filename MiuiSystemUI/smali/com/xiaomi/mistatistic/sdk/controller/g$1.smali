.class Lcom/xiaomi/mistatistic/sdk/controller/g$1;
.super Ljava/lang/Object;
.source "HttpEventController.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/HttpEventFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/g;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/g;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/g$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;)Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const-string/jumbo v2, "\\?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v3

    invoke-virtual {p1, v1}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setUrl(Ljava/lang/String;)V

    return-object p1
.end method
