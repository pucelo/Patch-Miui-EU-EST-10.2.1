.class public final Landroid/webkit/WebViewFactory;
.super Ljava/lang/Object;
.source "WebViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.chromium.WebViewChromiumFactoryProviderForOMR1"

.field private static final CHROMIUM_WEBVIEW_FACTORY_METHOD:Ljava/lang/String; = "create"

.field public static final CHROMIUM_WEBVIEW_VMSIZE_SIZE_PROPERTY:Ljava/lang/String; = "persist.sys.webview.vmsize"

.field private static final DEBUG:Z = false

.field public static final LIBLOAD_ADDRESS_SPACE_NOT_RESERVED:I = 0x2

.field public static final LIBLOAD_FAILED_JNI_CALL:I = 0x7

.field public static final LIBLOAD_FAILED_LISTING_WEBVIEW_PACKAGES:I = 0x4

.field public static final LIBLOAD_FAILED_TO_FIND_NAMESPACE:I = 0xa

.field public static final LIBLOAD_FAILED_TO_LOAD_LIBRARY:I = 0x6

.field public static final LIBLOAD_FAILED_TO_OPEN_RELRO_FILE:I = 0x5

.field public static final LIBLOAD_FAILED_WAITING_FOR_RELRO:I = 0x3

.field public static final LIBLOAD_FAILED_WAITING_FOR_WEBVIEW_REASON_UNKNOWN:I = 0x8

.field public static final LIBLOAD_SUCCESS:I = 0x0

.field public static final LIBLOAD_WRONG_PACKAGE_NAME:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "WebViewFactory"

.field private static final NULL_WEBVIEW_FACTORY:Ljava/lang/String; = "com.android.webview.nullwebview.NullWebViewFactoryProvider"

.field private static WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

.field private static sPackageInfo:Landroid/content/pm/PackageInfo;

.field private static sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

