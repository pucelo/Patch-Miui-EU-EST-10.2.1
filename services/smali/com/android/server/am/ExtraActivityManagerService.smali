.class public Lcom/android/server/am/ExtraActivityManagerService;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ExtraActivityManagerService$1;,
        Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field private static final INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

.field private static final INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

.field static final SHOW_INCOMPATIBLE_ERROR:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mLastStartActivityUid:I

.field private static mPerfService:Lcom/android/internal/app/IPerfShielder;

.field private static mSplashScreenServiceDelegate:Lcom/miui/server/SplashScreenServiceDelegate;

.field private static mSystemReady:Z

.field private static sAmInstance:Lcom/android/server/am/ActivityManagerService;

.field static final sHandler:Landroid/os/Handler;

.field private static sMainStack:Ljava/lang/reflect/Field;

.field private static sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyActivities:Ljava/lang/reflect/Method;

.field private static sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-class v2, Lcom/android/server/am/ExtraActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    :try_start_b
    const-class v2, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "mStackSupervisor"

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_52

    const-class v2, Lcom/android/server/am/ActivityStackSupervisor;

    const-string/jumbo v3, "removeTaskByIdLocked"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    const-class v2, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "scheduleDestroyAllActivities"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_52} :catch_96

    :cond_52
    :goto_52
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    const-string/jumbo v4, "android.permission.CAMERA"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v3, "android.media.action.VIDEO_CAPTURE"

    const-string/jumbo v4, "android.permission.CAMERA"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    const-string/jumbo v3, "android.intent.action.CALL"

    const-string/jumbo v4, "android.permission.CALL_PHONE"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/am/ExtraActivityManagerService$1;

    invoke-direct {v2}, Lcom/android/server/am/ExtraActivityManagerService$1;-><init>()V

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sHandler:Landroid/os/Handler;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mobileqq.activity.QQLSActivity"

    aput-object v3, v2, v8

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "com.tencent.mobileqq"

    aput-object v3, v2, v8

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    sput-object v7, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-void

    :catch_96
    move-exception v0

    :try_start_97
    const-class v2, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "mMainStack"

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->findField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_c6

    const-class v2, Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v3, "scheduleDestroyActivities"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Lcom/android/server/am/ProcessRecord;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->findMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    :cond_c6
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_c9} :catch_ca

    goto :goto_52

    :catch_ca
    move-exception v1

    goto :goto_52
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activityIdle(Landroid/content/pm/ActivityInfo;)V
    .registers 1

    return-void
.end method

