.class public Lcom/android/server/backup/utils/TarBackupReader;
.super Ljava/lang/Object;
.source "TarBackupReader.java"


# static fields
.field private static final TAR_HEADER_LENGTH_FILESIZE:I = 0xc

.field private static final TAR_HEADER_LENGTH_MODE:I = 0x8

.field private static final TAR_HEADER_LENGTH_MODTIME:I = 0xc

.field private static final TAR_HEADER_LENGTH_PATH:I = 0x64

.field private static final TAR_HEADER_LENGTH_PATH_PREFIX:I = 0x9b

.field private static final TAR_HEADER_LONG_RADIX:I = 0x8

.field private static final TAR_HEADER_OFFSET_FILESIZE:I = 0x7c

.field private static final TAR_HEADER_OFFSET_MODE:I = 0x64

.field private static final TAR_HEADER_OFFSET_MODTIME:I = 0x88

.field private static final TAR_HEADER_OFFSET_PATH:I = 0x0

.field private static final TAR_HEADER_OFFSET_PATH_PREFIX:I = 0x159

.field private static final TAR_HEADER_OFFSET_TYPE_CHAR:I = 0x9c


# instance fields
.field private final mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

.field private final mInputStream:Ljava/io/InputStream;

.field private mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private mWidgetData:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    iput-object p1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iput-object p3, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-void
.end method