.field private static final sProviderLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    const-string/jumbo v0, "webviewupdate"

    sput-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_e

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.android.webview.WebViewDonorPackage"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_e
    if-eqz v2, :cond_31

    const v4, 0x10202400

    :try_start_13
    invoke-virtual {p1, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_16} :catch_32

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    iput-object v4, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    :cond_31
    return-void

    :catch_32
    move-exception v3

    new-instance v4, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find donor package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getLoadedPackageInfo()Landroid/content/pm/PackageInfo;
    .registers 2

    sget-object v0, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getProvider()Landroid/webkit/WebViewFactoryProvider;
    .registers 10

    sget-object v6, Landroid/webkit/WebViewFactory;->sProviderLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    if-eqz v5, :cond_b

    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1e

    monitor-exit v6

    return-object v5

    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-eqz v4, :cond_15

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_21

    :cond_15
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v7, "For security reasons, WebView is not allowed in privileged processes"

    invoke-direct {v5, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_21
    const/16 v5, 0x3e9

    if-eq v4, v5, :cond_15

    const/16 v5, 0x403

    if-eq v4, v5, :cond_15

    const/16 v5, 0x3ea

    if-eq v4, v5, :cond_15

    :try_start_2d
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    const-string/jumbo v5, "WebViewFactory.getProvider()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_39
    .catchall {:try_start_2d .. :try_end_39} :catchall_1e

    :try_start_39
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProviderClass()Ljava/lang/Class;
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_91

    move-result-object v2

    const/4 v3, 0x0

    :try_start_3e
    const-string/jumbo v5, "create"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/webkit/WebViewDelegate;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_4c} :catch_9b
    .catchall {:try_start_3e .. :try_end_4c} :catchall_91

    move-result-object v3

    :goto_4d
    :try_start_4d
    const-string/jumbo v5, "WebViewFactoryProvider invocation"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_55
    .catchall {:try_start_4d .. :try_end_55} :catchall_91

    const/4 v5, 0x1

    :try_start_56
    new-array v5, v5, [Ljava/lang/Object;

    new-instance v7, Landroid/webkit/WebViewDelegate;

    invoke-direct {v7}, Landroid/webkit/WebViewDelegate;-><init>()V

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebViewFactoryProvider;

    sput-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;

    sget-object v5, Landroid/webkit/WebViewFactory;->sProviderInstance:Landroid/webkit/WebViewFactoryProvider;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_6b} :catch_7a
    .catchall {:try_start_56 .. :try_end_6b} :catchall_8a

    const-wide/16 v8, 0x10

    :try_start_6d
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_91

    const-wide/16 v8, 0x10

    :try_start_72
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_1e

    monitor-exit v6

    return-object v5

    :catch_7a
    move-exception v0

    :try_start_7b
    const-string/jumbo v5, "WebViewFactory"

    const-string/jumbo v7, "error instantiating provider"

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v5, Landroid/util/AndroidRuntimeException;

    invoke-direct {v5, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_8a
    .catchall {:try_start_7b .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v5

    const-wide/16 v8, 0x10

    :try_start_8d
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_91

    :catchall_91
    move-exception v5

    const-wide/16 v8, 0x10

    :try_start_94
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v5
    :try_end_9b
    .catchall {:try_start_94 .. :try_end_9b} :catchall_1e

    :catch_9b
    move-exception v0

    goto :goto_4d
.end method

.method private static getProviderClass()Ljava/lang/Class;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4

    :try_start_5
    const-string/jumbo v6, "WebViewFactory.getWebViewContextAndSetProvider()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_d
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_5 .. :try_end_d} :catch_a2

    :try_start_d
    invoke-static {}, Landroid/webkit/WebViewFactory;->getWebViewContextAndSetProvider()Landroid/content/Context;
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_9b

    move-result-object v5

    const-wide/16 v6, 0x10

    :try_start_13
    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "WebViewFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " version "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    iget v8, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "WebViewFactory.getChromiumProviderClass()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_61
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_13 .. :try_end_61} :catch_a2

    :try_start_61
    invoke-virtual {v4}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->addAssetPathAsSharedLibrary(Ljava/lang/String;)I

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v6, "WebViewFactory.loadNativeLibrary()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v6, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v0, v6}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)I

    const-wide/16 v6, 0x10

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    const-string/jumbo v6, "Class.forName()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_8c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_61 .. :try_end_8c} :catch_b2
    .catchall {:try_start_61 .. :try_end_8c} :catchall_c2

    :try_start_8c
    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_ab

    move-result-object v6

    const-wide/16 v8, 0x10

    :try_start_92
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_95
    .catch Ljava/lang/ClassNotFoundException; {:try_start_92 .. :try_end_95} :catch_b2
    .catchall {:try_start_92 .. :try_end_95} :catchall_c2

    const-wide/16 v8, 0x10

    :try_start_97
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_9b
    move-exception v6

    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v6
    :try_end_a2
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_97 .. :try_end_a2} :catch_a2

    :catch_a2
    move-exception v1

    :try_start_a3
    const-string/jumbo v6, "com.android.webview.nullwebview.NullWebViewFactoryProvider"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a3 .. :try_end_a9} :catch_c9

    move-result-object v6

    return-object v6

    :catchall_ab
    move-exception v6

    const-wide/16 v8, 0x10

    :try_start_ae
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v6
    :try_end_b2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_ae .. :try_end_b2} :catch_b2
    .catchall {:try_start_ae .. :try_end_b2} :catchall_c2

    :catch_b2
    move-exception v2

    :try_start_b3
    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "error loading provider"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v2}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_c2
    .catchall {:try_start_b3 .. :try_end_c2} :catchall_c2

    :catchall_c2
    move-exception v6

    const-wide/16 v8, 0x10

    :try_start_c5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v6
    :try_end_c9
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_c5 .. :try_end_c9} :catch_a2

    :catch_c9
    move-exception v3

    const-string/jumbo v6, "WebViewFactory"

    const-string/jumbo v7, "Chromium WebView package does not exist"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v6, Landroid/util/AndroidRuntimeException;

    invoke-direct {v6, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public static getUpdateService()Landroid/webkit/IWebViewUpdateService;
    .registers 1

    sget-object v0, Landroid/webkit/WebViewFactory;->WEBVIEW_UPDATE_SERVICE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v0

    return-object v0
.end method

.method private static getWebViewContextAndSetProvider()Landroid/content/Context;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    const/4 v10, 0x3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v2

    const/4 v5, 0x0

    :try_start_6
    const-string/jumbo v7, "WebViewUpdateService.waitForAndGetProvider()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_e} :catch_43

    :try_start_e
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_5e

    move-result-object v5

    const-wide/16 v8, 0x10

    :try_start_18
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    iget v7, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v7, :cond_65

    iget v7, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eq v7, v10, :cond_65

    new-instance v7, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to load WebView provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/webkit/WebViewProviderResponse;->status:I

    invoke-static {v9}, Landroid/webkit/WebViewFactory;->getWebViewPreparationErrorReason(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_43} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_43} :catch_43

    :catch_43
    move-exception v1

    new-instance v7, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Failed to load WebView provider: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_5e
    move-exception v7

    const-wide/16 v8, 0x10

    :try_start_61
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7

    :cond_65
    const-string/jumbo v7, "ActivityManager.addPackageDependency()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_6d} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_61 .. :try_end_6d} :catch_43

    :try_start_6d
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->addPackageDependency(Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_b9

    const-wide/16 v8, 0x10

    :try_start_7a
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v7, "PackageManager.getPackageInfo()"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7a .. :try_end_8a} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7a .. :try_end_8a} :catch_43

    :try_start_8a
    iget-object v7, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const v8, 0x100024c0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_94
    .catchall {:try_start_8a .. :try_end_94} :catchall_c0

    move-result-object v3

    const-wide/16 v8, 0x10

    :try_start_97
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    iget-object v7, v5, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v7, v3}, Landroid/webkit/WebViewFactory;->verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V

    iget-object v0, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0, v4}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    const-string/jumbo v7, "initialApplication.createApplicationContext"

    const-wide/16 v8, 0x10

    invoke-static {v8, v9, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_ac} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_97 .. :try_end_ac} :catch_43

    const/4 v7, 0x3

    :try_start_ad
    invoke-virtual {v2, v0, v7}, Landroid/app/Application;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v6

    sput-object v3, Landroid/webkit/WebViewFactory;->sPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_c7

    const-wide/16 v8, 0x10

    :try_start_b5
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    return-object v6

    :catchall_b9
    move-exception v7

    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7

    :catchall_c0
    move-exception v7

    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7

    :catchall_c7
    move-exception v7

    const-wide/16 v8, 0x10

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    throw v7
    :try_end_ce
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_ce} :catch_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b5 .. :try_end_ce} :catch_43
.end method

