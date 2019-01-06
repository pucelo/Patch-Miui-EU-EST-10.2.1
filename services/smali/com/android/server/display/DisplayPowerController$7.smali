.class Lcom/android/server/display/DisplayPowerController$7;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

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

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->-get4(Lcom/android/server/display/DisplayPowerController;)Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_27

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4}, Lcom/android/server/display/DisplayPowerController;->-get5(Lcom/android/server/display/DisplayPowerController;)F

    move-result v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_27

    const/4 v1, 0x1

    :goto_21
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$7;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->-wrap2(Lcom/android/server/display/DisplayPowerController;JZ)V

    :cond_26
    return-void

    :cond_27
    const/4 v1, 0x0

    goto :goto_21
.end method
