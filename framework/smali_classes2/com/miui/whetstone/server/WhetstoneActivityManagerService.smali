.class public Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
.super Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.source "WhetstoneActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;,
        Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;
    }
.end annotation


# static fields
.field public static final APP_SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field public static final D:Z

.field private static final FROZEN_APP:I = 0x1

.field private static final MSG_SYSTEM_UPDATE_CURRENT_PROCESS_PSS:I = 0x3

.field private static final MSG_USER_CLEAR_DEAD_NATIVE_PROCESS:I = 0x2

.field private static final MSG_USER_REMOVE_PROMOTE_LEVEL:I = 0x1

.field private static final PER_USER_RANGE:I = 0x186a0

.field public static final PROMOTE_LEVEL_HIGH:I = 0x2

.field public static final PROMOTE_LEVEL_MIDDLE:I = 0x1

.field public static final PROMOTE_LEVEL_NORMAL:I = 0x0

.field public static final SERVICE:Ljava/lang/String; = "whetstone.activity"

.field private static final TAG:Ljava/lang/String; = "whetstone.activity"

.field private static mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;


# instance fields
.field private PowerManagerServiceInjector:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

.field private mAM:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mExtraActivityManagerService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mGetConnProviderNames:Ljava/lang/reflect/Method;

.field private mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

.field private mPidsSelfLocked:Landroid/util/SparseArray;

.field private mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoveTask:Ljava/lang/reflect/Method;

.field private mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

.field private mScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private mSystemServiceClassLoader:Ljava/lang/ClassLoader;

.field private final mUidFrozenState:Landroid/util/SparseBooleanArray;


# direct methods
.method static synthetic -get0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;
    .registers 2

    iput-object p1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerManager:Landroid/os/PowerManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->handleClearDeadAppFromNative()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "whetstone.activity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 19

    invoke-direct/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;-><init>()V

    new-instance v12, Landroid/util/SparseBooleanArray;

    invoke-direct {v12}, Landroid/util/SparseBooleanArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    new-instance v12, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$1;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    :try_start_29
    const-string/jumbo v12, "com.android.server.am.ExtraActivityManagerService"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v12, "android.os.ServiceManager"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    const-string/jumbo v13, "getService"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_50
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_50} :catch_129
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_50} :catch_13e
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_50} :catch_162
    .catch Ljava/lang/NoSuchFieldException; {:try_start_29 .. :try_end_50} :catch_156
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_50} :catch_14a

    move-result-object v10

    const/4 v12, 0x1

    :try_start_52
    new-array v12, v12, [Ljava/lang/Object;

    const-string/jumbo v13, "activity"

    const/4 v14, 0x0

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/IBinder;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_65} :catch_115
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_65} :catch_129
    .catch Ljava/lang/NoSuchMethodException; {:try_start_52 .. :try_end_65} :catch_13e
    .catch Ljava/lang/IllegalAccessException; {:try_start_52 .. :try_end_65} :catch_162
    .catch Ljava/lang/NoSuchFieldException; {:try_start_52 .. :try_end_65} :catch_156
    .catch Ljava/lang/ClassNotFoundException; {:try_start_52 .. :try_end_65} :catch_14a

    const/4 v9, 0x0

    :try_start_66
    const-string/jumbo v12, "com.android.server.am.ActivityManagerService"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    const-string/jumbo v13, "mPidsSelfLocked"

    invoke-static {v12, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v9

    if-eqz v9, :cond_135

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-direct/range {p0 .. p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->findRemoveTaskMethod()V
    :try_end_8b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_8b} :catch_129
    .catch Ljava/lang/NoSuchMethodException; {:try_start_66 .. :try_end_8b} :catch_13e
    .catch Ljava/lang/IllegalAccessException; {:try_start_66 .. :try_end_8b} :catch_162
    .catch Ljava/lang/NoSuchFieldException; {:try_start_66 .. :try_end_8b} :catch_156
    .catch Ljava/lang/ClassNotFoundException; {:try_start_66 .. :try_end_8b} :catch_14a

    :goto_8b
    :try_start_8b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v13, "scheduleDestroyActivities"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const-class v15, Ljava/lang/String;

    const/16 v16, 0x2

    aput-object v15, v14, v16

    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-nez v12, :cond_16e

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "mScheduleDestroyActivities not found in AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_be} :catch_be

    :catch_be
    move-exception v4

    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c9
    invoke-static {}, Lcom/miui/whetstone/PowerKeeperPolicy;->getInstance()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v13}, Lcom/miui/whetstone/PowerKeeperPolicy;->setContext(Landroid/content/Context;)V

    new-instance v12, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v13}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;-><init>(Lcom/miui/whetstone/server/WhetstoneActivityManagerService;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    :try_start_ef
    const-class v12, Landroid/os/PowerManager;

    const-string/jumbo v13, "ACTION_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mDeviceIdleChangeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v2, v14, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_112} :catch_198

    :goto_112
    sput-object p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-void

    :catch_115
    move-exception v4

    :try_start_116
    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error: can not found AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_129
    .catch Ljava/lang/IllegalArgumentException; {:try_start_116 .. :try_end_129} :catch_129
    .catch Ljava/lang/NoSuchMethodException; {:try_start_116 .. :try_end_129} :catch_13e
    .catch Ljava/lang/IllegalAccessException; {:try_start_116 .. :try_end_129} :catch_162
    .catch Ljava/lang/NoSuchFieldException; {:try_start_116 .. :try_end_129} :catch_156
    .catch Ljava/lang/ClassNotFoundException; {:try_start_116 .. :try_end_129} :catch_14a

    :catch_129
    move-exception v6

    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8b

    :cond_135
    :try_start_135
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "Error: mPidsSelfLocked not found in AcivityManagerService"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_13e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_135 .. :try_end_13e} :catch_129
    .catch Ljava/lang/NoSuchMethodException; {:try_start_135 .. :try_end_13e} :catch_13e
    .catch Ljava/lang/IllegalAccessException; {:try_start_135 .. :try_end_13e} :catch_162
    .catch Ljava/lang/NoSuchFieldException; {:try_start_135 .. :try_end_13e} :catch_156
    .catch Ljava/lang/ClassNotFoundException; {:try_start_135 .. :try_end_13e} :catch_14a

    :catch_13e
    move-exception v8

    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8b

    :catch_14a
    move-exception v3

    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8b

    :catch_156
    move-exception v7

    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8b

    :catch_162
    move-exception v5

    const-string/jumbo v12, "whetstone.activity"

    const-string/jumbo v13, "WhetstoneActivityManagerService"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8b

    :cond_16e
    :try_start_16e
    const-string/jumbo v12, "com.android.server.power.PowerManagerServiceInjector"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const-string/jumbo v13, "getPartialWakeLockHoldByUid"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v12, v13, v14}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;
    :try_end_196
    .catch Ljava/lang/Exception; {:try_start_16e .. :try_end_196} :catch_be

    goto/16 :goto_c9

    :catch_198
    move-exception v4

    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_112
