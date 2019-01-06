.class public Lcom/android/server/am/ProcessPolicy;
.super Ljava/lang/Object;
.source "ProcessPolicy.java"


# static fields
.field static final DEBUG:Z = true

.field private static final DEVICE:Ljava/lang/String;

.field public static final FLAG_CAMERA_BOOST_PROTECT_LIST:I = 0x2000

.field public static final FLAG_CLOUD_WHITE_LIST:I = 0x4

.field public static final FLAG_DISABLE_FORCE_STOP:I = 0x20

.field public static final FLAG_DISABLE_TRIM_MEMORY:I = 0x10

.field public static final FLAG_DYNAMIC_WHITE_LIST:I = 0x2

.field public static final FLAG_ENABLE_CALL_PROTECT:I = 0x40

.field public static final FLAG_ENTERPRISE_APP_LIST:I = 0x1000

.field public static final FLAG_FAST_BOOT_APP_LIST:I = 0x800

.field public static final FLAG_NEED_TRACE_LIST:I = 0x80

.field public static final FLAG_SECRETLY_PROTECT_APP_LIST:I = 0x400

.field public static final FLAG_STATIC_WHILTE_LIST:I = 0x1

.field public static final FLAG_USER_DEFINED_LIST:I = 0x8

.field private static final JSON_KEY_PACKAGE_NAMES:Ljava/lang/String; = "pkgs"

.field private static final JSON_KEY_USER_ID:Ljava/lang/String; = "u"

.field private static final PERCEPTIBLE_APP_ADJ:I

.field private static final PREFS_LOCKED_APPS:Ljava/lang/String; = "Locked_apps"

.field private static final PRIORITY_LEVEL_HEAVY_WEIGHT:I = 0x3

.field private static final PRIORITY_LEVEL_PERCEPTIBLE:I = 0x2

.field private static final PRIORITY_LEVEL_UNKNOWN:I = -0x1

.field private static final PRIORITY_LEVEL_VISIBLE:I = 0x1

.field public static final REASON_ANR:Ljava/lang/String; = "anr"

.field public static final REASON_AUTO_IDLE_KILL:Ljava/lang/String; = "AutoIdleKill"

.field public static final REASON_AUTO_LOCK_OFF_CLEAN:Ljava/lang/String; = "AutoLockOffClean"

.field public static final REASON_AUTO_LOCK_OFF_CLEAN_BY_PRIORITY:Ljava/lang/String; = "AutoLockOffCleanByPriority"

.field public static final REASON_AUTO_POWER_KILL:Ljava/lang/String; = "AutoPowerKill"

.field public static final REASON_AUTO_SLEEP_CLEAN:Ljava/lang/String; = "AutoSleepClean"

.field public static final REASON_AUTO_SYSTEM_ABNORMAL_CLEAN:Ljava/lang/String; = "AutoSystemAbnormalClean"

.field public static final REASON_AUTO_THERMAL_KILL:Ljava/lang/String; = "AutoThermalKill"

.field public static final REASON_CRASH:Ljava/lang/String; = "crash"

.field public static final REASON_FORCE_CLEAN:Ljava/lang/String; = "ForceClean"

.field public static final REASON_GAME_CLEAN:Ljava/lang/String; = "GameClean"

.field public static final REASON_GARBAGE_CLEAN:Ljava/lang/String; = "GarbageClean"

.field public static final REASON_LOCK_SCREEN_CLEAN:Ljava/lang/String; = "LockScreenClean"

.field public static final REASON_ONE_KEY_CLEAN:Ljava/lang/String; = "OneKeyClean"

.field public static final REASON_OPTIMIZATION_CLEAN:Ljava/lang/String; = "OptimizationClean"

.field public static final REASON_SWIPE_UP_CLEAN:Ljava/lang/String; = "SwipeUpClean"

.field public static final REASON_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final REASON_USER_DEFINED:Ljava/lang/String; = "UserDefined"

.field static final TAG:Ljava/lang/String; = "ProcessManager"

.field static final TAG_PM:Ljava/lang/String; = "ProcessManager"

.field static final TAG_WITH_CLASS_NAME:Z = false

.field public static final USER_ALL:I = -0x64

