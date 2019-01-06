.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RingtoneManager$NewRingtoneScanner;
    }
.end annotation


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field public static final EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final URI_COLUMN_INDEX:I = 0x2


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeParentRingtones:Z

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static synthetic -get0(Landroid/media/RingtoneManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "title_key"

    aput-object v1, v0, v6

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    iput-boolean p2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/media/RingtoneManager;->mType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    iput-boolean v1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    iput-boolean p2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    return-void
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p0, :cond_4

    return-object v2

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_15
    if-ltz v0, :cond_2a

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_15

    :cond_2a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_39

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_39
    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    :catch_e
    move-exception v0

    const-string/jumbo v1, "RingtoneManager"

    const-string/jumbo v2, "Unable to create package context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static disableSyncFromParent(Landroid/content/Context;)V
    .registers 6

    const-string/jumbo v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/media/IAudioService;->disableRingtoneSync(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_13

    :goto_12
    return-void

    :catch_13
    move-exception v2

    const-string/jumbo v3, "RingtoneManager"

    const-string/jumbo v4, "Unable to disable ringtone sync."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method public static enableSyncFromParent(Landroid/content/Context;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sync_parent_sounds"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 7

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return-object v3

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {v3, v1, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_1a
    if-eqz v0, :cond_2a

    invoke-static {v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-ne v3, v4, :cond_2a

    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_2a
    return-object v0

    :cond_2b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static getCacheForType(I)Landroid/net/Uri;
    .registers 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheForType(II)Landroid/net/Uri;
    .registers 3

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_b

    sget-object v0, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_b
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_16

    sget-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_16
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_21

    sget-object v0, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_21
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .registers 3

    const/4 v1, -0x1

    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_8

    return v1

    :cond_8
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    return v0

    :cond_1c
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v0, 0x4

    return v0

    :cond_26
    return v1
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    :cond_7
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_e

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    :cond_e
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_15

    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    :cond_15
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getExistingRingtoneUriFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 12

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    const/4 v6, 0x0

    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_data=? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_27

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_22} :catch_72
    .catchall {:try_start_f .. :try_end_22} :catchall_8c

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_33

    :cond_27
    if-eqz v6, :cond_2c

    :try_start_29
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2c} :catch_30

    :cond_2c
    move-object v0, v8

    :goto_2d
    if-eqz v0, :cond_32

    throw v0

    :catch_30
    move-exception v0

    goto :goto_2d

    :cond_32
    return-object v8

    :cond_33
    :try_start_33
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_3d} :catch_72
    .catchall {:try_start_33 .. :try_end_3d} :catchall_8c

    move-result v7

    const/4 v0, -0x1

    if-ne v7, v0, :cond_4d

    if-eqz v6, :cond_46

    :try_start_43
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_4a

    :cond_46
    move-object v0, v8

    :goto_47
    if-eqz v0, :cond_4c

    throw v0

    :catch_4a
    move-exception v0

    goto :goto_47

    :cond_4c
    return-object v8

    :cond_4d
    :try_start_4d
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_66} :catch_72
    .catchall {:try_start_4d .. :try_end_66} :catchall_8c

    move-result-object v0

    if-eqz v6, :cond_6c

    :try_start_69
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_6c} :catch_6f

    :cond_6c
    :goto_6c
    if-eqz v8, :cond_71

    throw v8

    :catch_6f
    move-exception v8

    goto :goto_6c

    :cond_71
    return-object v0

    :catch_72
    move-exception v0

    :try_start_73
    throw v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_78
    if-eqz v6, :cond_7d

    :try_start_7a
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7d} :catch_80

    :cond_7d
    :goto_7d
    if-eqz v1, :cond_8b

    throw v1

    :catch_80
    move-exception v3

    if-nez v1, :cond_85

    move-object v1, v3

    goto :goto_7d

    :cond_85
    if-eq v1, v3, :cond_7d

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7d

    :cond_8b
    throw v0

    :catchall_8c
    move-exception v0

    move-object v1, v8

    goto :goto_78