.end method

.method private checkCallInterfacePermission()Z
    .registers 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const v1, 0x186a0

    rem-int/2addr v0, v1

    const/16 v1, 0x2710

    if-le v0, v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    const/4 v1, 0x1

    return v1
.end method

.method private findRemoveTaskMethod()V
    .registers 11

    const/4 v9, 0x1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-gt v4, v5, :cond_40

    :try_start_7
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_22
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_22} :catch_35

    :goto_22
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_153

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_2b
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_15e

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :goto_34
    return-void

    :catch_35
    move-exception v3

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :cond_40
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-gt v4, v5, :cond_9a

    :try_start_46
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const-string/jumbo v4, "com.android.server.am.ActivityManagerService"

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "removeTaskByIdLocked"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_78
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_78} :catch_79
    .catch Ljava/lang/ClassNotFoundException; {:try_start_46 .. :try_end_78} :catch_8f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_78} :catch_84

    goto :goto_22

    :catch_79
    move-exception v3

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :catch_84
    move-exception v2

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :catch_8f
    move-exception v0

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :cond_9a
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_fd

    :try_start_a0
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const-string/jumbo v4, "com.android.server.am.ActivityManagerService"

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v4, v5}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "removeTaskByIdLocked"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_d7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a0 .. :try_end_d7} :catch_d9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a0 .. :try_end_d7} :catch_f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a0 .. :try_end_d7} :catch_e5

    goto/16 :goto_22

    :catch_d9
    move-exception v3

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :catch_e5
    move-exception v2

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :catch_f1
    move-exception v0

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :cond_fd
    :try_start_fd
    const-class v4, Landroid/app/ActivityManager;

    const-string/jumbo v5, "removeTask"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v5, "removeTaskByIdLocked"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v7, v6, v8

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_12d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_fd .. :try_end_12d} :catch_12f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fd .. :try_end_12d} :catch_147
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_12d} :catch_13b

    goto/16 :goto_22

    :catch_12f
    move-exception v3

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :catch_13b
    move-exception v1

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :catch_147
    move-exception v2

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "WhetstoneActivityManagerService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    :cond_153
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTask"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b

    :cond_15e
    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskByIdLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_34
