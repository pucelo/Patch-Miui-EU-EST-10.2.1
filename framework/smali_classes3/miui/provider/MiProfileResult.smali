.class public Lmiui/provider/MiProfileResult;
.super Ljava/lang/Object;
.source "MiProfileResult.java"


# static fields
.field private static final MIPROFILE_DIR:Ljava/lang/String; = "/data/data/com.miui.cloudservice/files/"

.field private static final TAG:Ljava/lang/String; = "MiProfileResult"


# instance fields
.field public mJson:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mPhoto:Landroid/graphics/Bitmap;

.field public mSid:Ljava/lang/String;

.field public mThumbnail:Landroid/graphics/Bitmap;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMiProfileFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "%s-%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, ""

    return-object v2

    :cond_a
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->parse(Ljava/lang/CharSequence;)Lmiui/telephony/PhoneNumberUtils$PhoneNumber;

    move-result-object v1

    if-eqz v1, :cond_2f

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/telephony/PhoneNumberUtils$PhoneNumber;->getNormalizedNumber(ZZ)Ljava/lang/String;

    move-result-object v0

    :goto_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string/jumbo v2, "+86"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2f
    move-object v0, p0

    goto :goto_1a

    :cond_31
    const-string/jumbo v2, "0086"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_40
    return-object v0
.end method

.method public static queryContactMiProfile(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/MiProfileResult;
    .registers 15

    const/4 v12, 0x0

    invoke-static {p1}, Lmiui/provider/MiProfileResult;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/MiProfile;->MIPROFILE_NUMBERS_URI:Landroid/net/Uri;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "name"

    const/4 v4, 0x2

    aput-object v3, v2, v4

    const-string/jumbo v3, "json"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    const-string/jumbo v3, "number=? AND type=? AND (expireTime>=? OR expireTime<0)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const-string/jumbo v5, "SendCard"

    const/4 v10, 0x1

    aput-object v5, v4, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_9d

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9d

    new-instance v9, Lmiui/provider/MiProfileResult;

    invoke-direct {v9}, Lmiui/provider/MiProfileResult;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mType:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mJson:Ljava/lang/String;

    iget-object v0, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    const-string/jumbo v1, "thumbnail"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lmiui/provider/MiProfileResult;->queryMiProfilePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "MiProfileResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryContactMiProfile(): sid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_97} :catch_a3
    .catchall {:try_start_6 .. :try_end_97} :catchall_aa

    if-eqz v6, :cond_9c

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9c
    return-object v9

    :cond_9d
    if-eqz v6, :cond_a2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_a2
    :goto_a2
    return-object v12

    :catch_a3
    move-exception v7

    if-eqz v6, :cond_a2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_a2

    :catchall_aa
    move-exception v0

    if-eqz v6, :cond_b0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_b0
    throw v0
.end method

.method private static queryMiProfilePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .registers 10

    const/4 v5, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/data/com.miui.cloudservice/files/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Lmiui/provider/MiProfileResult;->getMiProfileFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lmiui/graphics/BitmapFactory;->decodeBitmap(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_37

    if-eqz p3, :cond_35

    invoke-static {p0, v0}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_34} :catch_36

    move-result-object v0

    :cond_35
    return-object v0

    :catch_36
    move-exception v1

    :cond_37
    return-object v5
.end method

.method public static queryPhoneMiProfile(Landroid/content/Context;Ljava/lang/String;)Lmiui/provider/MiProfileResult;
    .registers 15

    const/4 v12, 0x0

    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    return-object v12

    :cond_a
    invoke-static {p1}, Lmiui/provider/MiProfileResult;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lmiui/provider/MiProfile;->MIPROFILE_NUMBERS_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "sid"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "name"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "number=? AND type=? AND (expireTime>=? OR expireTime<0)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    const-string/jumbo v5, "SendCard"

    const/4 v10, 0x1

    aput-object v5, v4, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_8c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_8c

    new-instance v9, Lmiui/provider/MiProfileResult;

    invoke-direct {v9}, Lmiui/provider/MiProfileResult;-><init>()V

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    iget-object v0, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    const-string/jumbo v1, "thumbnail"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lmiui/provider/MiProfileResult;->queryMiProfilePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v9, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "MiProfileResult"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryPhoneMiProfile(): sid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_86} :catch_92
    .catchall {:try_start_f .. :try_end_86} :catchall_99

    if-eqz v6, :cond_8b

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8b
    return-object v9

    :cond_8c
    if-eqz v6, :cond_91

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_91
    :goto_91
    return-object v12

    :catch_92
    move-exception v7

    if-eqz v6, :cond_91

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_91

    :catchall_99
    move-exception v0

    if-eqz v6, :cond_9f

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_9f
    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/MiProfileResult;->mSid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/MiProfileResult;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_46

    const-string/jumbo v1, "mName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/MiProfileResult;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_46
    iget-object v1, p0, Lmiui/provider/MiProfileResult;->mPhoto:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_50

    const-string/jumbo v1, "mPhoto exists; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-object v1, p0, Lmiui/provider/MiProfileResult;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5a

    const-string/jumbo v1, "mThumbnail exists; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5a
    iget-object v1, p0, Lmiui/provider/MiProfileResult;->mJson:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    const-string/jumbo v1, "mJson = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/provider/MiProfileResult;->mJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
