.class public final Landroid/os/StrictMode;
.super Ljava/lang/Object;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/StrictMode$1;,
        Landroid/os/StrictMode$2;,
        Landroid/os/StrictMode$3;,
        Landroid/os/StrictMode$4;,
        Landroid/os/StrictMode$5;,
        Landroid/os/StrictMode$6;,
        Landroid/os/StrictMode$7;,
        Landroid/os/StrictMode$8;,
        Landroid/os/StrictMode$AndroidBlockGuardPolicy;,
        Landroid/os/StrictMode$AndroidCloseGuardReporter;,
        Landroid/os/StrictMode$InstanceCountViolation;,
        Landroid/os/StrictMode$InstanceTracker;,
        Landroid/os/StrictMode$LogStackTrace;,
        Landroid/os/StrictMode$Span;,
        Landroid/os/StrictMode$StrictModeCustomViolation;,
        Landroid/os/StrictMode$StrictModeDiskReadViolation;,
        Landroid/os/StrictMode$StrictModeDiskWriteViolation;,
        Landroid/os/StrictMode$StrictModeNetworkViolation;,
        Landroid/os/StrictMode$StrictModeResourceMismatchViolation;,
        Landroid/os/StrictMode$StrictModeUnbufferedIOViolation;,
        Landroid/os/StrictMode$StrictModeViolation;,
        Landroid/os/StrictMode$ThreadPolicy;,
        Landroid/os/StrictMode$ThreadSpanState;,
        Landroid/os/StrictMode$ViolationInfo;,
        Landroid/os/StrictMode$ViolationListener;,
        Landroid/os/StrictMode$VmPolicy;
    }
.end annotation


# static fields
.field private static final ALL_THREAD_DETECT_BITS:I = 0x3f

.field private static final ALL_VM_DETECT_BITS:I = -0x7fff0100

.field private static final CLEARTEXT_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.clear"

.field public static final DETECT_CUSTOM:I = 0x8

.field public static final DETECT_DISK_READ:I = 0x2

.field public static final DETECT_DISK_WRITE:I = 0x1

.field public static final DETECT_NETWORK:I = 0x4

.field public static final DETECT_RESOURCE_MISMATCH:I = 0x10

.field public static final DETECT_UNBUFFERED_IO:I = 0x20

.field public static final DETECT_VM_ACTIVITY_LEAKS:I = 0x400

.field private static final DETECT_VM_CLEARTEXT_NETWORK:I = 0x4000

.field public static final DETECT_VM_CLOSABLE_LEAKS:I = 0x200

.field private static final DETECT_VM_CONTENT_URI_WITHOUT_PERMISSION:I = 0x8000

.field public static final DETECT_VM_CURSOR_LEAKS:I = 0x100

.field private static final DETECT_VM_FILE_URI_EXPOSURE:I = 0x2000

.field private static final DETECT_VM_INSTANCE_LEAKS:I = 0x800

.field public static final DETECT_VM_REGISTRATION_LEAKS:I = 0x1000

.field private static final DETECT_VM_UNTAGGED_SOCKET:I = -0x80000000

.field public static final DISABLE_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.disable"

.field private static final EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_V:Z

.field private static final MAX_OFFENSES_PER_LOOP:I = 0xa

.field private static final MAX_SPAN_TAGS:I = 0x14

.field private static final MIN_DIALOG_INTERVAL_MS:J = 0x7530L

.field private static final MIN_LOG_INTERVAL_MS:J = 0x3e8L

.field public static final NETWORK_POLICY_ACCEPT:I = 0x0

.field public static final NETWORK_POLICY_LOG:I = 0x1

.field public static final NETWORK_POLICY_REJECT:I = 0x2

.field private static final NO_OP_SPAN:Landroid/os/StrictMode$Span;

.field public static final PENALTY_DEATH:I = 0x40000

.field public static final PENALTY_DEATH_ON_CLEARTEXT_NETWORK:I = 0x2000000

.field public static final PENALTY_DEATH_ON_FILE_URI_EXPOSURE:I = 0x4000000

.field public static final PENALTY_DEATH_ON_NETWORK:I = 0x1000000

.field public static final PENALTY_DIALOG:I = 0x20000

.field public static final PENALTY_DROPBOX:I = 0x200000

.field public static final PENALTY_FLASH:I = 0x100000