.end method

.method private static final getExternalDirectoryForType(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_26

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported ringtone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    sget-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    return-object v0

    :pswitch_20
    sget-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    return-object v0

    :pswitch_23
    sget-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    return-object v0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
        :pswitch_3
        :pswitch_23
    .end packed-switch
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .registers 7

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "title_key"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .registers 2

    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/RingtoneManager;->getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 10

    const/4 v4, 0x0

    const-string/jumbo v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "No READ_EXTERNAL_STORAGE permission, ignoring ringtones on ext storage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1c
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "mounted"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "mounted_ro"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_32
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "title_key"

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v4

    :cond_45
    return-object v4
.end method

.method private getParentProfileRingtones()Landroid/database/Cursor;
    .registers 7

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_33

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v4, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    if-eq v3, v4, :cond_33

    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_33

    new-instance v3, Landroid/media/ExternalRingtonesCursorWrapper;

    invoke-direct {p0, v0}, Landroid/media/RingtoneManager;->getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v4

    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v3, v4, v5}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;I)V

    return-object v3

    :cond_33
    return-object v5
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .registers 3

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;
    .registers 8

    :try_start_0
    new-instance v1, Landroid/media/Ringtone;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    if-ltz p2, :cond_b

    invoke-virtual {v1, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    :cond_b
    invoke-virtual {v1, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v0

    const-string/jumbo v2, "RingtoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to open ringtone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private getRingtonePathFromUri(Landroid/net/Uri;)Ljava/io/File;
    .registers 12

    const/4 v8, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_10
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_30} :catch_3c
    .catchall {:try_start_10 .. :try_end_30} :catchall_5e

    move-result-object v7

    :cond_31
    if-eqz v6, :cond_36

    :try_start_33
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_3a

    :cond_36
    move-object v0, v8

    :goto_37
    if-eqz v0, :cond_56

    throw v0

    :catch_3a
    move-exception v0

    goto :goto_37

    :catch_3c
    move-exception v0

    :try_start_3d
    throw v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    :catchall_3e
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_42
    if-eqz v6, :cond_47

    :try_start_44
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_47} :catch_4a

    :cond_47
    :goto_47
    if-eqz v1, :cond_55

    throw v1

    :catch_4a
    move-exception v3

    if-nez v1, :cond_4f

    move-object v1, v3

    goto :goto_47

    :cond_4f
    if-eq v1, v3, :cond_47

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_55
    throw v0

    :cond_56
    if-eqz v7, :cond_5d

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_5d
    return-object v8

    :catchall_5e
    move-exception v0

    move-object v1, v8

    goto :goto_42
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .registers 2

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ringtone"

    return-object v0

    :cond_8
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_10

    const-string/jumbo v0, "notification_sound"

    return-object v0

    :cond_10
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_18

    const-string/jumbo v0, "alarm_alert"

    return-object v0

    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 5

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4

    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_17

    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    :cond_17
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    :cond_e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v0

    :cond_12
    return-object v1
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .registers 3

    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static isExternalRingtoneUri(Landroid/net/Uri;)Z
    .registers 2

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static isInternalRingtoneUri(Landroid/net/Uri;)Z
    .registers 2

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 5

    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    :goto_7
    return v1

    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    goto :goto_7
.end method

