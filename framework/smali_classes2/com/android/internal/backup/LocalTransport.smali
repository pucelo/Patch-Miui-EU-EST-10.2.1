.class public Lcom/android/internal/backup/LocalTransport;
.super Landroid/app/backup/BackupTransport;
.source "LocalTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/LocalTransport$DecodedFilename;,
        Lcom/android/internal/backup/LocalTransport$KVOperation;
    }
.end annotation


# static fields
.field private static final CURRENT_SET_TOKEN:J = 0x1L

.field private static final DEBUG:Z = false

.field private static final FULL_BACKUP_SIZE_QUOTA:J = 0x1900000L

.field private static final FULL_DATA_DIR:Ljava/lang/String; = "_full"

.field private static final INCREMENTAL_DIR:Ljava/lang/String; = "_delta"

.field private static final KEY_VALUE_BACKUP_SIZE_QUOTA:J = 0x500000L

.field static final POSSIBLE_SETS:[J

.field private static final TAG:Ljava/lang/String; = "LocalTransport"

.field private static final TRANSPORT_DATA_MANAGEMENT_LABEL:Ljava/lang/String; = ""

.field private static final TRANSPORT_DESTINATION_STRING:Ljava/lang/String; = "Backing up to debug-only private cache"

.field private static final TRANSPORT_DIR_NAME:Ljava/lang/String; = "com.android.internal.backup.LocalTransport"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurFullRestoreStream:Ljava/io/FileInputStream;

.field private mCurrentSetDir:Ljava/io/File;

.field private mCurrentSetFullDir:Ljava/io/File;

.field private mCurrentSetIncrementalDir:Ljava/io/File;

.field private mDataDir:Ljava/io/File;

.field private mFullBackupBuffer:[B

.field private mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

.field private mFullBackupSize:J

.field private mFullRestoreBuffer:[B

.field private mFullRestoreSocketStream:Ljava/io/FileOutputStream;

.field private mFullTargetPackage:Ljava/lang/String;

.field private mRestorePackage:I

.field private mRestorePackages:[Landroid/content/pm/PackageInfo;

.field private mRestoreSetDir:Ljava/io/File;

.field private mRestoreSetFullDir:Ljava/io/File;

.field private mRestoreSetIncrementalDir:Ljava/io/File;

.field private mRestoreType:I

.field private mSocket:Landroid/os/ParcelFileDescriptor;

.field private mSocketInputStream:Ljava/io/FileInputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    return-void

    :array_a
    .array-data 8
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0}, Landroid/app/backup/BackupTransport;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "backup"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string/jumbo v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    const-string/jumbo v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iput-object p1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    return-void
.end method

.method private contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/backup/LocalTransport$DecodedFilename;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v4, v0

    if-nez v4, :cond_c

    :cond_b
    return-object v5

    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v4, v0

    :goto_12
    if-ge v3, v4, :cond_21

    aget-object v2, v0, v3

    new-instance v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    invoke-direct {v5, v2}, Lcom/android/internal/backup/LocalTransport$DecodedFilename;-><init>(Ljava/io/File;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_21
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v1
.end method

.method private deleteContents(Ljava/io/File;)V
    .registers 7

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1b

    const/4 v2, 0x0

    array-length v3, v0

    :goto_8
    if-ge v2, v3, :cond_1b

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    :cond_15
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    return-void
.end method

.method private makeDataDirs()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    return-void
.end method

.method private parseBackupStream(Landroid/os/ParcelFileDescriptor;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/backup/LocalTransport$KVOperation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/app/backup/BackupDataInput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/app/backup/BackupDataInput;-><init>(Ljava/io/FileDescriptor;)V

    :goto_f
    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->readNextHeader()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getKey()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Landroid/app/backup/BackupDataInput;->getDataSize()I

    move-result v4

    if-ltz v4, :cond_3c

    new-array v1, v4, [B

    :goto_2e
    if-ltz v4, :cond_33

    invoke-virtual {v3, v1, v7, v4}, Landroid/app/backup/BackupDataInput;->readEntityData([BII)I

    :cond_33
    new-instance v6, Lcom/android/internal/backup/LocalTransport$KVOperation;

    invoke-direct {v6, p0, v0, v1}, Lcom/android/internal/backup/LocalTransport$KVOperation;-><init>(Lcom/android/internal/backup/LocalTransport;Ljava/lang/String;[B)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_3c
    const/4 v1, 0x0

    goto :goto_2e

    :cond_3e
    return-object v2
.end method

.method private parseKeySizes(Ljava/io/File;Landroid/util/ArrayMap;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    const/4 v6, 0x0

    array-length v7, v1

    :goto_9
    if-ge v6, v7, :cond_23

    aget-object v2, v1, v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v3, v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v4, v8

    add-int/2addr v5, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_23
    return v5
.end method

.method private resetFullRestoreState()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    return-void
.end method

.method private tarballFile(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private tearDownFullBackup()I
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_22

    :try_start_5
    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    :cond_13
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1e} :catch_24
    .catchall {:try_start_5 .. :try_end_1e} :catchall_2c

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    :cond_22
    const/4 v1, 0x0

    return v1

    :catch_24
    move-exception v0

    const/16 v1, -0x3e8

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    return v1

    :catchall_2c
    move-exception v1

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    iput-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    throw v1
.end method


# virtual methods
.method public abortFullRestore()I
    .registers 4

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "abortFullRestore() but not currently restoring"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    iput v2, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    return v2
.end method

.method public cancelFullBackup()V
    .registers 3

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_12
    return-void
.end method

.method public checkFullBackupSize(J)I
    .registers 8

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_a

    const/16 v0, -0x3ea

    :cond_9
    :goto_9
    return v0

    :cond_a
    const-wide/32 v2, 0x1900000

    cmp-long v1, p1, v2

    if-lez v1, :cond_9

    const/16 v0, -0x3ed

    goto :goto_9
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .registers 9

    const/4 v5, 0x0

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1f

    array-length v6, v1

    move v4, v5

    :goto_12
    if-ge v4, v6, :cond_1c

    aget-object v0, v1, v4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_1c
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_1f
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetFullDir:Ljava/io/File;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3d

    array-length v6, v3

    move v4, v5

    :goto_30
    if-ge v4, v6, :cond_3a

    aget-object v0, v3, v4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_3a
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3d
    return v5
.end method

.method public configurationIntent()Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "Backing up to debug-only private cache"

    return-object v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public finishBackup()I
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->tearDownFullBackup()I

    move-result v0

    return v0
.end method

.method public finishRestore()V
    .registers 3

    iget v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->resetFullRestoreState()V

    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    return-void
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .registers 14

    sget-object v5, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [J

    const/4 v3, 0x0

    sget-object v8, Lcom/android/internal/backup/LocalTransport;->POSSIBLE_SETS:[J

    const/4 v5, 0x0

    array-length v9, v8

    move v4, v3

    :goto_d
    if-ge v5, v9, :cond_2a

    aget-wide v6, v8, v5

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_49

    add-int/lit8 v3, v4, 0x1

    aput-wide v6, v1, v4

    :goto_26
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_d

    :cond_2a
    add-int/lit8 v3, v4, 0x1

    const-wide/16 v8, 0x1

    aput-wide v8, v1, v4

    new-array v0, v3, [Landroid/app/backup/RestoreSet;

    const/4 v2, 0x0

    :goto_33
    array-length v5, v0

    if-ge v2, v5, :cond_48

    new-instance v5, Landroid/app/backup/RestoreSet;

    const-string/jumbo v8, "Local disk image"

    const-string/jumbo v9, "flash"

    aget-wide v10, v1, v2

    invoke-direct {v5, v8, v9, v10, v11}, Landroid/app/backup/RestoreSet;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_48
    return-object v0

    :cond_49
    move v3, v4

    goto :goto_26
.end method

.method public getBackupQuota(Ljava/lang/String;Z)J
    .registers 5

    if-eqz p2, :cond_6

    const-wide/32 v0, 0x1900000

    :goto_5
    return-wide v0

    :cond_6
    const-wide/32 v0, 0x500000

    goto :goto_5
.end method

.method public getCurrentRestoreSet()J
    .registers 3

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .registers 9

    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_e

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Asked for full restore data for non-stream package"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    if-nez v4, :cond_39

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_21
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_45

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    const/16 v4, 0x800

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    :cond_39
    :try_start_39
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_40} :catch_79
    .catchall {:try_start_39 .. :try_end_40} :catchall_7d

    move-result v2

    if-gez v2, :cond_63

    const/4 v2, -0x1

    :goto_44
    return v2

    :catch_45
    move-exception v1

    const-string/jumbo v4, "LocalTransport"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to read archive for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x3ea

    return v4

    :cond_63
    if-nez v2, :cond_70

    :try_start_65
    const-string/jumbo v4, "LocalTransport"

    const-string/jumbo v5, "read() of archive file returned 0; treating as EOF"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    goto :goto_44

    :cond_70
    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreSocketStream:Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mFullRestoreBuffer:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_78} :catch_79
    .catchall {:try_start_65 .. :try_end_78} :catchall_7d

    goto :goto_44

    :catch_79
    move-exception v1

    const/16 v4, -0x3e8

    return v4

    :catchall_7d
    move-exception v4

    throw v4
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .registers 15

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v10, :cond_d

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "startRestore not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_d
    iget v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    if-gez v10, :cond_1a

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "nextRestorePackage not called"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1a
    iget v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_28

    new-instance v10, Ljava/lang/IllegalStateException;

    const-string/jumbo v11, "getRestoreData(fd) for non-key/value dataset"

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_28
    new-instance v8, Ljava/io/File;

    iget-object v10, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v12, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/android/internal/backup/LocalTransport;->contentsByKey(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_5a

    const-string/jumbo v10, "LocalTransport"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "No keys for package: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, -0x3e8

    return v10

    :cond_5a
    new-instance v7, Landroid/app/backup/BackupDataOutput;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/app/backup/BackupDataOutput;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;

    iget-object v3, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->file:Ljava/io/File;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_7a} :catch_90

    :try_start_7a
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    new-array v1, v9, [B

    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    iget-object v10, v5, Lcom/android/internal/backup/LocalTransport$DecodedFilename;->key:Ljava/lang/String;

    invoke-virtual {v7, v10, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    invoke-virtual {v7, v1, v9}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I
    :try_end_8c
    .catchall {:try_start_7a .. :try_end_8c} :catchall_9d

    :try_start_8c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_67

    :catch_90
    move-exception v2

    const-string/jumbo v10, "LocalTransport"

    const-string/jumbo v11, "Unable to read backup records"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v10, -0x3e8

    return v10

    :catchall_9d
    move-exception v10

    :try_start_9e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    throw v10
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9e .. :try_end_a2} :catch_90

    :cond_a2
    const/4 v10, 0x0

    return v10
.end method

.method public initializeDevice()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/android/internal/backup/LocalTransport;->deleteContents(Ljava/io/File;)V

    invoke-direct {p0}, Lcom/android/internal/backup/LocalTransport;->makeDataDirs()V

    const/4 v0, 0x0

    return v0
.end method

.method public name()Ljava/lang/String;
    .registers 4

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/backup/LocalTransport;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .registers 10

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    if-nez v4, :cond_e

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "startRestore not called"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    const/4 v1, 0x0

    :cond_f
    iget v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    array-length v5, v5

    if-ge v4, v5, :cond_59

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    aget-object v4, v4, v5

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    array-length v4, v0

    if-lez v4, :cond_36

    const/4 v4, 0x1

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    const/4 v1, 0x1

    :cond_36
    if-nez v1, :cond_4f

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4f

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    iput-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mCurFullRestoreStream:Ljava/io/FileInputStream;

    const/4 v1, 0x1

    :cond_4f
    if-eqz v1, :cond_f

    new-instance v4, Landroid/app/backup/RestoreDescription;

    iget v5, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreType:I

    invoke-direct {v4, v3, v5}, Landroid/app/backup/RestoreDescription;-><init>(Ljava/lang/String;I)V

    return-object v4

    :cond_59
    sget-object v4, Landroid/app/backup/RestoreDescription;->NO_MORE_PACKAGES:Landroid/app/backup/RestoreDescription;

    return-object v4
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .registers 22

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/backup/LocalTransport;->mCurrentSetIncrementalDir:Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v11, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    :try_start_10
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/backup/LocalTransport;->parseBackupStream(Landroid/os/ParcelFileDescriptor;)Ljava/util/ArrayList;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_4c

    move-result-object v2

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/android/internal/backup/LocalTransport;->parseKeySizes(Ljava/io/File;Landroid/util/ArrayMap;)I

    move-result v12

    move v13, v12

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_28
    :goto_28
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_59

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/backup/LocalTransport$KVOperation;

    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    invoke-virtual {v4, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v13, v14

    :cond_43
    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    if-eqz v14, :cond_28

    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    array-length v14, v14

    add-int/2addr v13, v14

    goto :goto_28

    :catch_4c
    move-exception v5

    const-string/jumbo v14, "LocalTransport"

    const-string/jumbo v15, "Exception reading backup input"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v14, -0x3e8

    return v14

    :cond_59
    int-to-long v14, v13

    const-wide/32 v16, 0x500000

    cmp-long v14, v14, v16

    if-lez v14, :cond_64

    const/16 v14, -0x3ed

    return v14

    :cond_64
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_68
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/backup/LocalTransport$KVOperation;

    new-instance v6, Ljava/io/File;

    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->key:Ljava/lang/String;

    invoke-direct {v6, v11, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    if-eqz v14, :cond_68

    const/4 v15, 0x0

    const/4 v9, 0x0

    :try_start_84
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_89} :catch_c6
    .catchall {:try_start_84 .. :try_end_89} :catchall_e9

    :try_start_89
    iget-object v14, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    iget-object v0, v7, Lcom/android/internal/backup/LocalTransport$KVOperation;->value:[B

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v10, v14, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_9d} :catch_ee
    .catchall {:try_start_89 .. :try_end_9d} :catchall_eb

    if-eqz v10, :cond_a2

    :try_start_9f
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_c4
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a5

    :cond_a2
    :goto_a2
    if-eqz v15, :cond_68

    :try_start_a4
    throw v15
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a5} :catch_a5

    :catch_a5
    move-exception v5

    move-object v9, v10

    :goto_a7
    const-string/jumbo v14, "LocalTransport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to update key file "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v14, -0x3e8

    return v14

    :catch_c4
    move-exception v15

    goto :goto_a2

    :catch_c6
    move-exception v14

    :goto_c7
    :try_start_c7
    throw v14
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c8

    :catchall_c8
    move-exception v15

    move-object/from16 v18, v15

    move-object v15, v14

    move-object/from16 v14, v18

    :goto_ce
    if-eqz v9, :cond_d3

    :try_start_d0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_d0 .. :try_end_d3} :catch_d8
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d6

    :cond_d3
    :goto_d3
    if-eqz v15, :cond_e6

    :try_start_d5
    throw v15

    :catch_d6
    move-exception v5

    goto :goto_a7

    :catch_d8
    move-exception v16

    if-nez v15, :cond_de

    move-object/from16 v15, v16

    goto :goto_d3

    :cond_de
    move-object/from16 v0, v16

    if-eq v15, v0, :cond_d3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_d3

    :cond_e6
    throw v14
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_e7} :catch_d6

    :cond_e7
    const/4 v14, 0x0

    return v14

    :catchall_e9
    move-exception v14

    goto :goto_ce

    :catchall_eb
    move-exception v14

    move-object v9, v10

    goto :goto_ce

    :catch_ee
    move-exception v14

    move-object v9, v10

    goto :goto_c7
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .registers 8

    const/16 v4, -0x3e8

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_10

    const-string/jumbo v1, "LocalTransport"

    const-string/jumbo v2, "Attempt to initiate full backup while one is in progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_10
    const-wide/16 v2, 0x0

    :try_start_12
    iput-wide v2, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_2b} :catch_37

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    const/16 v1, 0x1000

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v1, 0x0

    return v1

    :catch_37
    move-exception v0

    const-string/jumbo v1, "LocalTransport"

    const-string/jumbo v2, "Unable to process socket for full backup"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public requestBackupTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .registers 14

    const/16 v11, -0x3e8

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mSocket:Landroid/os/ParcelFileDescriptor;

    if-nez v6, :cond_11

    const-string/jumbo v6, "LocalTransport"

    const-string/jumbo v7, "Attempted sendBackupData before performFullBackup"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_11
    iget-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    int-to-long v8, p1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    iget-wide v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupSize:J

    const-wide/32 v8, 0x1900000

    cmp-long v6, v6, v8

    if-lez v6, :cond_23

    const/16 v6, -0x3ed

    return v6

    :cond_23
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    array-length v6, v6

    if-le p1, v6, :cond_2c

    new-array v6, p1, [B

    iput-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    :cond_2c
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    if-nez v6, :cond_42

    :try_start_30
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/internal/backup/LocalTransport;->tarballFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_3b} :catch_5a

    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-direct {v6, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    :cond_42
    move v0, p1

    :goto_43
    if-lez v0, :cond_84

    :try_start_45
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mSocketInputStream:Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-gez v3, :cond_5c

    const-string/jumbo v6, "LocalTransport"

    const-string/jumbo v7, "Unexpected EOD; failing backup"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :catch_5a
    move-exception v1

    return v11

    :cond_5c
    iget-object v6, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupOutputStream:Ljava/io/BufferedOutputStream;

    iget-object v7, p0, Lcom/android/internal/backup/LocalTransport;->mFullBackupBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_64} :catch_66

    sub-int/2addr v0, v3

    goto :goto_43

    :catch_66
    move-exception v2

    const-string/jumbo v6, "LocalTransport"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error handling backup data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/backup/LocalTransport;->mFullTargetPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_84
    return v10
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .registers 7

    iput-object p3, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackages:[Landroid/content/pm/PackageInfo;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestorePackage:I

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mDataDir:Ljava/io/File;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string/jumbo v2, "_delta"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetIncrementalDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetDir:Ljava/io/File;

    const-string/jumbo v2, "_full"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/backup/LocalTransport;->mRestoreSetFullDir:Ljava/io/File;

    const/4 v0, 0x0

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "com.android.internal.backup.LocalTransport"

    return-object v0
.end method
