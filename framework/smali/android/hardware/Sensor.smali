.class public final Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field private static final ADDITIONAL_INFO_MASK:I = 0x40

.field private static final ADDITIONAL_INFO_SHIFT:I = 0x6

.field private static final DATA_INJECTION_MASK:I = 0x10

.field private static final DATA_INJECTION_SHIFT:I = 0x4

.field private static final DIRECT_CHANNEL_MASK:I = 0xc00

.field private static final DIRECT_CHANNEL_SHIFT:I = 0xa

.field private static final DIRECT_REPORT_MASK:I = 0x380

.field private static final DIRECT_REPORT_SHIFT:I = 0x7

.field private static final DYNAMIC_SENSOR_MASK:I = 0x20

.field private static final DYNAMIC_SENSOR_SHIFT:I = 0x5

.field public static final REPORTING_MODE_CONTINUOUS:I = 0x0

.field private static final REPORTING_MODE_MASK:I = 0xe

.field public static final REPORTING_MODE_ONE_SHOT:I = 0x2

.field public static final REPORTING_MODE_ON_CHANGE:I = 0x1

.field private static final REPORTING_MODE_SHIFT:I = 0x1

.field public static final REPORTING_MODE_SPECIAL_TRIGGER:I = 0x3

.field private static final SENSOR_FLAG_WAKE_UP_SENSOR:I = 0x1

.field public static final SENSOR_STRING_TYPE_TILT_DETECTOR:Ljava/lang/String; = "android.sensor.tilt_detector"

.field public static final STRING_TYPE_ACCELEROMETER:Ljava/lang/String; = "android.sensor.accelerometer"

.field public static final STRING_TYPE_ACCELEROMETER_UNCALIBRATED:Ljava/lang/String; = "android.sensor.accelerometer_uncalibrated"

.field public static final STRING_TYPE_AMBIENT_TEMPERATURE:Ljava/lang/String; = "android.sensor.ambient_temperature"

.field public static final STRING_TYPE_DEVICE_ORIENTATION:Ljava/lang/String; = "android.sensor.device_orientation"

.field public static final STRING_TYPE_DYNAMIC_SENSOR_META:Ljava/lang/String; = "android.sensor.dynamic_sensor_meta"

.field public static final STRING_TYPE_GAME_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.game_rotation_vector"

.field public static final STRING_TYPE_GEOMAGNETIC_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.geomagnetic_rotation_vector"

.field public static final STRING_TYPE_GLANCE_GESTURE:Ljava/lang/String; = "android.sensor.glance_gesture"

.field public static final STRING_TYPE_GRAVITY:Ljava/lang/String; = "android.sensor.gravity"

.field public static final STRING_TYPE_GYROSCOPE:Ljava/lang/String; = "android.sensor.gyroscope"

.field public static final STRING_TYPE_GYROSCOPE_UNCALIBRATED:Ljava/lang/String; = "android.sensor.gyroscope_uncalibrated"

.field public static final STRING_TYPE_HEART_BEAT:Ljava/lang/String; = "android.sensor.heart_beat"

.field public static final STRING_TYPE_HEART_RATE:Ljava/lang/String; = "android.sensor.heart_rate"

.field public static final STRING_TYPE_LIGHT:Ljava/lang/String; = "android.sensor.light"

.field public static final STRING_TYPE_LINEAR_ACCELERATION:Ljava/lang/String; = "android.sensor.linear_acceleration"

.field public static final STRING_TYPE_LOW_LATENCY_OFFBODY_DETECT:Ljava/lang/String; = "android.sensor.low_latency_offbody_detect"

.field public static final STRING_TYPE_MAGNETIC_FIELD:Ljava/lang/String; = "android.sensor.magnetic_field"

.field public static final STRING_TYPE_MAGNETIC_FIELD_UNCALIBRATED:Ljava/lang/String; = "android.sensor.magnetic_field_uncalibrated"

.field public static final STRING_TYPE_MOTION_DETECT:Ljava/lang/String; = "android.sensor.motion_detect"

.field public static final STRING_TYPE_ORIENTATION:Ljava/lang/String; = "android.sensor.orientation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_PICK_UP_GESTURE:Ljava/lang/String; = "android.sensor.pick_up_gesture"

.field public static final STRING_TYPE_POSE_6DOF:Ljava/lang/String; = "android.sensor.pose_6dof"

.field public static final STRING_TYPE_PRESSURE:Ljava/lang/String; = "android.sensor.pressure"

.field public static final STRING_TYPE_PROXIMITY:Ljava/lang/String; = "android.sensor.proximity"