.field private static sAppProtectMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraBoostProtectList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCameraMemThresholdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sCloudWhiteList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableForceStopList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDisableTrimList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDynamicWhiteList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnableCallProtectList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sEnterpriseAppList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sExpKillProcReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFastBootAppMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private static sFgServiceCheckList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFgServiceProtectMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sLock:Ljava/lang/Object;

.field private static sLockedApplicationList:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sNeedTraceList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sProcessPriorityMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSecretlyProtectAppList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sStaticWhiteList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUserDefinedWhiteList:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sUserKillProcReasons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mProcessManagerService:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/am/ProcessPolicy;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->saveLockedAppIntoSettings(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 6

    const/4 v1, 0x2

    const/high16 v5, 0x180000

    const/4 v4, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sStaticWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDisableTrimList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDisableForceStopList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sEnableCallProtectList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sNeedTraceList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sFgServiceCheckList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraBoostProtectList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->DEVICE:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_1ce

    const/16 v0, 0xc8

    :goto_a7
    sput v0, Lcom/android/server/am/ProcessPolicy;->PERCEPTIBLE_APP_ADJ:I

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "OneKeyClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "ForceClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "GarbageClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "GameClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "OptimizationClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "SwipeUpClean"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "UserDefined"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "anr"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sExpKillProcReasons:Ljava/util/List;

    const-string/jumbo v2, "crash"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    const-string/jumbo v2, "com.tencent.mm"

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    const-string/jumbo v2, "com.tencent.mobileqq"

    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/am/ProcessUtils;->PRIORITY_UNKNOW:Landroid/util/Pair;

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/am/ProcessUtils;->PRIORITY_VISIBLE:Landroid/util/Pair;

    invoke-virtual {v0, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/am/ProcessUtils;->PRIORITY_PERCEPTIBLE:Landroid/util/Pair;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    sget-object v1, Lcom/android/server/am/ProcessUtils;->PRIORITY_HEAVY:Landroid/util/Pair;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string/jumbo v1, "com.miui.voip"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string/jumbo v1, "com.miui.bugreport"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string/jumbo v1, "com.xiaomi.miplay"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string/jumbo v1, "com.miui.virtualsim"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    const-string/jumbo v1, "com.miui.touchassistant"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    const-string/jumbo v1, "com.miui.voiceassist"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "polaris"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "sirius"

    const/high16 v2, 0x100000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "dipper"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "ursa"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "perseus"

    const v2, 0x1ccc00

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "equuleus"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    const-string/jumbo v1, "cactus"

    const v2, 0xbb800

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1ce
    move v0, v1

    goto/16 :goto_a7
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessManagerService;Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessPolicy;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method private isLockedApplicationForUserId(Ljava/lang/String;I)Z
    .registers 9

    const/4 v5, 0x0

    if-nez p1, :cond_4

    return v5

    :cond_4
    sget-object v3, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    if-eqz v2, :cond_2a

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v3, 0x1

    return v3

    :cond_2a
    return v5
.end method

.method private loadLockedAppFromSettings(Landroid/content/Context;)V
    .registers 15

    sget-object v10, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "locked_apps"

    invoke-static {v9, v11}, Landroid/provider/MiuiSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_a7

    move-result v9

    if-eqz v9, :cond_16

    monitor-exit v10

    return-void

    :cond_16
    :try_start_16
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1c
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v5, v9, :cond_a5

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONObject;

    const-string/jumbo v9, "u"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v9, "pkgs"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v4, 0x0

    :goto_3c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_4c

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    :cond_4c
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadLockedAppFromSettings userId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "-pkgNames:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_81} :catch_84
    .catchall {:try_start_16 .. :try_end_81} :catchall_a7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    :catch_84
    move-exception v0

    :try_start_85
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "loadLockedApp failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a5
    .catchall {:try_start_85 .. :try_end_a5} :catchall_a7

    :cond_a5
    monitor-exit v10

    return-void

    :catchall_a7
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private removeDefaultLockedAppIfExists(Ljava/lang/String;)V
    .registers 5

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    const/16 v2, -0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method private resetTaskAvailableIfNeeded(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v8, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_4
    sget-object v7, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_6c

    move-result-object v4

    monitor-exit v8

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz p1, :cond_29

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    :cond_29
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    :goto_30
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_f

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-nez v7, :cond_69

    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    sget-object v7, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "reset Task packageName="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/am/ProcessPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5, v6, v7}, Lcom/android/server/am/ProcessUtils;->setTaskToAvailable(Ljava/lang/String;ILcom/android/server/am/ActivityManagerService;)V

    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_30

    :catchall_6c
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_6f
    return-void
.end method

.method private saveLockedAppIntoSettings(Landroid/content/Context;)V
    .registers 11

    sget-object v6, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_8f

    :try_start_8
    sget-object v5, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "u"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "pkgs"

    new-instance v8, Lorg/json/JSONArray;

    sget-object v5, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v8, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3f} :catch_40
    .catchall {:try_start_8 .. :try_end_3f} :catchall_8f

    goto :goto_12

    :catch_40
    move-exception v0

    :try_start_41
    sget-object v5, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveLockedAppIntoSettings failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_61
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "locked_apps"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/provider/MiuiSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_6f
    .catchall {:try_start_41 .. :try_end_6f} :catchall_8f

    monitor-exit v6

    return-void

    :cond_71
    :try_start_71
    sget-object v5, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveLockedAppIntoSettings:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8e} :catch_40
    .catchall {:try_start_71 .. :try_end_8e} :catchall_8f

    goto :goto_61

    :catchall_8f
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private updateAppProtectMap(Lmiui/process/ProcessCloudData;)V
    .registers 7

    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getAppProtectMap()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_4e

    :try_start_9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update AP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_8d

    :cond_4c
    :goto_4c
    monitor-exit v2

    return-void

    :cond_4e
    if-eqz v0, :cond_56

    :try_start_50
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4c

    :cond_56
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4c

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update AP:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_50 .. :try_end_8c} :catchall_8d

    goto :goto_4c

    :catchall_8d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateApplicationLockedState(Ljava/lang/String;IZ)V
    .registers 8

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1f

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1f
    if-eqz p3, :cond_26

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2d

    :goto_24
    monitor-exit v2

    return-void

    :cond_26
    :try_start_26
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->removeDefaultLockedAppIfExists(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_26 .. :try_end_2c} :catchall_2d

    goto :goto_24

    :catchall_2d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateCameraMemThresholdMap(Lmiui/process/ProcessCloudData;)V
    .registers 7

    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getCameraMemThresholdMap()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_4e

    :try_start_9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update CM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_8d

    :cond_4c
    :goto_4c
    monitor-exit v2

    return-void

    :cond_4e
    if-eqz v0, :cond_56

    :try_start_50
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4c

    :cond_56
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4c

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update CM:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_50 .. :try_end_8c} :catchall_8d

    goto :goto_4c

    :catchall_8d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateCloudWhiteList(Lmiui/process/ProcessCloudData;)V
    .registers 7

    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getCloudWhiteList()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_4a

    :try_start_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update CL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_9 .. :try_end_48} :catchall_85

    :cond_48
    :goto_48
    monitor-exit v2

    return-void

    :cond_4a
    if-eqz v0, :cond_52

    :try_start_4c
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_48

    :cond_52
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_48

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update CL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_4c .. :try_end_84} :catchall_85

    goto :goto_48

    :catchall_85
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateFastBootList(Lmiui/process/ProcessCloudData;)V
    .registers 9

    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getFastBootList()Ljava/util/List;

    move-result-object v0

    sget-object v5, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_7
    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_4e

    move-result-object v1

    monitor-exit v5

    if-eqz v0, :cond_7a

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7a

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7a

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessPolicy;->resetTaskAvailableIfNeeded(Ljava/util/List;)V

    sget-object v5, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_2b
    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-interface {v4, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_4b

    goto :goto_34

    :catchall_4b
    move-exception v4

    monitor-exit v5

    throw v4

    :catchall_4e
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_51
    monitor-exit v5

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update FA:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    :goto_79
    return-void

    :cond_7a
    if-eqz v0, :cond_82

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_79

    :cond_82
    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_79

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessPolicy;->resetTaskAvailableIfNeeded(Ljava/util/List;)V

    sget-object v5, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_92
    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_97
    .catchall {:try_start_92 .. :try_end_97} :catchall_c0

    monitor-exit v5

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update FA:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catchall_c0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private updateFgProtectMap(Lmiui/process/ProcessCloudData;)V
    .registers 7

    invoke-virtual {p1}, Lmiui/process/ProcessCloudData;->getFgProtectMap()Ljava/util/Map;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz v0, :cond_4e

    :try_start_9
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4e

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update FG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catchall {:try_start_9 .. :try_end_4c} :catchall_8d

    :cond_4c
    :goto_4c
    monitor-exit v2

    return-void

    :cond_4e
    if-eqz v0, :cond_56

    :try_start_50
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4c

    :cond_56
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4c

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update FG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_50 .. :try_end_8c} :catchall_8d

    goto :goto_4c

    :catchall_8d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateMaxAdjLocked(Lcom/android/server/am/ProcessRecord;IZ)V
    .registers 5

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    if-eqz p3, :cond_e

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-le v0, p2, :cond_e

    iput p2, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    :cond_d
    :goto_d
    return-void

    :cond_e
    if-nez p3, :cond_d

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-ge v0, p2, :cond_d

    iput p2, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    goto :goto_d
