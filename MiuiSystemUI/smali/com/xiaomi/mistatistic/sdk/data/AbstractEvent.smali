.class public abstract Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;
.super Ljava/lang/Object;
.source "AbstractEvent.java"


# instance fields
.field private anonymous:I

.field protected mTS:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->anonymous:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->mTS:J

    return-void
.end method


# virtual methods
.method public getAnonymous()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->anonymous:I

    return v0
.end method

.method public abstract getCategory()Ljava/lang/String;
.end method

.method public setAnonymous(I)V
    .locals 0

    iput p1, p0, Lcom/xiaomi/mistatistic/sdk/data/AbstractEvent;->anonymous:I

    return-void
.end method

.method public abstract toPojo()Lcom/xiaomi/mistatistic/sdk/data/StatEventPojo;
.end method

.method public abstract valueToJSon()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method
