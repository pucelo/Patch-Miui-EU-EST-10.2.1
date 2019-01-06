.class final Lcom/android/server/DeviceIdleController$Constants;
.super Landroid/database/ContentObserver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Constants"
.end annotation


# static fields
.field private static final KEY_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "idle_after_inactive_to"

.field private static final KEY_IDLE_FACTOR:Ljava/lang/String; = "idle_factor"

.field private static final KEY_IDLE_PENDING_FACTOR:Ljava/lang/String; = "idle_pending_factor"

.field private static final KEY_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "idle_pending_to"

.field private static final KEY_IDLE_TIMEOUT:Ljava/lang/String; = "idle_to"

.field private static final KEY_INACTIVE_TIMEOUT:Ljava/lang/String; = "inactive_to"

.field private static final KEY_LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "light_after_inactive_to"

.field private static final KEY_LIGHT_IDLE_FACTOR:Ljava/lang/String; = "light_idle_factor"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:Ljava/lang/String; = "light_idle_maintenance_max_budget"

.field private static final KEY_LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:Ljava/lang/String; = "light_idle_maintenance_min_budget"

.field private static final KEY_LIGHT_IDLE_TIMEOUT:Ljava/lang/String; = "light_idle_to"

.field private static final KEY_LIGHT_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "light_max_idle_to"

.field private static final KEY_LIGHT_PRE_IDLE_TIMEOUT:Ljava/lang/String; = "light_pre_idle_to"

.field private static final KEY_LOCATING_TIMEOUT:Ljava/lang/String; = "locating_to"

.field private static final KEY_LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy"

.field private static final KEY_MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to"

.field private static final KEY_MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to"

.field private static final KEY_MAX_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "max_temp_app_whitelist_duration"

.field private static final KEY_MIN_DEEP_MAINTENANCE_TIME:Ljava/lang/String; = "min_deep_maintenance_time"

.field private static final KEY_MIN_LIGHT_MAINTENANCE_TIME:Ljava/lang/String; = "min_light_maintenance_time"

.field private static final KEY_MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm"

.field private static final KEY_MMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "mms_temp_app_whitelist_duration"

.field private static final KEY_MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to"

.field private static final KEY_NOTIFICATION_WHITELIST_DURATION:Ljava/lang/String; = "notification_whitelist_duration"

.field private static final KEY_SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to"

.field private static final KEY_SMS_TEMP_APP_WHITELIST_DURATION:Ljava/lang/String; = "sms_temp_app_whitelist_duration"


# instance fields
.field public IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public IDLE_FACTOR:F

.field public IDLE_PENDING_FACTOR:F

.field public IDLE_PENDING_TIMEOUT:J

.field public IDLE_TIMEOUT:J

.field public INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

.field public LIGHT_IDLE_FACTOR:F

.field public LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

.field public LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

.field public LIGHT_IDLE_TIMEOUT:J

.field public LIGHT_MAX_IDLE_TIMEOUT:J

.field public LIGHT_PRE_IDLE_TIMEOUT:J

.field public LOCATING_TIMEOUT:J

.field public LOCATION_ACCURACY:F

.field public MAX_IDLE_PENDING_TIMEOUT:J

.field public MAX_IDLE_TIMEOUT:J

.field public MAX_TEMP_APP_WHITELIST_DURATION:J

.field public MIN_DEEP_MAINTENANCE_TIME:J

.field public MIN_LIGHT_MAINTENANCE_TIME:J

.field public MIN_TIME_TO_ALARM:J

.field public MMS_TEMP_APP_WHITELIST_DURATION:J

.field public MOTION_INACTIVE_TIMEOUT:J

.field public NOTIFICATION_WHITELIST_DURATION:J

.field public SENSING_TIMEOUT:J

.field public SMS_TEMP_APP_WHITELIST_DURATION:J

.field private final mHasWatch:Z

.field private final mParser:Landroid/util/KeyValueListParser;

.field private final mResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    iput-object p3, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v0, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    if-eqz v0, :cond_36

    const-string/jumbo v0, "device_idle_constants_watch"

    :goto_2a
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    return-void

    :cond_36
    const-string/jumbo v0, "device_idle_constants"

    goto :goto_2a
.end method

