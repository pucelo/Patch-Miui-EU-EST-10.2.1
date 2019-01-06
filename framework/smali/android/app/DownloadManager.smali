.class public Landroid/app/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DownloadManager$CursorTranslator;,
        Landroid/app/DownloadManager$ExtraDownloads;,
        Landroid/app/DownloadManager$Query;,
        Landroid/app/DownloadManager$Request;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final ACTION_DOWNLOAD_COMPLETE:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETE"

.field public static final ACTION_DOWNLOAD_COMPLETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_COMPLETED"

.field public static final ACTION_DOWNLOAD_DELETED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_DELETED"

.field public static final ACTION_DOWNLOAD_UPDATED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_UPDATED"

.field public static final ACTION_DOWNLOAD_UPDATE_PROGRESS_REGISTRATION:Ljava/lang/String; = "android.intent.action.DOWNLOAD_UPDATE_PROGRESS_REGISTRATION"

.field public static final ACTION_NOTIFICATION_CLICKED:Ljava/lang/String; = "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

.field public static final ACTION_VIEW_DOWNLOADS:Ljava/lang/String; = "android.intent.action.VIEW_DOWNLOADS"

.field public static final COLUMN_ALLOW_WRITE:Ljava/lang/String; = "allow_write"

.field public static final COLUMN_BYTES_DOWNLOADED_SO_FAR:Ljava/lang/String; = "bytes_so_far"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_LAST_MODIFIED_TIMESTAMP:Ljava/lang/String; = "last_modified_timestamp"

.field public static final COLUMN_LOCAL_FILENAME:Ljava/lang/String; = "local_filename"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COLUMN_LOCAL_URI:Ljava/lang/String; = "local_uri"

.field public static final COLUMN_MEDIAPROVIDER_URI:Ljava/lang/String; = "mediaprovider_uri"

.field public static final COLUMN_MEDIA_TYPE:Ljava/lang/String; = "media_type"

.field public static final COLUMN_REASON:Ljava/lang/String; = "reason"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_SIZE_BYTES:Ljava/lang/String; = "total_size"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final ERROR_BLOCKED:I = 0x3f2

.field public static final ERROR_CANNOT_RESUME:I = 0x3f0

.field public static final ERROR_DEVICE_NOT_FOUND:I = 0x3ef

.field public static final ERROR_FILE_ALREADY_EXISTS:I = 0x3f1

.field public static final ERROR_FILE_ERROR:I = 0x3e9

.field public static final ERROR_HTTP_DATA_ERROR:I = 0x3ec

.field public static final ERROR_INSUFFICIENT_SPACE:I = 0x3ee

.field public static final ERROR_TOO_MANY_REDIRECTS:I = 0x3ed

.field public static final ERROR_UNHANDLED_HTTP_CODE:I = 0x3ea

.field public static final ERROR_UNKNOWN:I = 0x3e8

.field public static final EXTRA_DOWNLOAD_CURRENT_BYTES:Ljava/lang/String; = "extra_download_current_bytes"

.field public static final EXTRA_DOWNLOAD_ID:Ljava/lang/String; = "extra_download_id"

.field public static final EXTRA_DOWNLOAD_STATUS:Ljava/lang/String; = "extra_download_status"

.field public static final EXTRA_DOWNLOAD_TOTAL_BYTES:Ljava/lang/String; = "extra_download_total_bytes"

.field public static final EXTRA_NOTIFICATION_CLICK_DOWNLOAD_IDS:Ljava/lang/String; = "extra_click_download_ids"

.field public static final INTENT_EXTRAS_SORT_BY_SIZE:Ljava/lang/String; = "android.app.DownloadManager.extra_sortBySize"

.field public static final INTENT_EXTRA_APPLICATION_PACKAGENAME:Ljava/lang/String; = "intent_extra_application_packagename"

.field public static final INTENT_EXTRA_REGISTER_DOWNLOADS_UPDATE_PROGRESS:Ljava/lang/String; = "intent_extra_register_downloads_update_progress"