.method private static openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    :try_start_4
    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_7} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v4

    return-object v4

    :catch_9
    move-exception v0

    const-string/jumbo v4, "RingtoneManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to open directly; attempting failover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-class v4, Landroid/media/AudioManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    :try_start_30
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-interface {v2, p1}, Landroid/media/IRingtonePlayer;->openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_39} :catch_3a

    return-object v4

    :catch_3a
    move-exception v1

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    iget-object v6, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .registers 13

    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 14

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v6, "sync_parent_sounds"

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v8

    const/4 v9, 0x0

    invoke-static {v4, v6, v9, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1e

    invoke-static {p0}, Landroid/media/RingtoneManager;->disableSyncFromParent(Landroid/content/Context;)V

    :cond_1e
    invoke-static {p2}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v6

    if-nez v6, :cond_2c

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-static {p2, v6}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    :cond_2c
    if-eqz p2, :cond_7a

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_32
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-static {v4, v5, v6, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-eqz p2, :cond_79

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-static {p1, v6}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_45
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v4, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_50} :catch_88
    .catchall {:try_start_45 .. :try_end_50} :catchall_b2

    if-eqz v3, :cond_55

    :try_start_52
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_55} :catch_7c
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5e

    :cond_55
    :goto_55
    if-eqz v2, :cond_5a

    :try_start_57
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_5a} :catch_7e
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5e

    :cond_5a
    move-object v6, v7

    :cond_5b
    :goto_5b
    if-eqz v6, :cond_79

    :try_start_5d
    throw v6
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5e} :catch_5e

    :catch_5e
    move-exception v1

    const-string/jumbo v6, "RingtoneManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to cache ringtone: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    return-void

    :cond_7a
    move-object v6, v7

    goto :goto_32

    :catch_7c
    move-exception v7

    goto :goto_55

    :catch_7e
    move-exception v6

    if-eqz v7, :cond_5b

    if-eq v7, v6, :cond_5a

    :try_start_83
    invoke-virtual {v7, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_5e

    move-object v6, v7

    goto :goto_5b

    :catch_88
    move-exception v6

    :try_start_89
    throw v6
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_8a

    :catchall_8a
    move-exception v7

    move-object v10, v7

    move-object v7, v6

    move-object v6, v10

    :goto_8e
    if-eqz v3, :cond_93

    :try_start_90
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_93
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_93} :catch_9d
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_93} :catch_5e

    :cond_93
    move-object v8, v7

    :cond_94
    :goto_94
    if-eqz v2, :cond_99

    :try_start_96
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_96 .. :try_end_99} :catch_a7
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_99} :catch_5e

    :cond_99
    move-object v7, v8

    :cond_9a
    :goto_9a
    if-eqz v7, :cond_b1

    :try_start_9c
    throw v7

    :catch_9d
    move-exception v8

    if-eqz v7, :cond_94

    if-eq v7, v8, :cond_93

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v8, v7

    goto :goto_94

    :catch_a7
    move-exception v7

    if-eqz v8, :cond_9a

    if-eq v8, v7, :cond_99

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v7, v8

    goto :goto_9a

    :cond_b1
    throw v6
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_b2} :catch_5e

    :catchall_b2
    move-exception v6

    goto :goto_8e
.end method

