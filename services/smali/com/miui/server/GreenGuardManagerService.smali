.class public Lcom/miui/server/GreenGuardManagerService;
.super Ljava/lang/Object;
.source "GreenGuardManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;
    }
.end annotation


# static fields
.field public static final GREEN_KID_AGENT_PKG_NAME:Ljava/lang/String; = "com.miui.greenguard"

.field public static final GREEN_KID_SERVICE:Ljava/lang/String; = "com.miui.greenguard.service.GreenKidService"

.field private static final TAG:Ljava/lang/String; = "GreenKidManagerService"

.field private static TIME_DELAY:J

.field private static mGreenGuardServiceConnection:Landroid/content/ServiceConnection;

.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()J
    .registers 2

    sget-wide v0, Lcom/miui/server/GreenGuardManagerService;->TIME_DELAY:J

    return-wide v0
.end method

.method static synthetic -get1()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/miui/server/GreenGuardManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcessInner(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/miui/server/GreenGuardManagerService;->TIME_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static disableAgentProcess(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_4
    const-string/jumbo v2, "com.miui.greenguard"

    const/16 v3, 0x2000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_20

    const-string/jumbo v2, "com.miui.greenguard"

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    const-string/jumbo v2, "GreenKidManagerService"

    const-string/jumbo v3, "Disable GreenGuard agent : [ com.miui.greenguard] ."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_21

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    const-string/jumbo v2, "GreenKidManagerService"

    const-string/jumbo v3, "Disable greenGuard agent : [ com.miui.greenguard] failed , package not install"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_20
.end method

.method public static init(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->isGreenKidActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->isGreenKidNeedWipe(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->disableAgentProcess(Landroid/content/Context;)V

    :cond_11
    return-void
.end method

.method private static isGreenKidActive(Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isGreenKidActive(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method private static isGreenKidNeedWipe(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_url_green_guard_sdk_need_clear_data"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_10

    :goto_f
    return v0

    :cond_10
    move v0, v1

    goto :goto_f
.end method

.method public static startWatchGreenguardProcess(Landroid/content/Context;)V
    .registers 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_5a

    const-string/jumbo v4, "com.miui.greenguard"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission Denial from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "callingPkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_46

    const-string/jumbo v0, ""

    :cond_46
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "GreenKidManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/SecurityException;

    invoke-direct {v4, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5a
    invoke-static {p0}, Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcessInner(Landroid/content/Context;)V

    return-void
.end method

.method private static declared-synchronized startWatchGreenguardProcessInner(Landroid/content/Context;)V
    .registers 7

    const-class v3, Lcom/miui/server/GreenGuardManagerService;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/miui/server/GreenGuardManagerService;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_26

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v2, "GreenKidManagerService"

    const/16 v4, 0xa

    invoke-direct {v0, v2, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/miui/server/GreenGuardManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;

    invoke-direct {v2, p0}, Lcom/miui/server/GreenGuardManagerService$GreenguardServiceConn;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miui/server/GreenGuardManagerService;->mGreenGuardServiceConnection:Landroid/content/ServiceConnection;

    :cond_26
    const-string/jumbo v2, "GreenKidManagerService"

    const-string/jumbo v4, "startWatchGreenguardProcess"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.miui.greenguard"

    const-string/jumbo v5, "com.miui.greenguard.service.GreenKidService"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v2, Lcom/miui/server/GreenGuardManagerService;->mGreenGuardServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_4a

    monitor-exit v3

    return-void

    :catchall_4a
    move-exception v2

    monitor-exit v3

    throw v2
.end method