.end method

.method private updateMaxProcStateLocked(Lcom/android/server/am/ProcessRecord;IZ)V
    .registers 5

    if-eqz p3, :cond_9

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    if-le v0, p2, :cond_9

    iput p2, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-nez p3, :cond_8

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    if-ge v0, p2, :cond_8

    iput p2, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    goto :goto_8
.end method

.method private updateProcessPriority(Lcom/android/server/am/ProcessRecord;IZ)V
    .registers 8

    sget-object v3, Lcom/android/server/am/ProcessPolicy;->sProcessPriorityMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    if-eqz v0, :cond_24

    if-eqz p3, :cond_25

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_14
    invoke-direct {p0, p1, v1, p3}, Lcom/android/server/am/ProcessPolicy;->updateMaxAdjLocked(Lcom/android/server/am/ProcessRecord;IZ)V

    if-eqz p3, :cond_28

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_21
    invoke-direct {p0, p1, v2, p3}, Lcom/android/server/am/ProcessPolicy;->updateMaxProcStateLocked(Lcom/android/server/am/ProcessRecord;IZ)V

    :cond_24
    return-void

    :cond_25
    const/16 v1, 0x3e9

    goto :goto_14

    :cond_28
    const/16 v2, 0x12

    goto :goto_21
.end method


