.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# static fields
.field private static final ABI_LIST_ARG:Ljava/lang/String; = "--abi-list="

.field public static BOOT_START_TIME:J = 0x0L

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "/system/etc/preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field public static final PRELOAD_RESOURCES:Z = true

.field private static final PROPERTY_DISABLE_OPENGL_PRELOADING:Ljava/lang/String; = "ro.zygote.disable_gl_preload"

.field private static final PROPERTY_GFX_DRIVER:Ljava/lang/String; = "ro.gfx.driver.0"

.field private static final PROPERTY_RUNNING_IN_CONTAINER:Ljava/lang/String; = "ro.boot.container"

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final SOCKET_NAME_ARG:Ljava/lang/String; = "--socket-name="

.field private static final TAG:Ljava/lang/String; = "Zygote"

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field private static mResources:Landroid/content/res/Resources;

.field private static sPreloadComplete:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static beginIcuCachePinning()V
    .registers 5

    const/4 v2, 0x0

    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Installing ICU cache reference pinning..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/icu/impl/CacheValue$Strength;->STRONG:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v3}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    const-string/jumbo v3, "Zygote"

    const-string/jumbo v4, "Preloading ICU data..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    new-array v0, v3, [Landroid/icu/util/ULocale;

    sget-object v3, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    aput-object v3, v0, v2

    sget-object v3, Landroid/icu/util/ULocale;->US:Landroid/icu/util/ULocale;

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    array-length v3, v0

    :goto_2c
    if-ge v2, v3, :cond_38

    aget-object v1, v0, v2

    new-instance v4, Landroid/icu/text/DecimalFormatSymbols;

    invoke-direct {v4, v1}, Landroid/icu/text/DecimalFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_38
    return-void
.end method

.method static createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;
    .registers 9

    const-string/jumbo v0, "java.library.path"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, v1

    move v4, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/os/ClassLoaderFactory;->createClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;IZLjava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method private static encodeSystemServerClassPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private static endIcuCachePinning()V
    .registers 2

    sget-object v0, Landroid/icu/impl/CacheValue$Strength;->SOFT:Landroid/icu/impl/CacheValue$Strength;

    invoke-static {v0}, Landroid/icu/impl/CacheValue;->setStrength(Landroid/icu/impl/CacheValue$Strength;)V

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Uninstalled ICU cache reference pinning..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;
    .registers 19

    const/16 v1, 0xd

    new-array v1, v1, [I

    sget v2, Landroid/system/OsConstants;->CAP_IPC_LOCK:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_KILL:I

    const/4 v3, 0x1

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_NET_ADMIN:I

    const/4 v3, 0x2

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_NET_BIND_SERVICE:I

    const/4 v3, 0x3

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_NET_BROADCAST:I

    const/4 v3, 0x4

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_NET_RAW:I

    const/4 v3, 0x5

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_MODULE:I

    const/4 v3, 0x6

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_NICE:I

    const/4 v3, 0x7

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_RESOURCE:I

    const/16 v3, 0x8

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_PTRACE:I

    const/16 v3, 0x9

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_TIME:I

    const/16 v3, 0xa

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_SYS_TTY_CONFIG:I

    const/16 v3, 0xb

    aput v2, v1, v3

    sget v2, Landroid/system/OsConstants;->CAP_WAKE_ALARM:I

    const/16 v3, 0xc

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v10

    const-string/jumbo v1, "ro.boot.container"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_65

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Landroid/system/OsConstants;->CAP_BLOCK_SUSPEND:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->posixCapabilitiesAsBits([I)J

    move-result-wide v2

    or-long/2addr v10, v2

    :cond_65
    const/4 v1, 0x7

    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "--setuid=1000"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "--setgid=1000"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,1023,1032,1065,3001,3002,3003,3006,3007,3009,3010,9801"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "--nice-name=system_server"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "--runtime-args"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.server.SystemServer"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v13, 0x0

    :try_start_af
    new-instance v14, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v14, v0}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_b4} :catch_de

    :try_start_b4
    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    invoke-static {v14}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    iget v1, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v2, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v3, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v4, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    iget-wide v6, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v8, v14, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    const/4 v5, 0x0

    invoke-static/range {v1 .. v9}, Lcom/android/internal/os/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b4 .. :try_end_ca} :catch_e7

    move-result v15

    if-nez v15, :cond_e5

    invoke-static/range {p0 .. p0}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-static/range {p1 .. p1}, Lcom/android/internal/os/ZygoteInit;->waitForSecondaryZygote(Ljava/lang/String;)V

    :cond_d6
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)Ljava/lang/Runnable;

    move-result-object v1

    return-object v1

    :catch_de
    move-exception v12

    :goto_df
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_e5
    const/4 v1, 0x0

    return-object v1

    :catch_e7
    move-exception v12

    move-object v13, v14

    goto :goto_df
