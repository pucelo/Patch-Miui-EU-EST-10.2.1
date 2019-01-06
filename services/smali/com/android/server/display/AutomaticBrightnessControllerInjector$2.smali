.class final Lcom/android/server/display/AutomaticBrightnessControllerInjector$2;
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
    .registers 16

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->-get1()Z

    move-result v10

    if-eqz v10, :cond_99

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

    if-lez v10, :cond_9a

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    :cond_29
    :goto_29
    invoke-static {v6, v7}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    const-wide v12, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v12

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    div-double v0, v10, v12

    double-to-float v10, v0

    invoke-static {v10}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->-set0(F)F

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->-get0()Z

    move-result v10

    if-eqz v10, :cond_99

    const-string/jumbo v10, "AutomaticBrightnessControllerInjector"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Auto-brightness acc: x="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", y="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", z="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", xyz="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", angle="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", angle_xy2horizon"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->-get2()F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    return-void

    :cond_9a
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_29

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    goto :goto_29
.end method
