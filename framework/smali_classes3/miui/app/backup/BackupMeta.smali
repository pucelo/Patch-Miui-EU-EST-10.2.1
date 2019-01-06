.class public Lmiui/app/backup/BackupMeta;
.super Ljava/lang/Object;
.source "BackupMeta.java"


# static fields
.field private static final METAFILE_NAME:Ljava/lang/String; = "_tmp_meta"

.field public static final META_VERSION:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Backup:BackupMeta"


# instance fields
.field public appVersionCode:I

.field public appVersionName:Ljava/lang/String;

.field public createTime:J

.field public deviceName:Ljava/lang/String;

.field public feature:I

.field public metaVersion:I

.field public miuiVersion:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/app/backup/BackupMeta;->metaVersion:I

    return-void
.end method


# virtual methods
.method buildFrom(Landroid/content/Context;Landroid/os/ParcelFileDescriptor;JIJJ)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "_tmp_meta"

    invoke-direct {v8, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v9, 0x0

    move-object v0, p2

    move-wide v1, p3

    move/from16 v3, p5

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    :try_start_15
    invoke-static/range {v0 .. v8}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    new-instance v10, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_98

    :try_start_22
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/backup/BackupMeta;->metaVersion:I

    iget v0, p0, Lmiui/app/backup/BackupMeta;->metaVersion:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_40

    const-string/jumbo v0, "Backup:BackupMeta"

    const-string/jumbo v1, "version error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_22 .. :try_end_3a} :catchall_90

    :cond_3a
    :goto_3a
    if-eqz v10, :cond_3f

    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    :cond_3f
    return-void

    :cond_40
    :try_start_40
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/backup/BackupMeta;->createTime:J

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/backup/BackupMeta;->version:I

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    const-string/jumbo v0, "Backup:BackupMeta"

    const-string/jumbo v1, "Something wrong in meta file"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_40 .. :try_end_8f} :catchall_90

    goto :goto_3a

    :catchall_90
    move-exception v0

    move-object v9, v10

    :goto_92
    if-eqz v9, :cond_97

    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    :cond_97
    throw v0

    :catchall_98
    move-exception v0

    goto :goto_92
.end method

.method public getAppVersionCode()I
    .registers 2

    iget v0, p0, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    return v0
.end method

.method public getAppVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateTime()J
    .registers 3

    iget-wide v0, p0, Lmiui/app/backup/BackupMeta;->createTime:J

    return-wide v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getFeature()I
    .registers 2

    iget v0, p0, Lmiui/app/backup/BackupMeta;->feature:I

    return v0
.end method

.method public getMetaVersion()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public getMiuiVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Lmiui/app/backup/BackupMeta;->version:I

    return v0
.end method

.method public writeToTar(Landroid/content/Context;Landroid/app/backup/FullBackupDataOutput;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v9, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "_tmp_meta"

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmiui/app/backup/BackupMeta;->appVersionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->appVersionName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lmiui/app/backup/BackupMeta;->createTime:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmiui/app/backup/BackupMeta;->version:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lmiui/app/backup/BackupMeta;->feature:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->miuiVersion:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :try_start_91
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_96
    .catchall {:try_start_91 .. :try_end_96} :catchall_bf

    :try_start_96
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v0, p0, Lmiui/app/backup/BackupMeta;->packageName:Ljava/lang/String;

    sget-object v1, Lmiui/app/backup/BackupManager;->DOMAIN_META:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lmiui/app/backup/FullBackupProxy;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
    :try_end_b6
    .catchall {:try_start_96 .. :try_end_b6} :catchall_c9

    if-eqz v8, :cond_bb

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_bb
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    return-void

    :catchall_bf
    move-exception v0

    :goto_c0
    if-eqz v7, :cond_c5

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    :cond_c5
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    throw v0

    :catchall_c9
    move-exception v0

    move-object v7, v8

    goto :goto_c0
.end method