.end method

.method static gcAndFinalize()V
    .registers 1

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private static getSystemServerClassLoaderContext(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    const-string/jumbo v0, "PCL[]"

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PCL["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)Ljava/lang/Runnable;
    .registers 15

    const/4 v2, 0x0

    const/4 v4, 0x0

    sget v0, Landroid/system/OsConstants;->S_IRWXG:I

    sget v1, Landroid/system/OsConstants;->S_IRWXO:I

    or-int/2addr v0, v1

    invoke-static {v0}, Landroid/system/Os;->umask(I)I

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    :cond_13
    const-string/jumbo v0, "SYSTEMSERVERCLASSPATH"

    invoke-static {v0}, Landroid/system/Os;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_59

    invoke-static {v13}, Lcom/android/internal/os/ZygoteInit;->performSystemServerDexOpt(Ljava/lang/String;)V

    const-string/jumbo v0, "dalvik.vm.profilesystemserver"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_59

    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_30

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_59

    :cond_30
    :try_start_30
    const-string/jumbo v0, "system_server"

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Landroid/os/Environment;->getDataProfilesDePackageDirectory(ILjava/lang/String;)Ljava/io/File;

    move-result-object v11

    new-instance v10, Ljava/io/File;

    const-string/jumbo v0, "primary.prof"

    invoke-direct {v10, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    const-string/jumbo v0, ":"

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Ldalvik/system/VMRuntime;->registerAppInfo(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_59} :catch_8a

    :cond_59
    :goto_59
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_95

    iget-object v5, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    if-eqz v13, :cond_74

    array-length v0, v5

    add-int/lit8 v0, v0, 0x2

    new-array v6, v0, [Ljava/lang/String;

    const-string/jumbo v0, "-cp"

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v13, v6, v0

    array-length v0, v5

    const/4 v1, 0x2

    invoke-static {v5, v2, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    :cond_74
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {}, Ldalvik/system/VMRuntime;->getCurrentInstructionSet()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Unexpected return from WrapperInit.execApplication"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_8a
    move-exception v9

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Failed to set up system server profile"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :cond_95
    const/4 v7, 0x0

    if-eqz v13, :cond_a5

    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    invoke-static {v13, v0}, Lcom/android/internal/os/ZygoteInit;->createPathClassLoader(Ljava/lang/String;I)Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    :cond_a5
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v7}, Lcom/android/internal/os/ZygoteInit;->zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method private static hasSecondZygote(Ljava/lang/String;)Z
    .registers 2

    const-string/jumbo v0, "ro.product.cpu.abilist"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static isPreloadComplete()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return v0
.end method

.method public static lazyPreload()V
    .registers 4

    sget-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Lazily preloading resources."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/TimingsTraceLog;

    const-string/jumbo v1, "ZygoteInitTiming_lazy"

    const-wide/16 v2, 0x4000

    invoke-direct {v0, v1, v2, v3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    invoke-static {v0}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 19

    new-instance v13, Lcom/android/internal/os/ZygoteServer;

    invoke-direct {v13}, Lcom/android/internal/os/ZygoteServer;-><init>()V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->startZygoteNoThreadCreation()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_a
    invoke-static {v14, v15}, Landroid/system/Os;->setpgid(II)V
    :try_end_d
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_d} :catch_62

    :try_start_d
    const-string/jumbo v14, "1"

    const-string/jumbo v15, "sys.boot_completed"

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2e

    const-string/jumbo v14, "boot_zygote_init"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v15, v0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v14, v15}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2e
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v14

    if-eqz v14, :cond_6c

    const-string/jumbo v3, "Zygote64Timing"

    :goto_37
    new-instance v4, Landroid/util/TimingsTraceLog;

    const-wide/16 v14, 0x4000

    invoke-direct {v4, v3, v14, v15}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v14, "ZygoteInit"

    invoke-virtual {v4, v14}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->enableDdms()V

    const/4 v12, 0x0

    const-string/jumbo v11, "zygote"

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    :goto_4e
    move-object/from16 v0, p0

    array-length v14, v0

    if-ge v9, v14, :cond_db

    const-string/jumbo v14, "start-system-server"

    aget-object v15, p0, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_5b} :catch_cb
    .catchall {:try_start_d .. :try_end_5b} :catchall_d6

    move-result v14

    if-eqz v14, :cond_70

    const/4 v12, 0x1

    :goto_5f
    add-int/lit8 v9, v9, 0x1

    goto :goto_4e

    :catch_62
    move-exception v7

    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v15, "Failed to setpgid(0,0)"

    invoke-direct {v14, v15, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    :cond_6c
    :try_start_6c
    const-string/jumbo v3, "Zygote32Timing"

    goto :goto_37

    :cond_70
    const-string/jumbo v14, "--enable-lazy-preload"

    aget-object v15, p0, v9

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7d

    const/4 v6, 0x1

    goto :goto_5f

    :cond_7d
    aget-object v14, p0, v9

    const-string/jumbo v15, "--abi-list="

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_96

    aget-object v14, p0, v9

    const-string/jumbo v15, "--abi-list="

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5f

    :cond_96
    aget-object v14, p0, v9

    const-string/jumbo v15, "--socket-name="

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_af

    aget-object v14, p0, v9

    const-string/jumbo v15, "--socket-name="

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_5f

    :cond_af
    new-instance v14, Ljava/lang/RuntimeException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unknown command line argument: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, p0, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_cb} :catch_cb
    .catchall {:try_start_6c .. :try_end_cb} :catchall_d6

    :catch_cb
    move-exception v8

    :try_start_cc
    const-string/jumbo v14, "Zygote"

    const-string/jumbo v15, "System zygote died with exception"

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v8
    :try_end_d6
    .catchall {:try_start_cc .. :try_end_d6} :catchall_d6

    :catchall_d6
    move-exception v14

    invoke-virtual {v13}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    throw v14

    :cond_db
    if-nez v2, :cond_e6

    :try_start_dd
    new-instance v14, Ljava/lang/RuntimeException;

    const-string/jumbo v15, "No ABI list supplied."

    invoke-direct {v14, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_e6
    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->hasSecondZygote(Ljava/lang/String;)Z

    move-result v14

    invoke-static {v12, v14}, Landroid/os/statistics/PerfSuperviser;->init(ZZ)V

    invoke-virtual {v13, v11}, Lcom/android/internal/os/ZygoteServer;->registerServerSocket(Ljava/lang/String;)V

    if-nez v6, :cond_140

    const-string/jumbo v14, "ZygotePreload"

    invoke-virtual {v4, v14}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/16 v16, 0xbcc

    move/from16 v0, v16

    invoke-static {v0, v14, v15}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-static {v4}, Lcom/android/internal/os/ZygoteInit;->preload(Landroid/util/TimingsTraceLog;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/16 v16, 0xbd6

    move/from16 v0, v16

    invoke-static {v0, v14, v15}, Landroid/util/EventLog;->writeEvent(IJ)I

    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    :goto_114
    const-string/jumbo v14, "PostZygoteInitGC"

    invoke-virtual {v4, v14}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gcAndFinalize()V

    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    invoke-virtual {v4}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v14, v15}, Landroid/os/Trace;->setTracingEnabled(ZI)V

    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeUnmountStorageOnInit()V

    invoke-static {}, Landroid/os/Seccomp;->setPolicy()V

    invoke-static {}, Ldalvik/system/ZygoteHooks;->stopZygoteNoThreadCreation()V

    if-eqz v12, :cond_144

    invoke-static {v2, v11, v13}, Lcom/android/internal/os/ZygoteInit;->forkSystemServer(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/os/ZygoteServer;)Ljava/lang/Runnable;

    move-result-object v10

    if-eqz v10, :cond_144

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V
    :try_end_13c
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_13c} :catch_cb
    .catchall {:try_start_dd .. :try_end_13c} :catchall_d6

    invoke-virtual {v13}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    return-void

    :cond_140
    :try_start_140
    invoke-static {}, Lcom/android/internal/os/Zygote;->resetNicePriority()V

    goto :goto_114

    :cond_144
    const-string/jumbo v14, "Zygote"

    const-string/jumbo v15, "Accepting command socket connections"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13, v2}, Lcom/android/internal/os/ZygoteServer;->runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    :try_end_150
    .catch Ljava/lang/Throwable; {:try_start_140 .. :try_end_150} :catch_cb
    .catchall {:try_start_140 .. :try_end_150} :catchall_d6

    move-result-object v5

    invoke-virtual {v13}, Lcom/android/internal/os/ZygoteServer;->closeServerSocket()V

    if-eqz v5, :cond_159

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_159
    return-void
.end method

.method private static native nativePreloadAppProcessHALs()V
.end method

.method private static final native nativeZygoteInit()V
.end method

.method private static performSystemServerDexOpt(Ljava/lang/String;)V
    .registers 26

    const-string/jumbo v4, ":"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v4, "installd"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v2

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v16, ""

    const/4 v4, 0x0

    array-length v0, v15

    move/from16 v24, v0

    move/from16 v23, v4

    :goto_25
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_bc

    aget-object v3, v15, v23

    const-string/jumbo v4, "dalvik.vm.systemservercompilerfilter"

    const-string/jumbo v5, "speed"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_39
    invoke-static {v3, v6, v10, v4, v5}, Ldalvik/system/DexFile;->getDexOptNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)I
    :try_end_3c
    .catch Ljava/io/FileNotFoundException; {:try_start_39 .. :try_end_3c} :catch_82
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_63

    move-result v7

    :goto_3d
    if-eqz v7, :cond_58

    const-string/jumbo v22, "*"

    const/4 v8, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v10

    sget-object v11, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {v16 .. v16}, Lcom/android/internal/os/ZygoteInit;->getSystemServerClassLoaderContext(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :try_start_4e
    const-string/jumbo v5, "*"

    const/16 v4, 0x3e8

    const/4 v9, 0x0

    const/4 v14, 0x0

    invoke-interface/range {v2 .. v14}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_58} :catch_9e
    .catch Landroid/os/ServiceSpecificException; {:try_start_4e .. :try_end_58} :catch_9e

    :cond_58
    :goto_58
    move-object/from16 v0, v16

    invoke-static {v0, v3}, Lcom/android/internal/os/ZygoteInit;->encodeSystemServerClassPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    :goto_5e
    add-int/lit8 v4, v23, 0x1

    move/from16 v23, v4

    goto :goto_25

    :catch_63
    move-exception v19

    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error checking classpath element for system server: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x0

    goto :goto_3d

    :catch_82
    move-exception v21

    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Missing classpath element for system server: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5e

    :catch_9e
    move-exception v20

    const-string/jumbo v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed compiling classpath element for system server: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :cond_bc
    return-void
