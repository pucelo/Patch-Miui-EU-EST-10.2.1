.class public Lcom/android/server/lights/MiuiLightsService$LightImpl;
.super Lcom/android/server/lights/LightsService$LightImpl;
.source "MiuiLightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/MiuiLightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private mDisabled:Z

.field private mId:I

.field private mIsShutDown:Z

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field final synthetic this$0:Lcom/android/server/lights/MiuiLightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/MiuiLightsService;I)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;II)V

    iput-boolean v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mIsShutDown:Z

    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_15

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_18

    :cond_15
    :goto_15
    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    return-void

    :cond_18
    move v0, v1

    goto :goto_15
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService;ILcom/android/server/lights/MiuiLightsService$LightImpl;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/lights/MiuiLightsService$LightImpl;-><init>(Lcom/android/server/lights/MiuiLightsService;I)V

    return-void
.end method

.method private realSetLightLocked(IIIII)V
    .registers 11

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mIsShutDown:Z

    if-eqz v0, :cond_7

    const/4 p1, 0x0

    :cond_7
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_85

    :cond_11
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastColor:I

    if-eq v0, p1, :cond_85

    const-string/jumbo v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "realSetLightLocked #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": color=#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": onMS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " offMS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get5(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/lights/MiuiLightsService;->-set2(Lcom/android/server/lights/MiuiLightsService;Ljava/util/List;)Ljava/util/List;

    :cond_73
    if-nez p1, :cond_8b

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0, v3}, Lcom/android/server/lights/MiuiLightsService;->-set0(Lcom/android/server/lights/MiuiLightsService;Z)Z

    invoke-direct {p0, v3, p3, p4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->reportLedEventLocked(ZII)V

    :cond_85
    :goto_85
    invoke-super/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    iput p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mLastColor:I

    return-void

    :cond_8b
    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-get3(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-nez v0, :cond_85

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0, v4}, Lcom/android/server/lights/MiuiLightsService;->-set0(Lcom/android/server/lights/MiuiLightsService;Z)Z

    invoke-direct {p0, v4, p3, p4}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->reportLedEventLocked(ZII)V

    goto :goto_85
.end method

.method private reportLedEventLocked(ZII)V
    .registers 10

    const/4 v2, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    const-string/jumbo v3, "type"

    iget v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "isTurnOn"

    if-eqz p1, :cond_18

    const/4 v2, 0x1

    :cond_18
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "onMs"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "offMs"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get5(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_53

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/android/server/lights/MiuiLightsService;->-set2(Lcom/android/server/lights/MiuiLightsService;Ljava/util/List;)Ljava/util/List;

    :cond_53
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get5(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get5(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x1e

    if-lt v2, v3, :cond_88

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    const-string/jumbo v3, "led"

    iget-object v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v4}, Lcom/android/server/lights/MiuiLightsService;->-get5(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get5(Lcom/android/server/lights/MiuiLightsService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_88} :catch_89

    :cond_88
    :goto_88
    return-void

    :catch_89
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_88
.end method

.method private updateState(IIIII)V
    .registers 6

    iput p1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    iput p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    iput p3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    iput p4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    iput p5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    return-void
.end method


# virtual methods
.method public setBrightness(IZ)V
    .registers 3

    iput-boolean p2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mIsShutDown:Z

    invoke-super {p0, p1}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(I)V

    return-void
.end method

.method setFlashing(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get1(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get6(Lcom/android/server/lights/MiuiLightsService;)Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x2

    invoke-static {v2, p1, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v4, v2, v3}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setFlashing(IIII)V

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get2(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get2(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v3}, Lcom/android/server/lights/MiuiLightsService;->-get2(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v4, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method setLightLocked(IIIII)V
    .registers 13

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-nez v2, :cond_b

    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    return-void

    :cond_b
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v2, v2, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v0, v2, v4

    check-cast v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v2, v4, :cond_3d

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get0(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v2

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get0(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/BatteryManagerInternal;->getBatteryLevel()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_3c

    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get0(Lcom/android/server/lights/MiuiLightsService;)Landroid/os/BatteryManagerInternal;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    if-nez v2, :cond_4d

    if-eqz p1, :cond_4d

    :cond_3c
    :goto_3c
    const/4 p1, 0x0

    :cond_3d
    iget-boolean v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    if-eqz v2, :cond_56

    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    return-void

    :cond_4d
    iget-object v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v2}, Lcom/android/server/lights/MiuiLightsService;->-get4(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_3c

    :cond_56
    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v2, v6, :cond_91

    if-eqz p1, :cond_6b

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v2, :cond_6b

    iget v2, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v2, :cond_6b

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    :cond_6b
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v1, v6, :cond_90

    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-nez v1, :cond_90

    iget v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v1, :cond_90

    iget-boolean v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_90

    iget v1, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    iget v2, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    iget v3, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    iget v4, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    iget v5, v0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->realSetLightLocked(IIIII)V

    :cond_90
    return-void

    :cond_91
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    if-ne v1, v4, :cond_6b

    iget-object v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    iget-object v1, v1, Lcom/android/server/lights/MiuiLightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v1, v1, v6

    check-cast v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;

    iget v1, v1, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    if-eqz v1, :cond_6b

    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->updateState(IIIII)V

    return-void
.end method

.method updateLight()V
    .registers 7

    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v1, 0x2

    if-ne v1, v0, :cond_28

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-wrap0(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-wrap2(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_15
    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    :cond_17
    :goto_17
    iget v1, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mColor:I

    iget v2, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mMode:I

    iget v3, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOnMS:I

    iget v4, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mOffMS:I

    iget v5, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mBrightnessMode:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/lights/MiuiLightsService$LightImpl;->setLightLocked(IIIII)V

    return-void

    :cond_26
    const/4 v0, 0x1

    goto :goto_15

    :cond_28
    iget v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mId:I

    const/4 v1, 0x3

    if-ne v1, v0, :cond_17

    iget-object v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->this$0:Lcom/android/server/lights/MiuiLightsService;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService;->-wrap1(Lcom/android/server/lights/MiuiLightsService;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/MiuiLightsService$LightImpl;->mDisabled:Z

    goto :goto_17
.end method
