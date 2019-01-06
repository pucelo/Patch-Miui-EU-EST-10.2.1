.class Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;
.super Ljava/lang/Object;
.source "MiuiDozeScreenBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v5, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sensor event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    const v6, 0x1fa2655

    if-ne v6, v5, :cond_3

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v9

    float-to-int v4, v5

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get3(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/doze/DozeMachine;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/doze/DozeMachine;->getState()Lcom/android/keyguard/doze/DozeMachine$State;

    move-result-object v3

    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSED:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v3, v5, :cond_4

    const/4 v1, 0x1

    :goto_0
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v3, v5, :cond_5

    const/4 v2, 0x1

    :goto_1
    sget-object v5, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    if-ne v3, v5, :cond_6

    const/4 v0, 0x1

    :goto_2
    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    if-ne v4, v8, :cond_7

    :cond_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get0()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Prox NEAR, pausing AOD   "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get5(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v5

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD_PAUSING:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v5, v6}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    :cond_2
    :goto_3
    const/4 v5, 0x3

    if-ne v4, v5, :cond_a

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5, v9}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-set0(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;Z)Z

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get1(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v5

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-interface {v5, v6}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get5(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/android/keyguard/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get4(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/util/AlarmTimeout;

    move-result-object v5

    const-wide/32 v6, 0x927c0

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/keyguard/util/AlarmTimeout;->schedule(JI)V

    :goto_4
    const/4 v5, 0x5

    if-ne v4, v5, :cond_b

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5, v8}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-set0(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;Z)Z

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    iget-object v6, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v6}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get2(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-wrap0(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;Z)V

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get1(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get5(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v5

    invoke-interface {v5, v8}, Lcom/android/keyguard/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    :cond_3
    :goto_5
    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    if-eqz v2, :cond_2

    :cond_8
    invoke-static {}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get0()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Prox FAR, unpausing AOD"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get5(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v5

    sget-object v6, Lcom/android/keyguard/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/keyguard/doze/DozeMachine$State;

    invoke-interface {v5, v6}, Lcom/android/keyguard/doze/DozeMachine$Service;->requestState(Lcom/android/keyguard/doze/DozeMachine$State;)V

    goto :goto_3

    :cond_a
    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get4(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/util/AlarmTimeout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/AlarmTimeout;->cancel()V

    goto :goto_4

    :cond_b
    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5, v8}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-set0(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;Z)Z

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    iget-object v6, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v6}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get2(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Z

    move-result v6

    invoke-static {v5, v6}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-wrap0(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;Z)V

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get1(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v5

    invoke-interface {v5, v10}, Lcom/android/systemui/doze/DozeHost;->setAodDimmingScrim(F)V

    iget-object v5, p0, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController$1;->this$0:Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;

    invoke-static {v5}, Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;->-get5(Lcom/android/keyguard/doze/MiuiDozeScreenBrightnessController;)Lcom/android/keyguard/doze/DozeMachine$Service;

    move-result-object v5

    const/16 v6, 0xff

    invoke-interface {v5, v6}, Lcom/android/keyguard/doze/DozeMachine$Service;->setDozeScreenBrightness(I)V

    goto :goto_5
.end method