.end method

.method private static varargs posixCapabilitiesAsBits([I)J
    .registers 9

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    array-length v4, p0

    :goto_4
    if-ge v1, v4, :cond_1f

    aget v0, p0, v1

    if-ltz v0, :cond_e

    sget v5, Landroid/system/OsConstants;->CAP_LAST_CAP:I

    if-le v0, v5, :cond_18

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_18
    const-wide/16 v6, 0x1

    shl-long/2addr v6, v0

    or-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1f
    return-wide v2
.end method

.method static preload(Landroid/util/TimingsTraceLog;)V
    .registers 5

    const-wide/16 v2, 0x4000

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "begin preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "BeginIcuCachePinning"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->beginIcuCachePinning()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "PreloadClasses"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "PreloadResources"

    invoke-virtual {p0, v0}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    invoke-virtual {p0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    const-string/jumbo v0, "PreloadAppProcessHALs"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativePreloadAppProcessHALs()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v0, "PreloadOpenGL"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadOpenGL()V

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadSharedLibraries()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadTextResources()V

    invoke-static {}, Landroid/webkit/WebViewFactory;->prepareWebViewInZygote()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->endIcuCachePinning()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->warmUpJcaProviders()V

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "end preload"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->sPreloadComplete:Z

    return-void
.end method

.method private static preloadClasses()V
    .registers 26

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v17

    :try_start_4
    new-instance v13, Ljava/io/FileInputStream;

    const-string/jumbo v21, "/system/etc/preloaded-classes"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_e} :catch_cd

    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Preloading classes..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    invoke-static {}, Landroid/system/Os;->getuid()I

    move-result v16

    invoke-static {}, Landroid/system/Os;->getgid()I

    move-result v15

    const/4 v7, 0x0

    if-nez v16, :cond_37

    if-nez v15, :cond_37

    const/16 v21, 0x0

    const/16 v22, 0x270f

    :try_start_2c
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V

    const/16 v21, 0x0

    const/16 v22, 0x270f

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V
    :try_end_36
    .catch Landroid/system/ErrnoException; {:try_start_2c .. :try_end_36} :catch_d8

    const/4 v7, 0x1

    :cond_37
    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v6

    const v21, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    :try_start_45
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v21, Ljava/io/InputStreamReader;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v22, 0x100

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    const/4 v5, 0x0

    :cond_58
    :goto_58
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1a9

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v21, "#"

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_58

    const-string/jumbo v21, ""

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_58

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v14}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_7f} :catch_92
    .catchall {:try_start_45 .. :try_end_7f} :catchall_11b

    const/16 v21, 0x1

    const/16 v22, 0x0

    :try_start_83
    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v14, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_8a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_83 .. :try_end_8a} :catch_18a
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_83 .. :try_end_8a} :catch_15e
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_8a} :catch_e6
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8a} :catch_92
    .catchall {:try_start_83 .. :try_end_8a} :catchall_11b

    add-int/lit8 v5, v5, 0x1

    :goto_8c
    const-wide/16 v22, 0x4000

    :try_start_8e
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92
    .catchall {:try_start_8e .. :try_end_91} :catchall_11b

    goto :goto_58

    :catch_92
    move-exception v9

    :try_start_93
    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Error reading /system/etc/preloaded-classes."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catchall {:try_start_93 .. :try_end_a0} :catchall_11b

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-string/jumbo v21, "PreloadDexCaches"

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v7, :cond_cc

    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_c2
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_cc
    .catch Landroid/system/ErrnoException; {:try_start_c2 .. :try_end_cc} :catch_21d

    :cond_cc
    :goto_cc
    return-void

    :catch_cd
    move-exception v8

    const-string/jumbo v21, "Zygote"

    const-string/jumbo v22, "Couldn\'t find /system/etc/preloaded-classes."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_d8
    move-exception v12

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to drop root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    :catch_e6
    move-exception v20

    :try_start_e7
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Error preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/Error;

    move/from16 v21, v0

    if-eqz v21, :cond_149

    check-cast v20, Ljava/lang/Error;

    throw v20
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_11b} :catch_92
    .catchall {:try_start_e7 .. :try_end_11b} :catchall_11b

    :catchall_11b
    move-exception v21

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-string/jumbo v22, "PreloadDexCaches"

    const-wide/16 v24, 0x4000

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v7, :cond_148

    const/16 v22, 0x0

    const/16 v23, 0x0

    :try_start_13e
    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setreuid(II)V

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v22 .. v23}, Landroid/system/Os;->setregid(II)V
    :try_end_148
    .catch Landroid/system/ErrnoException; {:try_start_13e .. :try_end_148} :catch_22b

    :cond_148
    throw v21

    :cond_149
    :try_start_149
    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/lang/RuntimeException;

    move/from16 v21, v0

    if-eqz v21, :cond_154

    check-cast v20, Ljava/lang/RuntimeException;

    throw v20

    :cond_154
    new-instance v21, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v21

    :catch_15e
    move-exception v11

    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Problem preloading "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ": "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    :catch_18a
    move-exception v10

    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Class not found for preloading: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8c

    :cond_1a9
    const-string/jumbo v21, "Zygote"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "...preloaded "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " classes in "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v18

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "ms."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catch Ljava/io/IOException; {:try_start_149 .. :try_end_1e1} :catch_92
    .catchall {:try_start_149 .. :try_end_1e1} :catchall_11b

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    const-string/jumbo v21, "PreloadDexCaches"

    const-wide/16 v22, 0x4000

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ldalvik/system/VMRuntime;->preloadDexCaches()V

    const-wide/16 v22, 0x4000

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v7, :cond_cc

    const/16 v21, 0x0

    const/16 v22, 0x0

    :try_start_203
    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setreuid(II)V

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Landroid/system/Os;->setregid(II)V
    :try_end_20d
    .catch Landroid/system/ErrnoException; {:try_start_203 .. :try_end_20d} :catch_20f

    goto/16 :goto_cc

    :catch_20f
    move-exception v12

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    :catch_21d
    move-exception v12

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21

    :catch_22b
    move-exception v12

    new-instance v21, Ljava/lang/RuntimeException;

    const-string/jumbo v22, "Failed to restore root"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v21
