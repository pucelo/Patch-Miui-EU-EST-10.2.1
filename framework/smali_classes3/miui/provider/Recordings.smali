.class public Lmiui/provider/Recordings;
.super Ljava/lang/Object;
.source "Recordings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/Recordings$CachedAccount;,
        Lmiui/provider/Recordings$CallRecords;,
        Lmiui/provider/Recordings$CallRecordsView;,
        Lmiui/provider/Recordings$Downloads;,
        Lmiui/provider/Recordings$MarkPoints;,
        Lmiui/provider/Recordings$MarkpointsOperations;,
        Lmiui/provider/Recordings$Operations;,
        Lmiui/provider/Recordings$RecordingNotifications;,
        Lmiui/provider/Recordings$Records;,
        Lmiui/provider/Recordings$SyncTokens;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "records"

.field public static final CALL_RECORD_DIR:Ljava/lang/String;

.field public static final FM_RECORD_DIR:Ljava/lang/String;

.field private static final HEXDIGITS:[Ljava/lang/String;

.field private static final MEDIA_SCANNER_CLASS:Ljava/lang/String; = "com.android.providers.media.MediaScannerReceiver"

.field private static final MEDIA_SCANNER_PACKAGE:Ljava/lang/String; = "com.android.providers.media"

.field public static final RECORDER_ROOT_PATH:Ljava/lang/String;

.field public static final SAMPLE_DEFAULT_DIR:Ljava/lang/String; = "/sound_recorder"

.field private static final TAG:Ljava/lang/String; = "SoundRecorder:SoundRecorder"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/sound_recorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/call_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->CALL_RECORD_DIR:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/fm_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/provider/Recordings;->FM_RECORD_DIR:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "3"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "4"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "5"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "6"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "7"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "8"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "9"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "a"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "b"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "c"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "d"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "e"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "f"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byteArrayToHexString([B)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_2b

    sget-object v2, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    aget-byte v3, p0, v0

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lmiui/provider/Recordings;->HEXDIGITS:[Ljava/lang/String;

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;)I
    .registers 12

    const/4 v9, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v1, "cnt_unread"

    aput-object v1, v2, v5

    const-string/jumbo v3, "rec_type=?"

    new-array v4, v9, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_16
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2e

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v9, :cond_2e

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_34

    move-result v8

    :cond_2e
    if-eqz v7, :cond_33

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_33
    return v8

    :catchall_34
    move-exception v1

    if-eqz v7, :cond_3a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3a
    throw v1
.end method

.method public static getSha1(Ljava/io/File;)Ljava/lang/String;
    .registers 12

    const/4 v4, 0x0

    const/4 v7, 0x0

    :try_start_2
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_69
    .catchall {:try_start_2 .. :try_end_7} :catchall_53

    :try_start_7
    const-string/jumbo v8, "SHA1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    const/16 v8, 0x2000

    new-array v0, v8, [B

    :goto_12
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_2f

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d
    .catchall {:try_start_7 .. :try_end_1c} :catchall_66

    goto :goto_12

    :catch_1d
    move-exception v2

    move-object v4, v5

    :goto_1f
    :try_start_1f
    const-string/jumbo v8, "SoundRecorder:SoundRecorder"

    const-string/jumbo v9, "Exception when getSha1"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_53

    if-eqz v4, :cond_2e

    :try_start_2a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_48

    :goto_2d
    const/4 v4, 0x0

    :cond_2e
    :goto_2e
    return-object v7

    :cond_2f
    :try_start_2f
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lmiui/provider/Recordings;->byteArrayToHexString([B)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_1d
    .catchall {:try_start_2f .. :try_end_36} :catchall_66

    move-result-object v7

    if-eqz v5, :cond_6b

    :try_start_39
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_2d

    :catch_3d
    move-exception v1

    const-string/jumbo v8, "SoundRecorder:SoundRecorder"

    const-string/jumbo v9, "Exception when close inputstream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catch_48
    move-exception v1

    const-string/jumbo v8, "SoundRecorder:SoundRecorder"

    const-string/jumbo v9, "Exception when close inputstream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2d

    :catchall_53
    move-exception v8

    :goto_54
    if-eqz v4, :cond_5a

    :try_start_56
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_5b

    :goto_59
    const/4 v4, 0x0

    :cond_5a
    throw v8

    :catch_5b
    move-exception v1

    const-string/jumbo v9, "SoundRecorder:SoundRecorder"

    const-string/jumbo v10, "Exception when close inputstream"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    :catchall_66
    move-exception v8

    move-object v4, v5

    goto :goto_54

    :catch_69
    move-exception v2

    goto :goto_1f

    :cond_6b
    move-object v4, v5

    goto :goto_2e
.end method

.method public static notifyRecording(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 14

    const/4 v8, 0x1

    if-nez p1, :cond_4

    return-void

    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    sget-object v5, Lmiui/provider/Recordings;->CALL_RECORD_DIR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

    const/4 v3, 0x1

    :cond_13
    :goto_13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_bd

    const/4 v5, -0x1

    if-eq v3, v5, :cond_bd

    sget-object v5, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-static {v5}, Lmiui/os/FileUtils;->addNoMedia(Ljava/lang/String;)Z

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.android.providers.media"

    const-string/jumbo v6, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0}, Lmiui/provider/Recordings;->getSha1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_bd

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "file_path"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "file_name"

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "create_time"

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "rec_type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "db_sync_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "duration"

    const-wide/16 v6, 0x3e8

    div-long v6, p2, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v5, "sync_dirty"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "in_local"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "in_cloud"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "sha1"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lmiui/provider/Recordings$Records;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_bd
    return-void

    :cond_be
    sget-object v5, Lmiui/provider/Recordings;->FM_RECORD_DIR:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    const/4 v3, 0x2

    goto/16 :goto_13

    :cond_c9
    sget-object v5, Lmiui/provider/Recordings;->RECORDER_ROOT_PATH:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v3, 0x0

    goto/16 :goto_13
.end method

.method public static setNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v1, "cnt_unread"

    aput-object v1, v2, v5

    const-string/jumbo v3, "rec_type=?"

    new-array v4, v6, [Ljava/lang/String;

    aput-object p1, v4, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_16
    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4b

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_4d

    move-result v1

    if-eqz v1, :cond_4b

    const/4 v8, 0x1

    :goto_27
    if-eqz v7, :cond_2c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2c
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "cnt_unread"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v9, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz p3, :cond_43

    const-string/jumbo v1, "NOTIF_DESC"

    invoke-virtual {v9, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_43
    if-eqz v8, :cond_54

    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_4a
    return-void

    :cond_4b
    const/4 v8, 0x0

    goto :goto_27

    :catchall_4d
    move-exception v1

    if-eqz v7, :cond_53

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v1

    :cond_54
    const-string/jumbo v1, "rec_type"

    invoke-virtual {v9, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lmiui/provider/Recordings$RecordingNotifications;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_4a
.end method
