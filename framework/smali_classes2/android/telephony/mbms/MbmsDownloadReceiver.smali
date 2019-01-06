.class public Landroid/telephony/mbms/MbmsDownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MbmsDownloadReceiver.java"


# static fields
.field public static final DOWNLOAD_TOKEN_SUFFIX:Ljava/lang/String; = ".download_token"

.field private static final LOG_TAG:Ljava/lang/String; = "MbmsDownloadReceiver"

.field private static final MAX_TEMP_FILE_RETRIES:I = 0x5

.field public static final MBMS_FILE_PROVIDER_META_DATA_KEY:Ljava/lang/String; = "mbms-file-provider-authority"

.field public static final RESULT_APP_NOTIFICATION_ERROR:I = 0x6

.field public static final RESULT_BAD_TEMP_FILE_ROOT:I = 0x3

.field public static final RESULT_DOWNLOAD_FINALIZATION_ERROR:I = 0x4

.field public static final RESULT_INVALID_ACTION:I = 0x1

.field public static final RESULT_MALFORMED_INTENT:I = 0x2

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_TEMP_FILE_GENERATION_ERROR:I = 0x5

.field private static final TEMP_FILE_STAGING_LOCATION:Ljava/lang/String; = "staged_completed_files"

.field private static final TEMP_FILE_SUFFIX:Ljava/lang/String; = ".embms.temp"


# instance fields
.field private mFileProviderAuthorityCache:Ljava/lang/String;

.field private mMiddlewarePackageNameCache:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    return-void
.end method