.method private static extractLine([BI[Ljava/lang/String;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v1, p0

    if-lt p1, v1, :cond_c

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_c
    move v2, p1

    :goto_d
    if-ge v2, v1, :cond_15

    aget-byte v0, p0, v2

    const/16 v3, 0xa

    if-ne v0, v3, :cond_22

    :cond_15
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, p1

    invoke-direct {v3, p0, p1, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v4, 0x0

    aput-object v3, p2, v4

    add-int/lit8 v2, v2, 0x1

    return v2

    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method private static extractRadix([BIII)J
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x30

    const-wide/16 v4, 0x0

    add-int v1, p1, p2

    move v2, p1

    :goto_7
    if-ge v2, v1, :cond_11

    aget-byte v0, p0, v2

    if-eqz v0, :cond_11

    const/16 v3, 0x20

    if-ne v0, v3, :cond_12

    :cond_11
    return-wide v4

    :cond_12
    if-lt v0, v10, :cond_1a

    add-int/lit8 v3, p3, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_40

    :cond_1a
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\' for radix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_40
    int-to-long v6, p3

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method private static extractString([BII)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p1, p2

    move v1, p1

    :goto_3
    if-ge v1, v0, :cond_c

    aget-byte v2, p0, v1

    if-eqz v2, :cond_c

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_c
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p1

    const-string/jumbo v4, "US-ASCII"

    invoke-direct {v2, p0, p1, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method private static hexLog([B)V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    array-length v4, p0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_b
    if-lez v4, :cond_53

    const-string/jumbo v5, "%04x   "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    if-le v4, v5, :cond_41

    const/16 v2, 0x10

    :goto_25
    const/4 v1, 0x0

    :goto_26
    if-ge v1, v2, :cond_43

    const-string/jumbo v5, "%02x "

    new-array v6, v9, [Ljava/lang/Object;

    add-int v7, v3, v1

    aget-byte v7, p0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_41
    move v2, v4

    goto :goto_25

    :cond_43
    const-string/jumbo v5, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    sub-int/2addr v4, v2

    add-int/2addr v3, v2

    goto :goto_b

    :cond_53
    return-void
.end method

.method private static readExactly(Ljava/io/InputStream;[BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-gtz p3, :cond_b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-ge v1, p3, :cond_18

    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_19

    :cond_18
    return v1

    :cond_19
    add-int/2addr v1, v0

    goto :goto_c
.end method

.method private readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v12, 0x8000

    cmp-long v10, v10, v12

    if-lez v10, :cond_48

    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Suspiciously large pax header size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " - aborting"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Sanity failure: pax header size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_48
    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v12, 0x1ff

    add-long/2addr v10, v12

    const/16 v12, 0x9

    shr-long/2addr v10, v12

    long-to-int v6, v10

    mul-int/lit16 v10, v6, 0x200

    new-array v1, v10, [B

    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    array-length v11, v1

    const/4 v12, 0x0

    invoke-static {v10, v1, v12, v11}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v10

    array-length v11, v1

    if-ge v10, v11, :cond_69

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Unable to read full pax header"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_69
    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    array-length v11, v1

    int-to-long v12, v11

    invoke-interface {v10, v12, v13}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v0, v10

    const/4 v7, 0x0

    :cond_74
    add-int/lit8 v2, v7, 0x1

    :goto_76
    if-ge v2, v0, :cond_81

    aget-byte v10, v1, v2

    const/16 v11, 0x20

    if-eq v10, v11, :cond_81

    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    :cond_81
    if-lt v2, v0, :cond_8c

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Invalid pax data"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_8c
    sub-int v10, v2, v7

    const/16 v11, 0xa

    invoke-static {v1, v7, v10, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v10

    long-to-int v5, v10

    add-int/lit8 v3, v2, 0x1

    add-int v10, v7, v5

    add-int/lit8 v2, v10, -0x1

    add-int/lit8 v9, v3, 0x1

    :goto_9d
    aget-byte v10, v1, v9

    const/16 v11, 0x3d

    if-eq v10, v11, :cond_a8

    if-gt v9, v2, :cond_a8

    add-int/lit8 v9, v9, 0x1

    goto :goto_9d

    :cond_a8
    if-le v9, v2, :cond_b3

    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Invalid pax declaration"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_b3
    new-instance v4, Ljava/lang/String;

    sub-int v10, v9, v3

    const-string/jumbo v11, "UTF-8"

    invoke-direct {v4, v1, v3, v10, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v10, v9, 0x1

    sub-int v11, v2, v9

    add-int/lit8 v11, v11, -0x1

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v8, v1, v10, v11, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string/jumbo v10, "path"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_db

    iput-object v8, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :goto_d6
    add-int/2addr v7, v5

    if-lt v7, v0, :cond_74

    const/4 v10, 0x1

    return v10

    :cond_db
    const-string/jumbo v10, "size"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_eb

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_d6

    :cond_eb
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unhandled pax key: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d6
.end method

.method private readTarHeader([B)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x200

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    if-nez v0, :cond_c

    return v2

    :cond_c
    if-ge v0, v3, :cond_17

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_17
    iget-object v1, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    const-wide/16 v2, 0x200

    invoke-interface {v1, v2, v3}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;)Lcom/android/server/backup/restore/RestorePolicy;
    .registers 15

    if-nez p4, :cond_5

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    return-object v5

    :cond_5
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    :try_start_7
    iget-object v5, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/16 v6, 0x40

    invoke-virtual {p1, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const v5, 0x8000

    and-int/2addr v5, v1

    if-eqz v5, :cond_1cb

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v6, 0x2710

    if-ge v5, v6, :cond_27

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-eqz v5, :cond_19a

    :cond_27
    invoke-static {p4, v3}, Lcom/android/server/backup/utils/AppBackupUtils;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_170

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x20000

    and-int/2addr v5, v6

    if-eqz v5, :cond_91

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Package has restoreAnyVersion; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x22

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_4d} :catch_af

    :goto_4d
    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    if-ne v4, v5, :cond_90

    iget-boolean v5, p3, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_90

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot restore package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " without the matching .apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const-string/jumbo v6, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {v8, v6, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    const/16 v7, 0x29

    const/4 v8, 0x0

    const/4 v9, 0x3

    invoke-static {v5, v7, v8, v9, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :cond_90
    return-object v4

    :cond_91
    :try_start_91
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, p3, Lcom/android/server/backup/FileMetadata;->version:I

    if-lt v5, v6, :cond_f6

    const-string/jumbo v5, "BackupManagerService"

    const-string/jumbo v6, "Sig + version match; taking data"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x23

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_ae
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_91 .. :try_end_ae} :catch_af

    goto :goto_4d

    :catch_af
    move-exception v0

    if-eqz p2, :cond_1fc

    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not installed; requiring apk in dataset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    :goto_d7
    const-string/jumbo v5, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v6, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v7, v5, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v5, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    invoke-static {v2, v5, p2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x28

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-static {v5, v6, v7, v8, v2}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_4d

    :cond_f6
    if-eqz p2, :cond_133

    :try_start_f8
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Data version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p3, Lcom/android/server/backup/FileMetadata;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is newer than installed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " - requiring apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_4d

    :cond_133
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Data requires newer version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p3, Lcom/android/server/backup/FileMetadata;->version:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const-string/jumbo v6, "android.app.backup.extra.LOG_OLD_VERSION"

    iget v7, p3, Lcom/android/server/backup/FileMetadata;->version:I

    int-to-long v8, v7

    const/4 v7, 0x0

    invoke-static {v7, v6, v8, v9}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v6

    const/16 v7, 0x24

    const/4 v8, 0x3

    invoke-static {v5, v7, v3, v8, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_4d

    :cond_170
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restore manifest signatures do not match installed application for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x25

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_4d

    :cond_19a
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is system level with no agent"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x26

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_4d

    :cond_1cb
    const-string/jumbo v5, "BackupManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restore manifest from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " but allowBackup=false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v6, 0x27

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static {v5, v6, v3, v7, v8}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_1fa
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f8 .. :try_end_1fa} :catch_af

    goto/16 :goto_4d

    :cond_1fc
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto/16 :goto_d7
.end method

.method public getMonitor()Landroid/app/backup/IBackupManagerMonitor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    return-object v0
.end method

.method public getWidgetData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    return-object v0
.end method

.method public readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v16, 0x10000

    cmp-long v13, v14, v16

    if-lez v13, :cond_2d

    new-instance v13, Ljava/io/IOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Restore manifest too big; corrupt? size="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2d
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v13, v14

    new-array v2, v13, [B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v14, v14

    const/4 v15, 0x0

    invoke-static {v13, v2, v15, v14}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v13

    int-to-long v14, v13

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-nez v13, :cond_dd

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v13, v14, v15}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    const/4 v9, 0x0

    :try_start_5c
    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1c4

    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x0

    aget-object v6, v11, v13

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12e

    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lcom/android/server/backup/FileMetadata;->version:I

    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_e6

    const/4 v13, 0x0

    aget-object v13, v11, v13

    :goto_a4
    move-object/from16 v0, p1

    iput-object v13, v0, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x0

    aget-object v13, v11, v13

    const-string/jumbo v14, "1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lcom/android/server/backup/FileMetadata;->hasApk:Z

    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_e9

    new-array v10, v8, [Landroid/content/pm/Signature;

    const/4 v5, 0x0

    :goto_ca
    if-ge v5, v8, :cond_e8

    invoke-static {v2, v9, v11}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v9

    new-instance v13, Landroid/content/pm/Signature;

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-direct {v13, v14}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v13, v10, v5
    :try_end_da
    .catch Ljava/lang/NumberFormatException; {:try_start_5c .. :try_end_da} :catch_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5c .. :try_end_da} :catch_216

    add-int/lit8 v5, v5, 0x1

    goto :goto_ca

    :cond_dd
    new-instance v13, Ljava/io/IOException;

    const-string/jumbo v14, "Unexpected EOF in manifest"

    invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_e6
    const/4 v13, 0x0

    goto :goto_a4

    :cond_e8
    return-object v10

    :cond_e9
    :try_start_e9
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Missing signature on backed-up package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const-string/jumbo v14, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v14, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    const/16 v15, 0x2a

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v15, v0, v1, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :goto_12c
    const/4 v13, 0x0

    return-object v13

    :cond_12e
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Expected package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " but restore manifest claims "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v15, v13, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v13, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    invoke-static {v7, v13, v6}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v14, 0x2b

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_17d
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_17d} :catch_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e9 .. :try_end_17d} :catch_216

    goto :goto_12c

    :catch_17e
    move-exception v4

    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Corrupt restore manifest for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const-string/jumbo v14, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v14, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    const/16 v15, 0x2e

    const/16 v16, 0x0

    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v15, v0, v1, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_12c

    :cond_1c4
    :try_start_1c4
    const-string/jumbo v13, "BackupManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unknown restore manifest version "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " for package "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-static {v15, v13, v14}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v14, v12

    invoke-static {v7, v13, v14, v15}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v14, 0x2c

    const/4 v15, 0x0

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-static {v13, v14, v15, v0, v7}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_214
    .catch Ljava/lang/NumberFormatException; {:try_start_1c4 .. :try_end_214} :catch_17e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c4 .. :try_end_214} :catch_216

    goto/16 :goto_12c

    :catch_216
    move-exception v3

    const-string/jumbo v13, "BackupManagerService"

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12c
.end method

.method public readMetadata(Lcom/android/server/backup/FileMetadata;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v12, 0x10000

    cmp-long v10, v10, v12

    if-lez v10, :cond_25

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Metadata too big; corrupt? size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_25
    iget-wide v10, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v10, v10

    new-array v1, v10, [B

    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v11, v12

    const/4 v12, 0x0

    invoke-static {v10, v1, v12, v11}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v10

    int-to-long v10, v10

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_ac

    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-interface {v10, v12, v13}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    const/4 v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1, v10, v7}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x0

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_137

    invoke-static {v1, v4, v7}, Lcom/android/server/backup/utils/TarBackupReader;->extractLine([BI[Ljava/lang/String;)I

    move-result v4

    const/4 v10, 0x0

    aget-object v5, v7, v10

    iget-object v10, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    array-length v10, v1

    sub-int/2addr v10, v4

    invoke-direct {v0, v1, v4, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_6f
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    if-lez v10, :cond_136

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    const/high16 v10, 0x10000

    if-le v6, v10, :cond_b5

    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Datum "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " too big; corrupt? size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-wide v12, p1, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_ac
    new-instance v10, Ljava/io/IOException;

    const-string/jumbo v11, "Unexpected EOF in widget data"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_b5
    packed-switch v8, :pswitch_data_170

    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Ignoring metadata blob "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_6f

    :pswitch_e7
    new-array v10, v6, [B

    iput-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mWidgetData:[B

    invoke-virtual {v2, v10}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_6f

    :cond_f2
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Metadata mismatch: package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " but widget data for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v12, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v10, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    invoke-static {v3, v10, v5}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v11, 0x2f

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v10, v11, v12, v13, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    :cond_136
    :goto_136
    return-void

    :cond_137
    const-string/jumbo v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported metadata version "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    iget-object v11, p1, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v12, v10, v11}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v10, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    int-to-long v12, v9

    invoke-static {v3, v10, v12, v13}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->putMonitoringExtra(Landroid/os/Bundle;Ljava/lang/String;J)Landroid/os/Bundle;

    move-result-object v3

    iget-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    const/16 v11, 0x30

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-static {v10, v11, v12, v13, v3}, Lcom/android/server/backup/utils/BackupManagerMonitorUtils;->monitorEvent(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/backup/utils/TarBackupReader;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_136

    :pswitch_data_170
    .packed-switch 0x1ffed01
        :pswitch_e7
    .end packed-switch
.end method

.method public readTarHeaders()Lcom/android/server/backup/FileMetadata;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x200

    new-array v0, v8, [B

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    if-eqz v2, :cond_145

    :try_start_b
    new-instance v4, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/FileMetadata;-><init>()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_210

    const/16 v8, 0x7c

    const/16 v9, 0xc

    const/16 v10, 0x8

    :try_start_16
    invoke-static {v0, v8, v9, v10}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const/16 v8, 0x88

    const/16 v9, 0xc

    const/16 v10, 0x8

    invoke-static {v0, v8, v9, v10}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->mtime:J

    const/16 v8, 0x64

    const/16 v9, 0x8

    const/16 v10, 0x8

    invoke-static {v0, v8, v9, v10}, Lcom/android/server/backup/utils/TarBackupReader;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->mode:J

    const/16 v8, 0x159

    const/16 v9, 0x9b

    invoke-static {v0, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v0, v8, v9}, Lcom/android/server/backup/utils/TarBackupReader;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7f

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_6a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    :cond_7f
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    const/16 v8, 0x78

    if-ne v7, v8, :cond_c1

    invoke-direct {p0, v4}, Lcom/android/server/backup/utils/TarBackupReader;->readPaxExtendedHeader(Lcom/android/server/backup/FileMetadata;)Z

    move-result v2

    if-eqz v2, :cond_91

    invoke-direct {p0, v0}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeader([B)Z

    move-result v2

    :cond_91
    if-nez v2, :cond_bd

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_9c} :catch_9c

    :catch_9c
    move-exception v1

    move-object v3, v4

    :goto_9e
    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v1

    :cond_bd
    const/16 v8, 0x9c

    :try_start_bf
    aget-byte v7, v0, v8

    :cond_c1
    sparse-switch v7, :sswitch_data_214

    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :sswitch_f8
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    :cond_fb
    :goto_fb
    const-string/jumbo v8, "shared/"

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "shared/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_161

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    const-string/jumbo v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v8, "BackupManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_144
    :goto_144
    move-object v3, v4

    :cond_145
    return-object v3

    :sswitch_146
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    iget-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_fb

    const-string/jumbo v8, "BackupManagerService"

    const-string/jumbo v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_fb

    :sswitch_15f
    const/4 v8, 0x0

    return-object v8

    :cond_161
    const-string/jumbo v8, "apps/"

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "apps/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_144

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1aa

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1aa
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_144

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_144

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_1fb

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1fb
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_20e
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_20e} :catch_9c

    goto/16 :goto_144

    :catch_210
    move-exception v1

    goto/16 :goto_9e

    nop

    :sswitch_data_214
    .sparse-switch
        0x0 -> :sswitch_15f
        0x30 -> :sswitch_f8
        0x35 -> :sswitch_146
    .end sparse-switch
.end method

.method public skipTarPadding(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v6, 0x200

    add-long v4, p1, v6

    rem-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_20

    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    new-array v0, v1, [B

    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mInputStream:Ljava/io/InputStream;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5, v1}, Lcom/android/server/backup/utils/TarBackupReader;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_21

    iget-object v4, p0, Lcom/android/server/backup/utils/TarBackupReader;->mBytesReadListener:Lcom/android/server/backup/utils/BytesReadListener;

    int-to-long v6, v1

    invoke-interface {v4, v6, v7}, Lcom/android/server/backup/utils/BytesReadListener;->onBytesRead(J)V

    :cond_20
    return-void

    :cond_21
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
