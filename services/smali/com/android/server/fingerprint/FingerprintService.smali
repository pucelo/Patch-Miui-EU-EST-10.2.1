.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$1;,
        Lcom/android/server/fingerprint/FingerprintService$2;,
        Lcom/android/server/fingerprint/FingerprintService$3;,
        Lcom/android/server/fingerprint/FingerprintService$4;,
        Lcom/android/server/fingerprint/FingerprintService$5;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;,
        Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final CANCEL_TIMEOUT_LIMIT:J = 0xbb8L

.field private static final CLEANUP_UNUSED_FP:Z = true

.field static final DEBUG:Z = true

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FP_DATA_DIR:Ljava/lang/String; = "fpdata"

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_PERMANENT:I = 0x14

.field private static final MAX_FAILED_ATTEMPTS_LOCKOUT_TIMED:I = 0x5

.field private static final MSG_USER_SWITCHING:I = 0xa

.field static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mAuthenticatorIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigNeedFake:Z

.field private mContext:Landroid/content/Context;

.field private mCryptoPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

.field private mEnumeratingUserIds:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private mHalDeviceId:J

.field private mHandler:Landroid/os/Handler;

.field private final mKeyguardPackage:Ljava/lang/String;

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockoutReceiver:Landroid/content/BroadcastReceiver;

.field private mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

.field private mPerformanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRequestId:I

.field private final mResetClientState:Ljava/lang/Runnable;

.field private final mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

.field private final mRootUserId:I

.field private mTimedLockoutCleared:Z

.field private mToken:Landroid/os/IBinder;

