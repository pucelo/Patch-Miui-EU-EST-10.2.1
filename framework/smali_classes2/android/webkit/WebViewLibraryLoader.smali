.class Landroid/webkit/WebViewLibraryLoader;
.super Ljava/lang/Object;
.source "WebViewLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;
    }
.end annotation


# static fields
.field private static final CHROMIUM_WEBVIEW_DEFAULT_VMSIZE_BYTES:J = 0x6400000L

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_32:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium32.relro"

.field private static final CHROMIUM_WEBVIEW_NATIVE_RELRO_64:Ljava/lang/String; = "/data/misc/shared_relro/libwebviewchromium64.relro"

.field private static final DEBUG:Z

.field private static final LOGTAG:Ljava/lang/String;

.field private static sAddressSpaceReserved:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Z
    .registers 1

    sget-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/webkit/WebViewLibraryLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createRelroFile(Z[Ljava/lang/String;)V
    .registers 11

    const/4 v1, 0x0

    if-eqz p0, :cond_3a

    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    :goto_7
    new-instance v6, Landroid/webkit/WebViewLibraryLoader$1;

    invoke-direct {v6, v4}, Landroid/webkit/WebViewLibraryLoader$1;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    :try_start_f
    aget-object v0, p1, v0

    if-nez v0, :cond_3f

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Native library paths to the WebView RelRo process must not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception v8

    sget-object v0, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error starting relro file creator for abi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_39
    return-void

    :cond_3a
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v4, v0, v1

    goto :goto_7

    :cond_3f
    const/4 v0, 0x1

    :try_start_40
    aget-object v0, p1, v0

    if-eqz v0, :cond_13

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    const-class v1, Landroid/webkit/WebViewLibraryLoader$RelroFileCreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WebViewLoader-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x40d

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/ActivityManagerInternal;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I

    move-result v7

    if-gtz v7, :cond_39

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Failed to start the relro file creator process"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_78} :catch_1c
.end method

.method private static getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    :try_start_3
    new-instance v5, Ljava/util/zip/ZipFile;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_70
    .catchall {:try_start_3 .. :try_end_8} :catchall_90

    :try_start_8
    array-length v8, p1

    :goto_9
    if-ge v6, v8, :cond_66

    aget-object v0, p1, v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "lib/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    if-eqz v2, :cond_63

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v9

    if-nez v9, :cond_63

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "!/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_4f} :catch_95
    .catchall {:try_start_8 .. :try_end_4f} :catchall_92

    move-result-object v6

    if-eqz v5, :cond_55

    :try_start_52
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_60
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_58

    :cond_55
    :goto_55
    if-eqz v7, :cond_62

    :try_start_57
    throw v7
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_58} :catch_58

    :catch_58
    move-exception v1

    move-object v4, v5

    :goto_5a
    new-instance v6, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;

    invoke-direct {v6, v1}, Landroid/webkit/WebViewFactory$MissingWebViewPackageException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :catch_60
    move-exception v7

    goto :goto_55

    :cond_62
    return-object v6

    :cond_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_66
    if-eqz v5, :cond_6b

    :try_start_68
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_6b} :catch_6e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_58

    :cond_6b
    :goto_6b
    if-eqz v7, :cond_8c

    :try_start_6d
    throw v7
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_6e} :catch_58

    :catch_6e
    move-exception v7

    goto :goto_6b

    :catch_70
    move-exception v6

    :goto_71
    :try_start_71
    throw v6
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_72

    :catchall_72
    move-exception v7

    move-object v11, v7

    move-object v7, v6

    move-object v6, v11

    :goto_76
    if-eqz v4, :cond_7b

    :try_start_78
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_7b} :catch_80
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_7e

    :cond_7b
    :goto_7b
    if-eqz v7, :cond_8b

    :try_start_7d
    throw v7

    :catch_7e
    move-exception v1

    goto :goto_5a

    :catch_80
    move-exception v8

    if-nez v7, :cond_85

    move-object v7, v8

    goto :goto_7b

    :cond_85
    if-eq v7, v8, :cond_7b

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7b

    :cond_8b
    throw v6
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_8c} :catch_7e

    :cond_8c
    const-string/jumbo v6, ""

    return-object v6

    :catchall_90
    move-exception v6

    goto :goto_76

    :catchall_92
    move-exception v6

    move-object v4, v5

    goto :goto_76

    :catch_95
    move-exception v6

    move-object v4, v5

    goto :goto_71
.end method