# virtual methods
.method public addWhiteList(ILjava/util/List;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_13

    :try_start_7
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sStaticWhiteList:Ljava/util/List;

    :goto_9
    if-nez p3, :cond_e

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_e
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_60

    monitor-exit v2

    return-void

    :cond_13
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1a

    :try_start_17
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    goto :goto_9

    :cond_1a
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_21

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    goto :goto_9

    :cond_21
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_28

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    goto :goto_9

    :cond_28
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_2f

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sDisableTrimList:Ljava/util/List;

    goto :goto_9

    :cond_2f
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_36

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sDisableForceStopList:Ljava/util/List;

    goto :goto_9

    :cond_36
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_41

    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_41

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    goto :goto_9

    :cond_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addWhiteList with unknown flag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_17 .. :try_end_5f} :catchall_60

    goto :goto_9

    :catchall_60
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 14

    const-string/jumbo v9, "Process Policy:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2e

    const-string/jumbo v9, "DY:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_15
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_2e

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_2e
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_56

    const-string/jumbo v9, "CL:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_3d
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_56

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    :cond_56
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_7e

    const-string/jumbo v9, "US:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_65
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_7e

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_7e
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_db

    const-string/jumbo v9, "LO:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_96
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_db

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "userId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c8

    :cond_db
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v9

    if-lez v9, :cond_106

    const-string/jumbo v9, "FA:"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_106

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f3

    :cond_106
    sget-boolean v9, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v9, :cond_132

    const-string/jumbo v9, "EP Activated: true"

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_132

    const/4 v2, 0x0

    :goto_119
    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_132

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_119

    :cond_132
    return-void
.end method

