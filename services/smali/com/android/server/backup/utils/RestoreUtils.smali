.class public Lcom/android/server/backup/utils/RestoreUtils;
.super Ljava/lang/Object;
.source "RestoreUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static installApk(Ljava/io/InputStream;Landroid/content/pm/PackageManager;Lcom/android/server/backup/restore/RestoreInstallObserver;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;Ljava/io/File;)Z
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/server/backup/restore/RestoreInstallObserver;",
            "Lcom/android/server/backup/restore/RestoreDeleteObserver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;",
            "Lcom/android/server/backup/FileMetadata;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/utils/BytesReadListener;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v10, 0x1

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installing from backup: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p9

    move-object/from16 v1, v19

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_30
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const v19, 0x8000

    move/from16 v0, v19

    new-array v6, v0, [B

    move-object/from16 v0, p6

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    :goto_40
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-lez v19, :cond_87

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v19, v20, v14

    if-gez v19, :cond_84

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    :goto_5a
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-ltz v7, :cond_77

    int-to-long v0, v7

    move-wide/from16 v20, v0

    move-object/from16 v0, p8

    move-wide/from16 v1, v20

    invoke-interface {v0, v1, v2}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    :cond_77
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v0, v7

    move-wide/from16 v20, v0

    sub-long v14, v14, v20

    goto :goto_40

    :cond_84
    move-wide/from16 v16, v14

    goto :goto_5a

    :cond_87
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreInstallObserver;->reset()V

    const/16 v19, 0x22

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v19

    move-object/from16 v3, p7

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreInstallObserver;->waitForCompletion()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreInstallObserver;->getResult()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d3

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_c8} :catch_131
    .catchall {:try_start_30 .. :try_end_c8} :catchall_241

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_cf

    const/4 v10, 0x0

    :cond_cf
    :goto_cf
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :goto_d2
    return v10

    :cond_d3
    const/16 v18, 0x0

    :try_start_d5
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreInstallObserver;->getPackageName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_140

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore stream claimed to include apk for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " but apk was really "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreInstallObserver;->getPackageName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    const/16 v18, 0x1

    :cond_117
    :goto_117
    if-eqz v18, :cond_cf

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->reset()V

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/backup/restore/RestoreInstallObserver;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/backup/restore/RestoreDeleteObserver;->waitForCompletion()V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_130} :catch_131
    .catchall {:try_start_d5 .. :try_end_130} :catchall_241

    goto :goto_cf

    :catch_131
    move-exception v9

    :try_start_132
    const-string/jumbo v19, "BackupManagerService"

    const-string/jumbo v20, "Unable to transcribe restored apk for install"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13b
    .catchall {:try_start_132 .. :try_end_13b} :catchall_241

    const/4 v10, 0x0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_d2

    :cond_140
    :try_start_140
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x40

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const v20, 0x8000

    and-int v19, v19, v20

    if-nez v19, :cond_18c

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore stream contains apk of package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " but it disallows backup/restore"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_117

    :cond_18c
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/Signature;

    invoke-static {v13, v12}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_1ea

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_117

    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_117

    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installed app "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " has restricted uid and no agent"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto/16 :goto_117

    :cond_1ea
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installed app "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " signatures do not match restore manifest"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_140 .. :try_end_211} :catch_216
    .catch Ljava/io/IOException; {:try_start_140 .. :try_end_211} :catch_131
    .catchall {:try_start_140 .. :try_end_211} :catchall_241

    const/4 v10, 0x0

    const/16 v18, 0x1

    goto/16 :goto_117

    :catch_216
    move-exception v8

    :try_start_217
    const-string/jumbo v19, "BackupManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Install of package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " succeeded but now not found"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23e
    .catch Ljava/io/IOException; {:try_start_217 .. :try_end_23e} :catch_131
    .catchall {:try_start_217 .. :try_end_23e} :catchall_241

    const/4 v10, 0x0

    goto/16 :goto_117

    :catchall_241
    move-exception v19

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    throw v19
.end method
