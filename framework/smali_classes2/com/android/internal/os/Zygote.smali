.class public final Lcom/android/internal/os/Zygote;
.super Ljava/lang/Object;
.source "Zygote.java"


# static fields
.field public static final DEBUG_ALWAYS_JIT:I = 0x40

.field public static final DEBUG_ENABLE_ASSERT:I = 0x4

.field public static final DEBUG_ENABLE_CHECKJNI:I = 0x2

.field public static final DEBUG_ENABLE_JDWP:I = 0x1

.field public static final DEBUG_ENABLE_JNI_LOGGING:I = 0x10

.field public static final DEBUG_ENABLE_SAFEMODE:I = 0x8

.field public static final DEBUG_GENERATE_DEBUG_INFO:I = 0x20

.field public static final DEBUG_JAVA_DEBUGGABLE:I = 0x100

.field public static final DEBUG_NATIVE_DEBUGGABLE:I = 0x80

.field public static final MOUNT_EXTERNAL_DEFAULT:I = 0x1

.field public static final MOUNT_EXTERNAL_NONE:I = 0x0

.field public static final MOUNT_EXTERNAL_READ:I = 0x2

.field public static final MOUNT_EXTERNAL_WRITE:I = 0x3

.field private static final VM_HOOKS:Ldalvik/system/ZygoteHooks;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ldalvik/system/ZygoteHooks;

    invoke-direct {v0}, Ldalvik/system/ZygoteHooks;-><init>()V

    sput-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendQuotedShellArgs(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    array-length v2, p1

    :goto_2
    if-ge v1, v2, :cond_24

    aget-object v0, p1, v1

    const-string/jumbo v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    const-string/jumbo v5, "\'\\\'\'"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_24
    return-void
.end method

.method private static callPostForkChildHooks(IZLjava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v0, p0, p1, p2}, Ldalvik/system/ZygoteHooks;->postForkChild(IZLjava/lang/String;)V

    return-void
.end method

.method public static execShell(Ljava/lang/String;)V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "/system/bin/sh"

    aput-object v2, v0, v3

    const-string/jumbo v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v2, 0x2

    aput-object p0, v0, v2

    const/4 v2, 0x0

    :try_start_13
    aget-object v2, v0, v2

    invoke-static {v2, v0}, Landroid/system/Os;->execv(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_13 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static forkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I
    .registers 16

    const/4 v2, 0x0

    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    invoke-static/range {p0 .. p11}, Lcom/android/internal/os/Zygote;->nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1e

    const/4 v1, 0x1

    invoke-static {v1, p3}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    invoke-static {v2}, Landroid/os/statistics/PerfSuperviser;->start(Z)V

    const-string/jumbo v1, "PostFork"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1e
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    return v0
.end method

.method public static forkSystemServer(II[II[[IJJ)I
    .registers 12

    const/4 v2, 0x1

    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->preFork()V

    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    invoke-static/range {p0 .. p8}, Lcom/android/internal/os/Zygote;->nativeForkSystemServer(II[II[[IJJ)I

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v2, p3}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    invoke-static {v2}, Landroid/os/statistics/PerfSuperviser;->start(Z)V

    :cond_15
    sget-object v1, Lcom/android/internal/os/Zygote;->VM_HOOKS:Ldalvik/system/ZygoteHooks;

    invoke-virtual {v1}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    return v0
.end method

.method protected static native nativeAllowFileAcrossFork(Ljava/lang/String;)V
.end method

.method private static native nativeForkAndSpecialize(II[II[[IILjava/lang/String;Ljava/lang/String;[I[ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeForkSystemServer(II[II[[IJJ)I
.end method

.method static native nativePreApplicationInit()V
.end method

.method protected static native nativeUnmountStorageOnInit()V
.end method

.method static resetNicePriority()V
    .registers 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-void
.end method
