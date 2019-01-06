.class Lcom/android/server/display/AutomaticBrightnessController$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

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

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-get4(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v4, v5

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_2a

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->-get5(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_2a

    const/4 v1, 0x1

    :goto_21
    if-eqz v1, :cond_2c

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;I)I

    :cond_29
    :goto_29
    return-void

    :cond_2a
    const/4 v1, 0x0

    goto :goto_21

    :cond_2c
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->-set2(Lcom/android/server/display/AutomaticBrightnessController;I)I

    goto :goto_29
.end method