.end method

.method private getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    .registers 18

    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v6

    :try_start_6
    const-string/jumbo v12, "com.android.server.am.ProcessRecord"

    iget-object v13, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v4, v6, -0x1

    :goto_12
    if-ltz v4, :cond_5d

    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_5a

    const-string/jumbo v12, "processName"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v12, "userId"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5a

    if-eqz v10, :cond_5a

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v0, p2

    if-ne v12, v0, :cond_5a

    const-string/jumbo v12, "pid"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    return v12

    :cond_5a
    add-int/lit8 v4, v4, -0x1

    goto :goto_12

    :cond_5d
    const/4 v2, 0x0

    const/4 v11, -0x1

    add-int/lit8 v4, v6, -0x1

    :goto_61
    if-ltz v4, :cond_9e

    iget-object v12, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v12, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_9b

    const-string/jumbo v12, "info"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_9b

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v12, :cond_9b

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9b

    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v12, "pid"

    invoke-static {v1, v12}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9a} :catch_a2

    move-result v11

    :cond_9b
    add-int/lit8 v4, v4, -0x1

    goto :goto_61

    :cond_9e
    const/4 v12, 0x1

    if-ne v2, v12, :cond_ad

    return v11

    :catch_a2
    move-exception v3

    const-string/jumbo v12, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ad
    const/4 v12, -0x1

    return v12
.end method

.method public static getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;
    .registers 1

    sget-object v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSelf:Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    return-object v0
.end method

.method private handleClearDeadAppFromNative()V
    .registers 6

    :try_start_0
    const-string/jumbo v2, "com.android.server.am.ActivityManagerService"

    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "clearDeadAppFromNative"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return-void

    :catch_1e
    move-exception v1

    const-string/jumbo v2, "whetstone.activity"

    const-string/jumbo v3, "handleClearDeadAppFromNative"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1d
.end method

