.class final Landroid/hardware/LegacySensorManager$LegacyListener;
.super Ljava/lang/Object;
.source "LegacySensorManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/LegacySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LegacyListener"
.end annotation


# instance fields
.field private mSensors:I

.field private mTarget:Landroid/hardware/SensorListener;

.field private mValues:[F

.field private final mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;


# direct methods
.method constructor <init>(Landroid/hardware/SensorListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    new-instance v0, Landroid/hardware/LegacySensorManager$LmsFilter;

    invoke-direct {v0}, Landroid/hardware/LegacySensorManager$LmsFilter;-><init>()V

    iput-object v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iput-object p1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    return-void
.end method

.method private static getLegacySensorType(I)I
    .registers 2

    packed-switch p0, :pswitch_data_10

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/16 v0, 0x8

    return v0

    :pswitch_a
    const/16 v0, 0x80

    return v0

    :pswitch_d
    const/4 v0, 0x4

    return v0

    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_d
    .end packed-switch
.end method

.method private static hasOrientationSensor(I)Z
    .registers 3

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x81

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method private mapSensorDataToWindow(I[FI)V
    .registers 12

    const/high16 v7, 0x43340000    # 180.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v0, p2, v4

    aget v1, p2, v5

    aget v2, p2, v6

    sparse-switch p1, :sswitch_data_72

    :goto_e
    aput v0, p2, v4

    aput v1, p2, v5

    aput v2, p2, v6

    const/4 v3, 0x3

    aput v0, p2, v3

    const/4 v3, 0x4

    aput v1, p2, v3

    const/4 v3, 0x5

    aput v2, p2, v3

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_24

    sparse-switch p1, :sswitch_data_84

    :cond_24
    :goto_24
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_31

    aget v0, p2, v4

    aget v1, p2, v5

    aget v2, p2, v6

    sparse-switch p1, :sswitch_data_96

    :cond_31
    :goto_31
    return-void

    :sswitch_32
    neg-float v2, v2

    goto :goto_e

    :sswitch_34
    neg-float v0, v0

    neg-float v1, v1

    neg-float v2, v2

    goto :goto_e

    :sswitch_38
    neg-float v0, v0

    neg-float v1, v1

    goto :goto_e

    :sswitch_3b
    neg-float v3, v1

    aput v3, p2, v4

    aput v0, p2, v5

    aput v2, p2, v6

    goto :goto_24

    :sswitch_43
    const/high16 v3, 0x43870000    # 270.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_54

    const/16 v3, 0x5a

    :goto_4b
    int-to-float v3, v3

    add-float/2addr v3, v0

    aput v3, p2, v4

    aput v2, p2, v5

    aput v1, p2, v6

    goto :goto_24

    :cond_54
    const/16 v3, -0x10e

    goto :goto_4b

    :sswitch_57
    neg-float v3, v0

    aput v3, p2, v4

    neg-float v3, v1

    aput v3, p2, v5

    aput v2, p2, v6

    goto :goto_31

    :sswitch_60
    cmpl-float v3, v0, v7

    if-ltz v3, :cond_6f

    sub-float v3, v0, v7

    :goto_66
    aput v3, p2, v4

    neg-float v3, v1

    aput v3, p2, v5

    neg-float v3, v2

    aput v3, p2, v6

    goto :goto_31

    :cond_6f
    add-float v3, v0, v7

    goto :goto_66

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_32
        0x2 -> :sswitch_34
        0x8 -> :sswitch_38
        0x80 -> :sswitch_32
    .end sparse-switch

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_43
        0x2 -> :sswitch_3b
        0x8 -> :sswitch_3b
        0x80 -> :sswitch_43
    .end sparse-switch

    :sswitch_data_96
    .sparse-switch
        0x1 -> :sswitch_60
        0x2 -> :sswitch_57
        0x8 -> :sswitch_57
        0x80 -> :sswitch_60
    .end sparse-switch
.end method


# virtual methods
.method hasSensors()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-static {v2}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v2

    invoke-interface {v1, v2, p2}, Landroid/hardware/SensorListener;->onAccuracyChanged(II)V
    :try_end_d
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    goto :goto_d
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v2, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mValues:[F

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v7

    aput v3, v2, v7

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v8

    aput v3, v2, v8

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    aput v3, v2, v4

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->getLegacySensorType(I)I

    move-result v0

    invoke-static {}, Landroid/hardware/LegacySensorManager;->getRotation()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Landroid/hardware/LegacySensorManager$LegacyListener;->mapSensorDataToWindow(I[FI)V

    const/4 v3, 0x3

    if-ne v1, v3, :cond_50

    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_38

    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    :cond_38
    iget v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4f

    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mYawfilter:Landroid/hardware/LegacySensorManager$LmsFilter;

    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    aget v6, v2, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/LegacySensorManager$LmsFilter;->filter(JF)F

    move-result v3

    aput v3, v2, v7

    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v3, v8, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    :cond_4f
    :goto_4f
    return-void

    :cond_50
    iget-object v3, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mTarget:Landroid/hardware/SensorListener;

    invoke-interface {v3, v0, v2}, Landroid/hardware/SensorListener;->onSensorChanged(I[F)V

    goto :goto_4f
.end method

.method registerSensor(I)Z
    .registers 5

    const/4 v2, 0x0

    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    iget v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    or-int/2addr v1, p1

    iput v1, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    if-eqz v0, :cond_1b

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    return v2

    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method unregisterSensor(I)Z
    .registers 5

    const/4 v2, 0x0

    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    and-int/2addr v0, p1

    if-nez v0, :cond_7

    return v2

    :cond_7
    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {p1}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/hardware/LegacySensorManager$LegacyListener;->mSensors:I

    invoke-static {v0}, Landroid/hardware/LegacySensorManager$LegacyListener;->hasOrientationSensor(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    return v2

    :cond_1c
    const/4 v0, 0x1

    return v0
.end method