.method static getWebViewNativeLibraryPaths(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Ldalvik/system/VMRuntime;->is64BitAbi(Ljava/lang/String;)Z

    move-result v5

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8b

    if-eqz v5, :cond_86

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    :goto_1a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4b

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v7, v2}, Landroid/webkit/WebViewLibraryLoader;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4b
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_7c

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v6, v7, v2}, Landroid/webkit/WebViewLibraryLoader;->getLoadFromApkPath(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_7c
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    return-object v6

    :cond_86
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    goto :goto_1a

    :cond_8b
    if-eqz v5, :cond_93

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string/jumbo v3, ""

    goto :goto_1a

    :cond_93
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string/jumbo v4, ""

    goto :goto_1a
.end method

.method static loadNativeLibrary(Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    sget-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    if-nez v2, :cond_e

    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "can\'t load with relro file; address space not reserved"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    return v2

    :cond_e
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2}, Landroid/webkit/WebViewFactory;->getWebViewLibrary(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/data/misc/shared_relro/libwebviewchromium32.relro"

    const-string/jumbo v3, "/data/misc/shared_relro/libwebviewchromium64.relro"

    invoke-static {v0, v2, v3, p0}, Landroid/webkit/WebViewLibraryLoader;->nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I

    move-result v1

    if-eqz v1, :cond_28

    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to load with relro file, proceeding without"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return v1
.end method

.method static native nativeCreateRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native nativeLoadWithRelroFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)I
.end method

.method static native nativeReserveAddressSpace(J)Z
.end method

.method static reserveAddressSpaceInZygote()V
    .registers 6

    const-string/jumbo v2, "webviewchromium_loader"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string/jumbo v2, "persist.sys.webview.vmsize"

    const-wide/32 v4, 0x6400000

    invoke-static {v2, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/webkit/WebViewLibraryLoader;->nativeReserveAddressSpace(J)Z

    move-result v2

    sput-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    sget-boolean v2, Landroid/webkit/WebViewLibraryLoader;->sAddressSpaceReserved:Z

    if-eqz v2, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    sget-object v2, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reserving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " bytes of address space failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method private static setWebViewZygoteVmSize(J)V
    .registers 4

    const-string/jumbo v0, "persist.sys.webview.vmsize"

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static updateWebViewZygoteVmSize(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/webkit/WebViewFactory$MissingWebViewPackageException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/webkit/WebViewLibraryLoader;->getWebViewNativeLibraryPaths(Landroid/content/pm/PackageInfo;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_102

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    array-length v0, v5

    move/from16 v16, v0

    move v15, v12

    :goto_d
    move/from16 v0, v16

    if-ge v15, v0, :cond_dc

    aget-object v8, v5, v15

    if-eqz v8, :cond_1b

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1f

    :cond_1b
    :goto_1b
    add-int/lit8 v12, v15, 0x1

    move v15, v12

    goto :goto_d

    :cond_1f
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_33

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    goto :goto_1b

    :cond_33
    const-string/jumbo v12, "!/"

    invoke-virtual {v8, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_97

    const-string/jumbo v12, "!/"

    invoke-static {v8, v12}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v12, v9

    const/4 v13, 0x2

    if-ne v12, v13, :cond_97

    const/4 v13, 0x0

    const/4 v10, 0x0

    :try_start_49
    new-instance v11, Ljava/util/zip/ZipFile;

    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-direct {v11, v12}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_51} :catch_be
    .catchall {:try_start_49 .. :try_end_51} :catchall_103

    const/4 v12, 0x1

    :try_start_52
    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_b4

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v12

    if-nez v12, :cond_b4

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->max(JJ)J
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_69} :catch_108
    .catchall {:try_start_52 .. :try_end_69} :catchall_105

    move-result-wide v6

    if-eqz v11, :cond_6f

    :try_start_6c
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6f} :catch_b2
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_72

    :cond_6f
    :goto_6f
    if-eqz v13, :cond_1b

    :try_start_71
    throw v13
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_72} :catch_72

    :catch_72
    move-exception v2

    move-object v10, v11

    :goto_74
    sget-object v12, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "error reading APK file "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_97
    sget-object v12, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "error sizing load for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    :catch_b2
    move-exception v13

    goto :goto_6f

    :cond_b4
    if-eqz v11, :cond_b9

    :try_start_b6
    invoke-virtual {v11}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b9
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_b9} :catch_bc
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_72

    :cond_b9
    :goto_b9
    if-eqz v13, :cond_97

    :try_start_bb
    throw v13
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_bc} :catch_72

    :catch_bc
    move-exception v13

    goto :goto_b9

    :catch_be
    move-exception v12

    :goto_bf
    :try_start_bf
    throw v12
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c0

    :catchall_c0
    move-exception v13

    move-object/from16 v20, v13

    move-object v13, v12

    move-object/from16 v12, v20

    :goto_c6
    if-eqz v10, :cond_cb

    :try_start_c8
    invoke-virtual {v10}, Ljava/util/zip/ZipFile;->close()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_c8 .. :try_end_cb} :catch_d0
    .catch Ljava/io/IOException; {:try_start_c8 .. :try_end_cb} :catch_ce

    :cond_cb
    :goto_cb
    if-eqz v13, :cond_db

    :try_start_cd
    throw v13

    :catch_ce
    move-exception v2

    goto :goto_74

    :catch_d0
    move-exception v14

    if-nez v13, :cond_d5

    move-object v13, v14

    goto :goto_cb

    :cond_d5
    if-eq v13, v14, :cond_cb

    invoke-virtual {v13, v14}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_cb

    :cond_db
    throw v12
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_dc} :catch_ce

    :cond_dc
    const-wide/16 v12, 0x2

    mul-long/2addr v12, v6

    const-wide/32 v14, 0x6400000

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    sget-object v12, Landroid/webkit/WebViewLibraryLoader;->LOGTAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Setting new address space to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v7}, Landroid/webkit/WebViewLibraryLoader;->setWebViewZygoteVmSize(J)V

    :cond_102
    return-object v5

    :catchall_103
    move-exception v12

    goto :goto_c6

    :catchall_105
    move-exception v12

    move-object v10, v11

    goto :goto_c6

    :catch_108
    move-exception v12

    move-object v10, v11

    goto :goto_bf
.end method
