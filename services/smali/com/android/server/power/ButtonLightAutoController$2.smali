.class final Lcom/android/server/power/ButtonLightAutoController$2;
.super Ljava/lang/Object;
.source "ButtonLightAutoController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ButtonLightAutoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 6

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    sget v1, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    sget-boolean v2, Lcom/android/server/power/ButtonLightAutoController;->sButtonLightTurnOff:Z

    if-eqz v2, :cond_c

    return-void

    :cond_c
    invoke-static {v0}, Lcom/android/server/power/ButtonLightAutoController;->-wrap0(F)I

    move-result v2

    sput v2, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    if-eq v1, v2, :cond_1d

    sget v2, Lcom/android/server/power/ButtonLightAutoController;->sLightSensorButtonBrightness:I

    const/16 v3, 0xa0

    invoke-static {v1, v2, v3}, Lcom/android/server/power/ButtonLightAutoController;->-wrap1(III)V

    :cond_1d
    return-void
.end method