.field public static final STRING_TYPE_RELATIVE_HUMIDITY:Ljava/lang/String; = "android.sensor.relative_humidity"

.field public static final STRING_TYPE_ROTATION_VECTOR:Ljava/lang/String; = "android.sensor.rotation_vector"

.field public static final STRING_TYPE_SIGNIFICANT_MOTION:Ljava/lang/String; = "android.sensor.significant_motion"

.field public static final STRING_TYPE_STATIONARY_DETECT:Ljava/lang/String; = "android.sensor.stationary_detect"

.field public static final STRING_TYPE_STEP_COUNTER:Ljava/lang/String; = "android.sensor.step_counter"

.field public static final STRING_TYPE_STEP_DETECTOR:Ljava/lang/String; = "android.sensor.step_detector"

.field public static final STRING_TYPE_TEMPERATURE:Ljava/lang/String; = "android.sensor.temperature"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final STRING_TYPE_WAKE_GESTURE:Ljava/lang/String; = "android.sensor.wake_gesture"

.field public static final STRING_TYPE_WRIST_TILT_GESTURE:Ljava/lang/String; = "android.sensor.wrist_tilt_gesture"

.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ACCELEROMETER_UNCALIBRATED:I = 0x23

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_DEVICE_ORIENTATION:I = 0x1b

.field public static final TYPE_DEVICE_PRIVATE_BASE:I = 0x10000

.field public static final TYPE_DYNAMIC_SENSOR_META:I = 0x20

.field public static final TYPE_GAME_ROTATION_VECTOR:I = 0xf

.field public static final TYPE_GEOMAGNETIC_ROTATION_VECTOR:I = 0x14

.field public static final TYPE_GLANCE_GESTURE:I = 0x18

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_GYROSCOPE_UNCALIBRATED:I = 0x10

.field public static final TYPE_HEART_BEAT:I = 0x1f

.field public static final TYPE_HEART_RATE:I = 0x15

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_LOW_LATENCY_OFFBODY_DETECT:I = 0x22

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_MAGNETIC_FIELD_UNCALIBRATED:I = 0xe

.field public static final TYPE_MOTION_DETECT:I = 0x1e

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PICK_UP_GESTURE:I = 0x19

.field public static final TYPE_POSE_6DOF:I = 0x1c

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_SIGNIFICANT_MOTION:I = 0x11

.field public static final TYPE_STATIONARY_DETECT:I = 0x1d

.field public static final TYPE_STEP_COUNTER:I = 0x13

.field public static final TYPE_STEP_DETECTOR:I = 0x12

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TILT_DETECTOR:I = 0x16

.field public static final TYPE_WAKE_GESTURE:I = 0x17

.field public static final TYPE_WRIST_TILT_GESTURE:I = 0x1a