.method private setFilterColumnsList(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_19

    const-string/jumbo v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_19
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_23

    const-string/jumbo v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    return-void
.end method


# virtual methods
.method public addCustomExternalRingtone(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "mounted"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "External storage is not mounted. Unable to install ringtones."

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_17
    iget-object v9, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_37

    const-string/jumbo v9, "audio/"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_58

    const-string/jumbo v9, "application/ogg"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    :goto_33
    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5a

    :cond_37
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Ringtone file must have MIME type \"audio/*\". Given file has MIME type \""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_58
    const/4 v9, 0x1

    goto :goto_33

    :cond_5a
    invoke-static {p2}, Landroid/media/RingtoneManager;->getExternalDirectoryForType(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget-object v11, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Landroid/media/Utils;->getFileDisplayNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v8, v11, v2}, Landroid/media/Utils;->getUniqueExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    :try_start_6c
    iget-object v9, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_7b} :catch_99
    .catchall {:try_start_6c .. :try_end_7b} :catchall_107

    :try_start_7b
    invoke-static {v1, v5}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7e} :catch_10c
    .catchall {:try_start_7b .. :try_end_7e} :catchall_109

    if-eqz v5, :cond_83

    :try_start_80
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_83} :catch_8d

    :cond_83
    move-object v11, v10

    :goto_84
    if-eqz v1, :cond_89

    :try_start_86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_8f

    :cond_89
    move-object v9, v11

    :cond_8a
    :goto_8a
    if-eqz v9, :cond_c3

    throw v9

    :catch_8d
    move-exception v11

    goto :goto_84

    :catch_8f
    move-exception v9

    if-eqz v11, :cond_8a

    if-eq v11, v9, :cond_89

    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v9, v11

    goto :goto_8a

    :catch_99
    move-exception v9

    :goto_9a
    :try_start_9a
    throw v9
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_9b

    :catchall_9b
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_9f
    if-eqz v4, :cond_a4

    :try_start_a1
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a4} :catch_ae

    :cond_a4
    move-object v11, v10

    :cond_a5
    :goto_a5
    if-eqz v1, :cond_aa

    :try_start_a7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_a7 .. :try_end_aa} :catch_b8

    :cond_aa
    move-object v10, v11

    :cond_ab
    :goto_ab
    if-eqz v10, :cond_c2

    throw v10

    :catch_ae
    move-exception v11

    if-eqz v10, :cond_a5

    if-eq v10, v11, :cond_a4

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v11, v10

    goto :goto_a5

    :catch_b8
    move-exception v10

    if-eqz v11, :cond_ab

    if-eq v11, v10, :cond_aa

    invoke-virtual {v11, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    move-object v10, v11

    goto :goto_ab

    :cond_c2
    throw v9

    :cond_c3
    const/4 v6, 0x0

    :try_start_c4
    new-instance v7, Landroid/media/RingtoneManager$NewRingtoneScanner;

    invoke-direct {v7, p0, v3}, Landroid/media/RingtoneManager$NewRingtoneScanner;-><init>(Landroid/media/RingtoneManager;Ljava/io/File;)V
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_c9} :catch_e3
    .catchall {:try_start_c4 .. :try_end_c9} :catchall_ff

    :try_start_c9
    invoke-virtual {v7}, Landroid/media/RingtoneManager$NewRingtoneScanner;->take()Landroid/net/Uri;
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_c9 .. :try_end_cc} :catch_104
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_101

    move-result-object v9

    if-eqz v7, :cond_d2

    :try_start_cf
    invoke-virtual {v7}, Landroid/media/RingtoneManager$NewRingtoneScanner;->close()V
    :try_end_d2
    .catch Ljava/lang/Throwable; {:try_start_cf .. :try_end_d2} :catch_e0
    .catch Ljava/lang/InterruptedException; {:try_start_cf .. :try_end_d2} :catch_d5

    :cond_d2
    :goto_d2
    if-eqz v10, :cond_e2

    :try_start_d4
    throw v10
    :try_end_d5
    .catch Ljava/lang/InterruptedException; {:try_start_d4 .. :try_end_d5} :catch_d5

    :catch_d5
    move-exception v0

    move-object v6, v7

    :goto_d7
    new-instance v9, Ljava/io/IOException;

    const-string/jumbo v10, "Audio file failed to scan as a ringtone"

    invoke-direct {v9, v10, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :catch_e0
    move-exception v10

    goto :goto_d2

    :cond_e2
    return-object v9

    :catch_e3
    move-exception v9

    :goto_e4
    :try_start_e4
    throw v9
    :try_end_e5
    .catchall {:try_start_e4 .. :try_end_e5} :catchall_e5

    :catchall_e5
    move-exception v10

    move-object v12, v10

    move-object v10, v9

    move-object v9, v12

    :goto_e9
    if-eqz v6, :cond_ee

    :try_start_eb
    invoke-virtual {v6}, Landroid/media/RingtoneManager$NewRingtoneScanner;->close()V
    :try_end_ee
    .catch Ljava/lang/Throwable; {:try_start_eb .. :try_end_ee} :catch_f3
    .catch Ljava/lang/InterruptedException; {:try_start_eb .. :try_end_ee} :catch_f1

    :cond_ee
    :goto_ee
    if-eqz v10, :cond_fe

    :try_start_f0
    throw v10

    :catch_f1
    move-exception v0

    goto :goto_d7

    :catch_f3
    move-exception v11

    if-nez v10, :cond_f8

    move-object v10, v11

    goto :goto_ee

    :cond_f8
    if-eq v10, v11, :cond_ee

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_ee

    :cond_fe
    throw v9
    :try_end_ff
    .catch Ljava/lang/InterruptedException; {:try_start_f0 .. :try_end_ff} :catch_f1

    :catchall_ff
    move-exception v9

    goto :goto_e9

    :catchall_101
    move-exception v9

    move-object v6, v7

    goto :goto_e9

    :catch_104
    move-exception v9

    move-object v6, v7

    goto :goto_e4

    :catchall_107
    move-exception v9

    goto :goto_9f

    :catchall_109
    move-exception v9

    move-object v4, v5

    goto :goto_9f

    :catch_10c
    move-exception v9

    move-object v4, v5

    goto :goto_9a
.end method

.method public deleteExternalRingtone(Landroid/net/Uri;)Z
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->isCustomRingtone(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_8

    return v5

    :cond_8
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->getRingtonePathFromUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2b

    :try_start_e
    iget-object v2, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_2b

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_1f} :catch_21

    move-result v2

    return v2

    :catch_21
    move-exception v0

    const-string/jumbo v2, "RingtoneManager"

    const-string/jumbo v3, "Unable to delete custom ringtone"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    return v5
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 6

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v2

    :cond_f
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    if-eqz v2, :cond_2f

    invoke-direct {p0}, Landroid/media/RingtoneManager;->getParentProfileRingtones()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2f
    new-instance v3, Lcom/android/internal/database/SortCursor;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    const-string/jumbo v4, "title_key"

    invoke-direct {v3, v2, v4}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v3, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v3
.end method

.method public getIncludeDrm()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .registers 5

    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_d
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;I)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .registers 11

    const/4 v8, -0x1

    if-nez p1, :cond_4

    return v8

    :cond_4
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_13

    return v8

    :cond_13
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_43

    const/4 v6, 0x2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_27

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2b

    :cond_27
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_2b
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    return v3

    :cond_3b
    const/4 v6, 0x1

    invoke-interface {v1, v6}, Landroid/database/Cursor;->move(I)Z

    move-object v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_43
    return v8
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_10

    :cond_f
    return-object v1

    :cond_10
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getStopPreviousRingtone()Z
    .registers 2

    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public inferStreamType()I
    .registers 2

    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5
    const/4 v0, 0x2

    return v0

    :pswitch_7
    const/4 v0, 0x4

    return v0

    :pswitch_9
    const/4 v0, 0x5

    return v0

    nop

    :pswitch_data_c
    .packed-switch 0x2
        :pswitch_9
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method

.method public isCustomRingtone(Landroid/net/Uri;)Z
    .registers 11

    const/4 v8, 0x1

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isExternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_9

    return v5

    :cond_9
    if-nez p1, :cond_12

    const/4 v3, 0x0

    :goto_c
    if-nez v3, :cond_17

    const/4 v2, 0x0

    :goto_f
    if-nez v2, :cond_1c

    return v5

    :cond_12
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->getRingtonePathFromUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object v3

    goto :goto_c

    :cond_17
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_f

    :cond_1c
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v4, v0, v5

    sget-object v4, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v4, v0, v8

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v0, v6

    array-length v6, v0

    move v4, v5

    :goto_2e
    if-ge v4, v6, :cond_40

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3d

    return v8

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :cond_40
    return v5
.end method

.method public setIncludeDrm(Z)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_b

    const-string/jumbo v0, "RingtoneManager"

    const-string/jumbo v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return-void
.end method

.method public setType(I)V
    .registers 4

    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    return-void
.end method

.method public stopPreviousRingtone()V
    .registers 2

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_9
    return-void
.end method