.field public static final INTENT_EXTRA_UNREGISTER_DOWNLOADS_UPDATE_PROGRESS:Ljava/lang/String; = "intent_extra_unregister_downloads_update_progress"

.field public static final MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

.field private static final NON_DOWNLOADMANAGER_DOWNLOAD:Ljava/lang/String; = "non-dwnldmngr-download-dont-retry2download"

.field public static final PAUSED_BY_APP:I = 0x5

.field public static final PAUSED_QUEUED_FOR_WIFI:I = 0x3

.field public static final PAUSED_UNKNOWN:I = 0x4

.field public static final PAUSED_WAITING_FOR_NETWORK:I = 0x2

.field public static final PAUSED_WAITING_TO_RETRY:I = 0x1

.field public static final PAUSE_INSUFFICIENT_SPACE:I = 0x6

.field public static final PERMISSION_SILENCE_INSTALL:Ljava/lang/String; = "android.permission.XL_SILENCE_INSTALL"

.field public static final STATUS_FAILED:I = 0x10

.field public static final STATUS_PAUSED:I = 0x4

.field public static final STATUS_PENDING:I = 0x1

.field public static final STATUS_RUNNING:I = 0x2

.field public static final STATUS_SUCCESSFUL:I = 0x8

.field public static final UNDERLYING_COLUMNS:[Ljava/lang/String;


# instance fields
.field private mAccessFilename:Z

.field private mBaseUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Landroid/app/DownloadManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/app/DownloadManager;->-assertionsDisabled:Z

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_data AS local_filename"

    aput-object v1, v0, v4

    const-string/jumbo v1, "mediaprovider_uri"

    aput-object v1, v0, v5

    const-string/jumbo v1, "destination"

    aput-object v1, v0, v6

    const-string/jumbo v1, "title"

    aput-object v1, v0, v7

    const-string/jumbo v1, "description"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "uri"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "status"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "hint"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "mimetype AS media_type"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "total_bytes AS total_size"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "lastmod AS last_modified_timestamp"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "current_bytes AS bytes_so_far"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "allow_write"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "errorMsg"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "notificationpackage"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "\'placeholder\' AS local_uri"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "\'placeholder\' AS reason"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    sget-object v0, Landroid/app/DownloadManager;->UNDERLYING_COLUMNS:[Ljava/lang/String;

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "entity"

    aput-object v2, v1, v3

    const-string/jumbo v2, "file_create_time"

    aput-object v2, v1, v4

    const-string/jumbo v2, "downloading_current_speed"

    aput-object v2, v1, v5

    const-string/jumbo v2, "download_surplus_time"

    aput-object v2, v1, v6

    const-string/jumbo v2, "xl_accelerate_speed"

    aput-object v2, v1, v7

    const-string/jumbo v2, "downloaded_time"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "xl_vip_status"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string/jumbo v2, "xl_vip_cdn_url"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string/jumbo v2, "xl_task_open_mark"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string/jumbo v2, "download_task_thumbnail"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string/jumbo v2, "apk_package_name"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string/jumbo v2, "download_file_hash"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string/jumbo v2, "download_apk_install_way"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string/jumbo v2, "download_extra"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/app/DownloadManager;->MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_21

    const/4 v0, 0x1

    :goto_1e
    iput-boolean v0, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    return-void

    :cond_21
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public static addRunningStatusAndControlRun(Landroid/content/ContentValues;)V
    .registers 3

    if-eqz p0, :cond_19

    const-string/jumbo v0, "status"

    const/16 v1, 0xc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "control"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_19
    return-void
.end method

.method private static concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getActiveNetworkWarningBytes(Landroid/content/Context;)J
    .registers 3

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getDownloadStatus(Landroid/database/Cursor;)I
    .registers 3

    const-string/jumbo v1, "status"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public static getMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "download_manager_max_bytes_over_mobile"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getRecommendedMaxBytesOverMobile(Landroid/content/Context;)Ljava/lang/Long;
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object v1

    return-object v1

    :catch_10
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .registers 3

    array-length v1, p0

    new-array v0, v1, [Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    sget-boolean v1, Landroid/app/DownloadManager;->-assertionsDisabled:Z

    if-nez v1, :cond_e

    array-length v1, p1

    array-length v2, p0

    if-ge v1, v2, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_e
    const/4 v0, 0x0

    :goto_f
    array-length v1, p0

    if-ge v0, v1, :cond_1d

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1d
    return-object p1
.end method

.method private static getWhereArgsForStatuses([I)[Ljava/lang/String;
    .registers 4

    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_4
    array-length v2, p0

    if-ge v0, v2, :cond_12

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .registers 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_26

    if-lez v0, :cond_17

    const-string/jumbo v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    const-string/jumbo v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_26
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_c
    array-length v2, p0

    if-ge v0, v2, :cond_3b

    if-lez v0, :cond_1f

    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_3b
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static isActiveNetworkExpensive(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public static isDownloadSuccess(Landroid/database/Cursor;)Z
    .registers 3

    const-string/jumbo v0, "status"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static isDownloading(Landroid/database/Cursor;)Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v2, "status"

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_12

    :goto_f
    return v0

    :pswitch_10
    const/4 v0, 0x1

    goto :goto_f

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public static setDownloadUpdateProgressRegistration(Landroid/content/Context;[J[J)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DOWNLOAD_UPDATE_PROGRESS_REGISTRATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "intent_extra_register_downloads_update_progress"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string/jumbo v1, "intent_extra_unregister_downloads_update_progress"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setRecommendedMaxBytesOverMobile(Landroid/content/Context;J)Z
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "download_manager_recommended_max_bytes_over_mobile"

    invoke-static {v0, v1, p1, p2}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static translateStatus(I)I
    .registers 2

    invoke-static {p0}, Landroid/app/DownloadManager$CursorTranslator;->translateStatus(I)I

    move-result v0

    return v0
.end method

.method private static validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can\'t be null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void
.end method


# virtual methods
.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
    .registers 21

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;Landroid/net/Uri;)J
    .registers 23

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZ)J
    .registers 22

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZZLandroid/net/Uri;Landroid/net/Uri;)J
    .registers 20

    const-string/jumbo v5, "title"

    invoke-static {v5, p1}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "description"

    invoke-static {v5, p2}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "path"

    invoke-static {v5, p5}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "mimeType"

    invoke-static {v5, p4}, Landroid/app/DownloadManager;->validateArgumentIsNonEmpty(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x0

    cmp-long v5, p6, v6

    if-gez v5, :cond_27

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, " invalid value for param: totalBytes"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_27
    if-eqz p10, :cond_a7

    new-instance v3, Landroid/app/DownloadManager$Request;

    move-object/from16 v0, p10

    invoke-direct {v3, v0}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    :goto_30
    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    if-eqz p11, :cond_47

    const-string/jumbo v5, "Referer"

    invoke-virtual/range {p11 .. p11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    :cond_47
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    const-string/jumbo v5, "destination"

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "_data"

    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "status"

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "total_bytes"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v6, "scanned"

    if-eqz p3, :cond_b0

    const/4 v5, 0x0

    :goto_79
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "visibility"

    if-eqz p8, :cond_b2

    const/4 v5, 0x3

    :goto_86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v6, "allow_write"

    if-eqz p9, :cond_b4

    const/4 v5, 0x1

    :goto_93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v5, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_b6

    const-wide/16 v6, -0x1

    return-wide v6

    :cond_a7
    new-instance v3, Landroid/app/DownloadManager$Request;

    const-string/jumbo v5, "non-dwnldmngr-download-dont-retry2download"

    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    goto :goto_30

    :cond_b0
    const/4 v5, 0x2

    goto :goto_79

    :cond_b2
    const/4 v5, 0x2

    goto :goto_86

    :cond_b4
    const/4 v5, 0x0

    goto :goto_93

    :cond_b6
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    return-wide v6
.end method

.method public enqueue(Landroid/app/DownloadManager$Request;)J
    .registers 8

    iget-object v4, p0, Landroid/app/DownloadManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    iget-object v4, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    return-wide v2
.end method

.method public varargs forceDownload([J)V
    .registers 7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "status"

    const/16 v2, 0xbe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "control"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v1, "bypass_recommended_size_limit"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public getDownloadUri(J)Landroid/net/Uri;
    .registers 4

    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getMimeTypeForDownloadedFile(J)Ljava/lang/String;
    .registers 10

    const/4 v5, 0x0

    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_3a

    move-result-object v0

    if-nez v0, :cond_1d

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1c
    return-object v5

    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_34

    const-string/jumbo v2, "media_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_3a

    move-result-object v2

    if-eqz v0, :cond_33

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_33
    return-object v2

    :cond_34
    if-eqz v0, :cond_39

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_39
    return-object v5

    :catchall_3a
    move-exception v2

    if-eqz v0, :cond_40

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v2
.end method

.method public getUriForDownloadedFile(J)Landroid/net/Uri;
    .registers 10

    const/4 v6, 0x0

    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {p0, v1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_44

    move-result-object v0

    if-nez v0, :cond_1d

    if-eqz v0, :cond_1c

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1c
    return-object v6

    :cond_1d
    :try_start_1d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/16 v3, 0x8

    if-ne v3, v2, :cond_3e

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_44

    move-result-object v3

    if-eqz v0, :cond_3d

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3d
    return-object v3

    :cond_3e
    if-eqz v0, :cond_43

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_43
    return-object v6

    :catchall_44
    move-exception v3

    if-eqz v0, :cond_4a

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4a
    throw v3
.end method

.method public varargs markRowDeleted([J)I
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_8

    array-length v1, p1

    if-nez v1, :cond_11

    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "input param \'ids\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "deleted"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    array-length v1, p1

    if-ne v1, v5, :cond_32

    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    aget-wide v4, p1, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_32
    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/app/DownloadManager;->getDownloadUri(J)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public varargs pauseDownload([J)V
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "status"

    const/16 v4, 0xc1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "control"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "="

    aput-object v5, v4, v7

    const-string/jumbo v5, "="

    aput-object v5, v4, v6

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "OR"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Landroid/app/DownloadManager;->getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xbe

    const/16 v5, 0xc0

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/app/DownloadManager;->getWhereArgsForStatuses([I)[Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    .registers 7

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/app/DownloadManager;->MIUI_UNDERLYING_COLUMNS:[Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {p1, v1, v2, v3}, Landroid/app/DownloadManager$Query;->runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_e

    return-object v4

    :cond_e
    new-instance v1, Landroid/app/DownloadManager$CursorTranslator;

    iget-object v2, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-boolean v3, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    invoke-direct {v1, v0, v2, v3}, Landroid/app/DownloadManager$CursorTranslator;-><init>(Landroid/database/Cursor;Landroid/net/Uri;Z)V

    return-object v1
.end method

.method public varargs remove([J)I
    .registers 3

    invoke-virtual {p0, p1}, Landroid/app/DownloadManager;->markRowDeleted([J)I

    move-result v0

    return v0
.end method

.method public varargs removeRecordOnly([J)I
    .registers 6

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_e

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input param \'ids\' can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public rename(Landroid/content/Context;JLjava/lang/String;)Z
    .registers 25

    invoke-static/range {p4 .. p4}, Landroid/os/FileUtils;->isValidFatFilename(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_22

    new-instance v13, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " is not a valid filename"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_22
    new-instance v13, Landroid/app/DownloadManager$Query;

    invoke-direct {v13}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v14, 0x1

    new-array v14, v14, [J

    const/4 v15, 0x0

    aput-wide p2, v14, v15

    invoke-virtual {v13, v14}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    :try_start_34
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;
    :try_end_39
    .catchall {:try_start_34 .. :try_end_39} :catchall_a1

    move-result-object v4

    if-nez v4, :cond_43

    const/4 v13, 0x0

    if-eqz v4, :cond_42

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_42
    return v13

    :cond_43
    :try_start_43
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_75

    const-string/jumbo v13, "status"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_a1

    move-result v11

    const/16 v13, 0x8

    if-eq v13, v11, :cond_5f

    const/4 v13, 0x0

    if-eqz v4, :cond_5e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5e
    return v13

    :cond_5f
    :try_start_5f
    const-string/jumbo v13, "title"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v13, "media_type"

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_74
    .catchall {:try_start_5f .. :try_end_74} :catchall_a1

    move-result-object v7

    :cond_75
    if-eqz v4, :cond_7a

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7a
    if-eqz v8, :cond_7e

    if-nez v7, :cond_a8

    :cond_7e
    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Document with id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p2

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " does not exist"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :catchall_a1
    move-exception v13

    if-eqz v4, :cond_a7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a7
    throw v13

    :cond_a8
    sget-object v13, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v13}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v2, v9, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_da

    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Already exists "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_da
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_fa

    new-instance v13, Ljava/lang/IllegalStateException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to rename to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_fa
    const-string/jumbo v13, "image/"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_133

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v15, "_data=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aput-object v17, v16, v18

    invoke-virtual/range {v13 .. v16}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_133
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v13, "title"

    move-object/from16 v0, p4

    invoke-virtual {v12, v13, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "_data"

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "mediaprovider_uri"

    invoke-virtual {v12, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v13, 0x1

    new-array v5, v13, [J

    const/4 v13, 0x0

    aput-wide p2, v5, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v5}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v15

    invoke-static {v5}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v12, v15, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_171

    const/4 v13, 0x1

    :goto_170
    return v13

    :cond_171
    const/4 v13, 0x0

    goto :goto_170
.end method

.method public varargs restartDownload([J)V
    .registers 10

    const/4 v5, 0x0

    new-instance v3, Landroid/app/DownloadManager$Query;

    invoke-direct {v3}, Landroid/app/DownloadManager$Query;-><init>()V

    invoke-virtual {v3, p1}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_11
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_58

    const-string/jumbo v3, "status"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/16 v3, 0x8

    if-eq v1, v3, :cond_54

    const/16 v3, 0x10

    if-eq v1, v3, :cond_54

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot restart incomplete download: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_id"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4f
    .catchall {:try_start_e .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_54
    :try_start_54
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_4f

    goto :goto_11

    :cond_58
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "current_bytes"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "total_bytes"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const-string/jumbo v3, "status"

    const/16 v4, 0xbe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "numfailed"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public varargs resumeDownload([J)V
    .registers 12

    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v0}, Landroid/app/DownloadManager;->addRunningStatusAndControlRun(Landroid/content/ContentValues;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "( "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "="

    aput-object v5, v4, v7

    const-string/jumbo v5, "="

    aput-object v5, v4, v8

    const-string/jumbo v5, "="

    aput-object v5, v4, v9

    const-string/jumbo v5, "="

    aput-object v5, v4, v6

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v6, "OR"

    aput-object v6, v5, v7

    const-string/jumbo v6, "OR"

    aput-object v6, v5, v8

    const-string/jumbo v6, "OR"

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Landroid/app/DownloadManager;->getWhereClauseForStatuses([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Landroid/app/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc1

    const/16 v5, 0xc2

    const/16 v6, 0xc3

    const/16 v7, 0xc4

    filled-new-array {v4, v5, v6, v7}, [I

    move-result-object v4

    invoke-static {v4}, Landroid/app/DownloadManager;->getWhereArgsForStatuses([I)[Ljava/lang/String;

    move-result-object v4

    const-class v5, Ljava/lang/String;

    invoke-static {v3, v4, v5}, Landroid/app/DownloadManager;->concatArrays([Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v3, p0, Landroid/app/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v0, v2, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public setAccessAllDownloads(Z)V
    .registers 3

    if-eqz p1, :cond_7

    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    :goto_6
    return-void

    :cond_7
    sget-object v0, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/DownloadManager;->mBaseUri:Landroid/net/Uri;

    goto :goto_6
.end method

.method public setAccessFilename(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/app/DownloadManager;->mAccessFilename:Z

    return-void
.end method
