.class Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;
.super Ljava/lang/Object;
.source "LocalEventRecorder.java"

# interfaces
.implements Lcom/xiaomi/mistatistic/sdk/controller/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;


# direct methods
.method public constructor <init>(Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    invoke-virtual {v6}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v0

    new-instance v1, Lcom/xiaomi/mistatistic/sdk/controller/f;

    invoke-direct {v1}, Lcom/xiaomi/mistatistic/sdk/controller/f;-><init>()V

    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    instance-of v6, v6, Lcom/xiaomi/mistatistic/sdk/data/g;

    if-eqz v6, :cond_2

    :cond_0
    iget-object v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    :goto_0
    return-void

    :cond_2
    iget-object v6, p0, Lcom/xiaomi/mistatistic/sdk/controller/LocalEventRecorder$a;->a:Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;

    instance-of v6, v6, Lcom/xiaomi/mistatistic/sdk/data/h;

    if-nez v6, :cond_0

    invoke-virtual {v1, v0}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;)V

    goto :goto_0

    :cond_3
    iget-object v6, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    iget-object v7, v4, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v5}, Lcom/xiaomi/mistatistic/sdk/controller/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
