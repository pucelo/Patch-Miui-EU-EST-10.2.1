.class public Landroid/app/backup/WallpaperBackupHelper;
.super Landroid/app/backup/FileBackupHelperBase;
.source "WallpaperBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final STAGE_FILE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WallpaperBackupHelper"

.field public static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field public static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# instance fields
.field private final mKeys:[Ljava/lang/String;

.field private final mWpm:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper-tmp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/app/backup/FileBackupHelperBase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/app/backup/WallpaperBackupHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Landroid/app/backup/WallpaperBackupHelper;->mWpm:Landroid/app/WallpaperManager;

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    return-void
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Landroid/app/backup/WallpaperBackupHelper;->mKeys:[Ljava/lang/String;

    invoke-virtual {p0, v3, v5}, Landroid/app/backup/WallpaperBackupHelper;->isKeyInList(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    const-string/jumbo v5, "/data/data/com.android.settings/files/wallpaper"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    new-instance v4, Ljava/io/File;

    sget-object v5, Landroid/app/backup/WallpaperBackupHelper;->STAGE_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1d
    invoke-virtual {p0, v4, p1}, Landroid/app/backup/WallpaperBackupHelper;->writeFile(Ljava/io/File;Landroid/app/backup/BackupDataInputStream;)Z
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_77

    move-result v5

    if-eqz v5, :cond_7d

    const/4 v1, 0x0

    :try_start_24
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_29} :catch_5c
    .catchall {:try_start_24 .. :try_end_29} :catchall_87

    :try_start_29
    iget-object v5, p0, Landroid/app/backup/WallpaperBackupHelper;->mWpm:Landroid/app/WallpaperManager;

    invoke-virtual {v5, v2}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_2e} :catch_8c
    .catchall {:try_start_29 .. :try_end_2e} :catchall_89

    if-eqz v2, :cond_33

    :try_start_30
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_5a
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_36
    .catchall {:try_start_30 .. :try_end_33} :catchall_77

    :cond_33
    :goto_33
    if-eqz v6, :cond_56

    :try_start_35
    throw v6
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_77

    :catch_36
    move-exception v0

    move-object v1, v2

    :goto_38
    :try_start_38
    const-string/jumbo v5, "WallpaperBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to set restored wallpaper: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_38 .. :try_end_56} :catchall_77

    :cond_56
    :goto_56
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_59
    return-void

    :catch_5a
    move-exception v6

    goto :goto_33

    :catch_5c
    move-exception v5

    :goto_5d
    :try_start_5d
    throw v5
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v6

    move-object v8, v6

    move-object v6, v5

    move-object v5, v8

    :goto_62
    if-eqz v1, :cond_67

    :try_start_64
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_6c
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_6a
    .catchall {:try_start_64 .. :try_end_67} :catchall_77

    :cond_67
    :goto_67
    if-eqz v6, :cond_7c

    :try_start_69
    throw v6

    :catch_6a
    move-exception v0

    goto :goto_38

    :catch_6c
    move-exception v7

    if-nez v6, :cond_71

    move-object v6, v7

    goto :goto_67

    :cond_71
    if-eq v6, v7, :cond_67

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_76} :catch_6a
    .catchall {:try_start_69 .. :try_end_76} :catchall_77

    goto :goto_67

    :catchall_77
    move-exception v5

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v5

    :cond_7c
    :try_start_7c
    throw v5
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7d} :catch_6a
    .catchall {:try_start_7c .. :try_end_7d} :catchall_77

    :cond_7d
    :try_start_7d
    const-string/jumbo v5, "WallpaperBackupHelper"

    const-string/jumbo v6, "Unable to save restored wallpaper"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_77

    goto :goto_56

    :catchall_87
    move-exception v5

    goto :goto_62

    :catchall_89
    move-exception v5

    move-object v1, v2

    goto :goto_62

    :catch_8c
    move-exception v5

    move-object v1, v2

    goto :goto_5d
.end method

.method public bridge synthetic writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/backup/FileBackupHelperBase;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