.field private static final sSensorReportingModes:[I


# instance fields
.field private mFifoMaxEventCount:I

.field private mFifoReservedEventCount:I

.field private mFlags:I

.field private mHandle:I

.field private mId:I

.field private mMaxDelay:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mRequiredPermission:Ljava/lang/String;

.field private mResolution:F

.field private mStringType:Ljava/lang/String;

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x24

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    return-void

    :array_a
    .array-data 4
        0x0
        0x3
        0x3
        0x3
        0x3
        0x1
        0x1
        0x1
        0x1
        0x3
        0x3
        0x5
        0x1
        0x1
        0x6
        0x4
        0x6
        0x1
        0x1
        0x1
        0x5
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x10
        0x1
        0x1
        0x1
        0x2
        0x10
        0x1
        0x6
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I
    .registers 5

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_c

    const/16 v1, 0x11

    if-gt p1, v1, :cond_c

    const/4 v1, 0x3

    return v1

    :cond_c
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    array-length v1, v1

    if-lt v0, v1, :cond_16

    const/16 v1, 0x10

    return v1

    :cond_16
    sget-object v1, Landroid/hardware/Sensor;->sSensorReportingModes:[I

    aget v1, v1, v0

    return v1
.end method

.method private setType(I)Z
    .registers 4

    const/4 v1, 0x1

    iput p1, p0, Landroid/hardware/Sensor;->mType:I

    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    packed-switch v0, :pswitch_data_b8

    :pswitch_8
    const/4 v0, 0x0

    return v0

    :pswitch_a
    const-string/jumbo v0, "android.sensor.accelerometer"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_10
    const-string/jumbo v0, "android.sensor.ambient_temperature"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_16
    const-string/jumbo v0, "android.sensor.game_rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_1c
    const-string/jumbo v0, "android.sensor.geomagnetic_rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_22
    const-string/jumbo v0, "android.sensor.glance_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_28
    const-string/jumbo v0, "android.sensor.gravity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_2e
    const-string/jumbo v0, "android.sensor.gyroscope"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_34
    const-string/jumbo v0, "android.sensor.gyroscope_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_3a
    const-string/jumbo v0, "android.sensor.heart_rate"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_40
    const-string/jumbo v0, "android.sensor.light"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_46
    const-string/jumbo v0, "android.sensor.linear_acceleration"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_4c
    const-string/jumbo v0, "android.sensor.magnetic_field"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_52
    const-string/jumbo v0, "android.sensor.magnetic_field_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_58
    const-string/jumbo v0, "android.sensor.pick_up_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_5e
    const-string/jumbo v0, "android.sensor.pressure"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_64
    const-string/jumbo v0, "android.sensor.proximity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_6a
    const-string/jumbo v0, "android.sensor.relative_humidity"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_70
    const-string/jumbo v0, "android.sensor.rotation_vector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_76
    const-string/jumbo v0, "android.sensor.significant_motion"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_7c
    const-string/jumbo v0, "android.sensor.step_counter"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_82
    const-string/jumbo v0, "android.sensor.step_detector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_88
    const-string/jumbo v0, "android.sensor.tilt_detector"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_8e
    const-string/jumbo v0, "android.sensor.wake_gesture"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_94
    const-string/jumbo v0, "android.sensor.orientation"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_9a
    const-string/jumbo v0, "android.sensor.temperature"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_a0
    const-string/jumbo v0, "android.sensor.device_orientation"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_a6
    const-string/jumbo v0, "android.sensor.dynamic_sensor_meta"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_ac
    const-string/jumbo v0, "android.sensor.low_latency_offbody_detect"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_b2
    const-string/jumbo v0, "android.sensor.accelerometer_uncalibrated"

    iput-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return v1

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_a
        :pswitch_4c
        :pswitch_94
        :pswitch_2e
        :pswitch_40
        :pswitch_5e
        :pswitch_9a
        :pswitch_64
        :pswitch_28
        :pswitch_46
        :pswitch_70
        :pswitch_6a
        :pswitch_10
        :pswitch_52
        :pswitch_16
        :pswitch_34
        :pswitch_76
        :pswitch_82
        :pswitch_7c
        :pswitch_1c
        :pswitch_3a
        :pswitch_88
        :pswitch_8e
        :pswitch_22
        :pswitch_58
        :pswitch_8
        :pswitch_a0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_a6
        :pswitch_8
        :pswitch_ac
        :pswitch_b2
    .end packed-switch
.end method

.method private setUuid(JJ)V
    .registers 6

    long-to-int v0, p1

    iput v0, p0, Landroid/hardware/Sensor;->mId:I

    return-void
.end method


# virtual methods
.method public getFifoMaxEventCount()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mFifoMaxEventCount:I

    return v0
.end method

.method public getFifoReservedEventCount()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mFifoReservedEventCount:I

    return v0
.end method

.method public getHandle()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method public getHighestDirectReportRateLevel()I
    .registers 4

    const/4 v1, 0x3

    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x380

    shr-int/lit8 v0, v2, 0x7

    if-gt v0, v1, :cond_a

    :goto_9
    return v0

    :cond_a
    move v0, v1

    goto :goto_9
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mId:I

    return v0
.end method

.method public getMaxDelay()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mMaxDelay:I

    return v0
.end method

.method public getMaximumRange()F
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getReportingMode()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v0, v0, 0xe

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/Sensor;->mRequiredPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()F
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getStringType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/Sensor;->mStringType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method public isAdditionalInfoSupported()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isDataInjectionSupported()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v1, v1, 0x10

    shr-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public isDirectChannelTypeSupported(I)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_18

    return v1

    :pswitch_6
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x400

    if-lez v2, :cond_d

    :goto_c
    return v0

    :cond_d
    move v0, v1

    goto :goto_c

    :pswitch_f
    iget v2, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit16 v2, v2, 0x800

    if-lez v2, :cond_16

    :goto_15
    return v0

    :cond_16
    move v0, v1

    goto :goto_15

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
        :pswitch_f
    .end packed-switch
.end method

.method public isDynamicSensor()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public isWakeUpSensor()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/Sensor;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method setRange(FF)V
    .registers 3

    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Sensor name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", vendor=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mResolution:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", power="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mPower:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", minDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Sensor;->mMinDelay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
