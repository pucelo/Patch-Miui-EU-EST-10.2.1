.class public Lcom/android/server/display/AutomaticBrightnessControllerInjector;
.super Ljava/lang/Object;
.source "AutomaticBrightnessControllerInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessControllerInjector$1;,
        Lcom/android/server/display/AutomaticBrightnessControllerInjector$2;,
        Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;
    }
.end annotation


# static fields
.field private static ALS_FOV:I = 0x0

.field private static final AUTOBRIGHTNESS_RATE_SLOW:I

.field private static final AUTO_BRIGHTNESS_DEBUG:Ljava/lang/String; = "sys.sensor.autobacklight.dbg"

.field private static final BRIGHTNESS_BRIGHTEN_RATE:I

.field private static final BRIGHTNESS_DARKTIME_1SECOND:I

.field private static final BRIGHTNESS_DARKTIME_2SECOND:I

.field private static final BRIGHTNESS_DARK_THREHOLD:I

.field private static DARKENING_HYSTERESIS_FOV2SEVENTY:F = 0.0f

.field private static DARKENING_HYSTERESIS_SEVENTY2NINETY:F = 0.0f

.field private static DARKENING_HYSTERESIS_ZERO2FOV:F = 0.0f

.field private static DEBUG:Z = false

.field private static HIGHANGLE_THRESHOLD:F = 0.0f

.field private static final HIGHEST_LUX:I = 0xfa0

.field private static final INIT_BRIGHTNESS:I = -0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SEVERAL_CHANGE_THRESHOLD:I = 0x1e

.field private static final SINGLE_CHANGE_THRESHOLD:I = 0x14

.field private static final SKIP_DEBOUNCE:I

.field private static final SKIP_DEBOUNCE_ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessControllerInjector"

.field private static final TIME_THRESHOLD:I = 0x2710

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_ACCELEROMETER_ENABLED:Z

.field private static final USE_PROXIMITY_ENABLED:Z

.field private static sAccSensorEnabled:Z

.field private static final sAccSensorListener:Landroid/hardware/SensorEventListener;

.field private static sAccelerometer:Landroid/hardware/Sensor;

.field private static sAmbientLuxFirstEvent:Z

.field private static sAngleXY2Horizon:F

.field private static sEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastBrightness:I

.field private static sProximity:I

.field private static sProximitySensor:Landroid/hardware/Sensor;

.field private static sProximitySensorEnabled:Z

.field private static final sProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private static sProximityThreshold:F

.field private static sSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    return v0
.end method

.method static synthetic -get2()F
    .registers 1

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    return v0
.end method

.method static synthetic -get3()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic -get4()F
    .registers 1

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximityThreshold:F

    return v0
.end method

.method static synthetic -set0(F)F
    .registers 1

    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    return p0
.end method

.method static synthetic -set1(I)I
    .registers 1

    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    return p0
.end method

