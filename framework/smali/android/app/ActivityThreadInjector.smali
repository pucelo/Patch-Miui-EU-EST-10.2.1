.class public Landroid/app/ActivityThreadInjector;
.super Ljava/lang/Object;
.source "ActivityThreadInjector.java"


# static fields
.field private static final AM_LIFECYCLE_SAMPLE_THRESHOLD:I

.field private static final LOG_AM_LIFECYCLE_SAMPLE:I = 0x7594

.field private static final mEnableLifecycleSample:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.handler.threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    sget v1, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    if-lez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    sput-boolean v0, Landroid/app/ActivityThreadInjector;->mEnableLifecycleSample:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bindApplicationInjector(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    return-void
.end method

.method static checkHandleMessageTime(JI)V
    .registers 9

    sget-boolean v2, Landroid/app/ActivityThreadInjector;->mEnableLifecycleSample:Z

    if-nez v2, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p0

    sget v2, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3a

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const/16 v3, 0x7594

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_3a
    return-void
.end method

.method static checkHandleMessageTime(JLandroid/os/Message;)V
    .registers 5

    if-eqz p2, :cond_8

    iget v0, p2, Landroid/os/Message;->what:I

    :goto_4
    invoke-static {p0, p1, v0}, Landroid/app/ActivityThreadInjector;->checkHandleMessageTime(JI)V

    return-void

    :cond_8
    const/4 v0, -0x1

    goto :goto_4
.end method

.method static clearCachedDrawables()V
    .registers 0

    return-void
.end method

.method static enableAppLogSwitch()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    return-void
.end method

.method public static enableStrictMode()V
    .registers 5

    sget-boolean v3, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v3, :cond_5

    return-void

    :cond_5
    const-string/jumbo v3, "persist.sys.strictmode.visual"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    if-eqz v0, :cond_37

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_37
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-nez v0, :cond_8

    :goto_7
    return-object v1

    :cond_8
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    goto :goto_7
.end method

.method public static isPersistent(Landroid/app/ActivityThread$AppBindData;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    iget-object v1, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isSystemThread()Z
    .registers 2

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-boolean v1, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method static preloadSubActivity(Landroid/app/ActivityThread;ILandroid/app/LoadedApk;)V
    .registers 3

    return-void
.end method

.method static raiseThreadPriority()V
    .registers 0

    return-void
.end method

.method static updatePackageInfoForLogSwitch(Landroid/app/ActivityThread$AppBindData;)V
    .registers 2

    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updatePackageName(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName(Ljava/lang/String;)V

    return-void
.end method
