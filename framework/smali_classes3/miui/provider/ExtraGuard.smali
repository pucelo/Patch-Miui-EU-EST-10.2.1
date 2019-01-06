.class public final Lmiui/provider/ExtraGuard;
.super Ljava/lang/Object;
.source "ExtraGuard.java"


# static fields
.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.miui.guardprovider"

.field public static final VIRUS_BLACK:I = 0x2

.field public static final VIRUS_GRAY:I = 0x3

.field public static final VIRUS_WHITE:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApkForVirusInfo(Landroid/content/Context;Landroid/net/Uri;Z)Lmiui/provider/ExtraGuardVirusInfoEntity;
    .registers 13

    const/4 v9, 0x0

    if-nez p1, :cond_c

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "uri is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    :try_start_11
    const-string/jumbo v2, "content://guard/sync_scan"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_7b

    new-instance v8, Lmiui/provider/ExtraGuardVirusInfoEntity;

    invoke-direct {v8}, Lmiui/provider/ExtraGuardVirusInfoEntity;-><init>()V

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v4, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v4, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_77

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_77

    const-string/jumbo v2, "Type"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setType(I)V

    const-string/jumbo v2, "Description"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setDescription(Ljava/lang/String;)V

    const-string/jumbo v2, "VirusName"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setVirusName(Ljava/lang/String;)V

    const-string/jumbo v2, "EngineName"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lmiui/provider/ExtraGuardVirusInfoEntity;->setEngineName(Ljava/lang/String;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_77} :catch_7f
    .catchall {:try_start_11 .. :try_end_77} :catchall_87

    :cond_77
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v8

    :cond_7b
    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_7e
    return-object v9

    :catch_7f
    move-exception v7

    :try_start_80
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_87

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_7e

    :catchall_87
    move-exception v2

    invoke-static {v6}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method
