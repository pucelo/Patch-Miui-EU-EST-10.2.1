.class public Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;
.super Ljava/lang/Object;
.source "HttpEvent.java"


# instance fields
.field private exceptionName:Ljava/lang/String;

.field private firstPacketCost:J

.field private flowStatus:I

.field private ip:Ljava/lang/String;

.field private net:Ljava/lang/String;

.field private netFlow:J

.field private operator:Ljava/lang/String;

.field private reqId:Ljava/lang/String;

.field private responseCode:I

.field private time:J

.field private timeCost:J

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JILjava/lang/String;)V
    .locals 8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JJILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    iput p6, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    iput-object p7, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    iput-wide p4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    invoke-virtual {p0}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->setNet()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;-><init>(Ljava/lang/String;JILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v1

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    iget v3, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    iget-wide v4, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    iget-wide v4, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    iget-wide v4, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    iget v3, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    iget-object v3, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    iget-wide v4, v0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setFirstPacketCost(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    return-void
.end method

.method public setNet()V
    .locals 4

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mistatistic/sdk/controller/j;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v0, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    const-string/jumbo v2, "WIFI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "NULL"

    iput-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "NULL"

    iput-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/controller/c;->a()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRequestId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->url:Ljava/lang/String;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->net:Ljava/lang/String;

    const-string/jumbo v4, "net"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_5

    move v3, v2

    :goto_0
    if-nez v3, :cond_0

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->timeCost:J

    const-string/jumbo v3, "cost"

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_6

    move v3, v2

    :goto_1
    if-nez v3, :cond_1

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->firstPacketCost:J

    const-string/jumbo v3, "first_byte_t"

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1
    iget v3, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    :goto_2
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    :goto_3
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    :goto_4
    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    move v1, v2

    :cond_2
    if-nez v1, :cond_3

    iget-wide v4, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->netFlow:J

    const-string/jumbo v1, "flow"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_3
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    if-ne v1, v2, :cond_a

    :cond_4
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    const-string/jumbo v2, "flow_status"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :goto_5
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_6
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_7
    iget-wide v2, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->time:J

    const-string/jumbo v1, "t"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0

    :cond_5
    move v3, v1

    goto :goto_0

    :cond_6
    move v3, v1

    goto :goto_1

    :cond_7
    iget v3, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->responseCode:I

    const-string/jumbo v4, "code"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :cond_8
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->exceptionName:Ljava/lang/String;

    const-string/jumbo v4, "exception"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :cond_9
    iget-object v3, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->operator:Ljava/lang/String;

    const-string/jumbo v4, "op"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4

    :cond_a
    iget v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->flowStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    goto :goto_5

    :cond_b
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->reqId:Ljava/lang/String;

    const-string/jumbo v2, "rid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_6

    :cond_c
    iget-object v1, p0, Lcom/xiaomi/mistatistic/sdk/data/HttpEvent;->ip:Ljava/lang/String;

    const-string/jumbo v2, "dns"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7
.end method