.field public static final PENALTY_GATHER:I = 0x400000

.field public static final PENALTY_LOG:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "StrictMode"

.field private static final THREAD_PENALTY_MASK:I = 0x1770000

.field public static final VISUAL_PROPERTY:Ljava/lang/String; = "persist.sys.strictmode.visual"

.field private static final VM_PENALTY_MASK:I = 0x6250000

.field private static final gatheredViolations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sExpectedActivityInstanceCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsIdlerRegistered:Z

.field private static sLastInstanceCountCheckMillis:J

.field private static final sLastVmViolationTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sListener:Landroid/os/StrictMode$ViolationListener;

.field private static final sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private static final sThisThreadSpanState:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$ThreadSpanState;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sVmPolicy:Landroid/os/StrictMode$VmPolicy;

.field private static volatile sVmPolicyMask:I

.field private static sWindowManager:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/view/IWindowManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadAndroidPolicy:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private static final violationsBeingTimed:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/StrictMode$ViolationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    return v0
.end method

.method static synthetic -get2()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic -get3()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get4()J
    .registers 2

    sget-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide v0
.end method

.method static synthetic -get5()Landroid/os/StrictMode$ViolationListener;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sListener:Landroid/os/StrictMode$ViolationListener;

    return-object v0
.end method

.method static synthetic -get6()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic -get7()Landroid/util/Singleton;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    return-object v0
.end method

.method static synthetic -get8()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic -get9()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic -set0(J)J
    .registers 2

    sput-wide p0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    return-wide p0
.end method

.method static synthetic -wrap0()Z
    .registers 1

    invoke-static {}, Landroid/os/StrictMode;->tooManyViolationsThisLoop()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 1

    invoke-static {p0}, Landroid/os/StrictMode;->executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V

    return-void
.end method

