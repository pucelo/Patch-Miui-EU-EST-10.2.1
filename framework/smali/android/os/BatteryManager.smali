.class public Landroid/os/BatteryManager;
.super Ljava/lang/Object;
.source "BatteryManager.java"


# static fields
.field public static final ACTION_CHARGING:Ljava/lang/String; = "android.os.action.CHARGING"

.field public static final ACTION_DISCHARGING:Ljava/lang/String; = "android.os.action.DISCHARGING"

.field public static final BATTERY_HEALTH_COLD:I = 0x7

.field public static final BATTERY_HEALTH_DEAD:I = 0x4

.field public static final BATTERY_HEALTH_GOOD:I = 0x2

.field public static final BATTERY_HEALTH_OVERHEAT:I = 0x3

.field public static final BATTERY_HEALTH_OVER_VOLTAGE:I = 0x5

.field public static final BATTERY_HEALTH_UNKNOWN:I = 0x1

.field public static final BATTERY_HEALTH_UNSPECIFIED_FAILURE:I = 0x6

.field public static final BATTERY_PLUGGED_AC:I = 0x1

.field public static final BATTERY_PLUGGED_ANY:I = 0x7

.field public static final BATTERY_PLUGGED_USB:I = 0x2

.field public static final BATTERY_PLUGGED_WIRELESS:I = 0x4

.field public static final BATTERY_PROPERTY_CAPACITY:I = 0x4

.field public static final BATTERY_PROPERTY_CHARGE_COUNTER:I = 0x1

.field public static final BATTERY_PROPERTY_CURRENT_AVERAGE:I = 0x3

.field public static final BATTERY_PROPERTY_CURRENT_NOW:I = 0x2

.field public static final BATTERY_PROPERTY_ENERGY_COUNTER:I = 0x5

.field public static final BATTERY_PROPERTY_STATUS:I = 0x6

.field public static final BATTERY_STATUS_CHARGING:I = 0x2

.field public static final BATTERY_STATUS_DISCHARGING:I = 0x3

.field public static final BATTERY_STATUS_FULL:I = 0x5

.field public static final BATTERY_STATUS_NOT_CHARGING:I = 0x4

.field public static final BATTERY_STATUS_UNKNOWN:I = 0x1

.field public static final EXTRA_CHARGE_COUNTER:Ljava/lang/String; = "charge_counter"

.field public static final EXTRA_HEALTH:Ljava/lang/String; = "health"

.field public static final EXTRA_ICON_SMALL:Ljava/lang/String; = "icon-small"

.field public static final EXTRA_INVALID_CHARGER:Ljava/lang/String; = "invalid_charger"

.field public static final EXTRA_LEVEL:Ljava/lang/String; = "level"

.field public static final EXTRA_MAX_CHARGING_CURRENT:Ljava/lang/String; = "max_charging_current"

.field public static final EXTRA_MAX_CHARGING_VOLTAGE:Ljava/lang/String; = "max_charging_voltage"

.field public static final EXTRA_PLUGGED:Ljava/lang/String; = "plugged"

.field public static final EXTRA_PRESENT:Ljava/lang/String; = "present"

.field public static final EXTRA_SCALE:Ljava/lang/String; = "scale"

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "status"

.field public static final EXTRA_TECHNOLOGY:Ljava/lang/String; = "technology"

.field public static final EXTRA_TEMPERATURE:Ljava/lang/String; = "temperature"

.field public static final EXTRA_VOLTAGE:Ljava/lang/String; = "voltage"


# instance fields
.field private final mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string/jumbo v0, "batteryproperties"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;Landroid/os/IBatteryPropertiesRegistrar;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iput-object p2, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    return-void
.end method

.method private queryProperty(I)J
    .registers 8

    iget-object v4, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    if-nez v4, :cond_7

    const-wide/high16 v4, -0x8000000000000000L

    return-wide v4

    :cond_7
    :try_start_7
    new-instance v1, Landroid/os/BatteryProperty;

    invoke-direct {v1}, Landroid/os/BatteryProperty;-><init>()V

    iget-object v4, p0, Landroid/os/BatteryManager;->mBatteryPropertiesRegistrar:Landroid/os/IBatteryPropertiesRegistrar;

    invoke-interface {v4, p1, v1}, Landroid/os/IBatteryPropertiesRegistrar;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v1}, Landroid/os/BatteryProperty;->getLong()J
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_1c

    move-result-wide v2

    :goto_18
    return-wide v2

    :cond_19
    const-wide/high16 v2, -0x8000000000000000L

    goto :goto_18

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method public getIntProperty(I)I
    .registers 4

    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLongProperty(I)J
    .registers 4

    invoke-direct {p0, p1}, Landroid/os/BatteryManager;->queryProperty(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public isCharging()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/os/BatteryManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1}, Lcom/android/internal/app/IBatteryStats;->isCharging()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
