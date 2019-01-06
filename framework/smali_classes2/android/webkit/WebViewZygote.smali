.class public Landroid/webkit/WebViewZygote;
.super Ljava/lang/Object;
.source "WebViewZygote.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebViewZygote"

.field private static final WEBVIEW_ZYGOTE_SERVICE_32:Ljava/lang/String; = "webview_zygote32"

.field private static final WEBVIEW_ZYGOTE_SERVICE_64:Ljava/lang/String; = "webview_zygote64"

.field private static final WEBVIEW_ZYGOTE_SOCKET:Ljava/lang/String; = "webview_zygote"

.field private static final sLock:Ljava/lang/Object;

.field private static sMultiprocessEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sPackage:Landroid/content/pm/PackageInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sPackageCacheKey:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sStartedService:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static sZygote:Landroid/os/ZygoteProcess;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    sput-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z

    sput-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static connectToZygoteIfNeededLocked()V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    const/4 v10, 0x0

    sget-object v6, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    if-eqz v6, :cond_6

    return-void

    :cond_6
    sget-object v6, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-nez v6, :cond_14

    const-string/jumbo v6, "WebViewZygote"

    const-string/jumbo v7, "Cannot connect to zygote, no package specified"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_14
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    const-string/jumbo v6, "WebViewZygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is not running"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    :try_start_39
    new-instance v6, Landroid/os/ZygoteProcess;

    const-string/jumbo v7, "webview_zygote"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/os/ZygoteProcess;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v6, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v7, v8, v6, v5, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a7

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_6f
    const-string/jumbo v6, "webview_zygote"

    invoke-static {v6}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Ljava/lang/String;)V

    const-string/jumbo v6, "WebViewZygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Preloading package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    sget-object v7, Landroid/webkit/WebViewZygote;->sPackageCacheKey:Ljava/lang/String;

    sget-object v8, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v6, v4, v2, v7, v8}, Landroid/os/ZygoteProcess;->preloadPackageForAbi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_a6
    return-void

    :cond_a7
    sget-object v6, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_ac} :catch_ae

    move-result-object v4

    goto :goto_6f

    :catch_ae
    move-exception v0

    const-string/jumbo v6, "WebViewZygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error connecting to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sput-object v10, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    goto :goto_a6
.end method

.method public static getPackageName()Ljava/lang/String;
    .registers 2

    sget-object v1, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v1

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getProcess()Landroid/os/ZygoteProcess;
    .registers 2

    sget-object v1, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    if-eqz v0, :cond_b

    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    invoke-static {}, Landroid/webkit/WebViewZygote;->waitForServiceStartAndConnect()V

    sget-object v0, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getServiceNameLocked()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "webview_zygote64"

    return-object v0

    :cond_1c
    const-string/jumbo v0, "webview_zygote32"

    return-object v0
.end method

.method public static isMultiprocessEnabled()Z
    .registers 3

    const/4 v0, 0x0

    sget-object v1, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    sget-boolean v2, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    if-eqz v2, :cond_d

    sget-object v2, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_f

    if-eqz v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V
    .registers 5

    sget-object v2, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sput-object p0, Landroid/webkit/WebViewZygote;->sPackage:Landroid/content/pm/PackageInfo;

    sput-object p1, Landroid/webkit/WebViewZygote;->sPackageCacheKey:Ljava/lang/String;

    sget-boolean v1, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_26

    if-nez v1, :cond_d

    monitor-exit v2

    return-void

    :cond_d
    :try_start_d
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    sput-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;

    invoke-static {v0}, Landroid/os/SystemService;->isStopped(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    :goto_1d
    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z
    :try_end_20
    .catchall {:try_start_d .. :try_end_20} :catchall_26

    monitor-exit v2

    return-void

    :cond_22
    :try_start_22
    invoke-static {v0}, Landroid/os/SystemService;->restart(Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_26

    goto :goto_1d

    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static setMultiprocessEnabled(Z)V
    .registers 4

    sget-object v2, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sput-boolean p0, Landroid/webkit/WebViewZygote;->sMultiprocessEnabled:Z

    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_25

    move-result-object v0

    if-nez v0, :cond_d

    monitor-exit v2

    return-void

    :cond_d
    if-eqz p0, :cond_1b

    :try_start_f
    sget-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z

    if-nez v1, :cond_19

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_25

    :cond_19
    :goto_19
    monitor-exit v2

    return-void

    :cond_1b
    :try_start_1b
    invoke-static {v0}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    const/4 v1, 0x0

    sput-boolean v1, Landroid/webkit/WebViewZygote;->sStartedService:Z

    const/4 v1, 0x0

    sput-object v1, Landroid/webkit/WebViewZygote;->sZygote:Landroid/os/ZygoteProcess;
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_25

    goto :goto_19

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static waitForServiceStartAndConnect()V
    .registers 6

    sget-boolean v2, Landroid/webkit/WebViewZygote;->sStartedService:Z

    if-nez v2, :cond_d

    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v3, "Tried waiting for the WebView Zygote Service to start running without first starting the service."

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    sget-object v2, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_10
    invoke-static {}, Landroid/webkit/WebViewZygote;->getServiceNameLocked()Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_24

    move-result-object v1

    monitor-exit v2

    :try_start_15
    sget-object v2, Landroid/os/SystemService$State;->RUNNING:Landroid/os/SystemService$State;

    const-wide/16 v4, 0x1388

    invoke-static {v1, v2, v4, v5}, Landroid/os/SystemService;->waitForState(Ljava/lang/String;Landroid/os/SystemService$State;J)V
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_15 .. :try_end_1c} :catch_27

    sget-object v2, Landroid/webkit/WebViewZygote;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1f
    invoke-static {}, Landroid/webkit/WebViewZygote;->connectToZygoteIfNeededLocked()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_43

    monitor-exit v2

    return-void

    :catchall_24
    move-exception v3

    monitor-exit v2

    throw v3

    :catch_27
    move-exception v0

    const-string/jumbo v2, "WebViewZygote"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Timed out waiting for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_43
    move-exception v3

    monitor-exit v2

    throw v3
.end method
