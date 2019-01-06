.class public final Landroid/provider/MediaStore;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$Audio;,
        Landroid/provider/MediaStore$Files;,
        Landroid/provider/MediaStore$Images;,
        Landroid/provider/MediaStore$InternalThumbnails;,
        Landroid/provider/MediaStore$MediaColumns;,
        Landroid/provider/MediaStore$Video;
    }
.end annotation


# static fields
.field public static final ACTION_IMAGE_CAPTURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE"

.field public static final ACTION_IMAGE_CAPTURE_SECURE:Ljava/lang/String; = "android.media.action.IMAGE_CAPTURE_SECURE"

.field public static final ACTION_MTP_SESSION_END:Ljava/lang/String; = "android.provider.action.MTP_SESSION_END"

.field public static final ACTION_VIDEO_CAPTURE:Ljava/lang/String; = "android.media.action.VIDEO_CAPTURE"

.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field public static final EXTRA_DURATION_LIMIT:Ljava/lang/String; = "android.intent.extra.durationLimit"

.field public static final EXTRA_FINISH_ON_COMPLETION:Ljava/lang/String; = "android.intent.extra.finishOnCompletion"

.field public static final EXTRA_FULL_SCREEN:Ljava/lang/String; = "android.intent.extra.fullScreen"

.field public static final EXTRA_MEDIA_ALBUM:Ljava/lang/String; = "android.intent.extra.album"

.field public static final EXTRA_MEDIA_ARTIST:Ljava/lang/String; = "android.intent.extra.artist"

.field public static final EXTRA_MEDIA_FOCUS:Ljava/lang/String; = "android.intent.extra.focus"

.field public static final EXTRA_MEDIA_GENRE:Ljava/lang/String; = "android.intent.extra.genre"

.field public static final EXTRA_MEDIA_PLAYLIST:Ljava/lang/String; = "android.intent.extra.playlist"

.field public static final EXTRA_MEDIA_RADIO_CHANNEL:Ljava/lang/String; = "android.intent.extra.radio_channel"

.field public static final EXTRA_MEDIA_TITLE:Ljava/lang/String; = "android.intent.extra.title"

.field public static final EXTRA_OUTPUT:Ljava/lang/String; = "output"

.field public static final EXTRA_SCREEN_ORIENTATION:Ljava/lang/String; = "android.intent.extra.screenOrientation"

.field public static final EXTRA_SHOW_ACTION_ICONS:Ljava/lang/String; = "android.intent.extra.showActionIcons"

.field public static final EXTRA_SIZE_LIMIT:Ljava/lang/String; = "android.intent.extra.sizeLimit"

.field public static final EXTRA_VIDEO_QUALITY:Ljava/lang/String; = "android.intent.extra.videoQuality"

.field public static final INTENT_ACTION_MEDIA_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.MEDIA_PLAY_FROM_SEARCH"

.field public static final INTENT_ACTION_MEDIA_SEARCH:Ljava/lang/String; = "android.intent.action.MEDIA_SEARCH"

.field public static final INTENT_ACTION_MUSIC_PLAYER:Ljava/lang/String; = "android.intent.action.MUSIC_PLAYER"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA"

.field public static final INTENT_ACTION_STILL_IMAGE_CAMERA_SECURE:Ljava/lang/String; = "android.media.action.STILL_IMAGE_CAMERA_SECURE"

.field public static final INTENT_ACTION_TEXT_OPEN_FROM_SEARCH:Ljava/lang/String; = "android.media.action.TEXT_OPEN_FROM_SEARCH"

.field public static final INTENT_ACTION_VIDEO_CAMERA:Ljava/lang/String; = "android.media.action.VIDEO_CAMERA"

.field public static final INTENT_ACTION_VIDEO_PLAY_FROM_SEARCH:Ljava/lang/String; = "android.media.action.VIDEO_PLAY_FROM_SEARCH"

.field public static final MEDIA_IGNORE_FILENAME:Ljava/lang/String; = ".nomedia"

.field public static final MEDIA_SCANNER_VOLUME:Ljava/lang/String; = "volume"

.field public static final META_DATA_STILL_IMAGE_CAMERA_PREWARM_SERVICE:Ljava/lang/String; = "android.media.still_image_camera_preview_service"

.field public static final PARAM_DELETE_DATA:Ljava/lang/String; = "deletedata"

.field private static final TAG:Ljava/lang/String; = "MediaStore"

.field public static final UNHIDE_CALL:Ljava/lang/String; = "unhide"

.field public static final UNKNOWN_STRING:Ljava/lang/String; = "<unknown>"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDocumentUri(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/UriPermission;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v3, "com.android.externalstorage.documents"

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "com.android.externalstorage.documents.extra.uriPermissions"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    const-string/jumbo v3, "getDocumentId"

    invoke-virtual {v0, v3, p1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "uri"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_24} :catch_2f
    .catchall {:try_start_2 .. :try_end_24} :catchall_49

    if-eqz v0, :cond_29

    :try_start_26
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2c

    :cond_29
    :goto_29
    if-eqz v4, :cond_2e

    throw v4

    :catch_2c
    move-exception v4

    goto :goto_29

    :cond_2e
    return-object v3

    :catch_2f
    move-exception v3

    :try_start_30
    throw v3
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_35
    if-eqz v0, :cond_3a

    :try_start_37
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3a} :catch_3d

    :cond_3a
    :goto_3a
    if-eqz v4, :cond_48

    throw v4

    :catch_3d
    move-exception v5

    if-nez v4, :cond_42

    move-object v4, v5

    goto :goto_3a

    :cond_42
    if-eq v4, v5, :cond_3a

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3a

    :cond_48
    throw v3

    :catchall_49
    move-exception v3

    goto :goto_35
.end method

.method public static getDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/MediaStore;->getFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/provider/MediaStore;->getDocumentUri(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v4

    return-object v4

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method private static getFilePath(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_2
    const-string/jumbo v1, "media"

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string/jumbo v1, "_data"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_19} :catch_3f
    .catchall {:try_start_2 .. :try_end_19} :catchall_7b

    move-result-object v6

    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4d

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Not found media file under URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception v1

    :try_start_3b
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3f} :catch_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_7b

    :catch_3f
    move-exception v1

    :try_start_40
    throw v1
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    :catchall_41
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_45
    if-eqz v0, :cond_4a

    :try_start_47
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_4a} :catch_6f

    :cond_4a
    :goto_4a
    if-eqz v2, :cond_7a

    throw v2

    :cond_4d
    :try_start_4d
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_5c

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to move cursor to the first item."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_4d .. :try_end_60} :catchall_3a

    move-result-object v7

    :try_start_61
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_64} :catch_3f
    .catchall {:try_start_61 .. :try_end_64} :catchall_7b

    if-eqz v0, :cond_69

    :try_start_66
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_69} :catch_6c

    :cond_69
    :goto_69
    if-eqz v8, :cond_6e

    throw v8

    :catch_6c
    move-exception v8

    goto :goto_69

    :cond_6e
    return-object v7

    :catch_6f
    move-exception v3

    if-nez v2, :cond_74

    move-object v2, v3

    goto :goto_4a

    :cond_74
    if-eq v2, v3, :cond_4a

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4a

    :cond_7a
    throw v1

    :catchall_7b
    move-exception v1

    move-object v2, v8

    goto :goto_45
.end method

.method public static getMediaScannerUri()Landroid/net/Uri;
    .registers 1

    const-string/jumbo v0, "content://media/none/media_scanner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://media/none/version"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_27

    :try_start_15
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_28

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_24
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_27
    return-object v2

    :catchall_28
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
