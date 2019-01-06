.class public final Lcom/miui/server/PerfShielderService;
.super Lcom/android/internal/app/IPerfShielder$Stub;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/PerfShielderService$1;,
        Lcom/miui/server/PerfShielderService$2;,
        Lcom/miui/server/PerfShielderService$3;,
        Lcom/miui/server/PerfShielderService$BindServiceHandler;,
        Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;,
        Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;,
        Lcom/miui/server/PerfShielderService$PidSwapGetter;
    }
.end annotation


# static fields
.field private static final ACTIVITY_BATCH_MAX_INTERVAL:J = 0xea60L

.field private static final ACTIVITY_BATCH_MAX_SIZE:I = 0xa

.field private static final BIND_FAIL_RETRY_TIME:J = 0xea60L

.field private static final BIND_RETRY_TIME_BASE:J = 0xea60L

.field private static final BIND_RETRY_TIME_MAX:J = 0x36ee80L

.field private static final BIND_SYSOPT_SERVICE_FIRST:J = 0x5dcL

.field private static final DEBUG:Z = true

.field private static final DELAY_TIME:J = 0x493e0L

.field private static final LAUNCH_TYPE_DEFAULT:I = 0x0

.field private static final LAUNCH_TYPE_FROM_HOME:I = 0x1

.field private static final MIUI_SYS_USER_CLASS:Ljava/lang/String; = "com.miui.daemon.performance.SysoptService"

.field private static final MIUI_SYS_USER_PACKAHE:Ljava/lang/String; = "com.miui.daemon"

.field static final MSG_BIND_MIUI_SYS_USER:I = 0x2

.field static final MSG_REBIND:I = 0x1

.field private static final NATIVE_ADJ:I

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.daemon.performance.MiuiPerfService"

.field private static final PERFORMANCE_PACKAGE:Ljava/lang/String; = "com.miui.daemon"

.field private static final PROCESSGROUP_CGROUP_PATH:Ljava/lang/String; = "/acct"

.field private static final PROCESSGROUP_CGROUP_PROCS_FILE:Ljava/lang/String; = "/cgroup.procs"

.field private static final PROCESSGROUP_PID_PREFIX:Ljava/lang/String; = "pid_"

.field private static final PROCESSGROUP_UID_PREFIX:Ljava/lang/String; = "uid_"

.field private static final SELF_CAUSE_ANR:I = 0x7