.method private removeTaskByIdInternal(IZZ)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-gt v2, v3, :cond_d

    invoke-direct {p0, p1, p2, v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdL(IZZ)Z

    move-result v2

    return v2

    :cond_d
    :try_start_d
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    check-cast v2, Landroid/app/IActivityManager;

    const-string/jumbo v3, "android.permission.REMOVE_TASKS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: removeTaskById from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " requires "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REMOVE_TASKS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_61} :catch_62

    return v6

    :catch_62
    move-exception v0

    const-string/jumbo v2, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_6e
    invoke-direct {p0, p1, p2, v7}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdLocked(IZZ)Z

    move-result v2

    return v2
.end method

.method private removeTaskByIdL(IZZ)Z
    .registers 13

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    if-nez v5, :cond_1c

    const-string/jumbo v3, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskById L"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1c
    :try_start_1c
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTask:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    if-eqz p2, :cond_3c

    :goto_2a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_3a} :catch_3e

    move-result v2

    return v2

    :cond_3c
    move v3, v4

    goto :goto_2a

    :catch_3e
    move-exception v1

    const-string/jumbo v3, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method private removeTaskByIdLocked(IZZ)Z
    .registers 15

    const/4 v10, 0x0

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-nez v4, :cond_10

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "could not find removeTaskById M"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_10
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_14
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    monitor-enter v5
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_97
    .catchall {:try_start_14 .. :try_end_17} :catchall_a6

    :try_start_17
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-gt v4, v6, :cond_41

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3b
    .catchall {:try_start_17 .. :try_end_3b} :catchall_94

    move-result v1

    :goto_3c
    :try_start_3c
    monitor-exit v5
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3d} :catch_97
    .catchall {:try_start_3c .. :try_end_3d} :catchall_a6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :cond_41
    :try_start_41
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-ge v4, v6, :cond_6e

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mAM:Landroid/os/IBinder;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_3c

    :cond_6e
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_92
    .catchall {:try_start_41 .. :try_end_92} :catchall_94

    move-result v1

    goto :goto_3c

    :catchall_94
    move-exception v4

    :try_start_95
    monitor-exit v5

    throw v4
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_97} :catch_97
    .catchall {:try_start_95 .. :try_end_97} :catchall_a6

    :catch_97
    move-exception v0

    :try_start_98
    const-string/jumbo v4, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_a6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :catchall_a6
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private updateCurrentProcessPss(IJ)V
    .registers 8

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    long-to-int v1, p2

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    invoke-virtual {v1, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public addAppToServiceControlWhitelist(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    return-void
.end method

.method public bindWhetstoneService(Landroid/os/IBinder;)V
    .registers 4

    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/whetstone/IWhetstoneClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneClient;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/miui/whetstone/client/WhetstoneClientManager;->init(Landroid/content/Context;Lcom/miui/whetstone/IWhetstoneClient;Lcom/miui/whetstone/server/WhetstoneActivityManagerService;)V

    return-void
.end method

.method public checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V
    .registers 5

    return-void
.end method

.method public checkIfPackageIsLocked(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z
    .registers 4

    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->checkIfPackageIsLocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public varargs checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    .registers 9

    const/4 v0, 0x1

    return v0
.end method

.method public clearDeadAppFromNative()V
    .registers 5

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mHandler:Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService$PromoteLevelManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public distoryActivity(I)Z
    .registers 10

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_24

    :try_start_5
    iget-object v4, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mScheduleDestroyActivities:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-string/jumbo v6, "whetstone"

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_23} :catch_3b
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_23} :catch_30
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_23} :catch_25

    const/4 v3, 0x1

    :cond_24
    :goto_24
    return v3

    :catch_25
    move-exception v2

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_30
    move-exception v0

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    :catch_3b
    move-exception v1

    const-string/jumbo v4, "whetstone.activity"

    const-string/jumbo v5, "distoryActivity"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump whetstone.activity service from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_37
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    if-eqz p3, :cond_62

    array-length v6, p3

    :goto_3d
    if-ge v5, v6, :cond_63

    aget-object v0, p3, v5

    const-string/jumbo v7, "powerkeeper"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4e

    const/4 v4, 0x1

    :cond_4b
    :goto_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    :cond_4e
    const-string/jumbo v7, "-a"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_60

    const-string/jumbo v7, "all"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4b

    :cond_60
    const/4 v2, 0x1

    goto :goto_4b

    :cond_62
    const/4 v2, 0x1

    :cond_63
    if-nez v4, :cond_67

    if-eqz v2, :cond_70

    :cond_67
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v3

    if-eqz v3, :cond_70

    invoke-virtual {v3, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_70
    return-void
.end method

.method public getAndroidCachedEmptyProcessMemory()J
    .registers 3

    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getEmptyProcTotalMemoryInfo()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundAPPS()[Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v11, :cond_96

    const/4 v10, 0x0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    if-nez v11, :cond_2a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v12, "getConnProviderNamesLocked"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v14, v13, v15

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v11, v12, v13}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    :cond_2a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    if-eqz v11, :cond_4a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mGetConnProviderNames:Ljava/lang/reflect/Method;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/util/List;

    move-object v10, v0

    :cond_4a
    if-eqz v10, :cond_98

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_98

    const/4 v9, 0x1

    if-eqz p3, :cond_97

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_72

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v10, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5f

    const/4 v9, 0x0

    :cond_72
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_79
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_97

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8a} :catch_8b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_8a} :catch_9e
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8a} :catch_b6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8a} :catch_aa

    goto :goto_79

    :catch_8b
    move-exception v2

    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_96
    :goto_96
    return v9

    :cond_97
    return v9

    :cond_98
    if-eqz p3, :cond_96

    :try_start_9a
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V
    :try_end_9d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9a .. :try_end_9d} :catch_8b
    .catch Ljava/lang/NoSuchMethodException; {:try_start_9a .. :try_end_9d} :catch_9e
    .catch Ljava/lang/IllegalAccessException; {:try_start_9a .. :try_end_9d} :catch_b6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9a .. :try_end_9d} :catch_aa

    goto :goto_96

    :catch_9e
    move-exception v3

    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :catch_aa
    move-exception v4

    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    :catch_b6
    move-exception v1

    const-string/jumbo v11, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96
.end method