.method static constructor <clinit>()V
    .registers 5

    const/4 v4, -0x1

    const/high16 v3, 0x41200000    # 10.0f

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_ACCELEROMETER_ENABLED:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x110a0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE_ENABLED:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1108001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE:I

    sput v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1108001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_ZERO2FOV:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1108001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_FOV2SEVENTY:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1108001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_SEVENTY2NINETY:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->ALS_FOV:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->HIGHANGLE_THRESHOLD:F

    const/4 v0, 0x0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_THREHOLD:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_1SECOND:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_2SECOND:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11080027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$1;

    invoke-direct {v0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$1;-><init>()V

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorListener:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$2;

    invoke-direct {v0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$2;-><init>()V

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorListener:Landroid/hardware/SensorEventListener;

    sput v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeBrightness(FI)I
    .registers 3

    const/high16 v0, 0x457a0000    # 4000.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_9

    const/16 v0, 0xff

    return v0

    :cond_9
    return p1
.end method

.method static checkProximityStatus(FZ)Z
    .registers 6

    const/4 v3, 0x1

    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->checkTouchStatus(FZ)Z

    move-result v0

    if-eqz v0, :cond_8

    return v3

    :cond_8
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-nez v0, :cond_10

    xor-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_37

    :cond_10
    const-string/jumbo v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    if-eqz v0, :cond_5c

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    if-ne v0, v3, :cond_5c

    if-eqz p1, :cond_5c

    const-string/jumbo v0, "AutomaticBrightnessControllerInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drop the lightsensor event! lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5c
    const/4 v0, 0x0

    return v0
.end method

.method static checkSkipDebounceStatus(JJ)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE_ENABLED:Z

    if-eqz v0, :cond_1a

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE:I

    int-to-long v0, v0

    add-long/2addr v0, p0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_1a

    const-string/jumbo v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "skip debounce!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    return v3

    :cond_1a
    sput-boolean v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    return v2
.end method

.method public static configure(ZI)I
    .registers 3

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->setProximitySensorEnabled(Z)V

    :cond_7
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_ACCELEROMETER_ENABLED:Z

    if-eqz v0, :cond_e

    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->setAccSensorEnabled(Z)V

    :cond_e
    invoke-static {p0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->configure(Z)V

    if-nez p0, :cond_15

    const/4 v0, -0x1

    return v0

    :cond_15
    return p1
.end method

.method static dump(Ljava/io/PrintWriter;)Z
    .registers 3

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  USE_PROXIMITY_ENABLED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  DARKENING_HYSTERESIS_ZERO2FOV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_ZERO2FOV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  DARKENING_HYSTERESIS_FOV2SEVENTY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_FOV2SEVENTY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  DARKENING_HYSTERESIS_SEVENTY2NINETY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_SEVENTY2NINETY:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  ALS_FOV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->ALS_FOV:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  HIGHANGLE_THRESHOLD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->HIGHANGLE_THRESHOLD:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  SKIP_DEBOUNCE_ENABLED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  SKIP_DEBOUNCE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->SKIP_DEBOUNCE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  USE_ACCELEROMETER_ENABLED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_ACCELEROMETER_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  BACKLIGHT_BIT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lmiui/os/DeviceFeature;->BACKLIGHT_BIT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  BRIGHTNESS_BRIGHTEN_RATE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  BRIGHTNESS_DARK_THREHOLD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_THREHOLD:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  BRIGHTNESS_DARKTIME_1SECOND="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_1SECOND:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  BRIGHTNESS_DARKTIME_2SECOND="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_2SECOND:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  AUTOBRIGHTNESS_RATE_SLOW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    invoke-static {p0, v0}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->dump(Ljava/io/PrintWriter;Z)V

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->isDebuggable()Z

    move-result v0

    return v0
.end method

.method static getDarkenThreshold(FFF)F
    .registers 7

    const/high16 v3, 0x3f800000    # 1.0f

    move v0, p0

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->HIGHANGLE_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4f

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_SEVENTY2NINETY:F

    sub-float v1, v3, v1

    mul-float v0, p0, v1

    :cond_11
    :goto_11
    const-string/jumbo v1, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AmbientLux="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mDarkeningLuxThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", mBrighteningLuxThreshold="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", angle_xy2horizon="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4f
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAngleXY2Horizon:F

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->ALS_FOV:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DARKENING_HYSTERESIS_FOV2SEVENTY:F

    sub-float v1, v3, v1

    mul-float v0, p0, v1

    goto :goto_11
.end method

.method static getScreenDarkenRate(IIIF)I
    .registers 8

    sget-boolean v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->DEBUG:Z

    if-eqz v1, :cond_3f

    const-string/jumbo v1, "AutomaticBrightnessControllerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScreenDarkenRate: previousBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", currentBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", currentRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", colorFadeLevel="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    if-ne p0, p1, :cond_42

    move v0, p2

    :cond_42
    if-le p1, p0, :cond_4d

    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_BRIGHTEN_RATE:I

    :goto_46
    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_4c

    const/4 v0, 0x0

    :cond_4c
    return v0

    :cond_4d
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARK_THREHOLD:I

    if-le p1, v1, :cond_64

    sub-int v1, p0, p1

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_1SECOND:I

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_61

    sub-int v1, p0, p1

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_1SECOND:I

    div-int v0, v1, v2

    goto :goto_46

    :cond_61
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    goto :goto_46

    :cond_64
    sub-int v1, p0, p1

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    sget v3, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_2SECOND:I

    mul-int/2addr v2, v3

    if-le v1, v2, :cond_74

    sub-int v1, p0, p1

    sget v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->BRIGHTNESS_DARKTIME_2SECOND:I

    div-int v0, v1, v2

    goto :goto_46

    :cond_74
    sget v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->AUTOBRIGHTNESS_RATE_SLOW:I

    goto :goto_46
.end method

.method static initialize(Landroid/hardware/SensorManager;)V
    .registers 3

    sput-object p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_PROXIMITY_ENABLED:Z

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensor:Landroid/hardware/Sensor;

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximityThreshold:F

    :cond_22
    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->USE_ACCELEROMETER_ENABLED:Z

    if-eqz v0, :cond_2f

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccelerometer:Landroid/hardware/Sensor;

    :cond_2f
    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessTouchHelper;->initialize()V

    return-void
.end method

.method static isAmbientLuxFirstEvent()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAmbientLuxFirstEvent:Z

    return v0
.end method

.method static isDebuggable()Z
    .registers 2

    const-string/jumbo v0, "sys.sensor.autobacklight.dbg"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static recordAutoBrightnessChange(I)V
    .registers 11

    const-wide/16 v8, 0x2710

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_19

    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    invoke-direct {v4, v2, v3, p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;-><init>(JI)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_19
    sget v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0x14

    if-lt v1, v4, :cond_39

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    sget v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, p0, v6, v5}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(IIILjava/lang/String;)V

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :goto_36
    sput p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sLastBrightness:I

    return-void

    :cond_39
    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    if-nez v0, :cond_4e

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    invoke-direct {v4, v2, v3, p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;-><init>(JI)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_4e
    iget-wide v4, v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->time:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v8

    if-gtz v1, :cond_7f

    iget v1, v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->brightness:I

    sub-int v1, p0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v4, 0x1e

    if-lt v1, v4, :cond_74

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v1

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->brightness:I

    const-string/jumbo v5, ""

    invoke-virtual {v1, v4, p0, v6, v5}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBrightnessEvent(IIILjava/lang/String;)V

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_36

    :cond_74
    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    invoke-direct {v4, v2, v3, p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;-><init>(JI)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_36

    :cond_7f
    :goto_7f
    if-eqz v0, :cond_97

    iget-wide v4, v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->time:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v8

    if-lez v1, :cond_97

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    goto :goto_7f

    :cond_97
    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sEvents:Ljava/util/LinkedList;

    new-instance v4, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;

    invoke-direct {v4, v2, v3, p0}, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;-><init>(JI)V

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_36
.end method

.method private static setAccSensorEnabled(Z)V
    .registers 5

    if-eqz p0, :cond_1f

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "setAccSensorEnabled enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccelerometer:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    if-nez p0, :cond_1e

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "setAccSensorEnabled disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorEnabled:Z

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sAccSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1e
.end method

.method private static setProximitySensorEnabled(Z)V
    .registers 5

    if-eqz p0, :cond_1f

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "setProximitySensorEnabled enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorListener:Landroid/hardware/SensorEventListener;

    sget-object v2, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1e
    :goto_1e
    return-void

    :cond_1f
    if-nez p0, :cond_1e

    sget-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "AutomaticBrightnessControllerInjector"

    const-string/jumbo v1, "setProximitySensorEnabled disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorEnabled:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximity:I

    sget-object v0, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/android/server/display/AutomaticBrightnessControllerInjector;->sProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_1e
.end method