.method static synthetic -wrap4(I)V
    .registers 1

    invoke-static {p0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-string/jumbo v0, "StrictMode"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/os/StrictMode;->LOG_V:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->EMPTY_CLASS_LIMIT_MAP:Ljava/util/HashMap;

    sput v2, Landroid/os/StrictMode;->sVmPolicyMask:I

    sget-object v0, Landroid/os/StrictMode$VmPolicy;->LAX:Landroid/os/StrictMode$VmPolicy;

    sput-object v0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/os/StrictMode$1;

    invoke-direct {v0}, Landroid/os/StrictMode$1;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/os/StrictMode$2;

    invoke-direct {v0}, Landroid/os/StrictMode$2;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/os/StrictMode$3;

    invoke-direct {v0}, Landroid/os/StrictMode$3;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->threadHandler:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/os/StrictMode$4;

    invoke-direct {v0}, Landroid/os/StrictMode$4;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/os/StrictMode;->sLastInstanceCountCheckMillis:J

    sput-boolean v2, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    new-instance v0, Landroid/os/StrictMode$5;

    invoke-direct {v0}, Landroid/os/StrictMode$5;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    new-instance v0, Landroid/os/StrictMode$6;

    invoke-direct {v0}, Landroid/os/StrictMode$6;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    new-instance v0, Landroid/os/StrictMode$7;

    invoke-direct {v0}, Landroid/os/StrictMode$7;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/os/StrictMode$8;

    invoke-direct {v0}, Landroid/os/StrictMode$8;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sWindowManager:Landroid/util/Singleton;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;
    .registers 4

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    and-int/lit8 v0, v1, -0x3

    if-eq v0, v1, :cond_b

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :cond_b
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v2
.end method

.method public static allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;
    .registers 4

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    and-int/lit8 v0, v1, -0x4

    if-eq v0, v1, :cond_b

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :cond_b
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v2
.end method

.method private static amTheSystemServerProcess()Z
    .registers 8

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_a

    return v4

    :cond_a
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    array-length v6, v5

    move v3, v4

    :goto_18
    if-ge v3, v6, :cond_30

    aget-object v2, v5, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    const-string/jumbo v7, "com.android.server."

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v3, 0x1

    return v3

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_30
    return v4
.end method

.method static clearGatheredViolations()V
    .registers 2

    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static conditionallyCheckInstanceCounts()V
    .registers 13

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v7

    iget-object v10, v7, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v8

    if-nez v8, :cond_e

    return-void

    :cond_e
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v10, v7, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Class;

    invoke-interface {v10, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-static {v0, v12}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v2

    const/4 v1, 0x0

    :goto_2a
    array-length v10, v0

    if-ge v1, v10, :cond_51

    aget-object v3, v0, v1

    iget-object v10, v7, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-wide v4, v2, v1

    int-to-long v10, v6

    cmp-long v10, v4, v10

    if-lez v10, :cond_4e

    new-instance v9, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v9, v3, v4, v5, v6}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_51
    return-void
.end method

.method public static conditionallyEnableDebugLogging()Z
    .registers 7

    const/high16 v6, -0x80000000

    const/4 v5, 0x0

    const-string/jumbo v4, "persist.sys.strictmode.visual"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-static {}, Landroid/os/StrictMode;->amTheSystemServerProcess()Z

    move-result v4

    xor-int/lit8 v0, v4, 0x1

    :goto_12
    const-string/jumbo v4, "persist.sys.strictmode.disable"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v0, :cond_27

    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    if-nez v4, :cond_21

    if-eqz v2, :cond_27

    :cond_21
    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    return v5

    :cond_25
    const/4 v0, 0x0

    goto :goto_12

    :cond_27
    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    if-eqz v4, :cond_2c

    const/4 v0, 0x1

    :cond_2c
    const/4 v3, 0x7

    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    if-nez v4, :cond_34

    const v3, 0x200007

    :cond_34
    if-eqz v0, :cond_39

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    :cond_39
    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    sget-boolean v4, Landroid/os/Build;->IS_USER:Z

    if-eqz v4, :cond_45

    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    :goto_43
    const/4 v4, 0x1

    return v4

    :cond_45
    new-instance v4, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    if-nez v4, :cond_58

    const/16 v4, 0x400

    invoke-virtual {v1, v4}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    :cond_58
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDropBox()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v1

    sget-boolean v4, Landroid/os/Build;->IS_ENG:Z

    if-eqz v4, :cond_63

    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_63
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x2710

    if-ge v4, v5, :cond_7d

    invoke-static {v1, v6}, Landroid/os/StrictMode$VmPolicy$Builder;->-wrap0(Landroid/os/StrictMode$VmPolicy$Builder;I)Landroid/os/StrictMode$VmPolicy$Builder;

    :goto_6e
    invoke-virtual {v1}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v4

    invoke-static {v4}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    goto :goto_43

    :cond_7d
    invoke-virtual {v1, v6}, Landroid/os/StrictMode$VmPolicy$Builder;->disable(I)Landroid/os/StrictMode$VmPolicy$Builder;

    goto :goto_6e
.end method

.method public static decrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 12

    const/4 v10, 0x0

    if-nez p0, :cond_4

    return-void

    :cond_4
    const-class v8, Landroid/os/StrictMode;

    monitor-enter v8

    :try_start_7
    sget-object v7, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v7, v7, Landroid/os/StrictMode$VmPolicy;->mask:I
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_44

    and-int/lit16 v7, v7, 0x400

    if-nez v7, :cond_11

    monitor-exit v8

    return-void

    :cond_11
    :try_start_11
    sget-object v7, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_21

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_33

    :cond_21
    const/4 v5, 0x0

    :goto_22
    if-nez v5, :cond_3a

    sget-object v7, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_44

    :goto_29
    add-int/lit8 v4, v5, 0x1

    monitor-exit v8

    invoke-static {p0}, Landroid/os/StrictMode$InstanceTracker;->getInstanceCount(Ljava/lang/Class;)I

    move-result v0

    if-gt v0, v4, :cond_47

    return-void

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    goto :goto_22

    :cond_3a
    sget-object v7, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, p0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_33 .. :try_end_43} :catchall_44

    goto :goto_29

    :catchall_44
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_47
    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {p0, v10}, Ldalvik/system/VMDebug;->countInstancesOfClass(Ljava/lang/Class;Z)J

    move-result-wide v2

    int-to-long v8, v4

    cmp-long v7, v2, v8

    if-lez v7, :cond_65

    new-instance v6, Landroid/os/StrictMode$InstanceCountViolation;

    invoke-direct {v6, p0, v2, v3, v4}, Landroid/os/StrictMode$InstanceCountViolation;-><init>(Ljava/lang/Class;JI)V

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_65
    return-void
.end method

