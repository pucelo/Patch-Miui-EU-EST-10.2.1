.class public Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;
.super Ljava/lang/Object;
.source "NavStubJankyFrameReporter.java"


# static fields
.field private static sCurrentTime:J

.field private static sJankyFrameCount:I

.field private static final sJankyFramesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sCurrentTime:J

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFrameCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFramesInfoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static caculateAnimationFrameInterval(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v2, "whyred"

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget-wide v0, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sCurrentTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sCurrentTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    sget-wide v2, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sCurrentTime:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    sget v2, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFrameCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFrameCount:I

    :cond_1
    return-void
.end method

.method private static frameInfoToJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "fullScreenVersion"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "jankyFramesCount"

    sget v2, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFrameCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "extraKey1"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "extraKey2"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method static recordJankyFrames(Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v3, "whyred"

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->frameInfoToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter$1;

    invoke-direct {v4, v2}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v3, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFramesInfoList:Ljava/util/List;

    const-string/jumbo v4, "{\"fullScreenVersion\":\"\",\"action\":\"\",\"jankyFramesCount\":\"\",\"extraKey1\":\"\",\"extraKey2\":\" %s\"}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static resetAnimationFrameIntervalParams(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "whyred"

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sCurrentTime:J

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->sJankyFrameCount:I

    return-void
.end method