.method private cleanupPostMove(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string/jumbo v5, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/DownloadRequest;

    if-nez v0, :cond_15

    const-string/jumbo v5, "MbmsDownloadReceiver"

    const-string/jumbo v6, "Intent does not include a DownloadRequest. Ignoring."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const-string/jumbo v5, "android.telephony.mbms.extra.TEMP_LIST"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-nez v4, :cond_1f

    return-void

    :cond_1f
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_23
    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_23

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_23

    :cond_46
    return-void
.end method

.method private cleanupTempFiles(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string/jumbo v5, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "android.telephony.mbms.extra.TEMP_FILES_IN_USE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v5, Landroid/telephony/mbms/MbmsDownloadReceiver$1;

    invoke-direct {v5, p0, v1}, Landroid/telephony/mbms/MbmsDownloadReceiver$1;-><init>(Landroid/telephony/mbms/MbmsDownloadReceiver;Ljava/util/List;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    const/4 v5, 0x0

    array-length v6, v2

    :goto_1d
    if-ge v5, v6, :cond_27

    aget-object v0, v2, v5

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_27
    return-void
.end method

.method private generateFreshTempFiles(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/mbms/UriPathPair;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p3, :cond_48

    invoke-static {v5}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateSingleTempFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_2b

    const/4 v6, 0x5

    invoke-virtual {p0, v6}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    const-string/jumbo v6, "MbmsDownloadReceiver"

    const-string/jumbo v7, "Failed to generate a temp file. Moving on."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2b
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6, v4}, Landroid/telephony/mbms/MbmsTempFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {p1, v6, v0, v7}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance v6, Landroid/telephony/mbms/UriPathPair;

    invoke-direct {v6, v1, v0}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_48
    return-object v3
.end method

.method private static generateSingleTempFile(Ljava/io/File;)Ljava/io/File;
    .registers 7

    const/4 v2, 0x0

    :cond_1
    :goto_1
    const/4 v4, 0x5

    if-ge v2, v4, :cond_2e

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".embms.temp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_23
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_30

    move-result-object v4

    return-object v4

    :cond_2e
    const/4 v4, 0x0

    return-object v4

    :catch_30
    move-exception v0

    goto :goto_1
.end method

.method private generateTempFiles(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12

    const/4 v8, 0x0

    const-string/jumbo v6, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_18

    const-string/jumbo v6, "MbmsDownloadReceiver"

    const-string/jumbo v7, "Temp file request did not include the associated service id. Ignoring."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    return-void

    :cond_18
    const-string/jumbo v6, "android.telephony.mbms.extra.FD_COUNT"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v6, "android.telephony.mbms.extra.PAUSED_LIST"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v0, :cond_42

    if-eqz v3, :cond_30

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_42

    :cond_30
    const-string/jumbo v6, "MbmsDownloadReceiver"

    const-string/jumbo v7, "No temp files actually requested. Ending."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, v6}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultExtras(Landroid/os/Bundle;)V

    return-void

    :cond_42
    invoke-direct {p0, p1, v5, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateFreshTempFiles(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, v5, v3}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateUrisForPausedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "android.telephony.mbms.extra.FREE_URI_LIST"

    invoke-virtual {v4, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v6, "android.telephony.mbms.extra.PAUSED_URI_LIST"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    invoke-virtual {p0, v4}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private generateUrisForPausedFiles(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/mbms/UriPathPair;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x5

    if-nez p3, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    return-object v5

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {p1, p2, v1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_4e

    const-string/jumbo v5, "MbmsDownloadReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Supplied file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is not a valid temp file to resume"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    goto :goto_17

    :cond_4e
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_82

    const-string/jumbo v5, "MbmsDownloadReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Supplied file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " does not exist."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    goto :goto_17

    :cond_82
    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v4}, Landroid/telephony/mbms/MbmsTempFileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {p1, v5, v0, v6}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    new-instance v5, Landroid/telephony/mbms/UriPathPair;

    invoke-direct {v5, v1, v0}, Landroid/telephony/mbms/UriPathPair;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :cond_9c
    return-object v3
.end method

.method private static getFileProviderAuthority(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_1b

    move-result-object v0

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_3a

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "App must declare the file provider authority as metadata in the manifest."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_1b
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Package manager couldn\'t find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3a
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v4, "mbms-file-provider-authority"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4e

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "App must declare the file provider authority as metadata in the manifest."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4e
    return-object v1
.end method

.method private getFileProviderAuthorityCached(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-static {p1}, Landroid/telephony/mbms/MbmsDownloadReceiver;->getFileProviderAuthority(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mFileProviderAuthorityCache:Ljava/lang/String;

    return-object v0
.end method

.method private getMiddlewarePackageCached(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string/jumbo v0, "android.telephony.action.EmbmsDownload"

    invoke-static {p1, v0}, Landroid/telephony/mbms/MbmsUtils;->getMiddlewareServiceInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    :cond_f
    iget-object v0, p0, Landroid/telephony/mbms/MbmsDownloadReceiver;->mMiddlewarePackageNameCache:Ljava/lang/String;

    return-object v0
.end method

.method private static manualMove(Ljava/io/File;Ljava/io/File;)Z
    .registers 13

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_c
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_11} :catch_4c
    .catchall {:try_start_3 .. :try_end_11} :catchall_97

    :try_start_11
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_16} :catch_c6
    .catchall {:try_start_11 .. :try_end_16} :catchall_bf

    const/16 v7, 0x800

    :try_start_18
    new-array v0, v7, [B

    :cond_1a
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_22} :catch_c9
    .catchall {:try_start_18 .. :try_end_22} :catchall_c2

    if-gtz v4, :cond_1a

    if-eqz v3, :cond_29

    :try_start_26
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_29
    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2e} :catch_30

    :cond_2e
    :goto_2e
    const/4 v7, 0x1

    return v7

    :catch_30
    move-exception v1

    const-string/jumbo v7, "MbmsDownloadReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing streams: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :catch_4c
    move-exception v1

    :goto_4d
    :try_start_4d
    const-string/jumbo v7, "MbmsDownloadReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Manual file move failed due to exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_70

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_70
    .catchall {:try_start_4d .. :try_end_70} :catchall_97

    :cond_70
    if-eqz v2, :cond_75

    :try_start_72
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_75
    if-eqz v5, :cond_7a

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7a} :catch_7b

    :cond_7a
    :goto_7a
    return v10

    :catch_7b
    move-exception v1

    const-string/jumbo v7, "MbmsDownloadReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error closing streams: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    :catchall_97
    move-exception v7

    :goto_98
    if-eqz v2, :cond_9d

    :try_start_9a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9d
    if-eqz v5, :cond_a2

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_a2} :catch_a3

    :cond_a2
    :goto_a2
    throw v7

    :catch_a3
    move-exception v1

    const-string/jumbo v8, "MbmsDownloadReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error closing streams: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a2

    :catchall_bf
    move-exception v7

    move-object v2, v3

    goto :goto_98

    :catchall_c2
    move-exception v7

    move-object v5, v6

    move-object v2, v3

    goto :goto_98

    :catch_c6
    move-exception v1

    move-object v2, v3

    goto :goto_4d

    :catch_c9
    move-exception v1

    move-object v5, v6

    move-object v2, v3

    goto :goto_4d
.end method

.method private moveDownloadedFile(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16

    const-string/jumbo v8, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/telephony/mbms/DownloadRequest;

    invoke-virtual {v4}, Landroid/telephony/mbms/DownloadRequest;->getIntentForApp()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_1d

    const-string/jumbo v8, "MbmsDownloadReceiver"

    const-string/jumbo v9, "Malformed app notification intent"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    return-void

    :cond_1d
    const-string/jumbo v8, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    const/4 v9, 0x2

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v8, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    invoke-virtual {v3, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v8, 0x1

    if-eq v5, v8, :cond_3b

    const-string/jumbo v8, "MbmsDownloadReceiver"

    const-string/jumbo v9, "Download request indicated a failed download. Aborting."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_3b
    const-string/jumbo v8, "android.telephony.mbms.extra.FINAL_URI"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8, v2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v8

    if-nez v8, :cond_6d

    const-string/jumbo v8, "MbmsDownloadReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Download result specified an invalid temp file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    return-void

    :cond_6d
    const-string/jumbo v8, "android.telephony.extra.MBMS_FILE_INFO"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/mbms/FileInfo;

    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v8

    invoke-static {p1}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string/jumbo v11, "staged_completed_files"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v7

    :try_start_8f
    invoke-static {v2, v7}, Landroid/telephony/mbms/MbmsDownloadReceiver;->stageTempFile(Landroid/net/Uri;Ljava/nio/file/Path;)Landroid/net/Uri;
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_ad

    move-result-object v6

    const-string/jumbo v8, "android.telephony.extra.MBMS_COMPLETED_FILE_URI"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v8, "android.telephony.extra.MBMS_FILE_INFO"

    invoke-virtual {v3, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v8, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    return-void

    :catch_ad
    move-exception v1

    const-string/jumbo v8, "MbmsDownloadReceiver"

    const-string/jumbo v9, "Failed to move temp file to final destination"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    return-void
.end method

.method private static stageTempFile(Landroid/net/Uri;Ljava/nio/file/Path;)Landroid/net/Uri;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string/jumbo v2, "file"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string/jumbo v2, "MbmsDownloadReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Moving source uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not have a file scheme"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2

    :cond_31
    invoke-static {}, Ljava/nio/file/FileSystems;->getDefault()Ljava/nio/file/FileSystem;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/nio/file/FileSystem;->getPath(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v2, v5, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-nez v2, :cond_4c

    new-array v2, v5, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    :cond_4c
    invoke-interface {v0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v5, [Ljava/nio/file/CopyOption;

    invoke-static {v0, v2, v3}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private verifyIntentContents(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "android.telephony.mbms.action.DOWNLOAD_RESULT_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c8

    const-string/jumbo v3, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Download result did not include a result code. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_22
    const-string/jumbo v3, "android.telephony.extra.MBMS_DOWNLOAD_RESULT"

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v5, v3, :cond_2d

    return v5

    :cond_2d
    const-string/jumbo v3, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Download result did not include the associated request. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_40
    const-string/jumbo v3, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Download result did not include the temp file root. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_53
    const-string/jumbo v3, "android.telephony.extra.MBMS_FILE_INFO"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_66

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Download result did not include the associated file info. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_66
    const-string/jumbo v3, "android.telephony.mbms.extra.FINAL_URI"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Download result did not include the path to the final temp file. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_79
    const-string/jumbo v3, "android.telephony.extra.MBMS_DOWNLOAD_REQUEST"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/telephony/mbms/DownloadRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getHash()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".download_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Landroid/telephony/mbms/DownloadRequest;->getFileServiceId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_141

    const-string/jumbo v3, "MbmsDownloadReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Supplied download request does not match a token that we have. Expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_c8
    const-string/jumbo v3, "android.telephony.mbms.action.FILE_DESCRIPTOR_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fb

    const-string/jumbo v3, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e8

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Temp file request did not include the associated service id. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_e8
    const-string/jumbo v3, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_141

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Download result did not include the temp file root. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_fb
    const-string/jumbo v3, "android.telephony.mbms.action.CLEANUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    const-string/jumbo v3, "android.telephony.mbms.extra.SERVICE_ID"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11b

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Cleanup request did not include the associated service id. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_11b
    const-string/jumbo v3, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12e

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Cleanup request did not include the temp file root. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_12e
    const-string/jumbo v3, "android.telephony.mbms.extra.TEMP_FILES_IN_USE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_141

    const-string/jumbo v3, "MbmsDownloadReceiver"

    const-string/jumbo v4, "Cleanup request did not include the list of temp files in use. Ignoring."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_141
    return v5
.end method

.method private static verifyTempFilePath(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 9

    const/4 v5, 0x0

    const-string/jumbo v2, "file"

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "MbmsDownloadReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not have a file scheme"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_30
    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_61

    const-string/jumbo v2, "MbmsDownloadReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "File at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_61
    invoke-static {p0, p1}, Landroid/telephony/mbms/MbmsUtils;->getEmbmsTempFileDirForService(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/telephony/mbms/MbmsUtils;->isContainedIn(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_6c

    return v5

    :cond_6c
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->verifyIntentContents(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    return-void

    :cond_b
    const-string/jumbo v0, "android.telephony.mbms.extra.TEMP_FILE_ROOT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/mbms/MbmsTempFileProvider;->getEmbmsTempFileDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    return-void

    :cond_25
    const-string/jumbo v0, "android.telephony.mbms.action.DOWNLOAD_RESULT_INTERNAL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->moveDownloadedFile(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->cleanupPostMove(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_38
    return-void

    :cond_39
    const-string/jumbo v0, "android.telephony.mbms.action.FILE_DESCRIPTOR_REQUEST"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->generateTempFiles(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_38

    :cond_4a
    const-string/jumbo v0, "android.telephony.mbms.action.CLEANUP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-direct {p0, p1, p2}, Landroid/telephony/mbms/MbmsDownloadReceiver;->cleanupTempFiles(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_38

    :cond_5b
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/telephony/mbms/MbmsDownloadReceiver;->setResultCode(I)V

    goto :goto_38
.end method
