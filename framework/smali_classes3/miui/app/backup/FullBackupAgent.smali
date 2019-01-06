.class public Lmiui/app/backup/FullBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "FullBackupAgent.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:FullBackupAgent"

.field private static final TMP_BAK_NAME:Ljava/lang/String; = "_tmp_bak"


# instance fields
.field private mAttachedFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mBackupManager:Lmiui/app/backup/BackupManager;

.field private mBackupMeta:Lmiui/app/backup/BackupMeta;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    return-void
.end method

.method private getFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_9

    :goto_8
    return-object p1

    :cond_9
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method


# virtual methods
.method public addAttachedFile(Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAttachedFile(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkVersion(I)Z
    .registers 4

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v0, v0, Lmiui/app/backup/BackupMeta;->version:I

    invoke-virtual {p0, p1}, Lmiui/app/backup/FullBackupAgent;->getVersion(I)I

    move-result v1

    if-le v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method protected getVersion(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected onFullBackup(Landroid/os/ParcelFileDescriptor;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    if-nez v3, :cond_e

    invoke-static/range {p0 .. p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    const/4 v8, 0x0

    const-string/jumbo v9, ""

    sget-object v10, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-object v14, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3}, Lmiui/app/backup/BackupManager;->getCurrentWorkingFeature()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lmiui/app/backup/FullBackupAgent;->getVersion(I)I

    move-result v19

    :try_start_2c
    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget v8, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_3f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_3f} :catch_cf

    :goto_3f
    const-string/jumbo v3, "\r"

    const-string/jumbo v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "\r"

    const-string/jumbo v4, ""

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, ""

    invoke-virtual {v10, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v3, "\r"

    const-string/jumbo v4, ""

    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, ""

    invoke-virtual {v14, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v3, Lmiui/app/backup/BackupMeta;

    invoke-direct {v3}, Lmiui/app/backup/BackupMeta;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v8, v3, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v9, v3, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v10, v3, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput-object v14, v3, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iput v13, v3, Lmiui/app/backup/BackupMeta;->feature:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lmiui/app/backup/BackupMeta;->createTime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move/from16 v0, v19

    iput v0, v3, Lmiui/app/backup/BackupMeta;->version:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v3, v0, v1}, Lmiui/app/backup/BackupMeta;->writeToTar(Landroid/content/Context;Landroid/app/backup/FullBackupDataOutput;)V

    if-nez v19, :cond_db

    invoke-super/range {p0 .. p1}, Landroid/app/backup/BackupAgent;->onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V

    :cond_ce
    return-void

    :catch_cf
    move-exception v11

    const-string/jumbo v3, "Backup:FullBackupAgent"

    const-string/jumbo v4, "NameNotFoundException"

    invoke-static {v3, v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f

    :cond_db
    new-instance v18, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "_tmp_bak"

    move-object/from16 v0, v18

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v15, 0x0

    :try_start_ea
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->createNewFile()Z

    const/high16 v3, 0x20000000

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v13}, Lmiui/app/backup/FullBackupAgent;->onFullBackup(Landroid/os/ParcelFileDescriptor;I)I

    sget-object v3, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x0

    move-object/from16 v7, p1

    invoke-static/range {v2 .. v7}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    move-result v12

    if-eqz v12, :cond_137

    const-string/jumbo v3, "Backup:FullBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "err when data backup err = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3, v12}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_12e
    .catchall {:try_start_ea .. :try_end_12e} :catchall_15a

    if-eqz v15, :cond_133

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_133
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    return-void

    :cond_137
    if-eqz v15, :cond_13c

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_13c
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1, v13}, Lmiui/app/backup/FullBackupAgent;->tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I

    move-result v12

    if-eqz v12, :cond_ce

    const-string/jumbo v3, "Backup:FullBackupAgent"

    const-string/jumbo v4, "err when tar attaches"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    invoke-virtual {v3, v12}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V

    return-void

    :catchall_15a
    move-exception v3

    if-eqz v15, :cond_160

    invoke-virtual {v15}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_160
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    throw v3
.end method

.method protected onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-super/range {v1 .. v11}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onRestoreEnd(Lmiui/app/backup/BackupMeta;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected final onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .registers 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    if-nez v4, :cond_e

    invoke-static/range {p0 .. p0}, Lmiui/app/backup/BackupManager;->getBackupManager(Landroid/content/Context;)Lmiui/app/backup/BackupManager;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    :cond_e
    :try_start_e
    const-string/jumbo v4, "Backup:FullBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onRestoreFile type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " domain = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6b

    new-instance v4, Lmiui/app/backup/BackupMeta;

    invoke-direct {v4}, Lmiui/app/backup/BackupMeta;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-wide/from16 v7, p2

    move/from16 v9, p4

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    invoke-virtual/range {v4 .. v13}, Lmiui/app/backup/BackupMeta;->buildFrom(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;JIJJ)V

    :cond_6a
    :goto_6a
    return-void

    :cond_6b
    sget-object v4, Lmiui/app/backup/BackupManager;->DOMAIN_BAK:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_fa

    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "_tmp_bak"

    invoke-direct {v12, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_81} :catch_e0

    const/16 v36, 0x0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    :try_start_8d
    invoke-static/range {v4 .. v12}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    const/high16 v4, 0x10000000

    invoke-static {v12, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v4, v4, Lmiui/app/backup/BackupMeta;->feature:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v4

    if-eqz v4, :cond_ed

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v4, v1}, Lmiui/app/backup/FullBackupAgent;->onDataRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;)I

    move-result v38

    :goto_b0
    if-eqz v38, :cond_d7

    const-string/jumbo v4, "Backup:FullBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "err when data restoring err = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_d7
    .catchall {:try_start_8d .. :try_end_d7} :catchall_f0

    :cond_d7
    if-eqz v36, :cond_dc

    :try_start_d9
    invoke-virtual/range {v36 .. v36}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_dc
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_df} :catch_e0

    goto :goto_6a

    :catch_e0
    move-exception v37

    const-string/jumbo v4, "Backup:FullBackupAgent"

    const-string/jumbo v5, "Exception when restore file"

    move-object/from16 v0, v37

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v37

    :cond_ed
    const/16 v38, 0x5

    goto :goto_b0

    :catchall_f0
    move-exception v4

    if-eqz v36, :cond_f6

    :try_start_f3
    invoke-virtual/range {v36 .. v36}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_f6
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    throw v4

    :cond_fa
    sget-object v4, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18a

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Lmiui/app/backup/FullBackupAgent;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    new-instance v22, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v22

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_f3 .. :try_end_119} :catch_e0

    const/16 v23, 0x0

    move-object/from16 v14, p1

    move-wide/from16 v15, p2

    move/from16 v17, p4

    move-wide/from16 v18, p7

    move-wide/from16 v20, p9

    :try_start_125
    invoke-static/range {v14 .. v22}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    const/high16 v4, 0x10000000

    move-object/from16 v0, v22

    invoke-static {v0, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v4, v4, Lmiui/app/backup/BackupMeta;->feature:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v4

    if-eqz v4, :cond_17d

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p6

    invoke-virtual {v0, v4, v1, v2}, Lmiui/app/backup/FullBackupAgent;->onAttachRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)I

    move-result v38

    :goto_14c
    if-eqz v38, :cond_173

    const-string/jumbo v4, "Backup:FullBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "err when attach restoring err = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V
    :try_end_173
    .catchall {:try_start_125 .. :try_end_173} :catchall_180

    :cond_173
    if-eqz v23, :cond_178

    :try_start_175
    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_178
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    goto/16 :goto_6a

    :cond_17d
    const/16 v38, 0x5

    goto :goto_14c

    :catchall_180
    move-exception v4

    if-eqz v23, :cond_186

    invoke-virtual/range {v23 .. v23}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_186
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    throw v4

    :cond_18a
    sget-object v4, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d8

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    iget v4, v4, Lmiui/app/backup/BackupMeta;->feature:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/app/backup/FullBackupAgent;->checkVersion(I)Z

    move-result v4

    if-eqz v4, :cond_1d5

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/app/backup/FullBackupAgent;->onRestoreEnd(Lmiui/app/backup/BackupMeta;)I

    move-result v38

    :goto_1ac
    if-eqz v38, :cond_6a

    const-string/jumbo v4, "Backup:FullBackupAgent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "err when restore ending err = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/app/backup/FullBackupAgent;->mBackupManager:Lmiui/app/backup/BackupManager;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Lmiui/app/backup/BackupManager;->setWorkingError(I)V

    goto/16 :goto_6a

    :cond_1d5
    const/16 v38, 0x5

    goto :goto_1ac

    :cond_1d8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/app/backup/FullBackupAgent;->mBackupMeta:Lmiui/app/backup/BackupMeta;

    move-object/from16 v25, v0

    move-object/from16 v24, p0

    move-object/from16 v26, p1

    move-wide/from16 v27, p2

    move/from16 v29, p4

    move-object/from16 v30, p5

    move-object/from16 v31, p6

    move-wide/from16 v32, p7

    move-wide/from16 v34, p9

    invoke-virtual/range {v24 .. v35}, Lmiui/app/backup/FullBackupAgent;->onOriginalAttachesRestore(Lmiui/app/backup/BackupMeta;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    :try_end_1f1
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_1f1} :catch_e0

    goto/16 :goto_6a
