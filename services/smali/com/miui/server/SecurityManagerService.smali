.class public Lcom/miui/server/SecurityManagerService;
.super Lmiui/security/ISecurityManager$Stub;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/SecurityManagerService$AppItem;,
        Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;,
        Lcom/miui/server/SecurityManagerService$MyPackageMonitor;,
        Lcom/miui/server/SecurityManagerService$PackageSetting;,
        Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;,
        Lcom/miui/server/SecurityManagerService$SettingsObserver;,
        Lcom/miui/server/SecurityManagerService$UserState;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String; = "classname"

.field private static final CLASS_NAMES:Ljava/lang/String; = "classnames"

.field private static final DEBUG:Z = false

.field public static final INSTALL_FULL_APP:I = 0x4000

.field public static final INSTALL_REASON_USER:I = 0x4

.field private static final LEADCORE:Ljava/lang/String; = "leadcore"

.field public static final LOCK_TIME_OUT:J = 0xea60L

.field private static final MSG_SHOW_DIALOG:I = 0x1

.field private static final MTK:Ljava/lang/String; = "mediatek"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final PACKAGE_SYSTEMUI:Ljava/lang/String; = "com.android.systemui"

.field private static final REMVOE_AC_PACKAGE:I = 0x4

.field private static final RTC_POWEROFF_WAKEUP_MTK:I = 0x8

.field private static final SYS_APP_CRACKED:I = 0x1

.field private static final SYS_APP_NOT_CRACKED:I = 0x0

.field private static final SYS_APP_UNINIT:I = -0x1

.field static final TAG:Ljava/lang/String; = "SecurityManagerService"

.field private static final TIME:Ljava/lang/String; = "time"

.field private static final UPDATE_VERSION:Ljava/lang/String; = "1.0"

.field private static final WAKEALARM_PATH_OF_LEADCORE:Ljava/lang/String; = "/sys/comip/rtc_alarm"

.field private static final WAKEALARM_PATH_OF_QCOM:Ljava/lang/String; = "/sys/class/rtc/rtc0/wakealarm"

.field private static final WRITE_BOOTTIME_DELAY:I = 0x3e8

.field private static final WRITE_BOOT_TIME:I = 0x3

.field private static final WRITE_SETTINGS:I = 0x1

.field private static final WRITE_SETTINGS_DELAY:I = 0x3e8

.field private static final WRITE_WAKE_UP_TIME:I = 0x2

.field private static mAppRunningControlService:Lcom/miui/server/AppRunningControlService;


# instance fields
.field private mAccessController:Lcom/miui/server/AccessController;

.field private mAom:Landroid/app/AppOpsManager;

.field private mAppRunningControlBinder:Landroid/os/IBinder;

.field private mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

.field private mContext:Landroid/content/Context;

.field private mDialogFlag:Z

.field private mFingerprintNotify:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mINotificationManager:Landroid/app/INotificationManager;

.field private mIncompatibleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUpdated:Z

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mRegistrantLock:Ljava/lang/Object;

.field private mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

.field private mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

.field private mSettingsFile:Lcom/android/internal/os/AtomicFile;

.field private mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

.field private mSysAppCracked:I

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mUserStateLock:Ljava/lang/Object;

.field final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/miui/server/SecurityManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field

.field private mWakeTime:J

.field private mWakeUpFile:Lcom/android/internal/os/AtomicFile;

.field private mWakeUpTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private sGoogleBaseService:Lmiui/security/ISecurityCallback;


# direct methods
.method static synthetic -get0(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/miui/server/SecurityManagerService;)Lcom/android/internal/os/AtomicFile;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    return-object v0
.end method

.method static synthetic -get2(Lcom/miui/server/SecurityManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/miui/server/SecurityManagerService;I)I
    .registers 2

    iput p1, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return p1
.end method

