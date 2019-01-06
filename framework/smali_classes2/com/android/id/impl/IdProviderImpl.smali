.class public Lcom/android/id/impl/IdProviderImpl;
.super Ljava/lang/Object;
.source "IdProviderImpl.java"

# interfaces
.implements Lcom/android/id/IdProvider;


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "content://com.miui.idprovider"

.field private static final COLUMN_NAME:Ljava/lang/String; = "uniform_id"

.field private static final PATH_AAID:Ljava/lang/String; = "/aaid"

.field private static final PATH_OAID:Ljava/lang/String; = "/oaid"

.field private static final PATH_UDID:Ljava/lang/String; = "/udid"

.field private static final PATH_VAID:Ljava/lang/String; = "/vaid"

.field private static final TAG:Ljava/lang/String; = "IdProviderImpl"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    const-string/jumbo v0, "IdProviderImpl"

    const-string/jumbo v1, "getAAID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.idprovider/aaid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_43

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    :try_start_27
    const-string/jumbo v0, "uniform_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_36
    .catchall {:try_start_27 .. :try_end_31} :catchall_44

    move-result-object v0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catch_36
    move-exception v7

    :try_start_37
    const-string/jumbo v0, "IdProviderImpl"

    const-string/jumbo v1, "get AAID exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_44

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_43
    return-object v2

    :catchall_44
    move-exception v0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public getOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    const-string/jumbo v0, "IdProviderImpl"

    const-string/jumbo v1, "getOAID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.idprovider/oaid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_43

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    :try_start_27
    const-string/jumbo v0, "uniform_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_36
    .catchall {:try_start_27 .. :try_end_31} :catchall_44

    move-result-object v0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catch_36
    move-exception v7

    :try_start_37
    const-string/jumbo v0, "IdProviderImpl"

    const-string/jumbo v1, "get OAID exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_44

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_43
    return-object v2

    :catchall_44
    move-exception v0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public getUDID(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    const-string/jumbo v0, "IdProviderImpl"

    const-string/jumbo v1, "getUDID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.idprovider/udid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_43

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    :try_start_27
    const-string/jumbo v0, "uniform_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_36
    .catchall {:try_start_27 .. :try_end_31} :catchall_44

    move-result-object v0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catch_36
    move-exception v7

    :try_start_37
    const-string/jumbo v0, "IdProviderImpl"

    const-string/jumbo v1, "get UDID exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_44

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_43
    return-object v2

    :catchall_44
    move-exception v0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public getVAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 10

    const/4 v2, 0x0

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    const-string/jumbo v0, "IdProviderImpl"

    const-string/jumbo v1, "getVAID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.idprovider/vaid"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_43

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_43

    :try_start_27
    const-string/jumbo v0, "uniform_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_31} :catch_36
    .catchall {:try_start_27 .. :try_end_31} :catchall_44

    move-result-object v0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catch_36
    move-exception v7

    :try_start_37
    const-string/jumbo v0, "IdProviderImpl"

    const-string/jumbo v1, "get VAID exception"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_44

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_43
    return-object v2

    :catchall_44
    move-exception v0

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method
