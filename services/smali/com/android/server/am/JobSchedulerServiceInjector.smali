.class public Lcom/android/server/am/JobSchedulerServiceInjector;
.super Ljava/lang/Object;
.source "JobSchedulerServiceInjector.java"


# static fields
.field private static final BATTERY_TEMPERATURE_THRESHOLD:I = 0x190

.field private static final TAG:Ljava/lang/String; = "JobSchedulerServiceInjector"

.field private static final filter:Landroid/content/IntentFilter;

.field private static isDelayState:Z

.field private static sBatteryStatus:I

.field private static sBatteryTemperature:I

.field private static sDelayEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    sput v2, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/am/JobSchedulerServiceInjector;->filter:Landroid/content/IntentFilter;

    const-string/jumbo v0, "persist.sys.job_delay"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sDelayEnable:Z

    sput-boolean v2, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBatteryTemperature(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x0

    sget-object v1, Lcom/android/server/am/JobSchedulerServiceInjector;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1d

    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    const-string/jumbo v1, "temperature"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    :cond_1d
    return-void
.end method

.method public static isDelayState(Landroid/content/Context;)Z
    .registers 4

    const/4 v2, 0x0

    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sDelayEnable:Z

    if-eqz v0, :cond_7

    if-nez p0, :cond_8

    :cond_7
    return v2

    :cond_8
    invoke-static {p0}, Lcom/android/server/am/JobSchedulerServiceInjector;->getBatteryTemperature(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/server/am/MiuiSysUserServiceHelper;->isLowMemory()Z

    move-result v0

    if-nez v0, :cond_1c

    sget v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2f

    sget v0, Lcom/android/server/am/JobSchedulerServiceInjector;->sBatteryTemperature:I

    const/16 v1, 0x190

    if-le v0, v1, :cond_2f

    :cond_1c
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    :goto_1f
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    if-eqz v0, :cond_2c

    const-string/jumbo v0, "JobSchedulerServiceInjector"

    const-string/jumbo v1, "Jobs should be delayed because of low memory or high temperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    sget-boolean v0, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    return v0

    :cond_2f
    sput-boolean v2, Lcom/android/server/am/JobSchedulerServiceInjector;->isDelayState:Z

    goto :goto_1f
.end method