.method static addActivityLaunchTime(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;JJZ)V
    .registers 23

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v12

    if-nez v12, :cond_b

    return-void

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_43

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    if-nez v3, :cond_44

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_25
    if-nez p1, :cond_4d

    const/4 v10, 0x0

    :goto_28
    iget-wide v6, v12, Lcom/android/server/am/ActivityStack;->mLaunchStartTime:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v3, :cond_43

    :try_start_34
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move/from16 v11, p6

    invoke-interface/range {v3 .. v11}, Lcom/android/internal/app/IPerfShielder;->addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_43} :catch_5e

    :cond_43
    :goto_43
    return-void

    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    goto :goto_25

    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getHomeActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    goto :goto_28

    :catch_5e
    move-exception v2

    goto :goto_43
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-gt v7, v8, :cond_a

    :cond_9
    return-void

    :cond_a
    invoke-static {p0}, Landroid/app/ExtraActivityManager;->getPackageNameListForRecentTasks(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_16

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_17

    :cond_16
    return-void

    :cond_17
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move v1, v0

    :goto_2d
    if-ge v1, v6, :cond_20

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-interface {p1, v0, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    :cond_45
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    :cond_48
    return-void
.end method

.method public static adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p0, p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->adjustMediaButtonReceivers(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    :cond_c
    return-void
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    .registers 5

    const/4 v1, 0x1

    if-nez p2, :cond_4

    return v1

    :cond_4
    if-eqz p1, :cond_c

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_d

    :cond_c
    return v1

    :cond_d
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZ)Z
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/String;)Z
    .registers 27

    if-nez p6, :cond_4

    const/4 v3, 0x1

    return v3

    :cond_4
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/16 v4, 0x400

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    invoke-interface {v3, v0, v1, v4, v2}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    if-eqz v18, :cond_2a

    move-object/from16 v0, v18

    iget-object v7, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    :goto_1a
    if-eqz v7, :cond_2c

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, p6

    invoke-static {v0, v3, v1}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v3

    if-nez v3, :cond_2e

    const/4 v3, 0x0

    return v3

    :cond_2a
    const/4 v7, 0x0

    goto :goto_1a

    :cond_2c
    const/4 v3, 0x0

    goto :goto_1e

    :cond_2e
    const/16 v8, 0x8

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p7

    move-object/from16 v6, p3

    move/from16 v9, p5

    invoke-static/range {v3 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v3

    if-nez v3, :cond_42

    const/4 v3, 0x0

    return v3

    :cond_42
    if-eqz v7, :cond_d9

    iget-object v3, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_d9

    const-string/jumbo v10, ""

    if-eqz p7, :cond_bc

    move-object/from16 v10, p7

    :goto_4f
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v3

    if-eqz v3, :cond_e1

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v8

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v13, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v15, v3, [Ljava/lang/Object;

    const/4 v11, 0x2

    move/from16 v12, p5

    invoke-virtual/range {v8 .. v15}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_e1

    const-string/jumbo v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission denied by Whetstone, cannot start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", UserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_bc
    monitor-enter p1
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_bd} :catch_d8

    :try_start_bd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v16

    if-eqz v16, :cond_d2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_d2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_d2
    .catchall {:try_start_bd .. :try_end_d2} :catchall_db

    :cond_d2
    :try_start_d2
    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_4f

    :catch_d8
    move-exception v17

    :cond_d9
    :goto_d9
    const/4 v3, 0x1

    return v3

    :catchall_db
    move-exception v3

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3

    :cond_e1
    sget-boolean v3, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v3, :cond_d9

    const-string/jumbo v3, "WhetstonePackageState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "start service from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v7, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", caller: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", UserId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_133} :catch_d8

    goto :goto_d9
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;IZLjava/lang/String;)Z
    .registers 19

    if-nez p3, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v10, 0x0

    :goto_5
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v10, v1, :cond_27

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_ACTIVITIES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->INCOMPATIBLE_PACKAGES:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 v1, 0x0

    return v1

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_27
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, p6

    invoke-static {p0, v1, v0}, Lcom/android/server/am/ExtraActivityManagerService;->checkRunningCompatibility(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    if-nez v1, :cond_33

    const/4 v1, 0x0

    return v1

    :cond_33
    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p7

    move-object v4, p4

    move-object v5, p3

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_44

    const/4 v1, 0x0

    return v1

    :cond_44
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_126

    const-string/jumbo v3, ""

    monitor-enter p1

    :try_start_4c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p1, p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v9

    if-eqz v9, :cond_5d

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_5d

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_5d
    .catchall {:try_start_4c .. :try_end_5d} :catchall_ce

    :cond_5d
    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_d4

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x1

    move/from16 v5, p5

    invoke-virtual/range {v1 .. v8}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_d4

    const-string/jumbo v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission denied by Whetstone, cannot start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", UserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :catchall_ce
    move-exception v1

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    :cond_d4
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_126

    const-string/jumbo v1, "WhetstonePackageState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start activity from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", caller: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", UserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_126
    const/4 v1, 0x1

    return v1
.end method

.method public static checkRunningCompatibility(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Lcom/android/server/am/ContentProviderRecord;IZ)Z
    .registers 20

    if-nez p5, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    if-eqz p3, :cond_c

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    if-nez v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    return v1

    :cond_e
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p3

    iget-object v5, v0, Lcom/android/server/am/ContentProviderRecord;->info:Landroid/content/pm/ProviderInfo;

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p4

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ExtraActivityManagerService;->checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x0

    return v1

    :cond_39
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_15a

    const-string/jumbo v7, ""

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v13

    if-eqz v13, :cond_54

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_54

    iget-object v1, v13, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_54
    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v1

    if-eqz v1, :cond_f2

    invoke-static {}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->getSingletonService()Lcom/miui/whetstone/server/WhetstoneActivityManagerService;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_ee

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_7a
    const/4 v1, 0x0

    new-array v12, v1, [Ljava/lang/Object;

    const/16 v8, 0x8

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v12}, Lcom/miui/whetstone/server/WhetstoneActivityManagerService;->checkPackageState(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f2

    const-string/jumbo v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission denied by Whetstone, cannot start contentProvider from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_f0

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_c9
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", caller: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_ee
    const/4 v11, 0x0

    goto :goto_7a

    :cond_f0
    const/4 v1, 0x0

    goto :goto_c9

    :cond_f2
    sget-boolean v1, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    if-eqz v1, :cond_15a

    const-string/jumbo v2, "WhetstonePackageState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start contentProvider from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_15c

    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    :goto_137
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", caller: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", UserId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15a
    const/4 v1, 0x1

    return v1

    :cond_15c
    const/4 v1, 0x0

    goto :goto_137
.end method

.method private static checkRunningCompatibility(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method private static checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .registers 31

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    if-eqz p1, :cond_28

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p2, v0

    :goto_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_16
    const-string/jumbo v4, "android.permission.START_ANY_ACTIVITY"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v7, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_20} :catch_d3
    .catchall {:try_start_16 .. :try_end_20} :catchall_e1

    move-result v15

    if-nez v15, :cond_35

    const/4 v4, 0x1

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_28
    if-ltz p2, :cond_2c

    const/4 v7, -0x1

    goto :goto_12

    :cond_2c
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    goto :goto_12

    :cond_35
    move-object/from16 v4, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p3

    move/from16 v8, p2

    move/from16 v9, p7

    :try_start_3f
    invoke-static/range {v4 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->getComponentRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I

    move-result v11

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-static {v0, v4, v1, v7, v2}, Lcom/android/server/am/ExtraActivityManagerService;->getActionRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_50} :catch_d3
    .catchall {:try_start_3f .. :try_end_50} :catchall_e1

    move-result v10

    const/4 v4, 0x1

    if-eq v11, v4, :cond_57

    const/4 v4, 0x1

    if-ne v10, v4, :cond_5c

    :cond_57
    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_5c
    const/4 v4, 0x2

    if-ne v10, v4, :cond_64

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_64
    const/4 v4, 0x2

    if-ne v11, v4, :cond_6c

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_6c
    :try_start_6c
    invoke-static/range {p8 .. p8}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v14

    if-eqz v14, :cond_8b

    invoke-virtual {v14}, Landroid/app/ActivityOptions;->getLaunchTaskId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8b

    const-string/jumbo v4, "android.permission.START_TASKS_FROM_RECENTS"

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v4, v7, v1}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_83} :catch_d3
    .catchall {:try_start_6c .. :try_end_83} :catchall_e1

    move-result v18

    if-eqz v18, :cond_8b

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_8b
    :try_start_8b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    move-object/from16 v0, p4

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v5, p5

    move/from16 v6, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/firewall/IntentFirewall;->checkStartActivity(Landroid/content/Intent;IILjava/lang/String;Landroid/content/pm/ApplicationInfo;)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9c} :catch_d3
    .catchall {:try_start_8b .. :try_end_9c} :catchall_e1

    move-result v4

    if-nez v4, :cond_a4

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_a4
    :try_start_a4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a8} :catch_d3
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_e1

    if-eqz v4, :cond_c6

    :try_start_aa
    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-interface {v4, v0, v5}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_bd} :catch_c5
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_bd} :catch_d3
    .catchall {:try_start_aa .. :try_end_bd} :catchall_e1

    move-result v4

    if-nez v4, :cond_c6

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catch_c5
    move-exception v12

    :cond_c6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const-string/jumbo v4, "checkStartActivityLocked"

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :catch_d3
    move-exception v13

    :try_start_d4
    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "checkStartActivityLocked: An exception occured. "

    invoke-static {v4, v5, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_dc
    .catchall {:try_start_d4 .. :try_end_dc} :catchall_e1

    const/4 v4, 0x0

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_e1
    move-exception v4

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method static checkStartActivityPermission(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZIZIILjava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .registers 30

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_10

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, " Preloading activity inMiuiAiModeStack, skip appLocked. "

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p4

    :cond_10
    if-eqz p3, :cond_8b

    const/4 v2, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    monitor-enter p1

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p2, :cond_2a

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_8c

    move-result-object v2

    if-nez v2, :cond_28

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p4

    :cond_28
    :try_start_28
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    :cond_2a
    move-object/from16 v1, p1

    move/from16 v3, p10

    move-object/from16 v4, p11

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p8

    move-object/from16 v9, p12

    invoke-static/range {v1 .. v9}, Lcom/android/server/am/ExtraActivityManagerService;->checkStartActivityLocked(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result v16

    if-eqz v16, :cond_57

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4, v5}, Lcom/android/server/am/ExtraActivityManagerService;->packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_53
    .catchall {:try_start_28 .. :try_end_53} :catchall_8c

    move-result v1

    if-eqz v1, :cond_57

    const/4 v11, 0x1

    :cond_57
    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v16, :cond_8b

    const-string/jumbo v1, "security"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/security/SecurityManager;

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    move-object/from16 v4, p0

    move-object v5, v14

    move-object/from16 v6, p11

    move-object/from16 v8, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v13, p10

    invoke-virtual/range {v3 .. v13}, Lmiui/security/SecurityManager;->getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_8b

    move-object/from16 p4, v15

    :cond_8b
    return-object p4

    :catchall_8c
    move-exception v1

    monitor-exit p1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private static checkTime(JLjava/lang/String;)V
    .registers 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, p0

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_32

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method static checkWakePath(Lcom/android/server/am/ActivityManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)Z
    .registers 23

    if-eqz p0, :cond_4

    if-nez p3, :cond_6

    :cond_4
    const/4 v10, 0x1

    return v10

    :cond_6
    if-eqz p4, :cond_4

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    invoke-virtual {v4, v0, v1, v2, v3}, Lmiui/security/WakePathChecker;->updatePath(Landroid/content/Intent;Landroid/content/pm/ComponentInfo;II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    const/4 v13, 0x1

    const-string/jumbo v7, ""

    if-eqz p1, :cond_6a

    monitor-enter p0

    :try_start_22
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v10, "checkWakePath: synchronized (ams), get caller package info."

    invoke-static {v14, v15, v10}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    if-eqz v12, :cond_35

    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_33
    .catchall {:try_start_22 .. :try_end_33} :catchall_64

    if-nez v10, :cond_3b

    :cond_35
    const/4 v10, 0x1

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :cond_3b
    :try_start_3b
    iget-object v10, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_64

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :goto_43
    const/4 v9, -0x1

    move-object/from16 v0, p4

    iget-object v8, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v6, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_5c

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_5c
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_77

    const/4 v10, 0x1

    return v10

    :catchall_64
    move-exception v10

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    :cond_6a
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_73

    move-object/from16 v7, p2

    goto :goto_43

    :cond_73
    const-string/jumbo v7, "android"

    goto :goto_43

    :cond_77
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7f

    const/4 v10, 0x1

    return v10

    :cond_7f
    if-ltz v9, :cond_a1

    monitor-enter p0

    :try_start_82
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const-string/jumbo v10, "checkWakePath: synchronized (ams), callee package is running?"

    invoke-static {v14, v15, v10}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    move-object/from16 v0, p4

    iget-object v10, v0, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v8, v10, v9}, Lcom/android/server/am/ExtraActivityManagerService;->packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_94
    .catchall {:try_start_82 .. :try_end_94} :catchall_b2

    move-result v10

    if-eqz v10, :cond_9d

    const/4 v10, 0x1

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v10

    :cond_9d
    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_a1
    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lmiui/security/WakePathChecker;->matchWakePathRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Z

    move-result v10

    xor-int/lit8 v13, v10, 0x1

    const-string/jumbo v10, "checkWakePath"

    invoke-static {v14, v15, v10}, Lcom/android/server/am/ExtraActivityManagerService;->checkTime(JLjava/lang/String;)V

    return v13

    :catchall_b2
    move-exception v10

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10
.end method

.method public static closeCheckPriority()V
    .registers 2

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {v0}, Lcom/android/server/am/ActiveServicesInjector;->closeCheckPriority(Lcom/android/server/am/ActivityManagerService;)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method static destroyActivity(Landroid/content/pm/ActivityInfo;)V
    .registers 1

    return-void
.end method

.method private static ensureDeviceProvisioned(Landroid/content/Context;)V
    .registers 8

    const/4 v6, 0x1

    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_60

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_61

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.provision"

    const-string/jumbo v5, "com.android.provision.activities.DefaultActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    if-eqz v3, :cond_60

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_60

    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "The device provisioned state is inconsistent,try to restore."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "device_provisioned"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_6d

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.android.provision"

    const-string/jumbo v5, "com.android.provision.activities.DefaultActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_60
    :goto_60
    return-void

    :cond_61
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.google.android.setupwizard"

    const-string/jumbo v5, "com.google.android.setupwizard.SetupWizardActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a

    :cond_6d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_60
.end method

.method public static finishActivity(Lcom/android/server/am/ActivityManagerService;Landroid/os/IBinder;ILandroid/content/Intent;)Landroid/os/IBinder;
    .registers 8

    if-nez p1, :cond_3b

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "security"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStackSupervisor;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_37

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lmiui/security/SecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_37

    iget-object p1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3c

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    :cond_37
    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    :cond_3b
    return-object p1

    :catchall_3c
    move-exception v2

    monitor-exit p0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public static finishBooting(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->init(Landroid/content/Context;)V

    new-instance v0, Lmiui/drm/DrmBroadcast;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiui/drm/DrmBroadcast;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiui/drm/DrmBroadcast;->broadcast()V

    return-void
.end method

.method static forceStopUserLocked(ILjava/lang/String;)V
    .registers 2

    return-void
.end method

.method private static getActionRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;II)I
    .registers 13

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-nez p1, :cond_5

    return v6

    :cond_5
    sget-object v4, Lcom/android/server/am/ExtraActivityManagerService;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_10

    return v6

    :cond_10
    :try_start_10
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1b} :catch_25

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    return v6

    :catch_25
    move-exception v0

    return v6

    :cond_27
    invoke-virtual {p0, v3, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v7, :cond_2f

    const/4 v4, 0x1

    return v4

    :cond_2f
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v7, :cond_36

    return v6

    :cond_36
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v4, v1, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_40

    const/4 v4, 0x2

    return v4

    :cond_40
    return v6
.end method

.method private static getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .registers 1

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    :cond_f
    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->sAmInstance:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public static getCachedLostRamKb()J
    .registers 4

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getCachedLostRam()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getComponentRestrictionForCallingPackage(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIZ)I
    .registers 15

    const/4 v8, -0x1

    const/4 v7, 0x0

    if-nez p5, :cond_17

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    if-ne v0, v8, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v0, :cond_1c

    return v7

    :cond_1c
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_25

    return v7

    :cond_25
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    invoke-virtual {v0, v6, p4, p2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_31

    if-nez p5, :cond_31

    const/4 v0, 0x2

    return v0

    :cond_31
    return v7
.end method

.method public static getConnProviderNamesLocked(Ljava/lang/String;I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    monitor-enter v12

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, v12, Lcom/android/server/am/ActivityManagerService;->mProviderMap:Lcom/android/server/am/ProviderMap;

    if-nez v0, :cond_1e

    sget-object v0, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "mProviderMap is null !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_63

    monitor-exit v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v11

    :cond_1e
    :try_start_1e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v12, Lcom/android/server/am/ActivityManagerService;->mProviderMap:Lcom/android/server/am/ProviderMap;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProviderMap;->collectPackageProvidersLocked(Ljava/lang/String;Ljava/util/Set;ZZILjava/util/ArrayList;)Z

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_31
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ContentProviderRecord;

    iget-object v0, v9, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_43
    :goto_43
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    if-eqz v7, :cond_43

    iget-object v0, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_43

    iget-object v0, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_43

    iget-object v0, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_62
    .catchall {:try_start_1e .. :try_end_62} :catchall_63

    goto :goto_43

    :catchall_63
    move-exception v0

    monitor-exit v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :cond_69
    monitor-exit v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v11
.end method

.method public static getCurAdjByPid(I)I
    .registers 5

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_15

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_1a

    monitor-exit v3

    return v2

    :cond_15
    monitor-exit v3

    const v2, 0x7fffffff

    return v2

    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getCurSchedGroupByPid(I)I
    .registers 5

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_15

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    monitor-exit v3

    return v2

    :cond_15
    monitor-exit v3

    const/4 v2, -0x1

    return v2

    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getCurrentUserId()I
    .registers 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_56

    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_56

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: getCurrentUserId() from pid="

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

    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_56
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserIdLocked()I

    move-result v2

    return v2
.end method

.method public static getExtraInstallFlags(I)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->getCurSchedGroupByPid(I)I

    move-result v1

    if-nez v1, :cond_9

    const/high16 v0, -0x80000000

    :cond_9
    return v0
.end method

.method public static getMemoryTrimLevel()I
    .registers 3

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Isolated process not allowed to call getMemoryTrimLevel"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget v1, v0, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_22

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    :catchall_22
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static getPackageNameByPid(I)Ljava/lang/String;
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_8
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_18

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_1a

    monitor-exit v3

    return-object v2

    :cond_18
    monitor-exit v3

    return-object v4

    :catchall_1a
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static getPackageNameForReceiver(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    instance-of v2, p0, Lcom/android/server/am/BroadcastFilter;

    if-eqz v2, :cond_a

    check-cast p0, Lcom/android/server/am/BroadcastFilter;

    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    :cond_9
    :goto_9
    return-object v0

    :cond_a
    instance-of v2, p0, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_9

    move-object v1, p0

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_9

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_9
.end method

.method public static getProcStateByPid(I)I
    .registers 5

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_15

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->curProcState:I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    monitor-exit v3

    return v2

    :cond_15
    monitor-exit v3

    const/4 v2, -0x1

    return v2

    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static getProcessNameByPid(I)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_17

    monitor-exit v3

    if-nez v1, :cond_1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_16
    return-object v2

    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1a
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    goto :goto_16
.end method

.method public static getRenderThreadTidByPid(I)I
    .registers 9

    const/4 v7, 0x0

    const-class v5, Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v6, "renderThreadTid"

    invoke-static {v5, v6}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    if-nez v3, :cond_d

    return v7

    :cond_d
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v6

    :try_start_14
    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v5, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_29

    if-eqz v2, :cond_27

    :try_start_1e
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_24
    .catchall {:try_start_1e .. :try_end_21} :catchall_29

    move-result v4

    monitor-exit v6

    return v4

    :catch_24
    move-exception v1

    monitor-exit v6

    return v7

    :cond_27
    monitor-exit v6

    return v7

    :catchall_29
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static getRunningProcessInfos()Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const-wide/16 v14, 0x0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    const/4 v1, 0x0

    monitor-enter v8

    :try_start_12
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_e3

    move-result v10

    add-int/lit8 v4, v10, -0x1

    move-object v2, v1

    :goto_1e
    if-ltz v4, :cond_85

    :try_start_20
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getSetAdjWithServices()I

    move-result v3

    iget-object v10, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_83

    const/16 v10, 0x1f4

    if-ge v3, v10, :cond_83

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_f3

    :try_start_39
    const-string/jumbo v10, "pid"

    iget v11, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "adj"

    invoke-virtual {v1, v10, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "lastPss"

    iget-wide v12, v6, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v10, "lastPssTime"

    iget-wide v12, v6, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v10, "processName"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v10, "packageUid"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "packageName"

    iget-object v11, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_76
    iget v10, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7f
    .catchall {:try_start_39 .. :try_end_7f} :catchall_e3

    add-int/lit8 v4, v4, -0x1

    move-object v2, v1

    goto :goto_1e

    :cond_83
    move-object v1, v2

    goto :goto_76

    :cond_85
    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    iget-object v11, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v11

    :try_start_8c
    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v0

    const/4 v4, 0x0

    :goto_93
    if-ge v4, v0, :cond_eb

    iget-object v10, v8, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v10, v4}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v9

    iget-wide v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    cmp-long v10, v12, v14

    if-lez v10, :cond_e9

    iget v10, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_f6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
    :try_end_b4
    .catchall {:try_start_8c .. :try_end_b4} :catchall_ed

    :try_start_b4
    const-string/jumbo v10, "pid"

    iget v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "adj"

    const/16 v12, -0x3e8

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v10, "lastPss"

    const-wide/16 v12, -0x1

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v10, "lastPssTime"

    const-wide/16 v12, 0x0

    invoke-virtual {v1, v10, v12, v13}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v10, "processName"

    iget-object v12, v9, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v1, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catchall {:try_start_b4 .. :try_end_df} :catchall_f1

    :goto_df
    add-int/lit8 v4, v4, 0x1

    move-object v2, v1

    goto :goto_93

    :catchall_e3
    move-exception v10

    :goto_e4
    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v10

    :cond_e9
    move-object v1, v2

    goto :goto_df

    :cond_eb
    monitor-exit v11

    return-object v7

    :catchall_ed
    move-exception v10

    move-object v1, v2

    :goto_ef
    monitor-exit v11

    throw v10

    :catchall_f1
    move-exception v10

    goto :goto_ef

    :catchall_f3
    move-exception v10

    move-object v1, v2

    goto :goto_e4

    :cond_f6
    move-object v1, v2

    goto :goto_df
.end method

.method public static getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {p0}, Lcom/android/server/am/ActivityRecord;->isInStackLocked(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_42

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_37

    goto :goto_20

    :catchall_37
    move-exception v5

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    :cond_3d
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    :cond_42
    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v5
.end method

.method public static getTopRunningActivityInfo()Ljava/util/HashMap;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    monitor-enter v3

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_45

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "packageName"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "token"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "userId"

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->userId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "intent"

    iget-object v5, v2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_4a

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    :cond_45
    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v5

    :catchall_4a
    move-exception v4

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method public static handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-static {}, Landroid/content/res/MiuiResources;->isPreloadedCacheEmpty()Z

    move-result v0

    invoke-static {p0, p1}, Landroid/app/MiuiThemeHelper;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method static handleWindowManagerAndUserLru(Landroid/content/Context;IIILcom/android/server/wm/WindowManagerService;[II)V
    .registers 11

    invoke-virtual {p4, p2, p5}, Lcom/android/server/wm/WindowManagerService;->setCurrentUser(I[I)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "second_user_id"

    const/16 v3, -0x2710

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "ActivityManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "privacyUserId :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userIdOrig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " oldUserId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_65

    if-ne v0, p3, :cond_61

    if-nez p1, :cond_61

    :cond_57
    const-string/jumbo v1, "ActivityManagerService"

    const-string/jumbo v2, "switch without lock"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    return-void

    :cond_61
    if-nez p3, :cond_65

    if-eq p1, v0, :cond_57

    :cond_65
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    goto :goto_60
.end method

.method public static hasForegroundActivities(I)Z
    .registers 5

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    :try_start_7
    iget-object v2, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_15

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_18

    monitor-exit v3

    return v2

    :cond_15
    monitor-exit v3

    const/4 v2, 0x0

    return v2

    :catchall_18
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static hookStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    invoke-static {p0, p1}, Lcom/miui/hybrid/hook/HookClient;->redirectStartActivity(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .registers 4

    const/4 v3, -0x1

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "sdcard"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v1, 0x1ff

    invoke-static {v0, v1, v3, v3}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    invoke-static {}, Lmiui/content/res/IconCustomizer;->checkModIconsTimestamp()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    return-void
.end method

.method static isAllowedStartActivity(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStackSupervisor;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/pm/ActivityInfo;)Z
    .registers 18

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/16 v10, 0x3e8

    if-eq v9, v10, :cond_10

    invoke-virtual {p2}, Landroid/content/Intent;->getMiuiFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_1a

    :cond_10
    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    const/4 v9, 0x1

    return v9

    :cond_1a
    invoke-static {p3}, Lcom/android/server/am/PendingIntentRecordInjector;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/server/am/PendingIntentRecordInjector;->containsPendingIntent(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    sget v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    move/from16 v0, p4

    if-eq v0, v9, :cond_10

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStackSupervisor;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v8

    if-nez v8, :cond_3a

    const/4 v9, 0x1

    return v9

    :cond_3a
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v9

    if-eqz v9, :cond_81

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v10, 0x2724

    move/from16 v0, p4

    invoke-virtual {v9, v10, v0, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_81

    sget-object v9, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MIUILOG- Permission Denied Activity KeyguardLocked: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_81
    invoke-virtual {v8}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    if-nez v7, :cond_89

    const/4 v9, 0x1

    return v9

    :cond_89
    iget-object v9, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v0, p4

    if-ne v0, v9, :cond_9d

    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    const/4 v9, 0x1

    return v9

    :cond_9d
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    const/16 v10, 0x2725

    move/from16 v0, p4

    invoke-virtual {v9, v10, v0, p3}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_14c

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_b4
    if-ge v6, v2, :cond_108

    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v5, 0x0

    :goto_c7
    if-ge v5, v1, :cond_105

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v9, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v0, p4

    if-ne v9, v0, :cond_102

    iget-boolean v9, v3, Lcom/android/server/am/ProcessRecord;->foregroundActivities:Z

    if-nez v9, :cond_f8

    iget v9, v3, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v10, 0x64

    if-ne v9, v10, :cond_102

    const-string/jumbo v9, "visible"

    iget-object v10, v3, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_102

    iget-object v9, v3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_102

    iget v9, v7, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move/from16 v0, p4

    if-ne v0, v9, :cond_102

    :cond_f8
    move-object/from16 v0, p5

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    sput v9, Lcom/android/server/am/ExtraActivityManagerService;->mLastStartActivityUid:I

    const/4 v9, 0x1

    return v9

    :cond_102
    add-int/lit8 v5, v5, 0x1

    goto :goto_c7

    :cond_105
    add-int/lit8 v6, v6, 0x1

    goto :goto_b4

    :cond_108
    sget-object v9, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "MIUILOG- Permission Denied Activity : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " pkg : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " tuid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return v9

    :cond_14c
    const/4 v9, 0x1

    return v9
.end method

.method private static isDeviceProvisioned(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method static isUserSwitchable(I)Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public static killUnusedApp(II)V
    .registers 9

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    monitor-enter v2

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_10
    if-ltz v1, :cond_bb

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_1f

    :cond_1c
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    :cond_1f
    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, p0, :cond_1c

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, p1, :cond_1c

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_1c

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v4, :cond_1c

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1c

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const-string/jumbo v4, "PerfShielderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "check  package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " tempAdj : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xc8

    if-le v3, v4, :cond_bb

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_bb

    const-string/jumbo v4, "PerfShielderService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "kill app : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  uid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pid : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "User unused app kill it !!"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_bb
    .catchall {:try_start_5 .. :try_end_bb} :catchall_c0

    :cond_bb
    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_c0
    move-exception v4

    monitor-exit v2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method

.method static onSystemReady(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/ExtraActivityManagerService;->mSystemReady:Z

    const-string/jumbo v1, "perfshielder"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IPerfShielder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    :try_start_10
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    check-cast v1, Lcom/miui/server/PerfShielderService;

    invoke-virtual {v1}, Lcom/miui/server/PerfShielderService;->systemReady()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_27

    :goto_17
    :try_start_17
    invoke-static {p0}, Lcom/android/server/am/ExtraActivityManagerService;->ensureDeviceProvisioned(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_2c

    :goto_1a
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ExtraActivityManagerService$2;

    invoke-direct {v2}, Lcom/android/server/am/ExtraActivityManagerService$2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    :catch_2c
    move-exception v0

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ensureDeviceProvisioned occurs Exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method private static packageIsRunningLocked(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    if-nez p2, :cond_d

    :cond_c
    return v3

    :cond_d
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    if-eqz p3, :cond_c

    invoke-virtual {p0, p2, p3, v4}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    if-eqz v2, :cond_1c

    return v4

    :cond_1c
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_24
    if-ltz v1, :cond_4e

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    if-nez v0, :cond_33

    :cond_30
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    :cond_33
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, p3, :cond_30

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_30

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v2, :cond_30

    iget-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_30

    iget-object v2, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    return v4

    :cond_4e
    return v3
.end method

.method public static removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 4

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {v0, p0, p1}, Lcom/android/server/am/ActiveServicesInjector;->removeServicePriority(Lcom/android/server/am/ActivityManagerService;Lcom/android/internal/app/MiuiServicePriority;Z)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static removeTaskByIdLocked(IZZ)Z
    .registers 11

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    :try_start_5
    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_38

    sget-object v2, Lcom/android/server/am/ExtraActivityManagerService;->sRemoveTaskByIdLocked:Ljava/lang/reflect/Method;

    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_34

    move-result v2

    return v2

    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_38
    return v7
.end method

.method static varargs reportActivityLaunchTime([Ljava/lang/Object;)V
    .registers 2

    const/16 v0, 0x7588

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method static reportAnr(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lmiui/mqsas/sdk/event/AnrEvent;)V
    .registers 12

    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->getBgAnr()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    :cond_13
    const-wide/16 v4, 0x0

    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isInputAnr()Z

    move-result v1

    if-eqz v1, :cond_27

    const-wide v4, 0x1dcd65000L

    :cond_20
    :goto_20
    const-wide/16 v2, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_55

    return-void

    :cond_27
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isBroadcastAnr()Z

    move-result v1

    if-eqz v1, :cond_33

    const-wide v4, 0x2540be400L

    goto :goto_20

    :cond_33
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isServiceAnr()Z

    move-result v1

    if-eqz v1, :cond_49

    iget-boolean v1, p0, Lcom/android/server/am/ProcessRecord;->execServicesFg:Z

    if-eqz v1, :cond_43

    const-wide v4, 0x4a817c800L

    goto :goto_20

    :cond_43
    const-wide v4, 0x2e90edd000L

    goto :goto_20

    :cond_49
    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->isProviderAnr()Z

    move-result v1

    if-eqz v1, :cond_20

    const-wide v4, 0x4a817c800L

    goto :goto_20

    :cond_55
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_6c

    :try_start_59
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez p1, :cond_6d

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Lmiui/mqsas/sdk/event/AnrEvent;->getCpuInfo()Ljava/lang/String;

    move-result-object v8

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IPerfShielder;->reportAnr(ILjava/lang/String;JJLjava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_6f} :catch_70

    goto :goto_61

    :catch_70
    move-exception v0

    goto :goto_6c
.end method

.method static requestSplashScreen(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Landroid/content/Intent;
    .registers 2

    return-object p0
.end method

.method static resolveCheckIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 12

    const/4 v2, 0x0

    if-eqz p1, :cond_62

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_62

    const/4 v6, 0x0

    const-string/jumbo v0, "miui.intent.action.CHECK_ACCESS_CONTROL"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string/jumbo v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string/jumbo v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string/jumbo v0, "android.app.action.CHECK_ALLOW_START_ACTIVITY_PAD"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string/jumbo v0, "com.miui.gamebooster.action.ACCESS_WINDOWCALLACTIVITY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    invoke-static {p1}, Lcom/miui/server/AppRunningControlService;->isBlockActivity(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_57

    :cond_51
    const/16 v0, 0x3e7

    if-ne p4, v0, :cond_56

    const/4 p4, 0x0

    :cond_56
    const/4 v6, 0x1

    :cond_57
    if-eqz v6, :cond_62

    const/4 v3, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    :cond_62
    return-object p0
.end method

.method static resolveSplashIntent(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Lcom/android/server/am/ActivityStackSupervisor;Landroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;
    .registers 5

    return-object p0
.end method

.method public static scheduleDestroyActivities(IZLjava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_7
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_50

    if-eqz v2, :cond_29

    :try_start_11
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_2b

    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyAllActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_4b
    .catchall {:try_start_11 .. :try_end_29} :catchall_50

    :cond_29
    :goto_29
    monitor-exit v4

    return-void

    :cond_2b
    :try_start_2b
    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_29

    sget-object v3, Lcom/android/server/am/ExtraActivityManagerService;->sScheduleDestroyActivities:Ljava/lang/reflect/Method;

    sget-object v5, Lcom/android/server/am/ExtraActivityManagerService;->sMainStack:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    aput-object p2, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_4a} :catch_4b
    .catchall {:try_start_2b .. :try_end_4a} :catchall_50

    goto :goto_29

    :catch_4b
    move-exception v1

    :try_start_4c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_29

    :catchall_50
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static scheduleTrimMemory(II)V
    .registers 7

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_7
    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_1a

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_21

    if-eqz v3, :cond_1a

    :try_start_15
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleTrimMemory(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1c
    .catchall {:try_start_15 .. :try_end_1a} :catchall_21

    :cond_1a
    :goto_1a
    monitor-exit v4

    return-void

    :catch_1c
    move-exception v1

    :try_start_1d
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_1a

    :catchall_21
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static setForkedProcessGroup(IIILjava/lang/String;)V
    .registers 6

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_9

    :try_start_4
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/android/internal/app/IPerfShielder;->setForkedProcessGroup(IIILjava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method static setSchedFgPid(I)V
    .registers 3

    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_9

    :try_start_4
    sget-object v1, Lcom/android/server/am/ExtraActivityManagerService;->mPerfService:Lcom/android/internal/app/IPerfShielder;

    invoke-interface {v1, p0}, Lcom/android/internal/app/IPerfShielder;->setSchedFgPid(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public static setServicePriority(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {v0, p0}, Lcom/android/server/am/ActiveServicesInjector;->setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public static setServicePriority(Ljava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getActivityManagerService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/am/ActiveServicesInjector;->setServicePriority(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;J)V
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_10

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