.method public getPackageNamebyPid(I)Ljava/lang/String;
    .registers 14

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v9

    :try_start_4
    iget-object v8, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_35

    move-result-object v7

    if-eqz v7, :cond_28

    const/4 v0, 0x0

    :try_start_d
    const-string/jumbo v8, "com.android.server.am.ProcessRecord"

    iget-object v10, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/4 v11, 0x0

    invoke-static {v8, v11, v10}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v8, "info"

    invoke-static {v0, v8}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_28

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_28} :catch_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_28} :catch_43
    .catch Ljava/lang/NoSuchFieldException; {:try_start_d .. :try_end_28} :catch_38
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_28} :catch_2a
    .catchall {:try_start_d .. :try_end_28} :catchall_35

    :cond_28
    :goto_28
    monitor-exit v9

    return-object v6

    :catch_2a
    move-exception v1

    :try_start_2b
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_28

    :catchall_35
    move-exception v8

    monitor-exit v9

    throw v8

    :catch_38
    move-exception v4

    :try_start_39
    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_43
    move-exception v2

    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28

    :catch_4e
    move-exception v3

    const-string/jumbo v8, "whetstone.activity"

    const-string/jumbo v10, "getPackageNamebyPid"

    invoke-static {v8, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_58
    .catchall {:try_start_39 .. :try_end_58} :catchall_35

    goto :goto_28
.end method

.method public getPartialWakeLockHoldByUid(I)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    if-nez v5, :cond_10

    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "whetstone.activity getPartialWakeLockHoldByUid == null"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    return v5

    :cond_10
    :try_start_10
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPartialWakeLockHoldByUid:Ljava/lang/reflect/Method;

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->PowerManagerServiceInjector:Ljava/lang/Class;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_2a
    const-string/jumbo v5, "whetstone.activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "whetstone.activity ret = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_44} :catch_5b
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_44} :catch_50
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_44} :catch_45

    :goto_44
    return v3

    :catch_45
    move-exception v2

    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :catch_50
    move-exception v0

    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44

    :catch_5b
    move-exception v1

    const-string/jumbo v5, "whetstone.activity"

    const-string/jumbo v6, "getPartialWakeLockHoldByUid"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_44
.end method

.method public bridge synthetic getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;
    .registers 2

    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPowerKeeperPolicy:Lcom/miui/whetstone/PowerKeeperPolicy;

    return-object v0
.end method

.method public getProcessReceiverState(I)Z
    .registers 15

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v0, -0x1

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v6, :cond_2f

    :try_start_7
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v9, "getProcStateByPid"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v6, v9, v10}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_2f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_2e} :catch_59
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_2e} :catch_4d
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_2e} :catch_41
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_2e} :catch_35

    move-result v0

    :cond_2f
    :goto_2f
    const/16 v6, 0xc

    if-ne v0, v6, :cond_65

    move v6, v7

    :goto_34
    return v6

    :catch_35
    move-exception v4

    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_41
    move-exception v1

    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_4d
    move-exception v3

    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_59
    move-exception v2

    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_65
    move v6, v8

    goto :goto_34
.end method

.method public getSystemPid()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public getUidFrozenState(I)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object v1, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v1

    :try_start_b
    iget-object v0, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z
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

.method public isAlarmAllowedLocked(III)Z
    .registers 7

    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAlarmAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isAlarmAllowedLocked(III)Z

    move-result v0

    if-nez v0, :cond_74

    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_72

    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Alarm restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    const/4 v0, 0x0

    return v0

    :cond_74
    const/4 v0, 0x1

    return v0
.end method

.method public isBroadcastAllowedLocked(IILjava/lang/String;)Z
    .registers 7

    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBroadcastAllowedLocked() for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    invoke-virtual {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getPowerKeeperPolicy()Lcom/miui/whetstone/PowerKeeperPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/whetstone/PowerKeeperPolicy;->isBroadcastAllowedLocked(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    sget-boolean v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->D:Z

    if-eqz v0, :cond_72

    const-string/jumbo v0, "whetstone.activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Broadcast restrict for pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    const/4 v0, 0x0

    return v0

    :cond_74
    const/4 v0, 0x1

    return v0
.end method

.method public isProcessExecutingServices(I)Z
    .registers 15

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v6, :cond_2f

    :try_start_7
    iget-object v6, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v9, "getExecutingServicesSize"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v6, v9, v10}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_2f

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v6, v10

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_2e} :catch_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_2e} :catch_4b
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_2e} :catch_3f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_2e} :catch_33

    move-result v4

    :cond_2f
    :goto_2f
    if-lez v4, :cond_63

    move v6, v7

    :goto_32
    return v6

    :catch_33
    move-exception v3

    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_3f
    move-exception v0

    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_4b
    move-exception v2

    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :catch_57
    move-exception v1

    const-string/jumbo v6, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_63
    move v6, v8

    goto :goto_32
.end method

