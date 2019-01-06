.class public Lcom/xiaomi/mistatistic/sdk/data/h;
.super Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.source "CustomStringPropertyEvent.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    const-string/jumbo v1, "mistat_basic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/BuildSetting;->isInternationalBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/mistatistic/sdk/data/h;->setAnonymous(I)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/q;->c()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p0, p1, :cond_2

    instance-of v3, p1, Lcom/xiaomi/mistatistic/sdk/data/h;

    if-eqz v3, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/h;

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_0
    :goto_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
    .locals 4

    new-instance v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;

    invoke-direct {v0}, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->category:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->mTS:J

    iput-wide v2, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->timeStamp:J

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->value:Ljava/lang/String;

    const-string/jumbo v1, "property"

    iput-object v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/h;->getAnonymous()I

    move-result v1

    iput v1, v0, Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;->anonymous:I

    return-object v0
.end method

.method public valueToJSon()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->a:Ljava/lang/String;

    const-string/jumbo v2, "category"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->b:Ljava/lang/String;

    const-string/jumbo v2, "key"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "property"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/h;->c:Ljava/lang/String;

    const-string/jumbo v2, "value"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