.method public static getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "com.android.webview.WebViewLibrary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_f
    return-object v1
.end method

.method private static getWebViewPreparationErrorReason(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    :pswitch_3
    const-string/jumbo v0, "Unknown"

    return-object v0

    :pswitch_7
    const-string/jumbo v0, "Time out waiting for Relro files being created"

    return-object v0

    :pswitch_b
    const-string/jumbo v0, "No WebView installed"

    return-object v0

    :pswitch_f
    const-string/jumbo v0, "Crashed for unknown reason"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x3
        :pswitch_7
        :pswitch_b
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_f
    .end packed-switch
.end method

.method public static getWebViewProviderClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<",
            "Landroid/webkit/WebViewFactoryProvider;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "com.android.webview.chromium.WebViewChromiumFactoryProviderForOMR1"

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadWebViewNativeLibraryFromPackage(Ljava/lang/String;Ljava/lang/ClassLoader;)I
    .registers 13

    const/4 v10, 0x1

    const/4 v6, 0x0

    :try_start_2
    invoke-static {}, Landroid/webkit/WebViewFactory;->getUpdateService()Landroid/webkit/IWebViewUpdateService;

    move-result-object v7

    invoke-interface {v7}, Landroid/webkit/IWebViewUpdateService;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_9} :catch_16

    move-result-object v6

    iget v7, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    if-eqz v7, :cond_23

    iget v7, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_23

    iget v7, v6, Landroid/webkit/WebViewProviderResponse;->status:I

    return v7

    :catch_16
    move-exception v1

    const-string/jumbo v7, "WebViewFactory"

    const-string/jumbo v8, "error waiting for relro creation"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v7, 0x8

    return v7

    :cond_23
    iget-object v7, v6, Landroid/webkit/WebViewProviderResponse;->packageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    return v10

    :cond_2e
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const v7, 0x10000080

    :try_start_39
    invoke-virtual {v5, p0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_39 .. :try_end_3c} :catch_46

    move-result-object v4

    :try_start_3d
    invoke-static {p1, v4}, Landroid/webkit/WebViewLibraryLoader;->loadNativeLibrary(Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)I

    move-result v3

    if-nez v3, :cond_62

    iget v7, v6, Landroid/webkit/WebViewProviderResponse;->status:I
    :try_end_45
    .catch Landroid/webkit/WebViewFactory$MissingWebViewPackageException; {:try_start_3d .. :try_end_45} :catch_63

    return v7

    :catch_46
    move-exception v0

    const-string/jumbo v7, "WebViewFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t find package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_62
    return v3

    :catch_63
    move-exception v2

    const-string/jumbo v7, "WebViewFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t load native library: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x6

    return v7