.method private updateConstants()V
    .registers 13

    const/16 v6, 0xf

    iget-object v7, p0, Lcom/android/server/DeviceIdleController$Constants;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v7

    :try_start_5
    iget-object v8, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    iget-object v9, p0, Lcom/android/server/DeviceIdleController$Constants;->mResolver:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    if-eqz v1, :cond_18d

    const-string/jumbo v1, "device_idle_constants_watch"

    :goto_10
    invoke-static {v9, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_17} :catch_192
    .catchall {:try_start_5 .. :try_end_17} :catchall_19e

    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "light_after_inactive_to"

    const-wide/32 v10, 0x493e0

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "light_pre_idle_to"

    const-wide/32 v10, 0x927c0

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "light_idle_to"

    const-wide/32 v10, 0x493e0

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "light_idle_factor"

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {v1, v8, v9}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "light_max_idle_to"

    const-wide/32 v10, 0xdbba0

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "light_idle_maintenance_min_budget"

    const-wide/32 v10, 0xea60

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "light_idle_maintenance_max_budget"

    const-wide/32 v10, 0x493e0

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "min_light_maintenance_time"

    const-wide/16 v10, 0x1388

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "min_deep_maintenance_time"

    const-wide/16 v10, 0x7530

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    if-eqz v1, :cond_1a1

    move v1, v6

    :goto_97
    mul-int/lit8 v1, v1, 0x3c

    int-to-long v8, v1

    const-wide/16 v10, 0x3e8

    mul-long v4, v8, v10

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "inactive_to"

    invoke-virtual {v1, v8, v4, v5}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "sensing_to"

    const-wide/32 v10, 0x3a980

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "locating_to"

    const-wide/16 v10, 0x7530

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "location_accuracy"

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v1, v8, v9}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v8, "motion_inactive_to"

    const-wide/32 v10, 0x927c0

    invoke-virtual {v1, v8, v10, v11}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    iget-boolean v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mHasWatch:Z

    if-eqz v1, :cond_1a5

    :goto_e3
    mul-int/lit8 v1, v6, 0x3c

    int-to-long v8, v1

    const-wide/16 v10, 0x3e8

    mul-long v2, v8, v10

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "idle_after_inactive_to"

    invoke-virtual {v1, v6, v2, v3}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "idle_pending_to"

    const-wide/32 v8, 0x493e0

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "max_idle_pending_to"

    const-wide/32 v8, 0x927c0

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "idle_pending_factor"

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v1, v6, v8}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "idle_to"

    const-wide/32 v8, 0x36ee80

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "max_idle_to"

    const-wide/32 v8, 0x1499700

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "idle_factor"

    const/high16 v8, 0x40000000    # 2.0f

    invoke-virtual {v1, v6, v8}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "min_time_to_alarm"

    const-wide/32 v8, 0x57e40

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "max_temp_app_whitelist_duration"

    const-wide/32 v8, 0x493e0

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "mms_temp_app_whitelist_duration"

    const-wide/32 v8, 0xea60

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "sms_temp_app_whitelist_duration"

    const-wide/16 v8, 0x4e20

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    iget-object v1, p0, Lcom/android/server/DeviceIdleController$Constants;->mParser:Landroid/util/KeyValueListParser;

    const-string/jumbo v6, "notification_whitelist_duration"

    const-wide/16 v8, 0x7530

    invoke-virtual {v1, v6, v8, v9}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J
    :try_end_18b
    .catchall {:try_start_17 .. :try_end_18b} :catchall_19e

    monitor-exit v7

    return-void

    :cond_18d
    :try_start_18d
    const-string/jumbo v1, "device_idle_constants"
    :try_end_190
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18d .. :try_end_190} :catch_192
    .catchall {:try_start_18d .. :try_end_190} :catchall_19e

    goto/16 :goto_10

    :catch_192
    move-exception v0

    :try_start_193
    const-string/jumbo v1, "DeviceIdleController"

    const-string/jumbo v8, "Bad device idle settings"

    invoke-static {v1, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_19c
    .catchall {:try_start_193 .. :try_end_19c} :catchall_19e

    goto/16 :goto_17

    :catchall_19e
    move-exception v1

    monitor-exit v7

    throw v1

    :cond_1a1
    const/16 v1, 0x1e

    goto/16 :goto_97

    :cond_1a5
    const/16 v6, 0x1e

    goto/16 :goto_e3
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, "  Settings:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "light_after_inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "light_pre_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_PRE_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "light_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "light_idle_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_FACTOR:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "light_max_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "light_idle_maintenance_min_budget"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MIN_BUDGET:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "light_idle_maintenance_max_budget"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LIGHT_IDLE_MAINTENANCE_MAX_BUDGET:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_light_maintenance_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_deep_maintenance_time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sensing_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SENSING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "locating_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "location_accuracy"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, "m"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "motion_inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "idle_after_inactive_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "idle_pending_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_idle_pending_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "idle_pending_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_FACTOR:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_idle_to"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "idle_factor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "min_time_to_alarm"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "max_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MAX_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mms_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->MMS_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sms_temp_app_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->SMS_TEMP_APP_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "notification_whitelist_duration"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/DeviceIdleController$Constants;->NOTIFICATION_WHITELIST_DURATION:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/server/DeviceIdleController$Constants;->updateConstants()V

    return-void
.end method
