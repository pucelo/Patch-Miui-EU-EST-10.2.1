.class public Landroid/app/backup/FullBackup;
.super Ljava/lang/Object;
.source "FullBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/FullBackup$BackupScheme;
    }
.end annotation


# static fields
.field public static final APK_TREE_TOKEN:Ljava/lang/String; = "a"

.field public static final APPS_PREFIX:Ljava/lang/String; = "apps/"

.field public static final CACHE_TREE_TOKEN:Ljava/lang/String; = "c"

.field public static final CONF_TOKEN_INTENT_EXTRA:Ljava/lang/String; = "conftoken"

.field public static final DATABASE_TREE_TOKEN:Ljava/lang/String; = "db"

.field public static final DEVICE_CACHE_TREE_TOKEN:Ljava/lang/String; = "d_c"

.field public static final DEVICE_DATABASE_TREE_TOKEN:Ljava/lang/String; = "d_db"

.field public static final DEVICE_FILES_TREE_TOKEN:Ljava/lang/String; = "d_f"

.field public static final DEVICE_NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "d_nb"

.field public static final DEVICE_ROOT_TREE_TOKEN:Ljava/lang/String; = "d_r"

.field public static final DEVICE_SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "d_sp"

.field public static final FILES_TREE_TOKEN:Ljava/lang/String; = "f"

.field public static final FULL_BACKUP_INTENT_ACTION:Ljava/lang/String; = "fullback"

.field public static final FULL_RESTORE_INTENT_ACTION:Ljava/lang/String; = "fullrest"

.field public static final KEY_VALUE_DATA_TOKEN:Ljava/lang/String; = "k"

.field public static final MANAGED_EXTERNAL_TREE_TOKEN:Ljava/lang/String; = "ef"

.field public static final NO_BACKUP_TREE_TOKEN:Ljava/lang/String; = "nb"

.field public static final OBB_TREE_TOKEN:Ljava/lang/String; = "obb"

.field public static final ROOT_TREE_TOKEN:Ljava/lang/String; = "r"

.field public static final SHAREDPREFS_TREE_TOKEN:Ljava/lang/String; = "sp"

.field public static final SHARED_PREFIX:Ljava/lang/String; = "shared/"

.field public static final SHARED_STORAGE_TOKEN:Ljava/lang/String; = "shared"

.field static final TAG:Ljava/lang/String; = "FullBackup"

.field static final TAG_XML_PARSER:Ljava/lang/String; = "BackupXmlParserLogging"

.field private static final kPackageBackupSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/backup/FullBackup$BackupScheme;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I
.end method

.method static declared-synchronized getBackupScheme(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .registers 5

    const-class v2, Landroid/app/backup/FullBackup;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/backup/FullBackup$BackupScheme;

    if-nez v0, :cond_1f

    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v0, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    sget-object v1, Landroid/app/backup/FullBackup;->kPackageBackupSchemeMap:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit v2

    return-object v0

    :catchall_21
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getBackupSchemeForTest(Landroid/content/Context;)Landroid/app/backup/FullBackup$BackupScheme;
    .registers 3

    new-instance v0, Landroid/app/backup/FullBackup$BackupScheme;

    invoke-direct {v0, p0}, Landroid/app/backup/FullBackup$BackupScheme;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mExcludes:Landroid/util/ArraySet;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Landroid/app/backup/FullBackup$BackupScheme;->mIncludes:Ljava/util/Map;

    return-object v0
.end method

.method public static restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v15, 0x2

    move/from16 v0, p3

    if-ne v0, v15, :cond_2a

    if-eqz p8, :cond_a

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->mkdirs()Z

    :cond_a
    :goto_a
    const-wide/16 v16, 0x0

    cmp-long v15, p4, v16

    if-ltz v15, :cond_29

    if-eqz p8, :cond_29

    const-wide/16 v16, 0x1c0

    and-long p4, p4, v16

    :try_start_16
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    move-wide/from16 v0, p4

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_22
    .catch Landroid/system/ErrnoException; {:try_start_16 .. :try_end_22} :catch_f9

    :goto_22
    move-object/from16 v0, p8

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    :cond_29
    return-void

    :cond_2a
    const/4 v9, 0x0

    if-eqz p8, :cond_42

    :try_start_2d
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3a

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    :cond_3a
    new-instance v12, Ljava/io/FileOutputStream;

    move-object/from16 v0, p8

    invoke-direct {v12, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_41} :catch_9e

    move-object v9, v12

    :cond_42
    :goto_42
    const v15, 0x8000

    new-array v4, v15, [B

    move-wide/from16 v10, p1

    new-instance v8, Ljava/io/FileInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v8, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :goto_52
    const-wide/16 v16, 0x0

    cmp-long v15, p1, v16

    if-lez v15, :cond_97

    array-length v15, v4

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, p1, v16

    if-lez v15, :cond_c0

    array-length v14, v4

    :goto_61
    const/4 v15, 0x0

    invoke-virtual {v8, v4, v15, v14}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    if-gtz v7, :cond_c4

    const-string/jumbo v15, "FullBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Incomplete read: expected "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " but got "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sub-long v18, v10, p1

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_97
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_a

    :catch_9e
    move-exception v6

    const-string/jumbo v15, "FullBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to create/open file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_42

    :cond_c0
    move-wide/from16 v0, p1

    long-to-int v14, v0

    goto :goto_61

    :cond_c4
    if-eqz v9, :cond_ca

    const/4 v15, 0x0

    :try_start_c7
    invoke-virtual {v9, v4, v15, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_d0

    :cond_ca
    :goto_ca
    int-to-long v0, v7

    move-wide/from16 v16, v0

    sub-long p1, p1, v16

    goto :goto_52

    :catch_d0
    move-exception v6

    const-string/jumbo v15, "FullBackup"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Unable to write to file "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    const/4 v9, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->delete()Z

    goto :goto_ca

    :catch_f9
    move-exception v5

    invoke-virtual {v5}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    goto/16 :goto_22
.end method
