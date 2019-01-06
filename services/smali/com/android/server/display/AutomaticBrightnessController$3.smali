.class Lcom/android/server/display/AutomaticBrightnessController$3;
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

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 16

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v10}, Lcom/android/server/display/AutomaticBrightnessController;->-get0(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v10

    if-eqz v10, :cond_42

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v2, v5, v10

    const/4 v10, 0x1

    aget v3, v5, v10

    const/4 v10, 0x2

    aget v4, v5, v10

    mul-float v10, v2, v2

    mul-float v11, v3, v3

    add-float/2addr v10, v11

    mul-float v11, v4, v4

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    float-to-double v10, v4

    div-double v6, v10, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v10, v6, v10

    if-lez v10, :cond_43

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :cond_2b
    :goto_2b
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double v0, v10, v12

    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController$3;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    double-to-float v11, v0

    invoke-static {v10, v11}, Lcom/android/server/display/AutomaticBrightnessController;->-set0(Lcom/android/server/display/AutomaticBrightnessController;F)F

    :cond_42
    return-void

    :cond_43
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_2b

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_2b
.end method