.field private static final SELF_CAUSE_NAMES:[Ljava/lang/String;

.field public static final SERVICE_NAME:Ljava/lang/String; = "perfshielder"

.field public static final TAG:Ljava/lang/String; = "PerfShielderService"

.field private static WINDOW_NAME_REX:Ljava/util/regex/Pattern;

.field private static WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mLastRetryTime:J


# instance fields
.field private mContext:Landroid/content/Context;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

.field private mLaunchTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

.field mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private final mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerfEventSocketFdLock:Ljava/lang/Object;

.field protected mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

.field private final mPerformanceConnection:Landroid/content/ServiceConnection;

.field private mReflectGetPssMethod:Ljava/lang/reflect/Method;

.field private mWMServiceConnection:Lcom/miui/server/WMServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$BindServiceHandler;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    return-object v0
.end method

.method static synthetic -get2()J
    .registers 2

    sget-wide v0, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    return-object v0
.end method

.method static synthetic -get4(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/miui/server/PerfShielderService;I)[J
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/miui/server/PerfShielderService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindMiuiSysUser()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/PerfShielderService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindService()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/miui/server/PerfShielderService;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/miui/server/PerfShielderService;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    const-string/jumbo v0, "(\\w+\\.)+(\\w+)\\/\\.?(\\w+\\.)*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_REX:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "Keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "StatusBar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "InputMethod"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "Volume Control"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "GestureStubBottom"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "GestureStub"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "GestureAnywhereView"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    const-string/jumbo v1, "NavigationBar"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_9e

    const/16 v0, -0x11

    sput v0, Lcom/miui/server/PerfShielderService;->NATIVE_ADJ:I

    :goto_67
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "Slow main thread"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slow handle input"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slow handle animation"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slow handle traversal"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slow bitmap uploads"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slow issue draw commands"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Slow swap buffers"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "ANR"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    return-void

    :cond_9e
    const/16 v0, -0x3e8

    sput v0, Lcom/miui/server/PerfShielderService;->NATIVE_ADJ:I

    goto :goto_67
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/internal/app/IPerfShielder$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFdLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    new-instance v0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    new-instance v0, Lcom/miui/server/PerfShielderService$1;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$1;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/miui/server/PerfShielderService$2;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$2;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

    new-instance v0, Lcom/miui/server/PerfShielderService$3;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$3;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-static {}, Lcom/android/server/MiuiBgThread;->get()Lcom/android/server/MiuiBgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/MiuiBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$BindServiceHandler;-><init>(Lcom/miui/server/PerfShielderService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reflectDebugGetPssMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    new-instance v0, Lcom/miui/server/WMServiceConnection;

    invoke-direct {v0, p1}, Lcom/miui/server/WMServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mWMServiceConnection:Lcom/miui/server/WMServiceConnection;

    return-void
.end method

.method private bindMiuiSysUser()V
    .registers 8

    const-wide/32 v2, 0x36ee80

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    invoke-static {v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->-get0(Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_55

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.daemon"

    const-string/jumbo v4, "com.miui.daemon.performance.SysoptService"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v4, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_5a

    sget-wide v4, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    invoke-direct {p0, v4, v5}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    sget-wide v4, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_56

    :goto_37
    sput-wide v2, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    const-string/jumbo v1, "PerfShielderService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MiuiSysUser: can\'t bind to com.miui.daemon.performance.SysoptService, retry time == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v4, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_55
    :goto_55
    return-void

    :cond_56
    sget-wide v2, Lcom/miui/server/PerfShielderService;->mLastRetryTime:J

    shl-long/2addr v2, v6

    goto :goto_37

    :cond_5a
    const-string/jumbo v1, "PerfShielderService"

    const-string/jumbo v2, "MiuiSysUser service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55
.end method

.method private bindService()V
    .registers 6

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v1, :cond_32

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.miui.daemon"

    const-string/jumbo v2, "com.miui.daemon.performance.MiuiPerfService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string/jumbo v1, "PerfShielderService"

    const-string/jumbo v2, "Miui performance: can\'t bind to com.miui.daemon.performance.MiuiPerfService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0xea60

    invoke-direct {p0, v2, v3}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    const-string/jumbo v1, "PerfShielderService"

    const-string/jumbo v2, "Miui performance service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32
.end method

.method private checkSystemPermission(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_38

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not match caller of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    return-void
.end method

.method private convertUidPidToPath(II)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "/acct"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "uid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "pid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/cgroup.procs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    return-void

    :cond_d
    :try_start_d
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_4c
    .catchall {:try_start_d .. :try_end_17} :catchall_3d

    :goto_17
    :try_start_17
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2c

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21
    .catchall {:try_start_17 .. :try_end_20} :catchall_49

    goto :goto_17

    :catch_21
    move-exception v1

    move-object v4, v5

    :goto_23
    :try_start_23
    invoke-virtual {v1, p1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_3d

    if-eqz v4, :cond_2b

    :try_start_28
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_38

    :cond_2b
    :goto_2b
    return-void

    :cond_2c
    if-eqz v5, :cond_31

    :try_start_2e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_33

    :cond_31
    :goto_31
    move-object v4, v5

    goto :goto_2b

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_31

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2b

    :catchall_3d
    move-exception v6

    :goto_3e
    if-eqz v4, :cond_43

    :try_start_40
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    throw v6

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    :catchall_49
    move-exception v6

    move-object v4, v5

    goto :goto_3e

    :catch_4c
    move-exception v1

    goto :goto_23
.end method

.method private getProcessPss(I)J
    .registers 10

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_7

    const-wide/16 v4, 0x0

    return-wide v4

    :cond_7
    const-wide/16 v2, 0x0

    :try_start_9
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_2f

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_2e
    return-wide v2

    :cond_2f
    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_49} :catch_4b
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_49} :catch_50

    move-result-wide v2

    goto :goto_2e

    :catch_4b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e

    :catch_50
    move-exception v1

    goto :goto_2e
.end method

.method private getProcessStatusValues(I)[J
    .registers 11

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v2, "VmSwap:"

    aput-object v2, v0, v3

    const-string/jumbo v2, "PPid:"

    aput-object v2, v0, v6

    const-string/jumbo v2, "VmRSS:"

    aput-object v2, v0, v7

    new-array v1, v8, [J

    aput-wide v4, v1, v3

    aput-wide v4, v1, v6

    aput-wide v4, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    return-object v1
.end method

.method private needToLimit(ILjava/lang/String;)Z
    .registers 12

    const/4 v3, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/proc/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/cmdline"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_1d
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2c} :catch_46
    .catchall {:try_start_1d .. :try_end_2c} :catchall_55

    const/4 v4, 0x0

    :try_start_2d
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3a

    invoke-virtual {v4, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_36} :catch_64
    .catchall {:try_start_2d .. :try_end_36} :catchall_61

    move-result v7

    if-eqz v7, :cond_3a

    const/4 v3, 0x1

    :cond_3a
    if-eqz v6, :cond_3f

    :try_start_3c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_41

    :cond_3f
    :goto_3f
    move-object v5, v6

    :cond_40
    :goto_40
    return v3

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    :catch_46
    move-exception v1

    :goto_47
    :try_start_47
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_55

    if-eqz v5, :cond_40

    :try_start_4c
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_40

    :catch_50
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40

    :catchall_55
    move-exception v7

    :goto_56
    if-eqz v5, :cond_5b

    :try_start_58
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5b} :catch_5c

    :cond_5b
    :goto_5b
    throw v7

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5b

    :catchall_61
    move-exception v7

    move-object v5, v6

    goto :goto_56

    :catch_64
    move-exception v1

    move-object v5, v6

    goto :goto_47
.end method

.method private obtainPerfEventSocketFd()V
    .registers 6

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    if-eqz v2, :cond_21

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFdLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_f
    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_27

    move-result-object v3

    if-nez v3, :cond_20

    :try_start_17
    invoke-interface {v2}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_20} :catch_22
    .catchall {:try_start_17 .. :try_end_20} :catchall_27

    :cond_20
    :goto_20
    monitor-exit v4

    :cond_21
    return-void

    :catch_22
    move-exception v0

    :try_start_23
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_20

    :catchall_27
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private reflectDebugGetPssMethod()Ljava/lang/reflect/Method;
    .registers 9

    const/4 v2, 0x0

    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_23

    const-class v3, Landroid/os/Debug;

    const-string/jumbo v4, "getPss"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, [J

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, [J

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    :goto_22
    return-object v2

    :cond_23
    const-class v3, Landroid/os/Debug;

    const-string/jumbo v4, "getPss"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-class v6, [J

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_38} :catch_3f

    move-result-object v2

    goto :goto_22

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    :catch_3f
    move-exception v1

    goto :goto_22
.end method

.method private reportActivityLaunchRecords()V
    .registers 11

    :try_start_0
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v6, :cond_82

    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_82

    new-instance v5, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_18
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_7d

    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LaunchTimeRecord;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "PackageName"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "PackageVersion"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "Activity"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getActivity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "LaunchStartTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v6, "LaunchEndTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v6, "Type"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getType()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "IsColdStart"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->isColdStart()Z

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_7d
    iget-object v6, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v6, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->reportActivityLaunchRecords(Ljava/util/List;)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_82} :catch_83

    :cond_82
    :goto_82
    return-void

    :catch_83
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_82
.end method

.method private sendBindMiuiSysUserMsg(J)V
    .registers 6

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private sendRebindServiceMsg(J)V
    .registers 6

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-nez v1, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p4

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v6, v1, :cond_2b

    invoke-static {}, Landroid/os/statistics/PerfEvent;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v8

    :goto_1d
    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move v7, p3

    invoke-interface/range {v1 .. v9}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1d
.end method

.method public abortSpecificScenario(Landroid/os/Bundle;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v8, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v8, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p3

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne v4, v0, :cond_2a

    invoke-static {}, Landroid/os/statistics/PerfEvent;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v6

    :goto_1d
    invoke-static {v4}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object v1, p1

    move-wide v2, p3

    move v5, p2

    invoke-interface/range {v0 .. v7}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->abortSpecificScenario(Landroid/os/Bundle;JIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2a
    invoke-static {v4}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1d
.end method

.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V
    .registers 24

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v1, Lcom/android/internal/app/LaunchTimeRecord;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JJZ)V

    if-eqz p7, :cond_53

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v1, v0}, Lcom/android/internal/app/LaunchTimeRecord;->setType(I)V

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LaunchTimeRecord;

    invoke-virtual {v0}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v12

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LaunchTimeRecord;

    invoke-virtual {v0}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v10

    if-nez p7, :cond_4a

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_55

    :cond_4a
    :goto_4a
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reportActivityLaunchRecords()V

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_52
    return-void

    :cond_53
    const/4 v0, 0x0

    goto :goto_15

    :cond_55
    cmp-long v0, v10, v12

    if-ltz v0, :cond_4a

    sub-long v2, v10, v12

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_52

    goto :goto_4a
.end method

.method public addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "CallingPkgHook"

    const-string/jumbo v1, "Check permission failed when addCallingPkgHookRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_13
    invoke-static {}, Lcom/miui/hybrid/hook/CallingPkgHook;->getInstance()Lcom/miui/hybrid/hook/CallingPkgHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/hybrid/hook/CallingPkgHook;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public addTimeConsumingIntent([Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "addTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addTimeConsumingIntent([Ljava/lang/String;)V

    return-void
.end method

.method public beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v0, :cond_6

    const/4 v1, 0x0

    return-object v1

    :cond_6
    const-wide/16 v2, 0x0

    cmp-long v1, p6, v2

    if-nez v1, :cond_10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p6

    :cond_10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v8, v1, :cond_36

    invoke-static {}, Landroid/os/statistics/PerfEvent;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v10

    :goto_1e
    invoke-static {v8}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p6

    move/from16 v9, p5

    move/from16 v12, p8

    invoke-interface/range {v1 .. v12}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    :cond_36
    invoke-static {v8}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_1e
.end method

.method public clearTimeConsumingIntent()V
    .registers 2

    const-string/jumbo v0, "clearTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->clearTimeConsumingIntent()V

    return-void
.end method

.method public closeCheckPriority()V
    .registers 2

    const-string/jumbo v0, "closeCheckPriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->closeCheckPriority()V

    return-void
.end method

.method public deletePackageInfo(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "PkgInfoHook"

    const-string/jumbo v2, "Check permission failed when delete PackageInfo."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_13
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/hybrid/hook/PkgInfoHook;->delete(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method public deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string/jumbo v1, "IntentHook"

    const-string/jumbo v2, "Check permission failed when delete RedirectRule."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_13
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/hybrid/hook/IntentHook;->delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Permission Denial: can\'t dump perfshielder from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " due to missing android.permission.DUMP permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "PerfShielderService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_43
    const-string/jumbo v1, "---- ION Memory Usage ----"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "/d/ion/heaps/system"

    invoke-direct {p0, p2, v1}, Lcom/miui/server/PerfShielderService;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string/jumbo v1, "/d/ion/ion_mm_heap"

    invoke-direct {p0, p2, v1}, Lcom/miui/server/PerfShielderService;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string/jumbo v1, "---- End of ION Memory Usage ----\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "---- minfree & adj ----"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "minfree: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-direct {p0, p2, v1}, Lcom/miui/server/PerfShielderService;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string/jumbo v1, "    adj: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-direct {p0, p2, v1}, Lcom/miui/server/PerfShielderService;->dumpFromFile(Ljava/io/PrintWriter;Ljava/lang/String;)V

    const-string/jumbo v1, "---- End of minfree & adj ----\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v10, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v10, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-nez v0, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p5

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-ne v6, v0, :cond_2d

    invoke-static {}, Landroid/os/statistics/PerfEvent;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v8

    :goto_1d
    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide/from16 v4, p5

    move v7, p4

    invoke-interface/range {v0 .. v9}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2d
    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1d
.end method

.method public finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-nez v1, :cond_f

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p4

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v6, v1, :cond_2b

    invoke-static {}, Landroid/os/statistics/PerfEvent;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v8

    :goto_1d
    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p4

    move v7, p3

    invoke-interface/range {v1 .. v9}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2b
    invoke-static {v6}, Lcom/android/server/am/ExtraActivityManagerService;->getProcessNameByPid(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1d
.end method

.method public getAllRunningProcessMemInfos()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getRunningProcessInfos()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$PidSwapGetter;)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v7, "pid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    const-string/jumbo v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    const-string/jumbo v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_15

    :cond_5d
    return-object v5
.end method

.method public getFreeMemory()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getFreeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMemoryTrimLevel()I
    .registers 2

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getMemoryTrimLevel()I

    move-result v0

    return v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, "getPackageNameByPid"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-nez v4, :cond_2a

    :cond_11
    :goto_11
    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_16
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->obtainPerfEventSocketFd()V

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_29

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-nez v4, :cond_41

    :cond_29
    return-object v6

    :cond_2a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_11

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v4, v5, :cond_16

    goto :goto_11

    :cond_41
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_29

    :try_start_4d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_52

    move-result-object v3

    return-object v3

    :catch_52
    move-exception v1

    :try_start_53
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_6f

    :goto_56
    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v2, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->obtainPerfEventSocketFd()V

    iget-object v4, p0, Lcom/miui/server/PerfShielderService;->mPerfEventSocketFd:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    if-nez v4, :cond_71

    :cond_6e
    return-object v6

    :catch_6f
    move-exception v0

    goto :goto_56

    :cond_71
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->valid()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_6e

    :try_start_7d
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_80} :catch_82

    move-result-object v3

    return-object v3

    :catch_82
    move-exception v1

    return-object v6
.end method

.method public insertPackageInfo(Landroid/content/pm/PackageInfo;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "PkgInfoHook"

    const-string/jumbo v1, "Check permission failed when insert PackageInfo."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_13
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/hook/PkgInfoHook;->insert(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0
.end method

.method public insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "IntentHook"

    const-string/jumbo v1, "Check permission failed when insert RedirectRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_13
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/hybrid/hook/IntentHook;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public killUnusedApp(II)V
    .registers 4

    const-string/jumbo v0, "killUnusedApp"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->killUnusedApp(II)V

    return-void
.end method

.method public markPerceptibleJank(Landroid/os/Bundle;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->markPerceptibleJank(Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9
.end method

.method public removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "CallingPkgHook"

    const-string/jumbo v1, "Check permission failed when removeCallingPkgHookRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_13
    invoke-static {}, Lcom/miui/hybrid/hook/CallingPkgHook;->getInstance()Lcom/miui/hybrid/hook/CallingPkgHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/miui/hybrid/hook/CallingPkgHook;->remove(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .registers 4

    const-string/jumbo v0, "removeServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    if-nez v0, :cond_d

    :cond_c
    return-void

    :cond_d
    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    return-void
.end method

.method public removeTimeConsumingIntent([Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v0, "removeTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_b

    array-length v0, p1

    if-nez v0, :cond_c

    :cond_b
    return-void

    :cond_c
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->removeTimeConsumingIntent([Ljava/lang/String;)V

    return-void
.end method

.method public reportAnr(ILjava/lang/String;JJLjava/lang/String;)V
    .registers 23

    const-wide/16 v11, 0x0

    const/4 v2, -0x1

    const/4 v10, 0x7

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/miui/server/PerfShielderService;->reportPerceptibleJank(IILjava/lang/String;JJJIJLjava/lang/String;)V

    return-void
.end method

.method public reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :cond_f
    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJIJ)V
    .registers 27

    const-string/jumbo v13, ""

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-wide/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Lcom/miui/server/PerfShielderService;->reportPerceptibleJank(IILjava/lang/String;JJJIJLjava/lang/String;)V

    return-void
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJIJLjava/lang/String;)V
    .registers 26

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    return-void

    :cond_7
    if-eqz p3, :cond_5b

    sget-object v7, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_WHITE_LIST:Ljava/util/ArrayList;

    invoke-virtual {v7, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5b

    sget-object v7, Lcom/miui/server/PerfShielderService;->WINDOW_NAME_REX:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x3

    if-lt v7, v9, :cond_12c

    const/4 v7, 0x0

    const/4 v9, 0x3

    invoke-virtual {p3, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :goto_33
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_5b
    new-instance v7, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;)V

    invoke-virtual {v7, v3}, Lcom/miui/server/PerfShielderService$PackageVersionNameGetter;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-ltz p10, :cond_12f

    sget-object v7, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    array-length v7, v7

    move/from16 v0, p10

    if-ge v0, v7, :cond_12f

    sget-object v7, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    aget-object v5, v7, p10

    :goto_72
    const-string/jumbo v7, "PerfShielderService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/32 v10, 0xf4240

    div-long v10, p4, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide/32 v10, 0xf4240

    div-long v10, p6, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "|"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, p11

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "pid"

    invoke-virtual {v2, v7, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "tid"

    invoke-virtual {v2, v7, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "pkg"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "pkgVersion"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "window"

    invoke-virtual {v2, v7, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "totalDuration"

    move-wide/from16 v0, p4

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "maxFrameDuration"

    move-wide/from16 v0, p6

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "endTs"

    move-wide/from16 v0, p8

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "appCause"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "cpuInfo"

    move-object/from16 v0, p13

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "numFrames"

    move-wide/from16 v0, p11

    invoke-virtual {v2, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v2}, Lcom/miui/server/PerfShielderService;->markPerceptibleJank(Landroid/os/Bundle;)V

    return-void

    :cond_12c
    move-object v7, p3

    goto/16 :goto_33

    :cond_12f
    const-string/jumbo v5, "Unknown"

    goto/16 :goto_72
.end method

.method public setForkedProcessGroup(IIILjava/lang/String;)V
    .registers 16

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v7

    and-int/lit8 v8, v7, 0x3

    if-eqz v8, :cond_9

    return-void

    :cond_9
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->convertUidPidToPath(II)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_e
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_9e
    .catchall {:try_start_e .. :try_end_1d} :catchall_8f

    const/4 v3, 0x0

    :cond_1e
    :goto_1e
    :try_start_1e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7e

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, p2, :cond_1e

    if-eqz p4, :cond_34

    invoke-direct {p0, v6, p4}, Lcom/miui/server/PerfShielderService;->needToLimit(ILjava/lang/String;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1e

    :cond_34
    invoke-static {v6, p3}, Landroid/os/Process;->setProcessGroup(II)V

    const-string/jumbo v8, "PerfShielderService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sFPG ppid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " grp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " forked:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " pid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_72} :catch_73
    .catchall {:try_start_1e .. :try_end_72} :catchall_9b

    goto :goto_1e

    :catch_73
    move-exception v1

    move-object v4, v5

    :goto_75
    :try_start_75
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_8f

    if-eqz v4, :cond_7d

    :try_start_7a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_8a

    :cond_7d
    :goto_7d
    return-void

    :cond_7e
    if-eqz v5, :cond_83

    :try_start_80
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_85

    :cond_83
    :goto_83
    move-object v4, v5

    goto :goto_7d

    :catch_85
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_83

    :catch_8a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7d

    :catchall_8f
    move-exception v8

    :goto_90
    if-eqz v4, :cond_95

    :try_start_92
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96

    :cond_95
    :goto_95
    throw v8

    :catch_96
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95

    :catchall_9b
    move-exception v8

    move-object v4, v5

    goto :goto_90

    :catch_9e
    move-exception v1

    goto :goto_75
.end method

.method public setMiuiBroadcastDispatchEnable(Z)V
    .registers 3

    const-string/jumbo v0, "setMiuiBroadcastDispatchEnable"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setMiuiBroadcastDispatchEnable(Z)V

    return-void
.end method

.method public setMiuiContentProviderControl(Z)V
    .registers 4

    const-string/jumbo v1, "setMiuiContentProviderControl"

    invoke-direct {p0, v1}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/MiuiContentProviderControl;->getInstance()Lcom/android/server/am/MiuiContentProviderControl;

    move-result-object v0

    if-eqz v0, :cond_11

    if-eqz p1, :cond_12

    invoke-virtual {v0}, Lcom/android/server/am/MiuiContentProviderControl;->openProviderControl()V

    :cond_11
    :goto_11
    return-void

    :cond_12
    invoke-virtual {v0}, Lcom/android/server/am/MiuiContentProviderControl;->closeProviderControl()V

    goto :goto_11
.end method

.method public setSchedFgPid(I)V
    .registers 4

    if-gtz p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->setSchedFgPid(I)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_d

    :cond_c
    :goto_c
    return-void

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_c
.end method

.method public setServicePriority(Ljava/util/List;)V
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

    const-string/jumbo v0, "setServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;)V

    return-void
.end method

.method public setServicePriorityWithNoProc(Ljava/util/List;J)V
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

    const-string/jumbo v0, "setServicePriorityWithNoProc"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    return-void

    :cond_f
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    invoke-static {p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;J)V

    return-void
.end method

.method public systemReady()V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Lcom/miui/server/PerfShielderService$BindServiceHandler;

    new-instance v1, Lcom/miui/server/PerfShielderService$4;

    invoke-direct {v1, p0}, Lcom/miui/server/PerfShielderService$4;-><init>(Lcom/miui/server/PerfShielderService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/PerfShielderService$BindServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-wide/16 v0, 0x5dc

    invoke-direct {p0, v0, v1}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    return-void
.end method

.method public updateProcessFullMemInfoByPids([I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    array-length v2, p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$PidSwapGetter;)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_6e

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "pid"

    aget v8, p1, v1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "lastPssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "lastPss"

    aget v8, p1, v1

    invoke-direct {p0, v8}, Lcom/miui/server/PerfShielderService;->getProcessPss(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    aget v7, p1, v1

    invoke-direct {p0, v7}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    const-string/jumbo v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    const-string/jumbo v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_6e
    return-object v5
.end method

.method public updateProcessPartialMemInfoByPids([I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    array-length v2, p1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v6, Lcom/miui/server/PerfShielderService$PidSwapGetter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/server/PerfShielderService$PidSwapGetter;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$PidSwapGetter;)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v2, :cond_58

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v7, "pid"

    aget v8, p1, v1

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "lastRssTime"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    aget v7, p1, v1

    invoke-direct {p0, v7}, Lcom/miui/server/PerfShielderService;->getProcessStatusValues(I)[J

    move-result-object v3

    const-string/jumbo v7, "swap"

    const/4 v8, 0x0

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v7, 0x1

    aget-wide v8, v3, v7

    long-to-int v4, v8

    const-string/jumbo v7, "ppid"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "pswap"

    invoke-virtual {v6, v4}, Lcom/miui/server/PerfShielderService$PidSwapGetter;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v7, "rss"

    const/4 v8, 0x2

    aget-wide v8, v3, v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_58
    return-object v5
.end method