.method public getCameraMemThreshold()J
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/ProcessPolicy;->isCameraBoostEnable()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getLockedApplication(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1c

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1c
    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLockedApplicationList:Ljava/util/HashMap;

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getWhiteList(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_11

    :try_start_c
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sStaticWhiteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_11
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1a
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_23

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCloudWhiteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_23
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2c
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_35

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sDisableTrimList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_35
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3e

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sDisableForceStopList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3e
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_47

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sEnableCallProtectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_47
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_50

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sNeedTraceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_50
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_59

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_59
    and-int/lit16 v1, p1, 0x800

    if-eqz v1, :cond_66

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_66
    sget-boolean v1, Lcom/miui/enterprise/settings/EnterpriseSettings;->ENTERPRISE_ACTIVATED:Z

    if-eqz v1, :cond_73

    and-int/lit16 v1, p1, 0x1000

    if-eqz v1, :cond_73

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sEnterpriseAppList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_73
    and-int/lit16 v1, p1, 0x2000

    if-eqz v1, :cond_7c

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sCameraBoostProtectList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_7c
    .catchall {:try_start_c .. :try_end_7c} :catchall_7e

    :cond_7c
    monitor-exit v2

    return-object v0

    :catchall_7e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isAppTaskAvailable(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x1

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_4
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1b

    move-result v0

    :cond_19
    monitor-exit v2

    return v0

    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isCameraBoostEnable()Z
    .registers 3

    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraMemThresholdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->DEVICE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFastBootEnable(Ljava/lang/String;I)Z
    .registers 5

    const/4 v0, 0x0

    if-lez p2, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessPolicy;->isInFastBootList(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ProcessPolicy;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessManagerService;->isAllowAutoStart(Ljava/lang/String;I)Z

    move-result v0

    :cond_f
    return v0
.end method

.method public isInAppProtectList(Ljava/lang/String;)Z
    .registers 4

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isInDynamicList(Ljava/lang/String;)Z
    .registers 4

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isInFastBootList(Ljava/lang/String;)Z
    .registers 4

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isInSecretlyProtectList(Ljava/lang/String;)Z
    .registers 4

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isLockedApplication(Ljava/lang/String;I)Z
    .registers 5

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessPolicy;->isLockedApplicationForUserId(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, -0x64

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessPolicy;->isLockedApplicationForUserId(Ljava/lang/String;I)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_17

    move-result v0

    if-eqz v0, :cond_14

    :cond_11
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_14
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isProcessImportant(Lcom/android/server/am/ProcessRecord;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1b

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessPolicy;->isInDynamicList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-nez v2, :cond_18

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v3, Lcom/android/server/am/ProcessPolicy;->PERCEPTIBLE_APP_ADJ:I

    if-gt v2, v3, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    move v0, v1

    goto :goto_18
.end method

.method protected promoteLockedApp(Lcom/android/server/am/ProcessRecord;)V
    .registers 8

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_20

    sget-object v3, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "do not promote "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_20
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/ProcessPolicy;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7f

    const/16 v1, 0x190

    :goto_2c
    if-eqz v0, :cond_82

    const/16 v2, 0xa

    :goto_30
    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/ProcessPolicy;->updateMaxAdjLocked(Lcom/android/server/am/ProcessRecord;IZ)V

    invoke-direct {p0, p1, v2, v0}, Lcom/android/server/am/ProcessPolicy;->updateMaxProcStateLocked(Lcom/android/server/am/ProcessRecord;IZ)V

    sget-object v3, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "promoteLockedApp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", set "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " maxAdj to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", maxProcState to + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7f
    const/16 v1, 0x3e9

    goto :goto_2c

    :cond_82
    const/16 v2, 0x12

    goto :goto_30
.end method

.method public protectCurrentProcess(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 8

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_8

    :cond_7
    return v4

    :cond_8
    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_c
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sAppProtectMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    monitor-exit v2

    if-nez v0, :cond_1f

    return v4

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1, p2}, Lcom/android/server/am/ProcessPolicy;->updateProcessPriority(Lcom/android/server/am/ProcessRecord;IZ)V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "protectCurrentProcess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " maxAdj to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", maxProcState to + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1
.end method

.method public resetWhiteList(Landroid/content/Context;I)V
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessPolicy;->updateDynamicWhiteList(Landroid/content/Context;I)V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    sget-object v0, Lcom/android/server/am/ProcessPolicy;->sUserDefinedWhiteList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-void

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppTaskAvailable(Ljava/lang/String;IZ)V
    .registers 9

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFastBootAppMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " available:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4c

    :cond_4a
    monitor-exit v2

    return-void

    :catchall_4c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 5

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x11060000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sStaticWhiteList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11060001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDisableTrimList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11060002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDisableForceStopList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11060003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sNeedTraceList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11060004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sSecretlyProtectAppList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11060005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sFgServiceCheckList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11060006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sCameraBoostProtectList:Ljava/util/List;
    :try_end_79
    .catchall {:try_start_3 .. :try_end_79} :catchall_87

    monitor-exit v1

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->loadLockedAppFromSettings(Landroid/content/Context;)V

    const-string/jumbo v0, "com.jeejen.family.miui"

    const/16 v1, -0x64

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessPolicy;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    return-void

    :catchall_87
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateApplicationLockedState(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 8

    invoke-direct {p0, p3, p2, p4}, Lcom/android/server/am/ProcessPolicy;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ProcessPolicy$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/ProcessPolicy$1;-><init>(Lcom/android/server/am/ProcessPolicy;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/server/am/ProcessPolicy;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v1, p3, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecord(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessPolicy;->promoteLockedApp(Lcom/android/server/am/ProcessRecord;)V

    :cond_1a
    return-void
.end method

.method public updateCloudData(Lmiui/process/ProcessCloudData;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateCloudWhiteList(Lmiui/process/ProcessCloudData;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateAppProtectMap(Lmiui/process/ProcessCloudData;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateFgProtectMap(Lmiui/process/ProcessCloudData;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateFastBootList(Lmiui/process/ProcessCloudData;)V

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessPolicy;->updateCameraMemThresholdMap(Lmiui/process/ProcessCloudData;)V

    return-void
.end method

.method public updateDynamicWhiteList(Landroid/content/Context;I)V
    .registers 15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/server/am/ProcessUtils;->getActiveWallpaperPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_e

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-static {p1}, Lcom/android/server/am/ProcessUtils;->getDefaultInputMethod(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-static {p1}, Lcom/android/server/am/ProcessUtils;->getActiveTtsEngine(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_20

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    invoke-static {}, Lcom/android/server/am/ProcessUtils;->isPhoneWorking()Z

    move-result v9

    if-eqz v9, :cond_2c

    const-string/jumbo v9, "com.android.incallui"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    invoke-static {}, Lcom/android/server/am/ProcessUtils;->isVoipWorking()Z

    move-result v9

    if-eqz v9, :cond_38

    const-string/jumbo v9, "com.miui.voip"

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_38
    iget-object v10, p0, Lcom/android/server/am/ProcessPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    :try_start_3b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sFgServiceCheckList:Ljava/util/List;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_44
    :goto_44
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_76

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v9, p0, Lcom/android/server/am/ProcessPolicy;->mProcessManagerService:Lcom/android/server/am/ProcessManagerService;

    invoke-virtual {v9, v5, p2}, Lcom/android/server/am/ProcessManagerService;->getProcessRecordList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_5a

    iget-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    if-eqz v9, :cond_5a

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_70

    goto :goto_44

    :catchall_70
    move-exception v9

    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v9

    :cond_76
    monitor-exit v10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "update DY:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_9e
    sput-object v0, Lcom/android/server/am/ProcessPolicy;->sDynamicWhiteList:Ljava/util/List;
    :try_end_a0
    .catchall {:try_start_9e .. :try_end_a0} :catchall_a2

    monitor-exit v9

    return-void

    :catchall_a2
    move-exception v10

    monitor-exit v9

    throw v10
.end method

.method public updateProcessForegroundLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6

    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_7

    :cond_6
    return-void

    :cond_7
    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/am/ProcessPolicy;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    sget-object v1, Lcom/android/server/am/ProcessPolicy;->sFgServiceProtectMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_1b

    monitor-exit v2

    if-nez v0, :cond_1e

    return-void

    :catchall_1b
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/am/ProcessPolicy;->updateProcessPriority(Lcom/android/server/am/ProcessRecord;IZ)V

    sget-object v1, Lcom/android/server/am/ProcessPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateProcessForegroundLocked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " maxAdj to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeOomAdjString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", maxProcState to + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->maxProcState:I

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