.end method

.method public final onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super/range {p0 .. p9}, Landroid/app/backup/BackupAgent;->onRestoreFile(Landroid/os/ParcelFileDescriptor;JLjava/io/File;IJJ)V

    return-void
.end method

.method protected tarAttaches(Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;I)I
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_bd

    iget-object v0, p0, Lmiui/app/backup/FullBackupAgent;->mAttachedFiles:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    instance-of v0, v9, Ljava/lang/String;

    if-eqz v0, :cond_33

    new-instance v7, Ljava/io/File;

    check-cast v9, Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    goto :goto_a

    :cond_33
    instance-of v0, v9, Landroid/util/Pair;

    if-eqz v0, :cond_a

    move-object v11, v9

    check-cast v11, Landroid/util/Pair;

    const/4 v8, 0x0

    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_48
    invoke-virtual {p0}, Lmiui/app/backup/FullBackupAgent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6d

    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_ATTACH:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_6d} :catch_76
    .catchall {:try_start_48 .. :try_end_6d} :catchall_b3

    :cond_6d
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :catch_76
    move-exception v6

    :try_start_77
    const-string/jumbo v1, "Backup:FullBackupAgent"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Exception when tar attaches for uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " name "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " skip!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_77 .. :try_end_a9} :catchall_b3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto/16 :goto_a

    :catchall_b3
    move-exception v0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    if-eqz v8, :cond_bc

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    :cond_bc
    throw v0

    :cond_bd
    const/4 v0, 0x0

    return v0
.end method