.method public static disableDeathOnFileUriExposure()V
    .registers 2

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const v1, -0x4002001

    and-int/2addr v0, v1

    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    return-void
.end method

.method private static dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V
    .registers 6

    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_10

    sget-object v1, Landroid/os/StrictMode;->sDropboxCallsInFlight:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    return-void

    :cond_10
    sget-boolean v1, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v1, :cond_2e

    const-string/jumbo v1, "StrictMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Dropboxing async; in-flight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    new-instance v1, Landroid/os/StrictMode$9;

    const-string/jumbo v2, "callActivityManagerForStrictModeDropbox"

    invoke-direct {v1, v2, p0, p1}, Landroid/os/StrictMode$9;-><init>(Ljava/lang/String;ILandroid/os/StrictMode$ViolationInfo;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$9;->start()V

    return-void
.end method

.method public static enableDeathOnFileUriExposure()V
    .registers 2

    sget v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    const v1, 0x4002000

    or-int/2addr v0, v1

    sput v0, Landroid/os/StrictMode;->sVmPolicyMask:I

    return-void
.end method

.method public static enableDeathOnNetwork()V
    .registers 4

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    or-int/lit8 v2, v1, 0x4

    const/high16 v3, 0x1000000

    or-int v0, v2, v3

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method public static enableDefaults()V
    .registers 1

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method public static enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;
    .registers 7

    sget-boolean v3, Landroid/os/Build;->IS_USER:Z

    if-eqz v3, :cond_7

    sget-object v3, Landroid/os/StrictMode;->NO_OP_SPAN:Landroid/os/StrictMode$Span;

    return-object v3

    :cond_7
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "name must be non-null and non-empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_18
    sget-object v3, Landroid/os/StrictMode;->sThisThreadSpanState:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/StrictMode$ThreadSpanState;

    const/4 v0, 0x0

    monitor-enter v2

    :try_start_22
    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_89

    iget-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    invoke-static {v0}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    iput-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListHead:Landroid/os/StrictMode$Span;

    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mFreeListSize:I

    :goto_34
    invoke-static {v0, p0}, Landroid/os/StrictMode$Span;->-set1(Landroid/os/StrictMode$Span;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/os/StrictMode$Span;->-set0(Landroid/os/StrictMode$Span;J)J

    iget-object v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->-set2(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/StrictMode$Span;->-set3(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    iput-object v0, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveHead:Landroid/os/StrictMode$Span;

    iget v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-static {v0}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-static {v0}, Landroid/os/StrictMode$Span;->-get1(Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/os/StrictMode$Span;->-set3(Landroid/os/StrictMode$Span;Landroid/os/StrictMode$Span;)Landroid/os/StrictMode$Span;

    :cond_5c
    sget-boolean v3, Landroid/os/StrictMode;->LOG_V:Z

    if-eqz v3, :cond_87

    const-string/jumbo v3, "StrictMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Span enter="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "; size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/os/StrictMode$ThreadSpanState;->mActiveSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_22 .. :try_end_87} :catchall_90

    :cond_87
    monitor-exit v2

    return-object v0

    :cond_89
    :try_start_89
    new-instance v1, Landroid/os/StrictMode$Span;

    invoke-direct {v1, v2}, Landroid/os/StrictMode$Span;-><init>(Landroid/os/StrictMode$ThreadSpanState;)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_90

    move-object v0, v1

    goto :goto_34

    :catchall_90
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static executeDeathPenalty(Landroid/os/StrictMode$ViolationInfo;)V
    .registers 5

    iget-object v1, p0, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    iget-object v1, v1, Landroid/app/ApplicationErrorReport$CrashInfo;->exceptionMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/StrictMode;->parseViolationFromMessage(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Landroid/os/StrictMode$StrictModeViolation;

    iget v2, p0, Landroid/os/StrictMode$ViolationInfo;->policy:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/os/StrictMode$StrictModeViolation;-><init>(IILjava/lang/String;)V

    throw v1
.end method

.method public static getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;
    .registers 3

    new-instance v0, Landroid/os/StrictMode$ThreadPolicy;

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/os/StrictMode$ThreadPolicy;-><init>(ILandroid/os/StrictMode$ThreadPolicy;)V

    return-object v0
.end method

.method public static getThreadPolicyMask()I
    .registers 1

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->getPolicyMask()I

    move-result v0

    return v0
.end method

.method public static getVmPolicy()Landroid/os/StrictMode$VmPolicy;
    .registers 2

    const-class v0, Landroid/os/StrictMode;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static hasGatheredViolations()Z
    .registers 1

    sget-object v0, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static incrementExpectedActivityCount(Ljava/lang/Class;)V
    .registers 5

    if-nez p0, :cond_3

    return-void

    :cond_3
    const-class v3, Landroid/os/StrictMode;

    monitor-enter v3

    :try_start_6
    sget-object v2, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v2, v2, Landroid/os/StrictMode$VmPolicy;->mask:I
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_2d

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_10

    monitor-exit v3

    return-void

    :cond_10
    :try_start_10
    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_26

    const/4 v2, 0x1

    :goto_1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Landroid/os/StrictMode;->sExpectedActivityInstanceCount:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_2d

    monitor-exit v3

    return-void

    :cond_26
    :try_start_26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_2d

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :catchall_2d
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static noteDiskRead()V
    .registers 2

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    return-void

    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onReadFromDisk()V

    return-void
.end method

.method public static noteDiskWrite()V
    .registers 2

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    return-void

    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onWriteToDisk()V

    return-void
.end method

.method public static noteResourceMismatch(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    return-void

    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onResourceMismatch(Ljava/lang/Object;)V

    return-void
.end method

.method public static noteSlowCall(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    return-void

    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onCustomSlowCall(Ljava/lang/String;)V

    return-void
.end method

.method public static noteUnbufferedIO()V
    .registers 2

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    instance-of v1, v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-nez v1, :cond_9

    return-void

    :cond_9
    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->onUnbufferedIO()V

    return-void
.end method

.method private static onBinderStrictModePolicyChange(I)V
    .registers 1

    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    return-void
.end method

.method public static onCleartextNetworkDetected([B)V
    .registers 11

    const/4 v9, 0x4

    const/16 v8, 0x10

    const/4 v7, 0x0

    const/4 v3, 0x0

    if-eqz p0, :cond_19

    array-length v5, p0

    const/16 v6, 0x14

    if-lt v5, v6, :cond_6f

    aget-byte v5, p0, v7

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x40

    if-ne v5, v6, :cond_6f

    new-array v3, v9, [B

    invoke-static {p0, v8, v3, v7, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_19
    :goto_19
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Detected cleartext network traffic from UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_56

    :try_start_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Detected cleartext network traffic from UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_55
    .catch Ljava/net/UnknownHostException; {:try_start_33 .. :try_end_55} :catch_86

    move-result-object v2

    :cond_56
    :goto_56
    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_84

    const/4 v0, 0x1

    :goto_5e
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void

    :cond_6f
    array-length v5, p0

    const/16 v6, 0x28

    if-lt v5, v6, :cond_19

    aget-byte v5, p0, v7

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x60

    if-ne v5, v6, :cond_19

    new-array v3, v8, [B

    const/16 v5, 0x18

    invoke-static {p0, v5, v3, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_19

    :cond_84
    const/4 v0, 0x0

    goto :goto_5e

    :catch_86
    move-exception v1

    goto :goto_56
.end method

.method public static onContentUriWithoutPermission(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exposed beyond app through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " without permission grant flags; did you forget"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " FLAG_GRANT_READ_URI_PERMISSION?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onFileUriExposed(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " exposed beyond app through "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_25

    new-instance v1, Landroid/os/FileUriExposedException;

    invoke-direct {v1, v0}, Landroid/os/FileUriExposedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2, v1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onIntentReceiverLeaked(Ljava/lang/Throwable;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onServiceConnectionLeaked(Ljava/lang/Throwable;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onSqliteObjectLeaked(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onUntaggedSocket()V
    .registers 2

    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "Untagged socket detected; use TrafficStats.setThreadSocketTag() to track all network usage"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .registers 25

    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v19, 0x200000

    and-int v18, v18, v19

    if-eqz v18, :cond_b7

    const/4 v12, 0x1

    :goto_9
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v19, 0x40000

    and-int v18, v18, v19

    if-nez v18, :cond_ba

    move/from16 v7, p2

    :goto_13
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v19, 0x10000

    and-int v18, v18, v19

    if-eqz v18, :cond_bd

    const/4 v13, 0x1

    :goto_1c
    new-instance v6, Landroid/os/StrictMode$ViolationInfo;

    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Landroid/os/StrictMode$ViolationInfo;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v6, Landroid/os/StrictMode$ViolationInfo;->numAnimationsRunning:I

    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/os/StrictMode$ViolationInfo;->tags:[Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    iput-object v0, v6, Landroid/os/StrictMode$ViolationInfo;->broadcastIntentAction:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/StrictMode$ViolationInfo;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-wide/16 v8, 0x0

    const-wide v16, 0x7fffffffffffffffL

    sget-object v19, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    monitor-enter v19

    :try_start_51
    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6b

    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long v16, v10, v8

    :cond_6b
    const-wide/16 v20, 0x3e8

    cmp-long v18, v16, v20

    if-lez v18, :cond_7e

    sget-object v18, Landroid/os/StrictMode;->sLastVmViolationTime:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7e
    .catchall {:try_start_51 .. :try_end_7e} :catchall_c0

    :cond_7e
    monitor-exit v19

    if-eqz v13, :cond_8e

    sget-object v18, Landroid/os/StrictMode;->sListener:Landroid/os/StrictMode$ViolationListener;

    if-eqz v18, :cond_8e

    sget-object v18, Landroid/os/StrictMode;->sListener:Landroid/os/StrictMode$ViolationListener;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Landroid/os/StrictMode$ViolationListener;->onViolation(Ljava/lang/String;)V

    :cond_8e
    if-eqz v13, :cond_a2

    const-wide/16 v18, 0x3e8

    cmp-long v18, v16, v18

    if-lez v18, :cond_a2

    const-string/jumbo v18, "StrictMode"

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a2
    sget v18, Landroid/os/StrictMode;->sVmPolicyMask:I

    const v19, -0x7fff0100

    and-int v18, v18, v19

    const/high16 v19, 0x200000

    or-int v15, v19, v18

    if-eqz v12, :cond_c3

    xor-int/lit8 v18, v7, 0x1

    if-eqz v18, :cond_c3

    invoke-static {v15, v6}, Landroid/os/StrictMode;->dropboxViolationAsync(ILandroid/os/StrictMode$ViolationInfo;)V

    return-void

    :cond_b7
    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_ba
    const/4 v7, 0x1

    goto/16 :goto_13

    :cond_bd
    const/4 v13, 0x0

    goto/16 :goto_1c

    :catchall_c0
    move-exception v18

    monitor-exit v19

    throw v18

    :cond_c3
    if-eqz v12, :cond_e6

    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-nez v18, :cond_e6

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v14

    const/16 v18, 0x0

    :try_start_d1
    invoke-static/range {v18 .. v18}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v18

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->getApplicationObject()Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v15, v6}, Landroid/app/IActivityManager;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_e3} :catch_fd
    .catchall {:try_start_d1 .. :try_end_e3} :catchall_116

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    :cond_e6
    :goto_e6
    if-eqz v7, :cond_fc

    sget-object v18, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string/jumbo v19, "StrictMode VmPolicy violation with POLICY_DEATH; shutting down."

    invoke-virtual/range {v18 .. v19}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    invoke-static/range {v18 .. v18}, Landroid/os/Process;->killProcess(I)V

    const/16 v18, 0xa

    invoke-static/range {v18 .. v18}, Ljava/lang/System;->exit(I)V

    :cond_fc
    return-void

    :catch_fd
    move-exception v4

    :try_start_fe
    instance-of v0, v4, Landroid/os/DeadObjectException;

    move/from16 v18, v0
    :try_end_102
    .catchall {:try_start_fe .. :try_end_102} :catchall_116

    if-eqz v18, :cond_108

    :goto_104
    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    goto :goto_e6

    :cond_108
    :try_start_108
    const-string/jumbo v18, "StrictMode"

    const-string/jumbo v19, "RemoteException trying to handle StrictMode violation"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_115
    .catchall {:try_start_108 .. :try_end_115} :catchall_116

    goto :goto_104

    :catchall_116
    move-exception v18

    invoke-static {v14}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v18
.end method

.method public static onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/os/StrictMode;->onVmPolicyViolation(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static parsePolicyFromMessage(Ljava/lang/String;)I
    .registers 6

    const/4 v4, 0x0

    if-eqz p0, :cond_e

    const-string/jumbo v3, "policy="

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_f

    :cond_e
    return v4

    :cond_f
    const/16 v3, 0x20

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    return v4

    :cond_19
    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :try_start_1e
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_21} :catch_23

    move-result v3

    return v3

    :catch_23
    move-exception v0

    return v4
.end method

.method private static parseViolationFromMessage(Ljava/lang/String;)I
    .registers 9

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-nez p0, :cond_5

    return v6

    :cond_5
    const-string/jumbo v5, "violation="

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_f

    return v6

    :cond_f
    const-string/jumbo v5, "violation="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v2, v3, v5

    const/16 v5, 0x20

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v7, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_24
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :try_start_28
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_2b} :catch_2d

    move-result v5

    return v5

    :catch_2d
    move-exception v0

    return v6
.end method

.method static readAndHandleBinderCallViolations(Landroid/os/Parcel;)V
    .registers 12

    const/4 v10, 0x0

    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    const-string/jumbo v9, "# via Binder call with stack:\n"

    invoke-virtual {v8, v9}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    new-instance v6, Lcom/android/internal/util/FastPrintWriter;

    const/16 v9, 0x100

    invoke-direct {v6, v8, v10, v9}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    new-instance v9, Landroid/os/StrictMode$LogStackTrace;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Landroid/os/StrictMode$LogStackTrace;-><init>(Landroid/os/StrictMode$LogStackTrace;)V

    invoke-virtual {v9, v6}, Landroid/os/StrictMode$LogStackTrace;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicyMask()I

    move-result v5

    const/high16 v9, 0x400000

    and-int/2addr v9, v5

    if-eqz v9, :cond_50

    const/4 v0, 0x1

    :goto_2d
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/4 v1, 0x0

    :goto_32
    if-ge v1, v7, :cond_52

    new-instance v2, Landroid/os/StrictMode$ViolationInfo;

    xor-int/lit8 v9, v0, 0x1

    invoke-direct {v2, p0, v9}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;Z)V

    iget-object v9, v2, Landroid/os/StrictMode$ViolationInfo;->crashInfo:Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-virtual {v9, v3}, Landroid/app/ApplicationErrorReport$CrashInfo;->appendStackTrace(Ljava/lang/String;)V

    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    instance-of v9, v4, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v9, :cond_4d

    check-cast v4, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-virtual {v4, v2}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->handleViolationWithTimingAttempt(Landroid/os/StrictMode$ViolationInfo;)V

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_50
    const/4 v0, 0x0

    goto :goto_2d

    :cond_52
    return-void
.end method

.method private static setBlockGuardPolicy(I)V
    .registers 4

    if-nez p0, :cond_8

    sget-object v2, Ldalvik/system/BlockGuard;->LAX_POLICY:Ldalvik/system/BlockGuard$Policy;

    invoke-static {v2}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    return-void

    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v1

    instance-of v2, v1, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    if-eqz v2, :cond_17

    move-object v0, v1

    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    :goto_13
    invoke-virtual {v0, p0}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;->setPolicyMask(I)V

    return-void

    :cond_17
    sget-object v2, Landroid/os/StrictMode;->threadAndroidPolicy:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    invoke-static {v0}, Ldalvik/system/BlockGuard;->setThreadPolicy(Ldalvik/system/BlockGuard$Policy;)V

    goto :goto_13
.end method

.method private static setCloseGuardEnabled(Z)V
    .registers 3

    invoke-static {}, Ldalvik/system/CloseGuard;->getReporter()Ldalvik/system/CloseGuard$Reporter;

    move-result-object v0

    instance-of v0, v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    if-nez v0, :cond_11

    new-instance v0, Landroid/os/StrictMode$AndroidCloseGuardReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidCloseGuardReporter;-><init>(Landroid/os/StrictMode$AndroidCloseGuardReporter;)V

    invoke-static {v0}, Ldalvik/system/CloseGuard;->setReporter(Ldalvik/system/CloseGuard$Reporter;)V

    :cond_11
    invoke-static {p0}, Ldalvik/system/CloseGuard;->setEnabled(Z)V

    return-void
.end method

.method public static setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    .registers 2

    iget v0, p0, Landroid/os/StrictMode$ThreadPolicy;->mask:I

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    return-void
.end method

.method private static setThreadPolicyMask(I)V
    .registers 1

    invoke-static {p0}, Landroid/os/StrictMode;->setBlockGuardPolicy(I)V

    invoke-static {p0}, Landroid/os/Binder;->setThreadStrictModePolicy(I)V

    return-void
.end method

.method public static setViolationListener(Landroid/os/StrictMode$ViolationListener;)V
    .registers 1

    sput-object p0, Landroid/os/StrictMode;->sListener:Landroid/os/StrictMode$ViolationListener;

    return-void
.end method

.method public static setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V
    .registers 9

    const-class v6, Landroid/os/StrictMode;

    monitor-enter v6

    :try_start_3
    sput-object p0, Landroid/os/StrictMode;->sVmPolicy:Landroid/os/StrictMode$VmPolicy;

    iget v5, p0, Landroid/os/StrictMode$VmPolicy;->mask:I

    sput v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    invoke-static {}, Landroid/os/StrictMode;->vmClosableObjectLeaksEnabled()Z

    move-result v5

    invoke-static {v5}, Landroid/os/StrictMode;->setCloseGuardEnabled(Z)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v2, v1, Landroid/os/Looper;->mQueue:Landroid/os/MessageQueue;

    iget-object v5, p0, Landroid/os/StrictMode$VmPolicy;->classInstanceLimit:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_27

    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v7, 0x6250000

    and-int/2addr v5, v7

    if-nez v5, :cond_5b

    :cond_27
    sget-object v5, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v5}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    :cond_2f
    :goto_2f
    const/4 v4, 0x0

    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_45

    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v7, 0x40000

    and-int/2addr v5, v7

    if-nez v5, :cond_44

    sget v5, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v7, 0x2000000

    and-int/2addr v5, v7

    if-eqz v5, :cond_6b

    :cond_44
    const/4 v4, 0x2

    :cond_45
    :goto_45
    const-string/jumbo v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_68

    move-result-object v3

    if-eqz v3, :cond_6d

    :try_start_52
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-interface {v3, v5, v4}, Landroid/os/INetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_59} :catch_79
    .catchall {:try_start_52 .. :try_end_59} :catchall_68

    :cond_59
    :goto_59
    monitor-exit v6

    return-void

    :cond_5b
    :try_start_5b
    sget-boolean v5, Landroid/os/StrictMode;->sIsIdlerRegistered:Z

    if-nez v5, :cond_2f

    sget-object v5, Landroid/os/StrictMode;->sProcessIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v2, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/os/StrictMode;->sIsIdlerRegistered:Z
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_68

    goto :goto_2f

    :catchall_68
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_6b
    const/4 v4, 0x1

    goto :goto_45

    :cond_6d
    if-eqz v4, :cond_59

    :try_start_6f
    const-string/jumbo v5, "StrictMode"

    const-string/jumbo v7, "Dropping requested network policy due to missing service!"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_68

    goto :goto_59

    :catch_79
    move-exception v0

    goto :goto_59
.end method

.method private static tooManyViolationsThisLoop()Z
    .registers 2

    sget-object v0, Landroid/os/StrictMode;->violationsBeingTimed:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static trackActivity(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/os/StrictMode$InstanceTracker;

    invoke-direct {v0, p0}, Landroid/os/StrictMode$InstanceTracker;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static vmCleartextNetworkEnabled()Z
    .registers 2

    const/4 v0, 0x0

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static vmClosableObjectLeaksEnabled()Z
    .registers 2

    const/4 v0, 0x0

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static vmContentUriWithoutPermissionEnabled()Z
    .registers 3

    const/4 v0, 0x0

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public static vmFileUriExposureEnabled()Z
    .registers 2

    const/4 v0, 0x0

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static vmRegistrationLeaksEnabled()Z
    .registers 2

    const/4 v0, 0x0

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static vmSqliteObjectLeaksEnabled()Z
    .registers 2

    const/4 v0, 0x0

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static vmUntaggedSocketEnabled()Z
    .registers 3

    const/4 v0, 0x0

    sget v1, Landroid/os/StrictMode;->sVmPolicyMask:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method static writeGatheredViolationsToParcel(Landroid/os/Parcel;)V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    sget-object v3, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_15

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    :cond_f
    sget-object v3, Landroid/os/StrictMode;->gatheredViolations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_22
    if-ge v0, v1, :cond_f

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    invoke-virtual {v3, p0, v5}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method
