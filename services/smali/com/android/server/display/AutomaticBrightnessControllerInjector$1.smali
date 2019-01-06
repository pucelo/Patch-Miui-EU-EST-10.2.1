.class final Lcom/android/server/display/AutomaticBrightnessControllerInjector$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessControllerInjector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessControllerInjector;
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
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->-get3()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v5

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_24

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->-get4()F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_24

    const/4 v1, 0x1

    :goto_1d
    if-eqz v1, :cond_26

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->-set1(I)I

    :cond_23
    :goto_23
    return-void

    :cond_24
    const/4 v1, 0x0

    goto :goto_1d

    :cond_26
    invoke-static {v5}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->-set1(I)I

    goto :goto_23
.end method
