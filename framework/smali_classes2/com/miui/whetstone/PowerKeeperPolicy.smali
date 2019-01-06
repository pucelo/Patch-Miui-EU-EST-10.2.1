.class public Lcom/miui/whetstone/PowerKeeperPolicy;
.super Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.source "PowerKeeperPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/PowerKeeperPolicy$1;,
        Lcom/miui/whetstone/PowerKeeperPolicy$Client;,
        Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;,
        Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    }
.end annotation


# static fields
.field public static final APP_BG_IDLE_LEVEL_DELAY:I = 0x1

.field public static final APP_BG_IDLE_LEVEL_DISABLE:I = 0x2

.field public static final APP_BG_IDLE_LEVEL_NORMAL:I = 0x0

.field private static final DEBUG:Z

.field public static final DEFAULT_UID:I = -0xa

.field private static final MSG_LE_SCAN_PAROLE_CHANGE:I = 0x3e9

.field private static final MSG_LE_SCAN_UID_RULE_CHANGE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PowerKeeperPolicy"

.field private static final debug:Z

.field private static sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;


# instance fields
.field private final SYSTEM_PID_STAT_FORMAT:[I

.field private mAlarmDataTotal:I

.field private mAlarmRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field

.field private mAlarmTypeData:Landroid/util/SparseIntArray;

.field private mAlarmUidData:Landroid/util/SparseIntArray;

.field private mAppBGIdleFeatureStatus:Z

.field private final mAppBGIdleLevel:Landroid/util/SparseIntArray;

.field private final mBleLock:Ljava/lang/Object;

.field private mBlockedUidWakelocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mBrdcastUidTypeInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mBroadcastDataTotal:I

.field private mBroadcastRestricts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastTypeData:Ljava/util/Map;
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

.field private mBroadcastUidData:Landroid/util/SparseIntArray;

.field private mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/bluetooth/BleScanWrapper;",
            "Lcom/miui/whetstone/PowerKeeperPolicy$Client;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mLeScanFeatureEnable:Z

.field private mLeScanHandler:Landroid/os/Handler;

.field private mLocalLog:Landroid/util/LocalLog;

.field private mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

.field private final mLock:Ljava/lang/Object;

.field private mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

.field private final mPolicyLock:Ljava/lang/Object;

.field private mPowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final mSytemPidStatData:[Ljava/lang/String;

.field private mUidAllow:Landroid/util/SparseBooleanArray;

.field private final mUidBroadcastStat:Landroid/util/SparseBooleanArray;

.field private final mUidPushAlarmProperty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

.field private mUidScanning:Landroid/util/SparseBooleanArray;

.field private pushAlarmLeaderIntent:Landroid/content/Intent;

.field private pushAlarmLeaderUid:I

.field private sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

.field private setAppToIdle:Ljava/lang/reflect/Method;

.field private setUidWakeLockDisabledState:Ljava/lang/reflect/Method;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/whetstone/PowerKeeperPolicy;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get3(Lcom/miui/whetstone/PowerKeeperPolicy;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    return v0
.end method

.method static synthetic -get4(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/LocalLog;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic -get6(Lcom/miui/whetstone/PowerKeeperPolicy;)Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    return-object v0
.end method

.method static synthetic -get7(Lcom/miui/whetstone/PowerKeeperPolicy;)Landroid/util/SparseBooleanArray;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/whetstone/PowerKeeperPolicy;Lcom/miui/whetstone/IPowerKeeperClient;)Lcom/miui/whetstone/IPowerKeeperClient;
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/whetstone/PowerKeeperPolicy;)Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Message;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->onLeScanMessageHandler(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->restoreFakeGpsStatus()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/whetstone/PowerKeeperPolicy;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/whetstone/PowerKeeperPolicy;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/ClassLoader;)V
    .registers 9

    const/16 v4, 0x1020

    const/4 v2, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mSytemPidStatData:[Ljava/lang/String;

    const/16 v1, 0x120

    filled-new-array {v1, v4, v4}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->SYSTEM_PID_STAT_FORMAT:[I

    iput-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    iput-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    new-instance v2, Landroid/util/LocalLog;

    sget-boolean v1, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v1, :cond_e0

    const/16 v1, 0x200

    :goto_52
    invoke-direct {v2, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy$1;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$1;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    iput v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    iput v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    :try_start_a6
    const-string/jumbo v1, "com.android.server.power.PowerManagerServiceInjector"

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    const-string/jumbo v2, "setUidPartialWakeLockDisabledState"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setUidWakeLockDisabledState:Ljava/lang/reflect/Method;
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_cd} :catch_e4

    :goto_cd
    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    iput-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    return-void

    :cond_e0
    const/16 v1, 0x100

    goto/16 :goto_52

    :catch_e4
    move-exception v0

    const-string/jumbo v1, "PowerKeeperPolicy"

    const-string/jumbo v2, "PowerKeeperPolicy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_cd
.end method

.method private checkLeScanAllowedLocked()Z
    .registers 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_47

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x1

    :cond_27
    monitor-exit v4

    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_46

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkLeScanAllowedLocked: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return v2

    :catchall_47
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private checkLeScanAllowedLocked(I)Z
    .registers 8

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-static {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v4

    if-ne v4, p1, :cond_e

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_2c

    move-result v2

    :cond_2a
    monitor-exit v5

    return v2

    :catchall_2c
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private checkLeScanParoleLocked()Z
    .registers 5

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v1}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v0

    sget-boolean v1, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v1, :cond_24

    const-string/jumbo v1, "PowerKeeperPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkLeScanParoleLocked: ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return v0
.end method

.method private checkLeScanRunningLocked()Z
    .registers 7

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getScanning()Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_47

    move-result v3

    if-eqz v3, :cond_e

    const/4 v2, 0x1

    :cond_27
    monitor-exit v4

    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_46

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkLeScanRunningLocked: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return v2

    :catchall_47
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private dumpBleScan(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    const/16 v8, 0x200

    const-string/jumbo v7, "\n====ble scan====\n\t"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v7, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x1000

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_21
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_28
    if-ge v3, v6, :cond_57

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_44

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    :cond_44
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_53
    .catchall {:try_start_21 .. :try_end_53} :catchall_54

    goto :goto_41

    :catchall_54
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_57
    :try_start_57
    const-string/jumbo v7, " allow uids:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " not allow uids:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    const/4 v3, 0x0

    :goto_86
    if-ge v3, v6, :cond_b2

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    if-eqz v7, :cond_a2

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_9f
    add-int/lit8 v3, v3, 0x1

    goto :goto_86

    :cond_a2
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_9f

    :cond_b2
    const-string/jumbo v7, " scanning uids:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " not scanning uids:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0xa

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " mClientMap:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_fc

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v9, 0x2c

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_e2

    :cond_fc
    const-string/jumbo v7, "\n mParoleCheck: mInParole="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-static {v9}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)Z

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " state="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-static {v9}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->-get2(Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;)I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_11d
    .catchall {:try_start_57 .. :try_end_11d} :catchall_54

    monitor-exit v8

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private dumpBrdCastManageInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 17

    const-string/jumbo v10, "---------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    monitor-enter v11

    const/4 v4, 0x0

    :goto_f
    :try_start_f
    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v4, v10, :cond_80

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-direct {p0, v10}, Lcom/miui/whetstone/PowerKeeperPolicy;->getPkgNameByUid(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_32

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    :cond_32
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "Name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v10, "Cnts"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_75} :catch_76
    .catchall {:try_start_f .. :try_end_75} :catchall_b0

    goto :goto_4d

    :catch_76
    move-exception v1

    :try_start_77
    const-string/jumbo v10, "PowerKeeperPolicy"

    const-string/jumbo v12, "dumpBrdCastManageInfo"

    invoke-static {v10, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_77 .. :try_end_80} :catchall_b0

    :cond_80
    monitor-exit v11

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "broadCastInfo:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v10, "---------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_a3
    :try_start_a3
    const-string/jumbo v10, "broadcast"

    invoke-virtual {v7, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_ac
    .catch Lorg/json/JSONException; {:try_start_a3 .. :try_end_ac} :catch_76
    .catchall {:try_start_a3 .. :try_end_ac} :catchall_b0

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    :catchall_b0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method private getAppPushAlarmLeaderIntent()Landroid/content/Intent;
    .registers 3

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getClient(I)Lcom/miui/whetstone/PowerKeeperPolicy$Client;
    .registers 6

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v3

    if-ne v3, p1, :cond_a

    return-object v2

    :cond_23
    const/4 v3, 0x0

    return-object v3
.end method

.method public static getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;
    .registers 2

    sget-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    if-nez v1, :cond_13

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy;

    invoke-direct {v1, v0}, Lcom/miui/whetstone/PowerKeeperPolicy;-><init>(Ljava/lang/ClassLoader;)V

    sput-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    :cond_13
    sget-object v1, Lcom/miui/whetstone/PowerKeeperPolicy;->sInstance:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v1
.end method

.method private getPkgNameByUid(I)Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    array-length v1, v0

    if-nez v1, :cond_12

    :cond_11
    return-object v3

    :cond_12
    aget-object v1, v0, v2

    return-object v1
.end method

.method private hasAlarmRestrict(II)Z
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_1a

    monitor-exit v4

    if-eqz v0, :cond_19

    const/4 v1, 0x0

    :goto_11
    array-length v3, v0

    if-ge v1, v3, :cond_19

    aget v3, v0, v1

    if-ne v3, p2, :cond_1d

    const/4 v2, 0x1

    :cond_19
    return v2

    :catchall_1a
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11
.end method

.method private hasBroadcastRestrict(ILjava/lang/String;)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPolicyLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_5
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_22

    monitor-exit v4

    if-eqz v0, :cond_32

    if-eqz p2, :cond_32

    array-length v3, v0

    if-ne v3, v5, :cond_25

    const-string/jumbo v3, "a.jack.bc.1"

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    return v5

    :catchall_22
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_25
    const/4 v1, 0x0

    :goto_26
    array-length v3, v0

    if-ge v1, v3, :cond_32

    aget-object v3, v0, v1

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const/4 v2, 0x1

    :cond_32
    return v2

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_26
.end method

.method private hasRestrictedScaner()Z
    .registers 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_4
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_29

    move-result v3

    if-nez v3, :cond_e

    const/4 v2, 0x1

    :cond_27
    monitor-exit v4

    return v2

    :catchall_29
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private onLeScanMessageHandler(Landroid/os/Message;)Z
    .registers 12

    const/4 v4, 0x1

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_162

    const/4 v4, 0x0

    :cond_7
    :goto_7
    return v4

    :pswitch_8
    iget-boolean v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-eqz v7, :cond_7

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-lez v7, :cond_a6

    const/4 v6, 0x1

    :goto_13
    sget-boolean v7, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v7, :cond_3c

    const-string/jumbo v7, "PowerKeeperPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leScan uid rule change, uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", allow = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v6, :cond_a9

    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->getClient(I)Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v3

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v2

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leScan uid rule change, uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", allowBefore= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " allowNow="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_80
    if-nez v3, :cond_91

    if-eqz v2, :cond_91

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_91

    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanLocked(I)V

    :cond_91
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V

    goto/16 :goto_7

    :cond_a6
    const/4 v6, 0x0

    goto/16 :goto_13

    :cond_a9
    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->getClient(I)Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    move-result-object v0

    if-eqz v0, :cond_e9

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v3

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v2

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leScan uid rule change, uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", allowBefore= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " allowNow="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    :cond_e9
    if-eqz v3, :cond_fc

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_fc

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_fc

    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanLocked(I)V

    :cond_fc
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V

    goto/16 :goto_7

    :pswitch_113
    iget-boolean v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-eqz v7, :cond_7

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_15a

    const/4 v1, 0x1

    :goto_11c
    sget-boolean v7, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v7, :cond_13a

    const-string/jumbo v7, "PowerKeeperPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leScan parole change, inParole = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13a
    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "leScan parole change, inParole = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_15c

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanAllLocked()V

    goto/16 :goto_7

    :cond_15a
    const/4 v1, 0x0

    goto :goto_11c

    :cond_15c
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanAllLocked()V

    goto/16 :goto_7

    nop

    :pswitch_data_162
    .packed-switch 0x3e8
        :pswitch_8
        :pswitch_113
    .end packed-switch
.end method

.method private restoreFakeGpsStatus()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "PowerKeeperPolicy"

    const-string/jumbo v1, "restore miui gps status"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/location/LocationPolicyManager;->setPhoneStationary(ZLandroid/location/Location;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/location/LocationPolicyManager;->setFakeGpsFeatureOnState(Z)V

    return-void
.end method

.method private setLeScanAllowedLocked(IZ)V
    .registers 8

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v2

    if-ne v2, p1, :cond_a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2, p2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLeScanAllowedLocked: uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_55
    return-void
.end method

.method private startLeScanAllLocked()V
    .registers 5

    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "PowerKeeperPolicy"

    const-string/jumbo v3, "startLeScanAllLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->startLeScan()V

    goto :goto_17

    :cond_2d
    return-void
.end method

.method private startLeScanLocked(I)V
    .registers 8

    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_1e

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startLeScanLocked uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v3

    if-ne v3, p1, :cond_28

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->startLeScan()V

    :cond_43
    return-void
.end method

.method private stopLeScanAllLocked()V
    .registers 5

    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "PowerKeeperPolicy"

    const-string/jumbo v3, "stopLeScanAllLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->stopLeScan()V

    goto :goto_17

    :cond_2d
    return-void
.end method

.method private stopLeScanLocked(I)V
    .registers 8

    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_1e

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopLeScanLocked uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-static {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->-get0(Lcom/miui/whetstone/PowerKeeperPolicy$Client;)I

    move-result v3

    if-ne v3, p1, :cond_28

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->stopLeScan()V

    :cond_43
    return-void
.end method


# virtual methods
.method public bleScanInit()V
    .registers 6

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_35

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "PowerKeeperPolicy"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/whetstone/PowerKeeperPolicy$3;

    invoke-direct {v0, p0}, Lcom/miui/whetstone/PowerKeeperPolicy$3;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;)V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    const/16 v4, 0x3e9

    invoke-direct {v2, p0, v3, v4}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/location/LocationPolicyManager;->from(Landroid/content/Context;)Landroid/location/LocationPolicyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocationPolicyListener:Landroid/location/ILocationPolicyListener;

    invoke-virtual {v2, v3}, Landroid/location/LocationPolicyManager;->registerListener(Landroid/location/ILocationPolicyListener;)V

    :cond_35
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 18

    const-string/jumbo v9, "\nDump of PowerKeeperPolicy:\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object/from16 v0, p3

    array-length v10, v0

    :goto_c
    if-ge v9, v10, :cond_20

    aget-object v1, p3, v9

    const-string/jumbo v11, "broadCastInfo"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-direct/range {p0 .. p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dumpBrdCastManageInfo(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_20
    const-string/jumbo v9, "====mAlarmRestricts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_29
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_9d

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    const/4 v10, 0x0

    array-length v11, v9

    :goto_67
    if-ge v10, v11, :cond_92

    aget v5, v9, v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAlarmName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_67

    :cond_92
    const-string/jumbo v9, "\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_9d
    const-string/jumbo v9, "\n====mBroadcastRestricts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_a6
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_107

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "------["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    array-length v11, v9

    :goto_e4
    if-ge v10, v11, :cond_104

    aget-object v6, v9, v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "----------"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_e4

    :cond_104
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    :cond_107
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n====Total block alarm "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_12a
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_169

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAlarmTypeData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v7}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAlarmName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_12a

    :cond_169
    const/4 v4, 0x0

    :goto_16a
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_1a5

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mAlarmUidData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16a

    :cond_1a5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n====Total block broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " times"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_20c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mBroadcastTypeData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d1

    :cond_20c
    const/4 v4, 0x0

    :goto_20d
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_248

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mBroadcastUidData["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "] = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_20d

    :cond_248
    const-string/jumbo v9, "\n====mBlockedWakelocks====\n\t"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_251
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_2b3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " uid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_2af

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " tags:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2ac
    add-int/lit8 v4, v4, 0x1

    goto :goto_251

    :cond_2af
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_2ac

    :cond_2b3
    const-string/jumbo v9, "\n====mUidBroadcastStat====\n\t"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v10

    const/4 v4, 0x0

    :goto_2bf
    :try_start_2bf
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_2fa

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " uid:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " policy = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2f7
    .catchall {:try_start_2bf .. :try_end_2f7} :catchall_35d

    add-int/lit8 v4, v4, 0x1

    goto :goto_2bf

    :cond_2fa
    monitor-exit v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\n====AppBGIdleFeatureIs===="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBGIdleFeatureEnable()Z

    move-result v9

    if-eqz v9, :cond_361

    iget-object v10, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v10

    const/4 v4, 0x0

    :goto_322
    :try_start_322
    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_360

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " uid:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " level = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35a
    .catchall {:try_start_322 .. :try_end_35a} :catchall_365

    add-int/lit8 v4, v4, 0x1

    goto :goto_322

    :catchall_35d
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_360
    monitor-exit v10

    :cond_361
    invoke-direct/range {p0 .. p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dumpBleScan(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_365
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public enableATrace(ZLjava/lang/String;)V
    .registers 7

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v2, :cond_9

    :try_start_4
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v2, p1, p2}, Lcom/miui/whetstone/IPowerKeeperClient;->enableATrace(ZLjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v1

    const-string/jumbo v2, "PowerKeeperPolicy"

    const-string/jumbo v3, "EnableATrace failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_15
    move-exception v0

    const-string/jumbo v2, "PowerKeeperPolicy"

    const-string/jumbo v3, "EnableATrace remote failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public getAlarmName(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_16

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "RTC_WAKEUP"

    return-object v0

    :pswitch_9
    const-string/jumbo v0, "RTC"

    return-object v0

    :pswitch_d
    const-string/jumbo v0, "ELAPSED_REALTIME_WAKEUP"

    return-object v0

    :pswitch_11
    const-string/jumbo v0, "ELAPSED_REALTIME"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_11
    .end packed-switch
.end method

.method public getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;
    .registers 6

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/miui/whetstone/AlarmPolicy;

    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2e

    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    aget-object v3, v1, v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v4, v1, v0

    iget v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v3, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_2e
    return-object v1
.end method

.method public getAppBGIdleFeatureEnable()Z
    .registers 3

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAppBGIdleLevel(I)I
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_14

    move-result v0

    monitor-exit v1

    return v0

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppBroadcastControlStat(I)Z
    .registers 4

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_13

    move-result v0

    monitor-exit v1

    return v0

    :catchall_13
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getAppPushAlarmFunc(I)Z
    .registers 6

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_c

    move-result v0

    monitor-exit v2

    return v0

    :catchall_c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getAppPushAlarmLeaderUid()I
    .registers 3

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getAppPushAlarmProperty(I)Landroid/content/Intent;
    .registers 4

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    monitor-exit v1

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;
    .registers 6

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v1, v2, [Lcom/miui/whetstone/BroadcastPolicy;

    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_33

    aget-object v2, v1, v0

    if-nez v2, :cond_18

    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    aget-object v2, v1, v0

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iput v3, v2, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    aget-object v3, v1, v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v4, v1, v0

    iget v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v3, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    goto :goto_15

    :cond_33
    return-object v1
.end method

.method public getOomAdjByPid(Landroid/content/Context;I)I
    .registers 15

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_4
    new-instance v5, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "/oom_adj"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_5a
    .catchall {:try_start_4 .. :try_end_29} :catchall_7a

    :try_start_29
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2e} :catch_a0
    .catchall {:try_start_29 .. :try_end_2e} :catchall_94

    :try_start_2e
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_33} :catch_a3
    .catchall {:try_start_2e .. :try_end_33} :catchall_97

    :try_start_33
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_a7
    .catchall {:try_start_33 .. :try_end_36} :catchall_9b

    move-result-object v8

    if-eqz v1, :cond_3c

    :try_start_39
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_54

    :cond_3c
    :goto_3c
    if-eqz v7, :cond_41

    :try_start_3e
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_56

    :cond_41
    :goto_41
    if-eqz v5, :cond_46

    :try_start_43
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_58

    :cond_46
    :goto_46
    move-object v0, v1

    move-object v6, v7

    move-object v4, v5

    :cond_49
    :goto_49
    if-eqz v8, :cond_91

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    return v9

    :catch_54
    move-exception v2

    goto :goto_3c

    :catch_56
    move-exception v2

    goto :goto_41

    :catch_58
    move-exception v2

    goto :goto_46

    :catch_5a
    move-exception v3

    :goto_5b
    :try_start_5b
    const-string/jumbo v9, "PowerKeeperPolicy"

    const-string/jumbo v10, "getOomAdjByPid"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_7a

    if-eqz v0, :cond_69

    :try_start_66
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_76

    :cond_69
    :goto_69
    if-eqz v6, :cond_6e

    :try_start_6b
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_78

    :cond_6e
    :goto_6e
    if-eqz v4, :cond_49

    :try_start_70
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_74

    goto :goto_49

    :catch_74
    move-exception v2

    goto :goto_49

    :catch_76
    move-exception v2

    goto :goto_69

    :catch_78
    move-exception v2

    goto :goto_6e

    :catchall_7a
    move-exception v9

    :goto_7b
    if-eqz v0, :cond_80

    :try_start_7d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_8b

    :cond_80
    :goto_80
    if-eqz v6, :cond_85

    :try_start_82
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_8d

    :cond_85
    :goto_85
    if-eqz v4, :cond_8a

    :try_start_87
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8f

    :cond_8a
    :goto_8a
    throw v9

    :catch_8b
    move-exception v2

    goto :goto_80

    :catch_8d
    move-exception v2

    goto :goto_85

    :catch_8f
    move-exception v2

    goto :goto_8a

    :cond_91
    const/16 v9, -0x64

    return v9

    :catchall_94
    move-exception v9

    move-object v4, v5

    goto :goto_7b

    :catchall_97
    move-exception v9

    move-object v6, v7

    move-object v4, v5

    goto :goto_7b

    :catchall_9b
    move-exception v9

    move-object v0, v1

    move-object v6, v7

    move-object v4, v5

    goto :goto_7b

    :catch_a0
    move-exception v3

    move-object v4, v5

    goto :goto_5b

    :catch_a3
    move-exception v3

    move-object v6, v7

    move-object v4, v5

    goto :goto_5b

    :catch_a7
    move-exception v3

    move-object v0, v1

    move-object v6, v7

    move-object v4, v5

    goto :goto_5b
.end method

.method public getPackageNameByPid(Landroid/content/Context;I)Ljava/lang/String;
    .registers 20

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    :try_start_4
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "/proc/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/cmdline"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2b} :catch_98
    .catchall {:try_start_4 .. :try_end_2b} :catchall_b8

    :try_start_2b
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_db
    .catchall {:try_start_2b .. :try_end_30} :catchall_cf

    :try_start_30
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_de
    .catchall {:try_start_30 .. :try_end_35} :catchall_d2

    :try_start_35
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_46

    const/4 v14, 0x0

    const/16 v15, 0x20

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_45} :catch_e2
    .catchall {:try_start_35 .. :try_end_45} :catchall_d6

    move-result-object v11

    :cond_46
    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_92

    :cond_4b
    :goto_4b
    if-eqz v9, :cond_50

    :try_start_4d
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_94

    :cond_50
    :goto_50
    if-eqz v7, :cond_55

    :try_start_52
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_96

    :cond_55
    :goto_55
    move-object v1, v2

    move-object v8, v9

    move-object v6, v7

    :cond_58
    :goto_58
    if-nez v11, :cond_81

    const-string/jumbo v14, "activity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    invoke-virtual {v10}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_6d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_81

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v14, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v0, p2

    if-ne v14, v0, :cond_6d

    iget-object v11, v12, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_81
    if-eqz v11, :cond_91

    const-string/jumbo v14, ":"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_91

    const/4 v14, 0x0

    invoke-virtual {v11, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    :cond_91
    return-object v11

    :catch_92
    move-exception v3

    goto :goto_4b

    :catch_94
    move-exception v3

    goto :goto_50

    :catch_96
    move-exception v3

    goto :goto_55

    :catch_98
    move-exception v4

    :goto_99
    :try_start_99
    const-string/jumbo v14, "PowerKeeperPolicy"

    const-string/jumbo v15, "getPackageNameByPid"

    invoke-static {v14, v15, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_99 .. :try_end_a2} :catchall_b8

    if-eqz v1, :cond_a7

    :try_start_a4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_b4

    :cond_a7
    :goto_a7
    if-eqz v8, :cond_ac

    :try_start_a9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_b6

    :cond_ac
    :goto_ac
    if-eqz v6, :cond_58

    :try_start_ae
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_58

    :catch_b2
    move-exception v3

    goto :goto_58

    :catch_b4
    move-exception v3

    goto :goto_a7

    :catch_b6
    move-exception v3

    goto :goto_ac

    :catchall_b8
    move-exception v14

    :goto_b9
    if-eqz v1, :cond_be

    :try_start_bb
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c9

    :cond_be
    :goto_be
    if-eqz v8, :cond_c3

    :try_start_c0
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_cb

    :cond_c3
    :goto_c3
    if-eqz v6, :cond_c8

    :try_start_c5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_cd

    :cond_c8
    :goto_c8
    throw v14

    :catch_c9
    move-exception v3

    goto :goto_be

    :catch_cb
    move-exception v3

    goto :goto_c3

    :catch_cd
    move-exception v3

    goto :goto_c8

    :catchall_cf
    move-exception v14

    move-object v6, v7

    goto :goto_b9

    :catchall_d2
    move-exception v14

    move-object v8, v9

    move-object v6, v7

    goto :goto_b9

    :catchall_d6
    move-exception v14

    move-object v1, v2

    move-object v8, v9

    move-object v6, v7

    goto :goto_b9

    :catch_db
    move-exception v4

    move-object v6, v7

    goto :goto_99

    :catch_de
    move-exception v4

    move-object v8, v9

    move-object v6, v7

    goto :goto_99

    :catch_e2
    move-exception v4

    move-object v1, v2

    move-object v8, v9

    move-object v6, v7

    goto :goto_99
.end method

.method public isAlarmAllowedLocked(III)Z
    .registers 10

    const/4 v5, 0x0

    const/4 v0, 0x1

    if-ltz p3, :cond_7

    const/4 v2, 0x3

    if-le p3, v2, :cond_8

    :cond_7
    return v0

    :cond_8
    const/16 v2, -0xa

    invoke-direct {p0, v2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(II)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasAlarmRestrict(II)Z

    move-result v2

    if-eqz v2, :cond_47

    :cond_16
    const/4 v0, 0x0

    const-string/jumbo v2, "PowerKeeperPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAlarmAllowedLocked, uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",  type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", return :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    if-nez v0, :cond_69

    iget v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmDataTotal:I

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmTypeData:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p3, v1}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p2, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmUidData:Landroid/util/SparseIntArray;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_69
    return v0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .registers 12

    const/4 v7, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_5

    return v1

    :cond_5
    invoke-virtual {p0, p2}, Lcom/miui/whetstone/PowerKeeperPolicy;->getAppBroadcastControlStat(I)Z

    move-result v4

    if-nez v4, :cond_c

    return v1

    :cond_c
    invoke-direct {p0, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasBroadcastRestrict(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_43

    const/4 v1, 0x0

    const-string/jumbo v4, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBroadcastAllowedLocked, uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", return :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    if-nez v1, :cond_b6

    iget v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastDataTotal:I

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-interface {v4, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-nez v3, :cond_59

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_59
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastTypeData:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, p3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p2, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastUidData:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, p2, v5}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_99

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBrdcastUidTypeInfo:Landroid/util/SparseArray;

    invoke-virtual {v4, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_99
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_a5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_a5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, p3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b6
    return v1
.end method

.method public isLeScanAllowed(I)Z
    .registers 8

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v2, :cond_6

    return v5

    :cond_6
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v0, 0x1

    :try_start_a
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-static {v2, p1, v4}, Landroid/location/LocationPolicyManager;->isAllowedByLocationPolicy(Landroid/content/Context;II)Z

    move-result v0

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_1c
    .catchall {:try_start_a .. :try_end_16} :catchall_28

    :goto_16
    :try_start_16
    iget-boolean v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_28

    if-nez v2, :cond_2b

    monitor-exit v3

    return v5

    :catch_1c
    move-exception v1

    const/4 v0, 0x1

    :try_start_1e
    const-string/jumbo v2, "PowerKeeperPolicy"

    const-string/jumbo v4, "isLeScanAllowed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_28

    goto :goto_16

    :catchall_28
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2b
    if-nez v0, :cond_34

    :try_start_2d
    invoke-direct {p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanAllowedLocked(I)Z

    move-result v2

    if-eqz v2, :cond_34

    const/4 v0, 0x1

    :cond_34
    if-nez v0, :cond_3d

    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->checkLeScanParoleLocked()Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v0, 0x1

    :cond_3d
    sget-boolean v2, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v2, :cond_66

    const-string/jumbo v2, "PowerKeeperPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isLeScanAllowed: uid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", allow = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_66
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_6b
    .catchall {:try_start_2d .. :try_end_6b} :catchall_28

    monitor-exit v3

    return v0
.end method

.method public isWakelockDisabledByPolicy(Ljava/lang/String;I)Z
    .registers 11

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_39

    const/4 v0, 0x1

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_39

    const/4 v0, 0x0

    if-eqz p1, :cond_39

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3b

    move-result v6

    if-eqz v6, :cond_1e

    const/4 v0, 0x1

    :cond_39
    monitor-exit v7

    return v0

    :catchall_3b
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    .registers 5

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->notifyFrozenAppWakeUpByHighPriorityAlarm(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v1, "PowerKeeperPolicy"

    const-string/jumbo v2, "notifyFrozenAppWakeUpByBroacastReceive failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public offerPowerKeeperIBinder(Landroid/os/IBinder;)V
    .registers 5

    invoke-static {p1}, Lcom/miui/whetstone/IPowerKeeperClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperClient;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    :try_start_6
    new-instance v1, Lcom/miui/whetstone/PowerKeeperPolicy$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/whetstone/PowerKeeperPolicy$2;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/os/IBinder;)V

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "PowerKeeperPolicy"

    const-string/jumbo v2, "offerPowerKeeperIBinder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public perfThermalBreakAcquire(I)V
    .registers 5

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->sPowerKeeperService:Lcom/miui/whetstone/IPowerKeeperClient;

    invoke-interface {v1, p1}, Lcom/miui/whetstone/IPowerKeeperClient;->perfThermalBreakAcquire(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    const-string/jumbo v1, "PowerKeeperPolicy"

    const-string/jumbo v2, "perfThermalBreakAcquire failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_c

    return-void

    :cond_c
    if-eqz p2, :cond_13

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_13
    const/4 v1, 0x0

    :goto_14
    array-length v2, p1

    if-ge v1, v2, :cond_40

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    if-eqz v2, :cond_24

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    array-length v2, v2

    if-nez v2, :cond_32

    :cond_24
    if-nez p2, :cond_2f

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_32
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAlarmRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/AlarmPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/AlarmPolicy;->mRestrictTypes:[I

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2f

    :cond_40
    return-void
.end method

.method public setAppBGIdleFeatureEnable(Z)V
    .registers 4

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v0

    :try_start_3
    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleFeatureStatus:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setAppBGIdleLevel(II)V
    .registers 5

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x2

    if-le p2, v0, :cond_a

    :cond_9
    return-void

    :cond_a
    if-ltz p2, :cond_9

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    monitor-enter v1

    :try_start_f
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mAppBGIdleLevel:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_16

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppBroadcastControlStat(IZ)V
    .registers 5

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_3
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    move-result v0

    if-nez v0, :cond_b

    monitor-exit v1

    return-void

    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidBroadcastStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppPushAlarmLeader(ILandroid/content/Intent;)V
    .registers 6

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderUid:I

    iput-object p2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->pushAlarmLeaderIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppPushAlarmProperty(ILandroid/content/Intent;Z)V
    .registers 6

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmProperty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidPushAlarmStat:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V
    .registers 8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_9

    return-void

    :cond_9
    if-nez p1, :cond_c

    return-void

    :cond_c
    if-eqz p2, :cond_13

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    :cond_13
    const/4 v1, 0x0

    :goto_14
    array-length v2, p1

    if-ge v1, v2, :cond_45

    aget-object v2, p1, v1

    if-nez v2, :cond_1e

    :cond_1b
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_1e
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    if-eqz v2, :cond_2b

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_37

    :cond_2b
    if-nez p2, :cond_1b

    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_1b

    :cond_37
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBroadcastRestricts:Landroid/util/SparseArray;

    aget-object v3, p1, v1

    iget v3, v3, Lcom/miui/whetstone/BroadcastPolicy;->mUid:I

    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/miui/whetstone/BroadcastPolicy;->mRestrictTypes:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1b

    :cond_45
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_9

    iput-object p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->bleScanInit()V

    :cond_9
    return-void
.end method

.method public setLeScanFeature(Z)V
    .registers 9

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v3, :cond_5

    return-void

    :cond_5
    iget-object v4, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    iget-boolean v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_81

    if-ne v3, p1, :cond_e

    monitor-exit v4

    return-void

    :cond_e
    :try_start_e
    sget-boolean v3, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v3, :cond_2c

    const-string/jumbo v3, "PowerKeeperPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLeScanFeature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLeScanFeature "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z

    if-eqz p1, :cond_50

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V
    :try_end_4e
    .catchall {:try_start_e .. :try_end_4e} :catchall_81

    :goto_4e
    monitor-exit v4

    return-void

    :cond_50
    :try_start_50
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_65
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->startLeScan()V

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V
    :try_end_80
    .catchall {:try_start_50 .. :try_end_80} :catchall_81

    goto :goto_65

    :catchall_81
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_84
    :try_start_84
    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    iget-object v3, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_8e
    .catchall {:try_start_84 .. :try_end_8e} :catchall_81

    goto :goto_4e
.end method

.method public setLeScanParam(Landroid/os/Bundle;)V
    .registers 7

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_5

    return-void

    :cond_5
    iget-object v2, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    const-string/jumbo v1, "parolePeriodArray"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string/jumbo v1, "parolePeriodArray"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLeScanParam array="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->setParoleCheckParam([J)V
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_3c

    :cond_3a
    monitor-exit v2

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public startLeScan(Landroid/os/Bundle;)V
    .registers 13

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v8, :cond_5

    return-void

    :cond_5
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v10, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "BleScanWrapper"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BleScanWrapper;

    const-string/jumbo v8, "IBinder"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string/jumbo v8, "uid"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    sget-boolean v8, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v8, :cond_50

    const-string/jumbo v8, "PowerKeeperPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startLeScan: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startLeScan: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_77
    iget-boolean v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_e4

    if-nez v8, :cond_7d

    monitor-exit v9

    return-void

    :cond_7d
    :try_start_7d
    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidAllow:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mUidScanning:Landroid/util/SparseBooleanArray;

    const/4 v10, 0x1

    invoke-virtual {v8, v7, v10}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v6

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    const/4 v5, 0x0

    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v5

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v3}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a5
    new-instance v3, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    invoke-direct {v3, p0, v2, v1, v7}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;Landroid/os/IBinder;I)V

    invoke-virtual {v3, v0}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setAllowed(Z)V

    invoke-virtual {v3, v6}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->setScanning(Z)V

    new-instance v8, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;

    invoke-direct {v8, p0, v2, v7}, Lcom/miui/whetstone/PowerKeeperPolicy$ClientDeathRecipient;-><init>(Lcom/miui/whetstone/PowerKeeperPolicy;Landroid/bluetooth/BleScanWrapper;I)V

    invoke-virtual {v3, v8}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v0

    if-nez v5, :cond_cf

    if-eqz v0, :cond_cf

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_cf

    invoke-direct {p0, v7}, Lcom/miui/whetstone/PowerKeeperPolicy;->startLeScanLocked(I)V

    :cond_cf
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v8

    if-nez v8, :cond_e2

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v8

    if-eqz v8, :cond_e2

    iget-object v8, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v8}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->stopParoleCheck()V
    :try_end_e2
    .catchall {:try_start_7d .. :try_end_e2} :catchall_e4

    :cond_e2
    monitor-exit v9

    return-void

    :catchall_e4
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method public stopLeScan(Landroid/os/Bundle;)V
    .registers 11

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    if-nez v6, :cond_5

    return-void

    :cond_5
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.BLUETOOTH_ADMIN"

    const-string/jumbo v8, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "BleScanWrapper"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BleScanWrapper;

    const-string/jumbo v6, "IBinder"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string/jumbo v6, "uid"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-boolean v6, Lcom/miui/whetstone/PowerKeeperPolicy;->DEBUG:Z

    if-eqz v6, :cond_50

    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopLeScan: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLocalLog:Landroid/util/LocalLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopLeScan: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBleLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_77
    iget-boolean v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLeScanFeatureEnable:Z
    :try_end_79
    .catchall {:try_start_77 .. :try_end_79} :catchall_be

    if-nez v6, :cond_7d

    monitor-exit v7

    return-void

    :cond_7d
    const/4 v4, 0x0

    :try_start_7e
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/PowerKeeperPolicy$Client;

    if-eqz v2, :cond_97

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->getAllowed()Z

    move-result v4

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->unlinkToDeath()V

    invoke-virtual {v2}, Lcom/miui/whetstone/PowerKeeperPolicy$Client;->clearResource()V

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mClientMap:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_97
    const/4 v3, 0x0

    if-eqz v4, :cond_a7

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isInParoleState()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a7

    invoke-direct {p0, v5}, Lcom/miui/whetstone/PowerKeeperPolicy;->stopLeScanLocked(I)V

    :cond_a7
    invoke-direct {p0}, Lcom/miui/whetstone/PowerKeeperPolicy;->hasRestrictedScaner()Z

    move-result v6

    if-eqz v6, :cond_bc

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->isWorking()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_bc

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mParoleCheck:Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;

    invoke-virtual {v6}, Lcom/miui/whetstone/PowerKeeperPolicy$ParoleCheck;->startParoleCheck()V
    :try_end_bc
    .catchall {:try_start_7e .. :try_end_bc} :catchall_be

    :cond_bc
    monitor-exit v7

    return-void

    :catchall_be
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public updateWakelockBlockedUid(ILjava/lang/String;Z)V
    .registers 15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Caller["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] updateWakelockBlockedUid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", block="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x3e8

    if-eq v0, v6, :cond_4b

    return-void

    :cond_4b
    const/4 v1, 0x0

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_4f
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v6

    if-ltz v6, :cond_eb

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz p3, :cond_9a

    if-nez p2, :cond_8b

    if-eqz v4, :cond_8b

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    const/4 v8, 0x0

    invoke-virtual {v6, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_6b
    .catchall {:try_start_4f .. :try_end_6b} :catchall_e8

    const/4 v1, 0x1

    :cond_6c
    :goto_6c
    monitor-exit v7

    if-eqz v1, :cond_8a

    :try_start_6f
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->setUidWakeLockDisabledState:Ljava/lang/reflect/Method;

    iget-object v7, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mPowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8a
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_6f .. :try_end_8a} :catch_10b
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_8a} :catch_100

    :cond_8a
    :goto_8a
    return-void

    :cond_8b
    if-eqz p2, :cond_6c

    if-eqz v4, :cond_6c

    :try_start_8f
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6c

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    goto :goto_6c

    :cond_9a
    if-nez p2, :cond_a3

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    const/4 v1, 0x1

    goto :goto_6c

    :cond_a3
    if-eqz v4, :cond_bb

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6c

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_b9

    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_b9
    const/4 v1, 0x1

    goto :goto_6c

    :cond_bb
    const-string/jumbo v6, "PowerKeeperPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "cannot unblock the wakelock["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] for uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", please unblock all the wakelock with a null tag"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e7
    .catchall {:try_start_8f .. :try_end_e7} :catchall_e8

    goto :goto_6c

    :catchall_e8
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_eb
    if-eqz p3, :cond_6c

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_f9

    :try_start_f1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f9
    iget-object v6, p0, Lcom/miui/whetstone/PowerKeeperPolicy;->mBlockedUidWakelocks:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_fe
    .catchall {:try_start_f1 .. :try_end_fe} :catchall_e8

    goto/16 :goto_6c

    :catch_100
    move-exception v2

    const-string/jumbo v6, "PowerKeeperPolicy"

    const-string/jumbo v7, "updateWakelockBlockedUid"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    :catch_10b
    move-exception v3

    const-string/jumbo v6, "PowerKeeperPolicy"

    const-string/jumbo v7, "updateWakelockBlockedUid"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8a
.end method
