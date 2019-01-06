.class public abstract Landroid/app/backup/BlobBackupHelper;
.super Ljava/lang/Object;
.source "BlobBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BlobBackupHelper"


# instance fields
.field private final mCurrentBlobVersion:I

.field private final mKeys:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    iput-object p2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    return-void
.end method

.method private checksum([B)J
    .registers 10

    if-eqz p1, :cond_1d

    :try_start_2
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v5, 0x1000

    new-array v1, v5, [B

    const/4 v4, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_20

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_11

    :catch_1c
    move-exception v3

    :cond_1d
    const-wide/16 v6, -0x1

    return-wide v6

    :cond_20
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_1c

    move-result-wide v6

    return-wide v6
.end method

.method private deflate([B)[B
    .registers 10

    const/4 v3, 0x0

    if-eqz p1, :cond_21

    :try_start_3
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p1}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_22

    move-result-object v3

    :cond_21
    :goto_21
    return-object v3

    :catch_22
    move-exception v0

    const-string/jumbo v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to process payload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method

.method private inflate([B)[B
    .registers 15

    const/4 v12, 0x0

    const/4 v6, 0x0

    if-eqz p1, :cond_69

    :try_start_4
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    iget v9, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-le v8, v9, :cond_31

    const-string/jumbo v9, "BlobBackupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Saved payload from unrecognized version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_31
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v9, 0x1000

    new-array v0, v9, [B

    :goto_3f
    invoke-virtual {v3, v0}, Ljava/util/zip/InflaterInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6a

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_49} :catch_4a

    goto :goto_3f

    :catch_4a
    move-exception v1

    const-string/jumbo v9, "BlobBackupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to process restored payload: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    :goto_69
    return-object v6

    :cond_6a
    :try_start_6a
    invoke-virtual {v3}, Ljava/util/zip/InflaterInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_73} :catch_4a

    move-result-object v6

    goto :goto_69
.end method

.method private readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_13
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    iget v11, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-gt v10, v11, :cond_34

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const/4 v5, 0x0

    :goto_20
    if-ge v5, v8, :cond_4e

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_34
    const-string/jumbo v11, "BlobBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Prior state from unrecognized version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_4e} :catch_72
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4e} :catch_4f

    :cond_4e
    :goto_4e
    return-object v9

    :catch_4f
    move-exception v3

    const-string/jumbo v11, "BlobBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error examining prior backup state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    goto :goto_4e

    :catch_72
    move-exception v2

    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    goto :goto_4e
.end method

.method private writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v8, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    :goto_19
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v5, 0x0

    :goto_1d
    if-ge v5, v0, :cond_44

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_35} :catch_3a

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_38
    const/4 v0, 0x0

    goto :goto_19

    :catch_3a
    move-exception v1

    const-string/jumbo v8, "BlobBackupHelper"

    const-string/jumbo v9, "Unable to write updated state"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_44
    return-void
.end method


# virtual methods
.method protected abstract applyRestoredPayload(Ljava/lang/String;[B)V
.end method

.method protected abstract getBackupPayload(Ljava/lang/String;)[B
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 20

    invoke-direct/range {p0 .. p1}, Landroid/app/backup/BlobBackupHelper;->readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;

    move-result-object v8

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    :try_start_9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_f
    if-ge v10, v12, :cond_7e

    aget-object v5, v11, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/backup/BlobBackupHelper;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/app/backup/BlobBackupHelper;->deflate([B)[B

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/app/backup/BlobBackupHelper;->checksum([B)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_3c

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v13, v2, v14

    if-eqz v13, :cond_4a

    :cond_3c
    if-eqz v9, :cond_4d

    array-length v13, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v13, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    :cond_4a
    :goto_4a
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_4d
    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_53} :catch_54
    .catchall {:try_start_9 .. :try_end_53} :catchall_86

    goto :goto_4a

    :catch_54
    move-exception v4

    :try_start_55
    const-string/jumbo v10, "BlobBackupHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to record notification state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V
    :try_end_76
    .catchall {:try_start_55 .. :try_end_76} :catchall_86

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    :goto_7d
    return-void

    :cond_7e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_7d

    :catchall_86
    move-exception v10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    throw v10
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .registers 10

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    :goto_5
    :try_start_5
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_14

    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    :cond_14
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_3e

    const-string/jumbo v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecognized key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_3e
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v5

    new-array v0, v5, [B

    invoke-virtual {p1, v0}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    invoke-direct {p0, v0}, Landroid/app/backup/BlobBackupHelper;->inflate([B)[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/app/backup/BlobBackupHelper;->applyRestoredPayload(Ljava/lang/String;[B)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4e} :catch_4f

    :goto_4e
    return-void

    :catch_4f
    move-exception v1

    const-string/jumbo v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception restoring entity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