.method static synthetic -set1(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)Lmiui/security/ISecurityCallback;
    .registers 2

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/miui/server/SecurityManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkSysAppCrack()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/miui/server/SecurityManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->isOldmanMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/miui/server/SecurityManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeSettings()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/miui/server/SecurityManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->writeWakeUpTime()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/miui/server/SecurityManagerService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/miui/server/SecurityManagerService;I)Lcom/miui/server/SecurityManagerService$UserState;
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->enforcePlatformSignature([Landroid/content/pm/Signature;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 11

    const/4 v7, 0x0

    invoke-direct {p0}, Lmiui/security/ISecurityManager$Stub;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    iput-boolean v7, p0, Lcom/miui/server/SecurityManagerService;->mDialogFlag:Z

    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    const/4 v4, -0x1

    iput v4, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const-string/jumbo v4, "package"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService;

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "system"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "miui-packages.xml"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v4, "SecurityWriteHandlerThread"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v4, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v0}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    new-instance v4, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;

    invoke-direct {v4, p0}, Lcom/miui/server/SecurityManagerService$MyPackageMonitor;-><init>(Lcom/miui/server/SecurityManagerService;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v6}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readSettings()V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->updateXSpaceSettings()V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->initForKK()V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "miui-wakeuptime.xml"

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime()V

    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V

    new-instance v4, Lcom/miui/server/AccessController;

    invoke-direct {v4, p1, v0}, Lcom/miui/server/AccessController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    new-instance v4, Lcom/miui/server/SecurityManagerService$SettingsObserver;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-direct {v4, p0, v5, p1}, Lcom/miui/server/SecurityManagerService$SettingsObserver;-><init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mSettingsObserver:Lcom/miui/server/SecurityManagerService$SettingsObserver;

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_c0
    invoke-direct {p0, v4}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    :try_end_c7
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_12c

    monitor-exit p0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-eq v4, v5, :cond_d4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-ne v4, v5, :cond_103

    :cond_d4
    const-string/jumbo v4, "hennessy"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_100

    const-string/jumbo v4, "kenzo"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_100

    const-string/jumbo v4, "ido"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_100

    const-string/jumbo v4, "aqua"

    sget-object v5, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_103

    :cond_100
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    :cond_103
    new-instance v4, Lcom/miui/server/AppRunningControlService;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/miui/server/AppRunningControlService;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    sget-object v4, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    invoke-virtual {v4}, Lcom/miui/server/AppRunningControlService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlBinder:Landroid/os/IBinder;

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lmiui/security/WakePathChecker;->init(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/server/RestrictAppNetManager;->init(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/miui/server/AccessController;->updatePasswordTypeForPattern(I)V

    return-void

    :catchall_12c
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public static Libcore_Os_getFileLastStatusChangedTime(Ljava/lang/String;)J
    .registers 9

    :try_start_0
    const-string/jumbo v4, "libcore.io.Libcore"

    const-string/jumbo v5, "os"

    const-string/jumbo v6, "Llibcore/io/Os;"

    invoke-static {v4, v5, v6}, Lmiui/reflect/Field;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lmiui/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-le v4, v5, :cond_47

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "lstat"

    const-string/jumbo v6, "(Ljava/lang/String;)Landroid/system/StructStat;"

    invoke-static {v4, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    :goto_26
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Lmiui/reflect/Method;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "st_ctime"

    const-string/jumbo v6, "J"

    invoke-static {v4, v5, v6}, Lmiui/reflect/Field;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v3}, Lmiui/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    return-wide v4

    :cond_47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "lstat"

    const-string/jumbo v6, "(Ljava/lang/String;)Llibcore/io/StructStat;"

    invoke-static {v4, v5, v6}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_54} :catch_56

    move-result-object v2

    goto :goto_26

    :catch_56
    move-exception v0

    const-string/jumbo v4, "SecurityManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getFileChangeTime fail :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, -0x1

    return-wide v4
.end method

.method private allowSaveIconCache()Z
    .registers 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2649

    if-eq v0, v1, :cond_17

    invoke-static {}, Lcom/miui/server/SecurityManagerService;->canSaveExternalIconCache()Z

    move-result v0

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x1

    goto :goto_16

    :cond_19
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static varargs callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static canSaveExternalIconCache()Z
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "miui_version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/server/SecurityManagerService;->Libcore_Os_getFileLastStatusChangedTime(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_28

    const/4 v2, 0x1

    :goto_27
    return v2

    :cond_28
    const/4 v2, 0x0

    goto :goto_27
.end method

.method private changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;
    .registers 5

    iget v1, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_c

    const/4 v0, 0x0

    :goto_7
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    return-object v1

    :cond_c
    iget v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    goto :goto_7
.end method

.method private checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 16

    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v6

    iget-object v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v7, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v3

    iget-boolean v7, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    if-nez v7, :cond_10

    const/4 v7, 0x1

    return v7

    :cond_10
    invoke-direct {p0, v6}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    iget-object v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v7, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    const/4 v7, 0x2

    if-ne v1, v7, :cond_63

    iget-object v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_3b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v8, v4, v8

    const-wide/32 v10, 0xea60

    cmp-long v7, v8, v10

    if-lez v7, :cond_3b

    const/4 v2, 0x0

    :cond_3b
    if-eqz v2, :cond_63

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x18

    if-lt v7, v8, :cond_8d

    const-string/jumbo v7, "com.android.systemui"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_52
    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_63

    iget-object v7, v6, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, p1, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    if-nez v2, :cond_75

    const/4 v7, 0x1

    if-ne v1, v7, :cond_75

    invoke-direct {p0, v6}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v7

    if-eqz v7, :cond_75

    invoke-direct {p0, v6}, Lcom/miui/server/SecurityManagerService;->isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v7

    if-eqz v7, :cond_75

    const/4 v2, 0x1

    :cond_75
    if-nez v2, :cond_80

    iget-object v7, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v7, p2}, Lcom/miui/server/AccessController;->skipActivity(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_80

    const/4 v2, 0x1

    :cond_80
    if-nez v2, :cond_8c

    iget-object v7, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, p1, p2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_8c

    const/4 v2, 0x1

    :cond_8c
    return v2

    :cond_8d
    const/4 v7, 0x0

    goto :goto_52
.end method

.method private checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method private checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .registers 7

    const/4 v3, 0x0

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-static {p1, p2, v2}, Lmiui/security/SecurityManagerCompat;->checkAppHidden(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/os/UserHandle;)V

    :try_start_6
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_9} :catch_10

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    :cond_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v2, "SecurityManagerService"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    invoke-virtual {p1, p2, v3, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    return-void
.end method

.method private checkPermission()V
    .registers 5

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.CHANGE_COMPONENT_ENABLED_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: attempt to change application state from pid="

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermissionByUid(I)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-eq v1, p1, :cond_24

    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no permission to read file for UID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    return-void
.end method

.method private checkSysAppCrack()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method private checkSystemSelfProtection(Z)V
    .registers 2

    return-void
.end method

.method private checkWakePathPermission()V
    .registers 6

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private checkWriteSecurePermission()V
    .registers 5

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.WRITE_SECURE_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: attempt to change application privacy revoke state from pid="

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

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private clearPassPackages(I)V
    .registers 10

    const/16 v7, 0x3e7

    const/4 v6, 0x0

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v5

    if-eqz v5, :cond_20

    if-eqz p1, :cond_d

    if-ne v7, p1, :cond_20

    :cond_d
    invoke-direct {p0, v6}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

    invoke-direct {p0, v7}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v4

    iget-object v1, v3, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    iget-object v2, v4, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    :goto_1f
    return-void

    :cond_20
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v5

    iget-object v0, v5, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    goto :goto_1f
.end method

.method private static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .registers 9

    const/4 v6, -0x3

    const/4 v4, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    :cond_6
    return v6

    :cond_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v5, p0

    move v3, v4

    :goto_e
    if-ge v3, v5, :cond_18

    aget-object v2, p0, v3

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    array-length v5, p1

    move v3, v4

    :goto_1f
    if-ge v3, v5, :cond_29

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_29
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    return v4

    :cond_30
    return v6
.end method

.method private enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->checkAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "System error: connot find system app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method

.method private enforcePlatformSignature([Landroid/content/pm/Signature;)V
    .registers 7

    new-instance v0, Landroid/content/pm/Signature;

    const-string/jumbo v2, "3082046c30820354a003020102020900e552a8ecb9011b7c300d06092a864886f70d0101050500308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d301e170d3131313230363033323632365a170d3339303432333033323632365a308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d30820120300d06092a864886f70d01010105000382010d00308201080282010100c786568a9aff253ad74c5d3e6fbffa12fed44cd3244f18960ec5511bb551e413115197234845112cc3df9bbacd3e0f4b3528cd87ed397d577dc9008e9cbc6a25fc0664d3a3f440243786db8b250d40f6f148c9a3cd6fbc2dd8d24039bd6a8972a1bdee28c308798bfa9bb3b549877b10f98e265f118c05f264537d95e29339157b9d2a31485e0c823521cca6d0b721a8432600076d669e20ac43aa588b52c11c2a51f04c6bb31ad6ae8573991afe8e4957d549591fcb83ec62d1da35b1727dc6b63001a5ef387b5a7186c1e68da1325772b5307b1bc739ef236b9efe06d52dcaf1e32768e3403e55e3ec56028cf5680cfb33971ccf7870572bc47d3e3affa385020103a381e83081e5301d0603551d0e0416041491ae2f8c72e305f92aa9f7452e2a3160b841a15c3081b50603551d230481ad3081aa801491ae2f8c72e305f92aa9f7452e2a3160b841a15ca18186a48183308180310b300906035504061302434e3110300e060355040813074265696a696e673110300e060355040713074265696a696e67310f300d060355040a13065869616f6d69310d300b060355040b13044d495549310d300b060355040313044d495549311e301c06092a864886f70d010901160f6d697569407869616f6d692e636f6d820900e552a8ecb9011b7c300c0603551d13040530030101ff300d06092a864886f70d010105050003820101003b3a699ceb497300f2ab86cbd41c513440bf60aa5c43984eb1da140ef30544d9fbbb3733df24b26f2703d7ffc645bf598a5e6023596a947e91731542f2c269d0816a69c92df9bfe8b1c9bc3c54c46c12355bb4629fe6020ca9d15f8d6155dc5586f5616db806ecea2d06bd83e32b5f13f5a04fe3e5aa514f05df3d555526c63d3d62acf00adee894b923c2698dc571bc52c756ffa7a2221d834d10cb7175c864c30872fe217c31442dff0040a67a2fb1c8ba63eac2d5ba3d8e76b4ff2a49b0db8a33ef4ae0dd0a840dd2a8714cb5531a56b786819ec9eb1051d91b23fde06bd9d0708f150c4f9efe6a416ca4a5e0c23a952af931ad3579fb4a8b19de98f64bd9"

    invoke-direct {v0, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    array-length v3, p1

    :goto_a
    if-ge v2, v3, :cond_18

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    return-void

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "System error: My heart is broken"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_b

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    :cond_b
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    return v1
.end method

.method private getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_b

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    :cond_b
    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    return v1
.end method

.method private getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I
    .registers 4

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->changeUserState(Lcom/miui/server/SecurityManagerService$UserState;)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    if-nez v1, :cond_b

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    :cond_b
    iget v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return v1
.end method

.method public static getAppRunningControlService()Lcom/miui/server/AppRunningControlService;
    .registers 1

    sget-object v0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlService:Lcom/miui/server/AppRunningControlService;

    return-object v0
.end method

.method private getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z
    .registers 7

    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    :try_start_4
    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iget-boolean v3, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return v3

    :catch_d
    move-exception v0

    const/4 v3, 0x0

    return v3
.end method

.method private getApplicationMaskNotificationEnabledLocked(Ljava/lang/String;I)Z
    .registers 7

    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    :try_start_4
    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iget-boolean v3, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_d

    return v3

    :catch_d
    move-exception v0

    const/4 v3, 0x0

    return v3
.end method

.method private declared-synchronized getBootTimeFromMap(Ljava/lang/String;)J
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_1a

    move-result-wide v0

    :goto_15
    monitor-exit p0

    return-wide v0

    :cond_17
    const-wide/16 v0, 0x0

    goto :goto_15

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/miui/server/SecurityManagerService$PackageSetting;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    if-nez v0, :cond_10

    new-instance v0, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v0, p0, p2}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    return-object v0
.end method

.method private getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .registers 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$UserState;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/miui/server/SecurityManagerService$UserState;

    invoke-direct {v0, v2}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$UserState;)V

    iput p1, v0, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_15
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    monitor-exit v2

    :cond_1b
    return-object v0

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    .registers 4

    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/server/SecurityManagerService$UserState;
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_11

    monitor-exit v1

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initAccessControlSettingsLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlSettingInit:Z

    return-void
.end method

.method private initForKK()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3a

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAom:Landroid/app/AppOpsManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "SecurityManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/server/SecuritySmsHandler;

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecuritySmsHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    :cond_3a
    return-void
.end method

.method private isOldmanMode()Z
    .registers 3

    const/4 v0, 0x1

    invoke-static {}, Lmiui/os/Build;->getUserMode()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z
    .registers 8

    const/16 v5, 0x3e7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    if-eq v4, v5, :cond_12

    iget v4, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    if-nez v4, :cond_2c

    :cond_12
    invoke-direct {p0, v3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v4, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    iget-object v5, v1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-lez v4, :cond_2a

    :goto_29
    return v2

    :cond_2a
    move v2, v3

    goto :goto_29

    :cond_2c
    iget-object v4, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_35

    :goto_34
    return v2

    :cond_35
    move v2, v3

    goto :goto_34
.end method

.method private isSystemApp()Z
    .registers 9

    const/4 v7, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v2, v5, v6

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_20

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    return v5

    :cond_1f
    return v7

    :catch_20
    move-exception v1

    return v7
.end method

.method private minWakeUpTime(J)V
    .registers 12

    const-wide/16 v2, 0x0

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v6, v4, p1

    if-lez v6, :cond_c

    cmp-long v6, v4, v2

    if-ltz v6, :cond_2a

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-nez v6, :cond_c

    :cond_2a
    move-wide v2, v4

    goto :goto_c

    :cond_2c
    iput-wide v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeTime:J

    return-void
.end method

.method private moveIconInner(Ljava/lang/String;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_30

    invoke-static {p1}, Lmiui/os/FileUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lmiui/content/res/IconCustomizer;->CUSTOMIZED_ICON_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-static {v0}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    move-result v2

    :cond_28
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lmiui/content/res/IconCustomizer;->ensureMiuiVersionFlagExist(Landroid/content/Context;)V

    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    :cond_30
    return v2
.end method

.method private native nativeIsReleased()Z
.end method

.method private native nativeKillPackageProcesses(ILjava/lang/String;)V
.end method

.method private declared-synchronized putBootTimeToMap(Ljava/lang/String;J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private readPackagesSettings(Ljava/io/FileInputStream;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-interface {v2, p1, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_e
    if-eq v0, v12, :cond_17

    if-eq v0, v11, :cond_17

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_e

    :cond_17
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "packages"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    const-string/jumbo v9, "updateVersion"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3c

    const-string/jumbo v9, "1.0"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3c

    iput-boolean v11, p0, Lcom/miui/server/SecurityManagerService;->mIsUpdated:Z

    :cond_3c
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :cond_40
    if-ne v0, v12, :cond_b2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-ne v9, v12, :cond_b2

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "package"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    const-string/jumbo v9, "name"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v3, p0, v1}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string/jumbo v9, "u"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_73

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :cond_73
    const-string/jumbo v9, "accessControl"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    const-string/jumbo v9, "childrenControl"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    const-string/jumbo v9, "maskNotification"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    const-string/jumbo v9, "isPrivacyApp"

    invoke-interface {v2, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    iput-boolean v9, v3, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    monitor-enter p0

    :try_start_a8
    invoke-direct {p0, v6}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v8

    iget-object v9, v8, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v9, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b1
    .catchall {:try_start_a8 .. :try_end_b1} :catchall_b9

    monitor-exit p0

    :cond_b2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-ne v0, v11, :cond_40

    :cond_b8
    return-void

    :catchall_b9
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method private readSettings()V
    .registers 6

    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_d

    return-void

    :cond_d
    const/4 v2, 0x0

    :try_start_e
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->readPackagesSettings(Ljava/io/FileInputStream;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_1f
    .catchall {:try_start_e .. :try_end_17} :catchall_31

    if-eqz v2, :cond_1c

    :try_start_19
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v1

    goto :goto_1c

    :catch_1f
    move-exception v0

    :try_start_20
    const-string/jumbo v3, "SecurityManagerService"

    const-string/jumbo v4, "Error reading package settings"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_31

    if-eqz v2, :cond_1c

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    goto :goto_1c

    :catch_2f
    move-exception v1

    goto :goto_1c

    :catchall_31
    move-exception v3

    if-eqz v2, :cond_37

    :try_start_34
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    throw v3

    :catch_38
    move-exception v1

    goto :goto_37
.end method

.method private readWakeUpTime()V
    .registers 5

    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    return-void

    :cond_12
    const/4 v2, 0x0

    :try_start_13
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/server/SecurityManagerService;->readWakeUpTime(Ljava/io/FileInputStream;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_24
    .catchall {:try_start_13 .. :try_end_1c} :catchall_36

    if-eqz v2, :cond_21

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    :cond_21
    :goto_21
    return-void

    :catch_22
    move-exception v1

    goto :goto_21

    :catch_24
    move-exception v0

    :try_start_25
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_36

    if-eqz v2, :cond_21

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_21

    :catch_34
    move-exception v1

    goto :goto_21

    :catchall_36
    move-exception v3

    if-eqz v2, :cond_3c

    :try_start_39
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    throw v3

    :catch_3d
    move-exception v1

    goto :goto_3c
.end method

.method private readWakeUpTime(Ljava/io/FileInputStream;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    invoke-interface {v2, p1, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    :goto_e
    if-eq v1, v8, :cond_17

    if-eq v1, v10, :cond_17

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_e

    :cond_17
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "classnames"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    :cond_28
    if-ne v1, v8, :cond_57

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-ne v6, v8, :cond_57

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "classname"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    const-string/jumbo v6, "name"

    invoke-interface {v2, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/Long;

    const-string/jumbo v7, "time"

    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    :cond_57
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-ne v1, v10, :cond_28

    :cond_5d
    return-void
.end method

.method private removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "*"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    :goto_13
    return-void

    :cond_14
    iget-object v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private removePackage(Ljava/lang/String;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-object v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-void

    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .registers 6

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->allowSaveIconCache()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lmiui/content/res/ThemeRuntimeManager;->createTempIconFile(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->moveIconInner(Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_11
    const/4 v2, 0x0

    return v2
.end method

.method private scheduleWriteSettings()V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private setTimeBoot()V
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_b
    invoke-direct {p0, v0, v1}, Lcom/miui/server/SecurityManagerService;->minWakeUpTime(J)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_13

    monitor-exit v2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteBootTime()V

    return-void

    :catchall_13
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private sucheduleWriteBootTime()V
    .registers 3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private sucheduleWriteWakeUpTime()V
    .registers 3

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    invoke-virtual {v0, v1}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private updateAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_lock_enabled"

    iget v4, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_16

    :goto_13
    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlEnabled:Z

    return-void

    :cond_16
    move v0, v1

    goto :goto_13
.end method

.method private updateAccessControlLockConvenientLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "access_control_lock_convenient"

    iget v4, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_16

    :goto_13
    iput-boolean v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockConvenient:Z

    return-void

    :cond_16
    move v0, v1

    goto :goto_13
.end method

.method private updateAccessControlLockModeLocked(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_lock_mode"

    iget v2, p1, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLockMode:I

    return-void
.end method

.method private updateAccessMiuiOptUri(Lcom/miui/server/SecurityManagerService$UserState;)V
    .registers 9

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_53

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    if-eqz v2, :cond_53

    :try_start_c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-le v2, v3, :cond_69

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "installExistingPackageAsUser"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "com.google.android.packageinstaller"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/16 v5, 0x4000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    invoke-static {v2, v3, v1, v4}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_53} :catch_90

    :cond_53
    :goto_53
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerServiceInjector;->checkPkgInstallerOptMode(Lcom/android/server/pm/PackageManagerService;)V

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->revokeAllPermssions(Lcom/android/server/pm/PackageManagerService;)V

    invoke-static {}, Landroid/miui/AppOpsUtils;->isXOptMode()Z

    move-result v2

    if-nez v2, :cond_68

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantMiuiPackageInstallerPermssions(Lcom/android/server/pm/PackageManagerService;)V

    :cond_68
    return-void

    :cond_69
    const/4 v2, 0x2

    :try_start_6a
    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v3, "installExistingPackageAsUser"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "com.google.android.packageinstaller"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v1, v4}, Lcom/miui/server/SecurityManagerService;->callObjectMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_8f} :catch_90

    goto :goto_53

    :catch_90
    move-exception v0

    const-string/jumbo v2, "SecurityManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call installExistingPackageAsUser error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method private updateXSpaceSettings()V
    .registers 10

    invoke-static {}, Lmiui/securityspace/ConfigUtils;->isSupportXSpace()Z

    move-result v8

    if-eqz v8, :cond_5c

    iget-boolean v8, p0, Lcom/miui/server/SecurityManagerService;->mIsUpdated:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5c

    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v5

    const/16 v8, 0x3e7

    invoke-direct {p0, v8}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v6

    iget-object v8, v5, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8, v2}, Lmiui/securityspace/XSpaceUserHandle;->isAppInXSpace(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/server/SecurityManagerService$PackageSetting;

    new-instance v4, Lcom/miui/server/SecurityManagerService$PackageSetting;

    invoke-direct {v4, p0, v2}, Lcom/miui/server/SecurityManagerService$PackageSetting;-><init>(Lcom/miui/server/SecurityManagerService;Ljava/lang/String;)V

    iget-boolean v8, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    iput-boolean v8, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    iget-boolean v8, v7, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    iput-boolean v8, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    monitor-enter p0

    :try_start_4f
    iget-object v8, v6, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v8, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catchall {:try_start_4f .. :try_end_54} :catchall_56

    monitor-exit p0

    goto :goto_21

    :catchall_56
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_59
    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V

    :cond_5c
    return-void
.end method

.method private writeSettings()V
    .registers 15

    const/4 v1, 0x0

    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    monitor-enter p0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_e6

    :try_start_7
    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v6

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v6, :cond_34

    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v11, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/server/SecurityManagerService$UserState;

    new-instance v8, Lcom/miui/server/SecurityManagerService$UserState;

    const/4 v11, 0x0

    invoke-direct {v8, v11}, Lcom/miui/server/SecurityManagerService$UserState;-><init>(Lcom/miui/server/SecurityManagerService$UserState;)V

    iget v11, v7, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iput v11, v8, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    iget-object v11, v8, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    new-instance v12, Ljava/util/HashMap;

    iget-object v13, v7, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {v12, v13}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_f8

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_34
    :try_start_34
    monitor-exit p0

    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v11, "utf-8"

    invoke-interface {v3, v1, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v11, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {v3, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v11, "packages"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "updateVersion"

    const-string/jumbo v12, "1.0"

    const/4 v13, 0x0

    invoke-interface {v3, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_fb

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/miui/server/SecurityManagerService$UserState;

    iget-object v11, v8, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_81
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/server/SecurityManagerService$PackageSetting;

    const-string/jumbo v11, "package"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "name"

    iget-object v12, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->name:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-interface {v3, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "accessControl"

    iget-boolean v12, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v3, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "childrenControl"

    iget-boolean v12, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v3, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "maskNotification"

    iget-boolean v12, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v3, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "isPrivacyApp"

    iget-boolean v12, v4, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v3, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "u"

    iget v12, v8, Lcom/miui/server/SecurityManagerService$UserState;->userHandle:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v3, v13, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v11, "package"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_e5
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_e5} :catch_e6

    goto :goto_81

    :catch_e6
    move-exception v0

    const-string/jumbo v11, "SecurityManagerService"

    const-string/jumbo v12, "Error writing package settings file"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v1, :cond_f7

    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_f7
    :goto_f7
    return-void

    :catchall_f8
    move-exception v11

    :try_start_f9
    monitor-exit p0

    throw v11

    :cond_fb
    const-string/jumbo v11, "packages"

    const/4 v12, 0x0

    invoke-interface {v3, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v11, p0, Lcom/miui/server/SecurityManagerService;->mSettingsFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v11, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_10a
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_10a} :catch_e6

    goto :goto_f7
.end method

.method private writeWakeUpTime()V
    .registers 11

    const/4 v3, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    new-instance v4, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v4}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    const-string/jumbo v5, "utf-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const-string/jumbo v5, "classnames"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_33
    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_77

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_33

    const-string/jumbo v5, "classname"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "time"

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "classname"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6d} :catch_6e

    goto :goto_33

    :catch_6e
    move-exception v2

    if-eqz v3, :cond_76

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_76
    :goto_76
    return-void

    :cond_77
    :try_start_77
    const-string/jumbo v5, "classnames"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mWakeUpFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_86} :catch_6e

    goto :goto_76
.end method


# virtual methods
.method public activityResume(Landroid/content/Intent;)I
    .registers 26

    if-nez p1, :cond_5

    const/16 v19, 0x0

    return v19

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_e

    const/16 v19, 0x0

    return v19

    :cond_e
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_17

    const/16 v19, 0x0

    return v19

    :cond_17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    monitor-enter p0

    :try_start_20
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_147

    move-result v6

    if-nez v6, :cond_36

    const/16 v19, 0x0

    monitor-exit p0

    return v19

    :cond_36
    :try_start_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-static {v0, v10, v1}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I
    :try_end_43
    .catchall {:try_start_36 .. :try_end_43} :catchall_147

    move-result v11

    if-eq v4, v11, :cond_4a

    const/16 v19, 0x0

    monitor-exit p0

    return v19

    :cond_4a
    const/16 v16, 0x1

    :try_start_4c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v8

    move-object/from16 v0, v18

    iget-object v9, v0, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v10, v0, Lcom/miui/server/SecurityManagerService$UserState;->mLastResumePackage:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_83

    if-eqz v9, :cond_83

    invoke-virtual {v12, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_83

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_83
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v10}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v13

    iget-boolean v0, v13, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    move/from16 v19, v0

    if-nez v19, :cond_a4

    if-nez v8, :cond_a0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V
    :try_end_a0
    .catchall {:try_start_4c .. :try_end_a0} :catchall_147

    :cond_a0
    const/16 v19, 0x1

    monitor-exit p0

    return v19

    :cond_a4
    const/16 v16, 0x3

    :try_start_a6
    invoke-virtual {v12, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_da

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_f5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_d7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J
    :try_end_c9
    .catchall {:try_start_a6 .. :try_end_c9} :catchall_147

    move-result-wide v20

    sub-long v20, v14, v20

    const-wide/32 v22, 0xea60

    cmp-long v19, v20, v22

    if-gez v19, :cond_d7

    or-int/lit8 v16, v16, 0x4

    monitor-exit p0

    return v16

    :cond_d7
    :try_start_d7
    invoke-virtual {v12, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_da
    if-nez v8, :cond_e3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    :cond_e3
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_ee
    .catchall {:try_start_d7 .. :try_end_ee} :catchall_147

    move-result v19

    if-eqz v19, :cond_105

    or-int/lit8 v16, v16, 0x8

    monitor-exit p0

    return v16

    :cond_f5
    or-int/lit8 v16, v16, 0x4

    if-nez v8, :cond_103

    :try_start_f9
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->clearPassPackages(I)V

    invoke-virtual {v12, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_103
    .catchall {:try_start_f9 .. :try_end_103} :catchall_147

    :cond_103
    monitor-exit p0

    return v16

    :cond_105
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_11f

    :try_start_10b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockConvenient(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v19

    if-eqz v19, :cond_11f

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->isPackageAccessControlPass(Lcom/miui/server/SecurityManagerService$UserState;)Z

    move-result v19

    if-nez v19, :cond_143

    :cond_11f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/miui/server/AccessController;->skipActivity(Landroid/content/Intent;)Z

    move-result v19

    if-nez v19, :cond_143

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v10, v2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z
    :try_end_140
    .catchall {:try_start_10b .. :try_end_140} :catchall_147

    move-result v19

    if-eqz v19, :cond_145

    :cond_143
    or-int/lit8 v16, v16, 0x4

    :cond_145
    monitor-exit p0

    return v16

    :catchall_147
    move-exception v19

    monitor-exit p0

    throw v19
.end method

.method public addAccessControlPass(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->addAccessControlPassForUser(Ljava/lang/String;I)V

    return-void
.end method

.method public addAccessControlPassForUser(Ljava/lang/String;I)V
    .registers 9

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_4
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlLockMode(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1c

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlLastCheck:Landroid/util/ArrayMap;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlPassPackages:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_23

    monitor-exit p0

    return-void

    :catchall_23
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public addMiuiFirewallSharedUid(I)Z
    .registers 3

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiNetworkManagementService;->addMiuiFirewallSharedUid(I)Z

    move-result v0

    return v0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v2, :cond_14

    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_18
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_22

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_22
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 5

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_5
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    move-result v1

    monitor-exit p0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {p3}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/AccessController;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 10

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_b

    return v3

    :cond_b
    monitor-enter p0

    :try_start_c
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2, p3}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_25

    move-result v0

    monitor-exit p0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, v4}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v4}, Lmiui/content/pm/PreloadedAppPolicy;->isProtectedDataApp(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_24
    return v3

    :catchall_25
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_28
    if-nez v0, :cond_32

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Lmiui/security/WakePathChecker;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    :cond_32
    return v0
.end method

.method public checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_c

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1}, Lcom/miui/server/SecuritySmsHandler;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump SecurityManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_36
    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiui/security/WakePathChecker;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public finishAccessControl(Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    if-nez p1, :cond_6

    return-void

    :cond_6
    monitor-enter p0

    :try_start_7
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mAccessControlCanceled:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mSecurityWriteHandler:Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v0, v4, v5}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-void

    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getAccessControlPasswordType(I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->getAccessControlPasswordType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllPrivacyApps(I)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v7

    iget-object v1, v7, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_3c

    :try_start_23
    iget-object v8, v7, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v8, v2}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v6

    iget-boolean v8, v6, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    if-eqz v8, :cond_17

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_30} :catch_31
    .catchall {:try_start_23 .. :try_end_30} :catchall_3c

    goto :goto_17

    :catch_31
    move-exception v0

    :try_start_32
    const-string/jumbo v8, "SecurityManagerService"

    const-string/jumbo v9, "getAllPrivacyApps error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_3c

    goto :goto_17

    :catchall_3c
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_3f
    monitor-exit p0

    return-object v5
.end method

.method public getAppPermissionControlOpen(I)I
    .registers 5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateOrNullUnLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/miui/server/SecurityManagerService$UserState;->-get0(Lcom/miui/server/SecurityManagerService$UserState;)I

    move-result v1

    return v1

    :cond_15
    return v2
.end method

.method public getAppRunningControlIBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAppRunningControlBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_5
    invoke-direct {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b

    move-result v1

    monitor-exit p0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationAccessControlEnabledLocked(Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .registers 7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_5
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v3

    iget-object v4, v3, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v4, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v2

    iget-boolean v4, v2, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_13
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    monitor-exit p0

    return v4

    :catch_13
    move-exception v1

    const/4 v4, 0x0

    monitor-exit p0

    return v4

    :catchall_17
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->getApplicationMaskNotificationEnabledLocked(Ljava/lang/String;I)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result v0

    monitor-exit p0

    return v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCurrentUserId()I
    .registers 2

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getGameMode(I)Z
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return v1

    :catchall_d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getGoogleBaseService()Lmiui/security/ISecurityCallback;
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    return-object v0
.end method

.method public getIncompatibleAppList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_c

    monitor-exit v1

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .registers 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_38

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_38

    :try_start_e
    iget-object v5, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1d

    array-length v5, v3

    if-nez v5, :cond_21

    :cond_1d
    const-string/jumbo v5, ""

    return-object v5

    :cond_21
    const/4 v5, 0x0

    aget-object v5, v3, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_38

    const-string/jumbo v5, ""
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_33

    return-object v5

    :catch_33
    move-exception v1

    const-string/jumbo v5, ""

    return-object v5

    :cond_38
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getSecondSpaceId()I
    .registers 7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "second_user_id"

    const/16 v4, -0x2710

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    move-result v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSysAppCracked()I
    .registers 2

    iget v0, p0, Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I

    return v0
.end method

.method public getTopActivity()Landroid/os/IBinder;
    .registers 9

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_51

    const-string/jumbo v6, "intent"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_51

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "com.google.android.packageinstaller"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    const-string/jumbo v6, "com.android.packageinstaller.InstallAppProgress"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    const-string/jumbo v6, "com.android.packageinstaller.InstallSuccess"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_47

    const-string/jumbo v6, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_51

    :cond_47
    const-string/jumbo v6, "token"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    return-object v4

    :cond_51
    return-object v7
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .registers 2

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/security/WakePathChecker;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerServiceCompat;->getWakePathComponents(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d

    return-object v2

    :cond_d
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .registers 5

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string/jumbo v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/miui/server/SecurityManagerService;->getBootTimeFromMap(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    const-string/jumbo v0, "android.permission.CAPTURE_AUDIO_OUTPUT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "not support permssion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/pm/PackageManagerServicePermissionProxy;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;)V
    .registers 11

    const/16 v8, 0x3e8

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, p1, v5}, Lcom/android/server/pm/PackageManagerServiceCompat;->getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I

    move-result v4

    if-eq v1, v8, :cond_16

    if-eq v4, v1, :cond_16

    return-void

    :cond_16
    iget-object v6, p0, Lcom/miui/server/SecurityManagerService;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, p1, v7, v5}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    :cond_1f
    if-eq v1, v8, :cond_30

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_30

    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "grantRuntimePermission Permission DENIED"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_34
    invoke-static {p1, v5}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->grantRuntimePermission(Ljava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3b

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3b
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public haveAccessControlPassword(I)Z
    .registers 3

    invoke-static {p1}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p1

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1}, Lcom/miui/server/AccessController;->haveAccessControlPassword(I)Z

    move-result v0

    return v0
.end method

.method public isAllowStartService(Landroid/content/Intent;I)Z
    .registers 4

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/am/AutoStartManagerService;->isAllowStartService(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public isAppHide()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageHideManager;->isAppHide()Z

    move-result v0

    return v0
.end method

.method public isAppPrivacyEnabled(Ljava/lang/String;)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "packageName can not be null or empty"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_15
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "privacy_status_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_3c

    move-result v4

    if-eqz v4, :cond_3a

    :goto_36
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_3a
    move v2, v3

    goto :goto_36

    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public isFunctionOpen()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageHideManager;->isFunctionOpen()Z

    move-result v0

    return v0
.end method

.method public isPrivacyApp(Ljava/lang/String;I)Z
    .registers 8

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_4
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1f

    move-result-object v2

    :try_start_8
    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iget-boolean v3, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_12
    .catchall {:try_start_8 .. :try_end_10} :catchall_1f

    monitor-exit p0

    return v3

    :catch_12
    move-exception v0

    :try_start_13
    const-string/jumbo v3, "SecurityManagerService"

    const-string/jumbo v4, "isPrivacyApp error"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1f

    const/4 v3, 0x0

    monitor-exit p0

    return v3

    :catchall_1f
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public isRestrictedAppNet(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/server/RestrictAppNetManager;->isRestrictedAppNet(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidDevice()Z
    .registers 2

    invoke-static {}, Landroid/content/pm/PackageHideManager;->isValidDevice()Z

    move-result v0

    return v0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->nativeKillPackageProcesses(ILjava/lang/String;)V

    :cond_a
    return-void
.end method

.method public moveTaskToStack(IIZ)I
    .registers 10

    if-eqz p3, :cond_17

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_6
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "gb_boosting"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_1c

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_17
    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->moveTaskToStack(IIZ)I

    move-result v2

    return v2

    :catchall_1c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public needFinishAccessControl(Landroid/os/IBinder;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getTaskIntentForToken(Landroid/os/IBinder;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v5, :cond_2d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v3, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4, v1}, Lcom/miui/server/AccessController;->filterIntentLocked(ZLjava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    return v3

    :cond_2d
    const/4 v3, 0x0

    return v3
.end method

.method public notifyAppsPreInstalled()V
    .registers 4

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_13
    if-ltz v0, :cond_23

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_23
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_2a

    monitor-exit v2

    return-void

    :catchall_2a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V
    .registers 6

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iput-object p1, p0, Lcom/miui/server/SecurityManagerService;->sGoogleBaseService:Lmiui/security/ISecurityCallback;

    :try_start_5
    invoke-interface {p1}, Lmiui/security/ISecurityCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/miui/server/SecurityManagerService$2;

    invoke-direct {v2, p0, p1}, Lcom/miui/server/SecurityManagerService$2;-><init>(Lcom/miui/server/SecurityManagerService;Lmiui/security/ISecurityCallback;)V

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string/jumbo v1, "SecurityManagerService"

    const-string/jumbo v2, "offerGoogleBaseCallBack"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12
.end method

.method public pushUpdatePkgsData(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushUpdatePkgsData(Ljava/util/List;Z)V

    return-void
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V

    return-void
.end method

.method public pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .registers 6

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p3}, Lmiui/security/WakePathChecker;->pushWakePathRuleInfos(ILjava/util/List;I)V

    return-void
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/security/WakePathChecker;->pushWakePathWhiteList(Ljava/util/List;I)V

    return-void
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9

    const/16 v4, 0x3e8

    invoke-direct {p0, v4}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_14

    :try_start_11
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_2b

    :cond_14
    :goto_14
    :try_start_14
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1c} :catch_35
    .catchall {:try_start_14 .. :try_end_1c} :catchall_45

    const-wide/16 v4, 0x0

    :try_start_1e
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v3, p2}, Ljava/io/RandomAccessFile;->writeUTF(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_24} :catch_54
    .catchall {:try_start_1e .. :try_end_24} :catchall_51

    const/4 v4, 0x1

    if-eqz v3, :cond_2a

    :try_start_27
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_30

    :cond_2a
    :goto_2a
    return v4

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2a

    :catch_35
    move-exception v0

    :goto_36
    :try_start_36
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_45

    if-eqz v2, :cond_3e

    :try_start_3b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3e} :catch_40

    :cond_3e
    :goto_3e
    const/4 v4, 0x0

    return v4

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    :catchall_45
    move-exception v4

    :goto_46
    if-eqz v2, :cond_4b

    :try_start_48
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    :cond_4b
    :goto_4b
    throw v4

    :catch_4c
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4b

    :catchall_51
    move-exception v4

    move-object v2, v3

    goto :goto_46

    :catch_54
    move-exception v0

    move-object v2, v3

    goto :goto_36
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x3e8

    invoke-direct {p0, v5}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_24

    :try_start_12
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v3, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1a} :catch_2a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_39

    :try_start_1a
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readUTF()Ljava/lang/String;
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_48
    .catchall {:try_start_1a .. :try_end_1d} :catchall_45

    move-result-object v4

    if-eqz v3, :cond_23

    :try_start_20
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_25

    :cond_23
    :goto_23
    move-object v2, v3

    :cond_24
    :goto_24
    return-object v4

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    :catch_2a
    move-exception v0

    :goto_2b
    :try_start_2b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_39

    if-eqz v2, :cond_24

    :try_start_30
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_24

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_24

    :catchall_39
    move-exception v5

    :goto_3a
    if-eqz v2, :cond_3f

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_40

    :cond_3f
    :goto_3f
    throw v5

    :catch_40
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    :catchall_45
    move-exception v5

    move-object v2, v3

    goto :goto_3a

    :catch_48
    move-exception v0

    move-object v2, v3

    goto :goto_2b
.end method

.method public registerForAppsPreInstalled(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 7

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mRegistrantLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-nez v1, :cond_15

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mAppsPreInstallRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v2

    return-void

    :catchall_17
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .registers 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    return-void
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .registers 24

    invoke-direct/range {p0 .. p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    const/4 v4, 0x0

    const/16 v18, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v19, 0x0

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_17

    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getTopRunningActivityInfo()Ljava/util/HashMap;

    move-result-object v19

    :cond_17
    monitor-enter p0

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_bd

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v17

    const/16 v16, 0x0

    :goto_27
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_45

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService;->mUserStates:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/miui/server/SecurityManagerService$UserState;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_27

    :cond_45
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getCurrentUserId()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getAccessControlEnabledLocked(Lcom/miui/server/SecurityManagerService$UserState;)Z
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_cf

    move-result v15

    if-nez v15, :cond_5b

    monitor-exit p0

    return-void

    :cond_5b
    if-eqz v19, :cond_90

    :try_start_5d
    const-string/jumbo v3, "packageName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    const-string/jumbo v3, "token"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v18, v0

    const-string/jumbo v3, "userId"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v3}, Lcom/miui/server/SecurityManagerService;->checkAccessControlPassLocked(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_8f
    .catchall {:try_start_5d .. :try_end_8f} :catchall_cf

    move-result v12

    :cond_90
    :goto_90
    monitor-exit p0

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_bc

    if-eqz v19, :cond_bc

    if-nez v12, :cond_dd

    :try_start_9a
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    invoke-static/range {v3 .. v8}, Lmiui/security/SecurityManager;->getCheckAccessIntent(ZLjava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v3, "miui.KEYGUARD_LOCKED"

    const/4 v5, 0x1

    invoke-virtual {v9, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, v18

    invoke-static/range {v5 .. v10}, Lmiui/security/SecurityManagerCompat;->startActvityAsUser(Landroid/content/Context;Landroid/app/IApplicationThread;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;I)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_bc} :catch_d2

    :cond_bc
    :goto_bc
    return-void

    :cond_bd
    :try_start_bd
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/miui/server/SecurityManagerService;->removeAccessControlPassLocked(Lcom/miui/server/SecurityManagerService$UserState;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_bd .. :try_end_ce} :catchall_cf

    goto :goto_90

    :catchall_cf
    move-exception v3

    monitor-exit p0

    throw v3

    :catch_d2
    move-exception v14

    const-string/jumbo v3, "SecurityManagerService"

    const-string/jumbo v5, "removeAccessControlPassAsUser startActvityAsUser error "

    invoke-static {v3, v5, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bc

    :cond_dd
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/miui/server/SecurityManagerService;->mFingerprintNotify:Z

    if-eqz v3, :cond_bc

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_bc

    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.APP_LOCK_CLEAR_STATE"

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.miui.securitycenter"

    invoke-virtual {v9, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_bc
.end method

.method public removeWakePathData(I)V
    .registers 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->removeWakePathData(I)V

    return-void
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)I
    .registers 5

    invoke-static {p1, p2, p3}, Landroid/util/MiuiMultiWindowUtils;->resizeTask(ILandroid/graphics/Rect;I)I

    move-result v0

    return v0
.end method

.method public saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/miui/server/SecurityManagerService;->saveIconInner(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method public setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {p3}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p3

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mAccessController:Lcom/miui/server/AccessController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/AccessController;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setAppHide(Z)Z
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/content/pm/PackageHideManager;->getInstance(Z)Landroid/content/pm/PackageHideManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageHideManager;->setHideApp(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public setAppPermissionControlOpen(I)V
    .registers 9

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_16
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/server/SecurityManagerService$UserState;->-set0(Lcom/miui/server/SecurityManagerService$UserState;I)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAppPrivacyStatus(Ljava/lang/String;Z)V
    .registers 10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "packageName can not be null or empty"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2b

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWriteSecurePermission()V

    :cond_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_2f
    iget-object v4, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "privacy_status_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p2, :cond_53

    const/4 v4, 0x1

    :goto_4c
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_55

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_53
    const/4 v4, 0x0

    goto :goto_4c

    :catchall_55
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .registers 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/server/SecurityManagerService;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    .registers 7

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_4
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v0

    iput-boolean p2, v0, Lcom/miui/server/SecurityManagerService$PackageSetting;->accessControl:Z

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .registers 7

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    monitor-enter p0

    :try_start_8
    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v2

    iget-object v3, v2, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v3, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v1

    iput-boolean p2, v1, Lcom/miui/server/SecurityManagerService$PackageSetting;->childrenControl:Z

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_19

    monitor-exit p0

    return-void

    :catchall_19
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V
    .registers 7

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_4
    invoke-direct {p0, p3}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v0

    iput-boolean p2, v0, Lcom/miui/server/SecurityManagerService$PackageSetting;->maskNotification:Z

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setCoreRuntimePermissionEnabled(ZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_11

    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "setCoreRuntimePermissionEnabled Permission DENIED"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/pm/DefaultPermissionGrantPolicyInjector;->setCoreRuntimePermissionEnabled(ZII)V

    return-void
.end method

.method public setCurrentNetworkState(I)Z
    .registers 3

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/MiuiNetworkManagementService;->setCurrentNetworkState(I)Z

    move-result v0

    return v0
.end method

.method public setGameBoosterIBinder(Landroid/os/IBinder;IZ)V
    .registers 9

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_4
    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p2

    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_4c

    move-result-object v1

    :try_start_c
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    if-nez v2, :cond_1f

    new-instance v2, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-direct {v2, p0, v1, p1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;-><init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V

    iput-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1d} :catch_41
    .catchall {:try_start_c .. :try_end_1d} :catchall_4c

    :goto_1d
    monitor-exit p0

    return-void

    :cond_1f
    :try_start_1f
    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-static {v2}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->-get0(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;

    move-result-object v2

    if-eq p1, v2, :cond_4f

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-static {v2}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;->-get0(Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    new-instance v2, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    invoke-direct {v2, p0, v1, p1}, Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;-><init>(Lcom/miui/server/SecurityManagerService;Lcom/miui/server/SecurityManagerService$UserState;Landroid/os/IBinder;)V

    iput-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->gameBoosterServiceDeath:Lcom/miui/server/SecurityManagerService$GameBoosterServiceDeath;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_40} :catch_41
    .catchall {:try_start_1f .. :try_end_40} :catchall_4c

    goto :goto_1d

    :catch_41
    move-exception v0

    :try_start_42
    const-string/jumbo v2, "SecurityManagerService"

    const-string/jumbo v3, "setGameBoosterIBinder"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b
    .catchall {:try_start_42 .. :try_end_4b} :catchall_4c

    goto :goto_1d

    :catchall_4c
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_4f
    :try_start_4f
    iput-boolean p3, v1, Lcom/miui/server/SecurityManagerService$UserState;->mIsGameMode:Z
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_51} :catch_41
    .catchall {:try_start_4f .. :try_end_51} :catchall_4c

    goto :goto_1d
.end method

.method public setIncompatibleAppList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "List is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v1, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_11
    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mIncompatibleAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_1b
    .catchall {:try_start_11 .. :try_end_1b} :catchall_1d

    monitor-exit v1

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setMiuiFirewallRule(Ljava/lang/String;III)Z
    .registers 6

    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/miui/server/SecurityManagerService;->checkPermissionByUid(I)V

    invoke-static {}, Lcom/android/server/MiuiNetworkManagementService;->getInstance()Lcom/android/server/MiuiNetworkManagementService;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/MiuiNetworkManagementService;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    move-result v0

    return v0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    if-nez v2, :cond_14

    const-string/jumbo v2, "notification"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    :cond_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_18
    iget-object v2, p0, Lcom/miui/server/SecurityManagerService;->mINotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_21

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_21
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPrivacyApp(Ljava/lang/String;IZ)V
    .registers 7

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    monitor-enter p0

    :try_start_4
    invoke-direct {p0, p2}, Lcom/miui/server/SecurityManagerService;->getUserStateLocked(I)Lcom/miui/server/SecurityManagerService$UserState;

    move-result-object v1

    iget-object v2, v1, Lcom/miui/server/SecurityManagerService$UserState;->mPackages:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/miui/server/SecurityManagerService;->getPackageSetting(Ljava/util/HashMap;Ljava/lang/String;)Lcom/miui/server/SecurityManagerService$PackageSetting;

    move-result-object v0

    iput-boolean p3, v0, Lcom/miui/server/SecurityManagerService$PackageSetting;->isPrivacyApp:Z

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->scheduleWriteSettings()V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    monitor-exit p0

    return-void

    :catchall_15
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkWakePathPermission()V

    invoke-static {}, Lmiui/security/WakePathChecker;->getInstance()Lmiui/security/WakePathChecker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/security/WakePathChecker;->setTrackWakePathCallListLogEnabled(Z)V

    return-void
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .registers 8

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.miui.permission.MANAGE_BOOT_TIME"

    const-string/jumbo v2, "SecurityManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/server/SecurityManagerService;->putBootTimeToMap(Ljava/lang/String;J)V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->sucheduleWriteWakeUpTime()V

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->setTimeBoot()V

    return-void
.end method

.method public startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 5

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/server/SecuritySmsHandler;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public stopInterceptSmsBySender()Z
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mSecuritySmsHandler:Lcom/miui/server/SecuritySmsHandler;

    invoke-virtual {v0}, Lcom/miui/server/SecuritySmsHandler;->stopInterceptSmsBySender()Z

    move-result v0

    return v0
.end method

.method public watchGreenGuardProcess()V
    .registers 2

    iget-object v0, p0, Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/server/GreenGuardManagerService;->startWatchGreenguardProcess(Landroid/content/Context;)V

    return-void
.end method

.method public writeAppHideConfig(Z)Z
    .registers 3

    invoke-direct {p0}, Lcom/miui/server/SecurityManagerService;->checkPermission()V

    const/4 v0, 0x0

    return v0
.end method