.end method

.method public static onWebViewProviderChanged(Landroid/content/pm/PackageInfo;)I
    .registers 6

    const/4 v0, 0x0

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :try_start_5
    iget-object v3, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/webkit/WebViewFactory;->fixupStubApplicationInfo(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;)V

    invoke-static {p0}, Landroid/webkit/WebViewLibraryLoader;->updateWebViewZygoteVmSize(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_15} :catch_1e

    move-result-object v0

    :goto_16
    invoke-static {p0, v1}, Landroid/webkit/WebViewZygote;->onWebViewProviderChanged(Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->prepareWebViewInSystemServer([Ljava/lang/String;)I

    move-result v3

    return v3

    :catch_1e
    move-exception v2

    const-string/jumbo v3, "WebViewFactory"

    const-string/jumbo v4, "error preparing webview native library"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method private static prepareWebViewInSystemServer([Ljava/lang/String;)I
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_b

    invoke-static {v2, p0}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(Z[Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_b
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_16

    const/4 v1, 0x1

    invoke-static {v1, p0}, Landroid/webkit/WebViewLibraryLoader;->createRelroFile(Z[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_16
    return v0
.end method

.method public static prepareWebViewInZygote()V
    .registers 3

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewLibraryLoader;->reserveAddressSpaceInZygote()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    const-string/jumbo v1, "WebViewFactory"

    const-string/jumbo v2, "error preparing native loader"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .registers 8

    const/4 v3, 0x0

    if-nez p0, :cond_7

    if-nez p1, :cond_6

    const/4 v3, 0x1

    :cond_6
    return v3

    :cond_7
    if-nez p1, :cond_a

    return v3

    :cond_a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    array-length v5, p0

    move v4, v3

    :goto_11
    if-ge v4, v5, :cond_1b

    aget-object v2, p0, v4

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_1b
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    array-length v4, p1

    :goto_21
    if-ge v3, v4, :cond_2b

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_2b
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method private static verifyPackageInfo(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify WebView provider, packageName mismatch, expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget v0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v0, v1, :cond_62

    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to verify WebView provider, version code is lower than expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " actual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_62
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_86

    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Tried to load an invalid WebView provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_86
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v0, v1}, Landroid/webkit/WebViewFactory;->signaturesEquals([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v0

    if-nez v0, :cond_99

    new-instance v0, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    const-string/jumbo v1, "Failed to verify WebView provider, signature mismatch"

    invoke-direct {v0, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    return-void
.end method