.field private mUnknownFingerprints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/fingerprint/FingerprintService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/fingerprint/FingerprintService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/fingerprint/FingerprintService;)I
    .registers 2

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/fingerprint/FingerprintService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic -get8(Lcom/android/server/fingerprint/FingerprintService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/fingerprint/FingerprintService;I)I
    .registers 2

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
    .registers 2

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/fingerprint/FingerprintService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;ZIII)Z
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZIII)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/fingerprint/FingerprintService;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/FileDescriptor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpProto(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutReset()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/fingerprint/FingerprintService;->startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mConfigNeedFake:Z

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRootUserId:I

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnumeratingUserIds:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method private canUseFingerprint(Ljava/lang/String;ZIII)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-virtual {p0, p5}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v0

    if-nez v0, :cond_37

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rejecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ; not a current user or profile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_37
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v2, 0x37

    invoke-virtual {v0, v2, p3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_63

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rejecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ; permission denied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_63
    if-eqz p2, :cond_97

    invoke-direct {p0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v0

    if-nez v0, :cond_95

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->currentClient(Ljava/lang/String;)Z

    move-result v0

    :goto_6f
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_97

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rejecting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ; not in foreground"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_95
    move v0, v1

    goto :goto_6f

    :cond_97
    return v1
.end method

.method private cancelLockoutReset()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private cleanupUnknownFingerprints()V
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5b

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown fingerprint size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v6, v0, 0x1

    iget v0, v8, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->userId:I

    invoke-direct {p0, v0, v5}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    iget-object v0, v8, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    iget-object v0, v8, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->f:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v3

    iget v4, v8, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;->userId:I

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    :goto_5a
    return-void

    :cond_5b
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetEnumerateState()V

    goto :goto_5a
.end method

.method private currentClient(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private doFingerprintCleanup(I)V
    .registers 4

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetEnumerateState()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnumeratingUserIds:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->enumerateNextUser()V

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 15

    const/4 v11, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    const-string/jumbo v10, "service"

    const-string/jumbo v12, "Fingerprint Manager"

    invoke-virtual {v2, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_24
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_f4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    invoke-virtual {v7}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v12, v9}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v10, "id"

    invoke-virtual {v4, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "count"

    invoke-virtual {v4, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v10, "mRequestId"

    iget v12, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    invoke-virtual {v4, v10, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "accept"

    if-eqz v6, :cond_e2

    iget v10, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    :goto_7c
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "reject"

    if-eqz v6, :cond_e4

    iget v10, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    :goto_86
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "acquire"

    if-eqz v6, :cond_e6

    iget v10, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    :goto_90
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "lockout"

    if-eqz v6, :cond_e8

    iget v10, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    :goto_9a
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "permanentLockout"

    if-eqz v6, :cond_ea

    iget v10, v6, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->permanentLockout:I

    :goto_a4
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "acceptCrypto"

    if-eqz v1, :cond_ec

    iget v10, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    :goto_ae
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "rejectCrypto"

    if-eqz v1, :cond_ee

    iget v10, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    :goto_b8
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "acquireCrypto"

    if-eqz v1, :cond_f0

    iget v10, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    :goto_c2
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v12, "lockoutCrypto"

    if-eqz v1, :cond_f2

    iget v10, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    :goto_cc
    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d2
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_d2} :catch_d4

    goto/16 :goto_24

    :catch_d4
    move-exception v3

    const-string/jumbo v10, "FingerprintService"

    const-string/jumbo v11, "dump formatting failure"

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_de
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void

    :cond_e2
    move v10, v11

    goto :goto_7c

    :cond_e4
    move v10, v11

    goto :goto_86

    :cond_e6
    move v10, v11

    goto :goto_90

    :cond_e8
    move v10, v11

    goto :goto_9a

    :cond_ea
    move v10, v11

    goto :goto_a4

    :cond_ec
    move v10, v11

    goto :goto_ae

    :cond_ee
    move v10, v11

    goto :goto_b8

    :cond_f0
    move v10, v11

    goto :goto_c2

    :cond_f2
    move v10, v11

    goto :goto_cc

    :cond_f4
    :try_start_f4
    const-string/jumbo v10, "prints"

    invoke-virtual {v2, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_fa
    .catch Lorg/json/JSONException; {:try_start_f4 .. :try_end_fa} :catch_d4

    goto :goto_de
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 16

    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_15
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_eb

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    const-wide v10, 0x21100000001L

    invoke-virtual {v4, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v8

    const-wide v10, 0x10300000001L

    invoke-virtual {v4, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v11, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v11, v7}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const-wide v12, 0x10300000002L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v3, :cond_9a

    const-wide v10, 0x11100000003L

    invoke-virtual {v4, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v10, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    const-wide v12, 0x10300000001L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    const-wide v12, 0x10300000002L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v12, 0x10300000003L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v12, 0x10300000004L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v12, 0x10300000005L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_9a
    iget-object v10, p0, Lcom/android/server/fingerprint/FingerprintService;->mCryptoPerformanceMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v2, :cond_e6

    const-wide v10, 0x11100000004L

    invoke-virtual {v4, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v10, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    const-wide v12, 0x10300000001L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    const-wide v12, 0x10300000002L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    const-wide v12, 0x10300000003L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v12, 0x10300000004L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v10, v2, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    const-wide v12, 0x10300000005L

    invoke-virtual {v4, v12, v13, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v4, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_e6
    invoke-virtual {v4, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto/16 :goto_15

    :cond_eb
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method private enumerateNextUser()V
    .registers 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnumeratingUserIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    const-string/jumbo v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v4, v0, 0x1

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Enumerating user id "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnumeratingUserIds:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, " remaining users"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mToken:Landroid/os/IBinder;

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService;->startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V

    return-void
.end method

.method private getLockoutMode()I
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_9

    const/4 v0, 0x2

    return v0

    :cond_9
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    if-lez v0, :cond_19

    iget-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Z

    if-nez v0, :cond_19

    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_19

    const/4 v0, 0x1

    return v0

    :cond_19
    return v2
.end method

.method private getLockoutResetIntent()Landroid/app/PendingIntent;
    .registers 5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getUserOrWorkProfileId(Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method private isForegroundActivity(II)Z
    .registers 10

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v0, :cond_32

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_25

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_25

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_28

    const/16 v6, 0x64

    if-ne v5, v6, :cond_25

    const/4 v5, 0x1

    return v5

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :catch_28
    move-exception v1

    const-string/jumbo v5, "FingerprintService"

    const-string/jumbo v6, "am.getRunningAppProcesses() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const/4 v5, 0x0

    return v5
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWorkProfile(I)Z
    .registers 6

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_5
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_15

    move-result-object v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    :goto_14
    return v3

    :catchall_15
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private listenForUserSwitches()V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$12;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$12;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    const-string/jumbo v3, "FingerprintService"

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method private loadAuthenticatorIds()V
    .registers 9

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_19
    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v5}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-direct {p0, v4, v7}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    goto :goto_19

    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    const-wide/16 v6, 0x3e8

    cmp-long v5, v0, v6

    if-lez v5, :cond_68

    const-string/jumbo v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadAuthenticatorIds() taking too long: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_68
    return-void
.end method

.method private notifyClientActiveCallbacks(Z)V
    .registers 7

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_20

    :try_start_9
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;

    invoke-interface {v3, p1}, Landroid/hardware/fingerprint/IFingerprintClientActiveCallback;->onClientActiveChanged(Z)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_12} :catch_15

    :goto_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :catch_15
    move-exception v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mClientActiveCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_20
    return-void
.end method

.method private notifyLockoutResetMonitors()V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method private removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eq p1, v0, :cond_41

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_41

    const-string/jumbo v1, "FingerprintService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected client: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "expected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_41
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_65

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    :cond_65
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-nez v0, :cond_6d

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    :cond_6d
    return-void

    :cond_6e
    const-string/jumbo v0, "null"

    goto :goto_3e
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetEnumerateState()V
    .registers 3

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "Enumerate cleaning up"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnumeratingUserIds:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private scheduleLockoutReset()V
    .registers 7

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x7530

    add-long/2addr v2, v4

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 30

    if-eqz p5, :cond_a

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    const/16 p5, 0x0

    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, p5

    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startAuthentication("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), mReqId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$10;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    move-object/from16 v6, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p6

    move/from16 v13, p5

    move-wide/from16 v14, p2

    move/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v5 .. v17}, Lcom/android/server/fingerprint/FingerprintService$10;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v18

    if-eqz v18, :cond_a0

    const-string/jumbo v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "In lockout mode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") ; disallowing authentication"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    move/from16 v0, v18

    if-ne v0, v6, :cond_9d

    const/4 v4, 0x7

    :goto_8c
    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    move-result v6

    if-nez v6, :cond_9c

    const-string/jumbo v6, "FingerprintService"

    const-string/jumbo v7, "Cannot send permanent lockout message to client"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9c
    return-void

    :cond_9d
    const/16 v4, 0x9

    goto :goto_8c

    :cond_a0
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method private startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V
    .registers 9

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_41

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request stop current client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-nez v1, :cond_2a

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_3d

    :cond_2a
    :goto_2a
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    invoke-virtual {v0, p2}, Lcom/android/server/fingerprint/ClientMonitor;->stop(Z)I

    goto :goto_2a

    :cond_41
    if-eqz p1, :cond_3c

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", initiatedByClient = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->notifyClientActiveCallbacks(Z)V

    invoke-virtual {p1}, Lcom/android/server/fingerprint/ClientMonitor;->start()I

    goto :goto_3c
.end method

.method private startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
    .registers 23

    if-eqz p3, :cond_8

    move/from16 v0, p3

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    const/16 p3, 0x0

    :cond_8
    move/from16 v0, p3

    move-object/from16 v1, p7

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    move/from16 v11, p3

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$11;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    move-object v4, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p3

    move-object/from16 v12, p2

    move/from16 v13, p6

    move-object/from16 v14, p7

    invoke-direct/range {v3 .. v14}, Lcom/android/server/fingerprint/FingerprintService$11;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;II[BZLjava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, v3, v2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    return-void
.end method

.method private updateActiveGroup(ILjava/lang/String;)V
    .registers 11

    const/4 p1, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-eqz v0, :cond_76

    :try_start_7
    invoke-direct {p0, p2, p1}, Lcom/android/server/fingerprint/FingerprintService;->getUserOrWorkProfileId(Ljava/lang/String;I)I

    move-result p1

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    if-eq p1, v4, :cond_5f

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v3

    new-instance v2, Ljava/io/File;

    const-string/jumbo v4, "fpdata"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_56

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_46

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot make directory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_46
    invoke-static {v2}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_56

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Restorecons failed. Directory will have wrong label."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_56
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, p1, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setActiveGroup(ILjava/lang/String;)I

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    :cond_5f
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthenticatorIds:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J

    move-result-wide v4

    :goto_6f
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_76} :catch_7a

    :cond_76
    :goto_76
    return-void

    :cond_77
    const-wide/16 v4, 0x0

    goto :goto_6f

    :catch_7a
    move-exception v1

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_76
.end method

.method private userActivity()V
    .registers 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_server_fingerprint_FingerprintService-mthref-0()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAuthenticatorId(Ljava/lang/String;)J
    .registers 8

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v2

    if-eqz v2, :cond_c

    :try_start_8
    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getAuthenticatorId()J
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_d

    move-result-wide v0

    :cond_c
    :goto_c
    return-wide v0

    :catch_d
    move-exception v3

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "getAuthenticatorId() "

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method getEffectiveUserId(I)I
    .registers 7

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    if-eqz v2, :cond_14

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_13
    return p1

    :cond_14
    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_5

    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    const/4 p1, 0x0

    :cond_5
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    .registers 9

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_4
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v2, :cond_7d

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "mDeamon was null, reconnect to fingerprint"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_31

    :try_start_11
    invoke-static {}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->getService()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_17
    .catch Ljava/util/NoSuchElementException; {:try_start_11 .. :try_end_17} :catch_a5
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_17} :catch_26
    .catchall {:try_start_11 .. :try_end_17} :catchall_31

    :goto_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    if-nez v2, :cond_34

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "fingerprint HIDL not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_31

    monitor-exit p0

    return-object v4

    :catch_26
    move-exception v0

    :try_start_27
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to get biometric interface"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_31

    goto :goto_17

    :catchall_31
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_34
    :try_start_34
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    invoke-interface {v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->asBinder()Landroid/os/IHwBinder;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-interface {v2, p0, v4, v5}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_31

    :try_start_3f
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    invoke-interface {v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_49} :catch_81
    .catchall {:try_start_3f .. :try_end_49} :catchall_31

    :goto_49
    :try_start_49
    const-string/jumbo v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fingerprint HAL id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_8f

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->loadAuthenticatorIds()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanup(I)V

    :cond_7d
    :goto_7d
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_7f
    .catchall {:try_start_49 .. :try_end_7f} :catchall_31

    monitor-exit p0

    return-object v2

    :catch_81
    move-exception v0

    :try_start_82
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to open fingerprint HAL"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    goto :goto_49

    :cond_8f
    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "Failed to open Fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "fingerprintd_openhal_error"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
    :try_end_a4
    .catchall {:try_start_82 .. :try_end_a4} :catchall_31

    goto :goto_7d

    :catch_a5
    move-exception v1

    goto/16 :goto_17
.end method

.method protected handleAcquired(JII)V
    .registers 8

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_d
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    if-eqz v1, :cond_23

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v1

    if-nez v1, :cond_23

    instance-of v1, v0, Lcom/android/server/fingerprint/AuthenticationClient;

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->acquire:I

    :cond_23
    return-void
.end method

.method protected handleAuthenticated(JIILjava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v3, p4, :cond_6

    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    :cond_6
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz p3, :cond_2d

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [B

    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_26
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/security/KeyStore;->addAuthToken([B)I

    :cond_2d
    if-eqz v1, :cond_38

    invoke-virtual {v1, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onAuthenticated(II)Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_38
    if-eqz p3, :cond_43

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v4, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->accept:I

    :goto_42
    return-void

    :cond_43
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mPerformanceStats:Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    iget v4, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->reject:I

    goto :goto_42
.end method

.method protected handleEnrollResult(JIII)V
    .registers 9

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v1, p4, :cond_7

    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    :cond_7
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnrollResult(III)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    invoke-direct {p0, p4, v2}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    :cond_17
    return-void
.end method

.method protected handleEnumerate(JIII)V
    .registers 13

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Enumerate: fid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", gid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", dev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", rem="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v4, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v4, :cond_48

    instance-of v4, v0, Lcom/android/server/fingerprint/EnumerateClient;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_48

    return-void

    :cond_48
    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onEnumerationResult(III)Z

    if-nez p5, :cond_af

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnumeratingUserIds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    instance-of v4, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v4, :cond_a1

    move-object v4, v0

    check-cast v4, Lcom/android/server/fingerprint/InternalEnumerateClient;

    invoke-virtual {v4}, Lcom/android/server/fingerprint/InternalEnumerateClient;->getEnumeratedList()Ljava/util/List;

    move-result-object v1

    const-string/jumbo v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Added "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " enumerated fingerprints for deletion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_86
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getTargetUserId()I

    move-result v6

    invoke-direct {v5, p0, v2, v6}, Lcom/android/server/fingerprint/FingerprintService$UserFingerprint;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/hardware/fingerprint/Fingerprint;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    :cond_a1
    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnumeratingUserIds:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->enumerateNextUser()V

    :cond_af
    :goto_af
    return-void

    :cond_b0
    instance-of v4, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v4, :cond_af

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v5, "Finished enumerating all users"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    goto :goto_af
.end method

.method protected handleError(JII)V
    .registers 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-nez v1, :cond_b

    instance-of v1, v0, Lcom/android/server/fingerprint/InternalEnumerateClient;

    if-eqz v1, :cond_e

    :cond_b
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetEnumerateState()V

    :cond_e
    if-eqz v0, :cond_19

    invoke-virtual {v0, p3, p4}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    :cond_19
    const-string/jumbo v2, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError(client="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_82

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    :goto_2e
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", error = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    if-ne p3, v1, :cond_86

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetClientState:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v1, :cond_81

    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start pending client "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mPendingClient:Lcom/android/server/fingerprint/ClientMonitor;

    :cond_81
    :goto_81
    return-void

    :cond_82
    const-string/jumbo v1, "null"

    goto :goto_2e

    :cond_86
    const/4 v1, 0x1

    if-ne p3, v1, :cond_81

    const-string/jumbo v1, "FingerprintService"

    const-string/jumbo v2, "Got ERROR_HW_UNAVAILABLE; try reconnecting next client."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_94
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I
    :try_end_9e
    .catchall {:try_start_94 .. :try_end_9e} :catchall_a0

    monitor-exit p0

    goto :goto_81

    :catchall_a0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected handleRemoved(JIII)V
    .registers 11

    const/4 v4, 0x0

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    if-eq v1, p4, :cond_7

    iget p4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    :cond_7
    const-string/jumbo v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Removed: fid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", gid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", dev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", rem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentClient:Lcom/android/server/fingerprint/ClientMonitor;

    if-eqz v0, :cond_58

    invoke-virtual {v0, p3, p4, p5}, Lcom/android/server/fingerprint/ClientMonitor;->onRemoved(III)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/ClientMonitor;)V

    invoke-virtual {p0, p4}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_58

    invoke-direct {p0, p4, v4}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    :cond_58
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mUnknownFingerprints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6a

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cleanupUnknownFingerprints()V

    :cond_69
    :goto_69
    return-void

    :cond_6a
    instance-of v1, v0, Lcom/android/server/fingerprint/InternalRemovalClient;

    if-eqz v1, :cond_69

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetEnumerateState()V

    goto :goto_69
.end method

.method handleUserSwitching(I)V
    .registers 5

    if-eqz p1, :cond_1d

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "do not handleUserSwitching id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->doFingerprintCleanup(I)V

    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .registers 5

    const/4 v0, 0x0

    const/4 p1, 0x0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method isCurrentUserOrProfile(I)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .registers 4

    const-string/jumbo v0, "fingerprint"

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$Lambda$NsdFXKe2P39OH-qCAY_zqOMIIsg;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v2, "FingerprintService.onStart"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    return-void
.end method

.method protected resetFailedAttempts(Z)V
    .registers 6

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutMode()I

    move-result v0

    if-eqz v0, :cond_21

    const-string/jumbo v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reset fingerprint lockout, clearAttemptCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    if-eqz p1, :cond_25

    iput v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    :cond_25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mTimedLockoutCleared:Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutReset()V

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    return-void
.end method

.method public serviceDied(J)V
    .registers 7

    const/4 v3, 0x1

    const-string/jumbo v0, "FingerprintService"

    const-string/jumbo v1, "fingerprint HAL died"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "fingerprintd_died"

    invoke-static {v0, v1, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JII)V

    return-void
.end method

.method startEnumerate(Landroid/os/IBinder;ILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .registers 32

    if-eqz p2, :cond_a

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    const/16 p2, 0x0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v2

    if-nez v2, :cond_1a

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v6, "startEnumerate: no fingerprint HAL!"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    if-eqz p5, :cond_48

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$8;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    move/from16 v10, p2

    move/from16 v11, p2

    move/from16 v12, p4

    invoke-direct/range {v3 .. v14}, Lcom/android/server/fingerprint/FingerprintService$8;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Ljava/util/List;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    :goto_47
    return-void

    :cond_48
    new-instance v15, Lcom/android/server/fingerprint/FingerprintService$9;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v16, p0

    move-object/from16 v20, p1

    move-object/from16 v21, p3

    move/from16 v22, p2

    move/from16 v23, p2

    move/from16 v24, p4

    invoke-direct/range {v15 .. v25}, Lcom/android/server/fingerprint/FingerprintService$9;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    goto :goto_47
.end method

.method startExtCmd(Landroid/os/IBinder;III)V
    .registers 11

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_f

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :try_start_f
    invoke-interface {v0, p3, p4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->extCmd(II)I

    move-result v2

    if-eqz v2, :cond_2f

    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "extCmd failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string/jumbo v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startExtCmd result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_49} :catch_4a

    :goto_49
    return-void

    :catch_4a
    move-exception v1

    const-string/jumbo v3, "FingerprintService"

    const-string/jumbo v4, "extCmd failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method

.method public startPostEnroll(Landroid/os/IBinder;)I
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_11

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startPostEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_11
    :try_start_11
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->postEnroll()I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_16

    move-result v2

    return v2

    :catch_16
    move-exception v1

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startPostEnroll failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .registers 8

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startPreEnroll: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v4

    :cond_12
    :try_start_12
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->preEnroll()J
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-wide v2

    return-wide v2

    :catch_17
    move-exception v1

    const-string/jumbo v2, "FingerprintService"

    const-string/jumbo v3, "startPreEnroll failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v4
.end method

.method startRemove(Landroid/os/IBinder;IIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ZZ)V
    .registers 27

    if-eqz p4, :cond_a

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/fingerprint/FingerprintService;->mRequestId:I

    const/16 p4, 0x0

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v2

    if-nez v2, :cond_1a

    const-string/jumbo v4, "FingerprintService"

    const-string/jumbo v6, "startRemove: no fingerprint HAL!"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    if-eqz p7, :cond_42

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v3, Lcom/android/server/fingerprint/FingerprintService$6;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v4, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p5

    move/from16 v10, p2

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p6

    invoke-direct/range {v3 .. v14}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    :goto_41
    return-void

    :cond_42
    new-instance v7, Lcom/android/server/fingerprint/FingerprintService$7;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v8, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p5

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move/from16 v17, p6

    invoke-direct/range {v7 .. v18}, Lcom/android/server/fingerprint/FingerprintService$7;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIIZLjava/lang/String;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v4}, Lcom/android/server/fingerprint/FingerprintService;->startClient(Lcom/android/server/fingerprint/ClientMonitor;Z)V

    goto :goto_41
.end method