.end method

.method private static preloadColorStateLists(Landroid/content/res/TypedArray;)I
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4e

    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-nez v3, :cond_4b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find preloaded color resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4e
    return v0
.end method

.method private static preloadDrawables(Landroid/content/res/TypedArray;)I
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_4e

    invoke-virtual {p0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_4b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find preloaded drawable resource #0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4e
    return v0
.end method

.method private static preloadOpenGL()V
    .registers 3

    const/4 v2, 0x0

    const-string/jumbo v1, "ro.gfx.driver.0"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ro.zygote.disable_gl_preload"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1c

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    :cond_19
    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    :cond_1c
    return-void
.end method

.method private static preloadResources()V
    .registers 10

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    :try_start_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x107005f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInitInjector;->preloadMiuiResources(Landroid/content/res/Resources;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x107005e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Landroid/content/res/TypedArray;)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x112006f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_f7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Landroid/content/res/TypedArray;)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const-string/jumbo v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resource in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_fc
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_fc} :catch_fd

    :goto_fc
    return-void

    :catch_fd
    move-exception v2

    const-string/jumbo v6, "Zygote"

    const-string/jumbo v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_fc
.end method

.method private static preloadSharedLibraries()V
    .registers 2

    const-string/jumbo v0, "Zygote"

    const-string/jumbo v1, "Preloading shared libraries..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "android"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "compiler_rt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v0, "jnigraphics"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static preloadTextResources()V
    .registers 0

    invoke-static {}, Landroid/text/Hyphenator;->init()V

    invoke-static {}, Landroid/widget/TextView;->preloadFontCache()V

    return-void
.end method

.method private static waitForSecondaryZygote(Ljava/lang/String;)V
    .registers 3

    const-string/jumbo v1, "zygote"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string/jumbo v0, "zygote_secondary"

    :goto_c
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    return-void

    :cond_10
    const-string/jumbo v0, "zygote"

    goto :goto_c
.end method

.method private static warmUpJcaProviders()V
    .registers 10

    const-wide/16 v8, 0x4000

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "Starting installation of AndroidKeyStoreProvider"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    const-string/jumbo v1, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Installed AndroidKeyStoreProvider in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string/jumbo v1, "Starting warm up of JCA providers"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_48
    if-ge v1, v5, :cond_52

    aget-object v0, v4, v1

    invoke-virtual {v0}, Ljava/security/Provider;->warmUpServiceProvision()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_48

    :cond_52
    const-string/jumbo v1, "Zygote"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Warmed up JCA providers in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static final zygoteInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;
    .registers 7

    const-string/jumbo v0, "ZygoteInit"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->redirectLogStreams()V

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->commonInit()V

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->nativeZygoteInit()V

    invoke-static {p0, p1, p2}, Lcom/android/internal/os/RuntimeInit;->applicationInit(I[Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