.method public putUidFrozenState(II)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_9

    return v0

    :cond_9
    iget-object v2, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    monitor-enter v2

    :try_start_c
    iget-object v3, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mUidFrozenState:Landroid/util/SparseBooleanArray;

    if-ne v1, p2, :cond_11

    move v0, v1

    :cond_11
    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_16

    monitor-exit v2

    return v1

    :catchall_16
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lcom/miui/whetstone/process/WtServiceControlEntry;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    return-void
.end method

.method public removeTaskById(IZ)Z
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->removeTaskByIdInternal(IZZ)Z

    move-result v0

    return v0
.end method

.method public scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public scheduleTrimMemory(II)Z
    .registers 15

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    if-eqz v5, :cond_3f

    :try_start_6
    iget-object v5, p0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mExtraActivityManagerService:Ljava/lang/Class;

    const-string/jumbo v6, "scheduleTrimMemory"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Lmiui/util/ReflectionUtils;->findMethodExact(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    if-eqz v4, :cond_3f

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_33} :catch_58
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_33} :catch_4c
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_33} :catch_40
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_33} :catch_34

    return v11

    :catch_34
    move-exception v3

    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    return v10

    :catch_40
    move-exception v0

    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :catch_4c
    move-exception v2

    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    :catch_58
    move-exception v1

    const-string/jumbo v5, "whetstone.activity"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public setPerformanceComponents([Landroid/content/ComponentName;)Z
    .registers 3

    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->setComponment([Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public setWhetstonePackageInfo(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public updateApplicationByLockedState(Ljava/lang/String;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    return-void
.end method

.method public updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V
    .registers 21

    invoke-direct/range {p0 .. p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v13

    if-nez v13, :cond_7

    return-void

    :cond_7
    if-nez p1, :cond_a

    return-void

    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->isSystemProtectImportantApp(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14

    invoke-static/range {p1 .. p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V

    return-void

    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v14

    :try_start_1d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getProcessPidByPackageNameLocked(Ljava/lang/String;I)I
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_26} :catch_e4
    .catchall {:try_start_1d .. :try_end_26} :catchall_f0

    move-result v7

    const/4 v13, -0x1

    if-ne v7, v13, :cond_2c

    monitor-exit v14

    return-void

    :cond_2c
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v13, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c5

    const-string/jumbo v13, "com.android.server.am.ProcessRecord"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v13, "com.android.server.am.ProcessList"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->mSystemServiceClassLoader:Ljava/lang/ClassLoader;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v0, v15}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v13, "maxAdj"

    invoke-static {v4, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    const-string/jumbo v13, "HEAVY_WEIGHT_APP_ADJ"

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v13, v15}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz p2, :cond_ca

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-le v13, v15, :cond_8a

    const-string/jumbo v13, "maxAdj"

    invoke-static {v4, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v8, v11}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :cond_8a
    :goto_8a
    const-string/jumbo v13, "whetstone.activity"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "MaxAdj Changed: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " From: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " to: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " by: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c5
    invoke-static/range {p1 .. p3}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updatePackageLockedStatus(Ljava/lang/String;ZI)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_c8} :catch_e4
    .catchall {:try_start_2c .. :try_end_c8} :catchall_f0

    :goto_c8
    monitor-exit v14

    return-void

    :cond_ca
    :try_start_ca
    const-string/jumbo v13, "UNKNOWN_ADJ"

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v13, v15}, Lmiui/util/ReflectionUtils;->getStaticObjectField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    const-string/jumbo v13, "maxAdj"

    invoke-static {v4, v13}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    invoke-virtual {v13, v8, v12}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_e2} :catch_e4
    .catchall {:try_start_ca .. :try_end_e2} :catchall_f0

    move-result v9

    goto :goto_8a

    :catch_e4
    move-exception v6

    :try_start_e5
    const-string/jumbo v13, "whetstone.activity"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ef
    .catchall {:try_start_e5 .. :try_end_ef} :catchall_f0

    goto :goto_c8

    :catchall_f0
    move-exception v13

    monitor-exit v14

    throw v13
.end method

.method public updateApplicationsMemoryThreshold(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    return-void
.end method

.method public updateFrameworkCommonConfig(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/miui/whetstone/client/WhetstoneClientManager;->mSetting:Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    invoke-virtual {v0, p1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    return-void
.end method

.method public updateUserLockedAppList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkCallInterfacePermission()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;)V

    return-void
.end method

.method public updateUserLockedAppListWithUserId(Ljava/util/List;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/miui/whetstone/client/WhetstoneClientManager;->updateUserLockedAppList(Ljava/util/List;I)V

    return-void
.end method
