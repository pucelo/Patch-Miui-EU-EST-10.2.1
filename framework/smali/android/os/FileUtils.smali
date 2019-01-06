.class public Landroid/os/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/FileUtils$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field private static final EMPTY:[Ljava/io/File;

.field public static final S_IRGRP:I = 0x20

.field public static final S_IROTH:I = 0x4

.field public static final S_IRUSR:I = 0x100

.field public static final S_IRWXG:I = 0x38

.field public static final S_IRWXO:I = 0x7

.field public static final S_IRWXU:I = 0x1c0

.field public static final S_IWGRP:I = 0x10

.field public static final S_IWOTH:I = 0x2

.field public static final S_IWUSR:I = 0x80

.field public static final S_IXGRP:I = 0x8

.field public static final S_IXOTH:I = 0x1

.field public static final S_IXUSR:I = 0x40

.field private static final TAG:Ljava/lang/String; = "FileUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/io/File;

    sput-object v0, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    :cond_c
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildUniqueFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_18

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_13
    invoke-static {p0, v2, v0}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3

    :cond_18
    move-object v2, p1

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/os/FileUtils;->splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {p0, v1, v2}, Landroid/os/FileUtils;->buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static buildUniqueFileWithExtension(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3f

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x20

    if-lt v1, v3, :cond_1a

    new-instance v3, Ljava/io/FileNotFoundException;

    const-string/jumbo v4, "Failed to create unique file"

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, p2}, Landroid/os/FileUtils;->buildFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    move v1, v2

    goto :goto_5

    :cond_3f
    return-object v0
.end method

.method public static buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "."

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, ".."

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_18
    const-string/jumbo v3, "(invalid)"

    return-object v3

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_42

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3c
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_42
    const/16 v3, 0xff

    invoke-static {v2, v3}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "."

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, ".."

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_18
    const-string/jumbo v3, "(invalid)"

    return-object v3

    :cond_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_26
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_42

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/os/FileUtils;->isValidFatFilenameChar(C)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_3c
    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_42
    const/16 v3, 0xff

    invoke-static {v2, v3}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static bytesToFile(Ljava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_14
    .catchall {:try_start_2 .. :try_end_7} :catchall_2f

    :try_start_7
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_34
    .catchall {:try_start_7 .. :try_end_a} :catchall_31

    if-eqz v1, :cond_f

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_12

    :cond_f
    :goto_f
    if-eqz v3, :cond_2e

    throw v3

    :catch_12
    move-exception v3

    goto :goto_f

    :catch_14
    move-exception v2

    :goto_15
    :try_start_15
    throw v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1a
    if-eqz v0, :cond_1f

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_22

    :cond_1f
    :goto_1f
    if-eqz v3, :cond_2d

    throw v3

    :catch_22
    move-exception v4

    if-nez v3, :cond_27

    move-object v3, v4

    goto :goto_1f

    :cond_27
    if-eq v3, v4, :cond_1f

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_2d
    throw v2

    :cond_2e
    return-void

    :catchall_2f
    move-exception v2

    goto :goto_1a

    :catchall_31
    move-exception v2

    move-object v0, v1

    goto :goto_1a

    :catch_34
    move-exception v2

    move-object v0, v1

    goto :goto_15
.end method

.method public static checksumCrc32(Ljava/io/File;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Ljava/util/zip/CRC32;

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    new-instance v3, Ljava/util/zip/CheckedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5, v1}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_26

    const/16 v5, 0x80

    :try_start_12
    new-array v0, v5, [B

    :cond_14
    invoke-virtual {v3, v0}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v5

    if-gez v5, :cond_14

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_2f

    move-result-wide v6

    if-eqz v3, :cond_23

    :try_start_20
    invoke-virtual {v3}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    :cond_23
    :goto_23
    return-wide v6

    :catch_24
    move-exception v4

    goto :goto_23

    :catchall_26
    move-exception v5

    :goto_27
    if-eqz v2, :cond_2c

    :try_start_29
    invoke-virtual {v2}, Ljava/util/zip/CheckedInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    throw v5

    :catch_2d
    move-exception v4

    goto :goto_2c

    :catchall_2f
    move-exception v5

    move-object v2, v3

    goto :goto_27
.end method

.method public static contains(Ljava/io/File;Ljava/io/File;)Z
    .registers 4

    if-eqz p0, :cond_4

    if-nez p1, :cond_6

    :cond_4
    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/FileUtils;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static contains(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_25
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static contains([Ljava/io/File;Ljava/io/File;)Z
    .registers 7

    const/4 v2, 0x0

    array-length v3, p0

    move v1, v2

    :goto_3
    if-ge v1, v3, :cond_12

    aget-object v0, p0, v1

    invoke-static {v0, p1}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v1, 0x1

    return v1

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    return v2
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v1, 0x1

    return v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_14
    .catchall {:try_start_2 .. :try_end_7} :catchall_2f

    :try_start_7
    invoke-static {v1, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_a} :catch_34
    .catchall {:try_start_7 .. :try_end_a} :catchall_31

    if-eqz v1, :cond_f

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_f} :catch_12

    :cond_f
    :goto_f
    if-eqz v3, :cond_2e

    throw v3

    :catch_12
    move-exception v3

    goto :goto_f

    :catch_14
    move-exception v2

    :goto_15
    :try_start_15
    throw v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1a
    if-eqz v0, :cond_1f

    :try_start_1c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1f} :catch_22

    :cond_1f
    :goto_1f
    if-eqz v3, :cond_2d

    throw v3

    :catch_22
    move-exception v4

    if-nez v3, :cond_27

    move-object v3, v4

    goto :goto_1f

    :cond_27
    if-eq v3, v4, :cond_1f

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_2d
    throw v2

    :cond_2e
    return-void

    :catchall_2f
    move-exception v2

    goto :goto_1a

    :catchall_31
    move-exception v2

    move-object v0, v1

    goto :goto_1a

    :catch_34
    move-exception v2

    move-object v0, v1

    goto :goto_15
.end method

.method public static copyPermissions(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget v3, v1, Landroid/system/StructStat;->st_uid:I

    iget v4, v1, Landroid/system/StructStat;->st_gid:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_1c
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method public static copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    const/4 v1, 0x1

    return v1

    :catch_5
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static copyToFileOrThrow(Ljava/io/InputStream;Ljava/io/File;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_9
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x1000

    :try_start_10
    new-array v0, v4, [B

    :goto_12
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2c

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1d

    goto :goto_12

    :catchall_1d
    move-exception v4

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    :try_start_21
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_28} :catch_3a

    :goto_28
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v4

    :cond_2c
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    :try_start_2f
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_36} :catch_3c

    :goto_36
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catch_3a
    move-exception v2

    goto :goto_28

    :catch_3c
    move-exception v2

    goto :goto_36
.end method

.method public static createDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_13

    :goto_12
    return-object v0

    :cond_13
    move-object v0, v1

    goto :goto_12

    :cond_15
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1c

    :goto_1b
    return-object v0

    :cond_1c
    move-object v0, v1

    goto :goto_1b
.end method

.method public static deleteContents(Ljava/io/File;)Z
    .registers 9

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    const/4 v3, 0x0

    array-length v4, v1

    :goto_9
    if-ge v3, v4, :cond_3c

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v5

    and-int/2addr v2, v5

    :cond_18
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_39

    const-string/jumbo v5, "FileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_3c
    return v2
.end method

.method public static deleteContentsAndDir(Ljava/io/File;)Z
    .registers 2

    invoke-static {p0}, Landroid/os/FileUtils;->deleteContents(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static deleteOlderFiles(Ljava/io/File;IJ)Z
    .registers 14

    const/4 v8, 0x0

    if-ltz p1, :cond_9

    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-gez v6, :cond_12

    :cond_9
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Constraints must be positive or 0"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_19

    return v8

    :cond_19
    new-instance v6, Landroid/os/FileUtils$1;

    invoke-direct {v6}, Landroid/os/FileUtils$1;-><init>()V

    invoke-static {v4, v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v5, p1

    :goto_23
    array-length v6, v4

    if-ge v5, v6, :cond_5a

    aget-object v3, v4, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    sub-long v0, v6, v8

    cmp-long v6, v0, p2

    if-lez v6, :cond_57

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v6

    if-eqz v6, :cond_57

    const-string/jumbo v6, "FileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Deleted old file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    :cond_5a
    return v2
.end method

.method public static getUid(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v1, v1, Landroid/system/StructStat;->st_uid:I
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_6} :catch_7

    return v1

    :catch_7
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method public static isFilenameSafe(Ljava/io/File;)Z
    .registers 3

    sget-object v0, Landroid/os/FileUtils$NoImagePreloadHolder;->SAFE_FILENAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public static isValidExtFilename(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidExtFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isValidExtFilenameChar(C)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x1

    return v0

    :sswitch_5
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x0 -> :sswitch_5
        0x2f -> :sswitch_5
    .end sparse-switch
.end method

.method public static isValidFatFilename(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static isValidFatFilenameChar(C)Z
    .registers 3

    const/4 v1, 0x0

    if-ltz p0, :cond_8

    const/16 v0, 0x1f

    if-gt p0, v0, :cond_8

    return v1

    :cond_8
    sparse-switch p0, :sswitch_data_e

    const/4 v0, 0x1

    return v0

    :sswitch_d
    return v1

    :sswitch_data_e
    .sparse-switch
        0x22 -> :sswitch_d
        0x2a -> :sswitch_d
        0x2f -> :sswitch_d
        0x3a -> :sswitch_d
        0x3c -> :sswitch_d
        0x3e -> :sswitch_d
        0x3f -> :sswitch_d
        0x5c -> :sswitch_d
        0x7c -> :sswitch_d
        0x7f -> :sswitch_d
    .end sparse-switch
.end method

.method public static listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;
    .registers 3

    if-nez p0, :cond_5

    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v1

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v1
.end method

.method public static listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .registers 4

    if-nez p0, :cond_5

    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v1

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    sget-object v1, Landroid/os/FileUtils;->EMPTY:[Ljava/io/File;

    return-object v1
.end method

.method public static listOrEmpty(Ljava/io/File;)[Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    :cond_5
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    return-object v0

    :cond_c
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1
.end method

.method public static newFileOrNull(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_8
    return-object v0
.end method

.method public static readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v5, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v10

    if-gtz p1, :cond_1a

    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_84

    if-nez p1, :cond_84

    :cond_1a
    const-wide/16 v14, 0x0

    cmp-long v13, v10, v14

    if-lez v13, :cond_2c

    if-eqz p1, :cond_29

    move/from16 v0, p1

    int-to-long v14, v0

    cmp-long v13, v10, v14

    if-gez v13, :cond_2c

    :cond_29
    long-to-int v0, v10

    move/from16 p1, v0

    :cond_2c
    add-int/lit8 v13, p1, 0x1

    new-array v4, v13, [B

    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v8

    if-gtz v8, :cond_40

    const-string/jumbo v13, ""
    :try_end_39
    .catchall {:try_start_c .. :try_end_39} :catchall_11b

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :cond_40
    move/from16 v0, p1

    if-gt v8, v0, :cond_51

    :try_start_44
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v8}, Ljava/lang/String;-><init>([BII)V
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_11b

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :cond_51
    if-nez p2, :cond_62

    :try_start_53
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-direct {v13, v4, v14, v0}, Ljava/lang/String;-><init>([BII)V
    :try_end_5b
    .catchall {:try_start_53 .. :try_end_5b} :catchall_11b

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :cond_62
    :try_start_62
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v14, Ljava/lang/String;

    const/4 v15, 0x0

    move/from16 v0, p1

    invoke-direct {v14, v4, v15, v0}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_11b

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :cond_84
    if-gez p1, :cond_fa

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    :cond_89
    if-eqz v6, :cond_8c

    const/4 v9, 0x1

    :cond_8c
    move-object v12, v6

    move-object v6, v4

    move-object v4, v12

    if-nez v12, :cond_96

    move/from16 v0, p1

    neg-int v13, v0

    :try_start_94
    new-array v4, v13, [B

    :cond_96
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    array-length v13, v4

    if-eq v7, v13, :cond_89

    if-nez v6, :cond_ab

    if-gtz v7, :cond_ab

    const-string/jumbo v13, ""
    :try_end_a4
    .catchall {:try_start_94 .. :try_end_a4} :catchall_11b

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :cond_ab
    if-nez v6, :cond_ba

    :try_start_ad
    new-instance v13, Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct {v13, v4, v14, v7}, Ljava/lang/String;-><init>([BII)V
    :try_end_b3
    .catchall {:try_start_ad .. :try_end_b3} :catchall_11b

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :cond_ba
    if-lez v7, :cond_c9

    const/4 v9, 0x1

    :try_start_bd
    array-length v13, v6

    sub-int/2addr v13, v7

    const/4 v14, 0x0

    invoke-static {v6, v7, v6, v14, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v13, v6

    sub-int/2addr v13, v7

    const/4 v14, 0x0

    invoke-static {v4, v14, v6, v13, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_c9
    if-eqz p2, :cond_cf

    xor-int/lit8 v13, v9, 0x1

    if-eqz v13, :cond_db

    :cond_cf
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_d4
    .catchall {:try_start_bd .. :try_end_d4} :catchall_11b

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :cond_db
    :try_start_db
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_f2
    .catchall {:try_start_db .. :try_end_f2} :catchall_11b

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :cond_fa
    :try_start_fa
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v13, 0x400

    new-array v4, v13, [B

    :cond_103
    invoke-virtual {v2, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_10d

    const/4 v13, 0x0

    invoke-virtual {v3, v4, v13, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_10d
    array-length v13, v4

    if-eq v7, v13, :cond_103

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_113
    .catchall {:try_start_fa .. :try_end_113} :catchall_11b

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-object v13

    :catchall_11b
    move-exception v13

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v13
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .registers 6

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    if-nez p0, :cond_6

    :cond_5
    return-object v2

    :cond_6
    if-eqz p1, :cond_5

    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_24
    return-object v2
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    if-nez p2, :cond_4

    return-object v1

    :cond_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_13
    return-object v1
.end method

.method public static rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    if-nez p2, :cond_4

    return-object v2

    :cond_4
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_8
    array-length v2, p2

    if-ge v0, v2, :cond_16

    aget-object v2, p2, v0

    invoke-static {p0, p1, v2}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_16
    return-object v1
.end method

.method public static roundStorageSize(J)J
    .registers 8

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x1

    :cond_4
    :goto_4
    mul-long v4, v2, v0

    cmp-long v4, v4, p0

    if-gez v4, :cond_18

    const/4 v4, 0x1

    shl-long/2addr v2, v4

    const-wide/16 v4, 0x200

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    goto :goto_4

    :cond_18
    mul-long v4, v2, v0

    return-wide v4
.end method

.method public static setPermissions(Ljava/io/File;III)I
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public static setPermissions(Ljava/io/FileDescriptor;III)I
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1}, Landroid/system/Os;->fchmod(Ljava/io/FileDescriptor;I)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_4} :catch_c

    if-gez p2, :cond_8

    if-ltz p3, :cond_b

    :cond_8
    :try_start_8
    invoke-static {p0, p2, p3}, Landroid/system/Os;->fchown(Ljava/io/FileDescriptor;II)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_b} :catch_2a

    :cond_b
    return v1

    :catch_c
    move-exception v0

    const-string/jumbo v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to fchmod(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1

    :catch_2a
    move-exception v0

    const-string/jumbo v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to fchown(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1
.end method

.method public static setPermissions(Ljava/lang/String;III)I
    .registers 8

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_4} :catch_c

    if-gez p2, :cond_8

    if-ltz p3, :cond_b

    :cond_8
    :try_start_8
    invoke-static {p0, p2, p3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V
    :try_end_b
    .catch Landroid/system/ErrnoException; {:try_start_8 .. :try_end_b} :catch_35

    :cond_b
    return v1

    :catch_c
    move-exception v0

    const-string/jumbo v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to chmod("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1

    :catch_35
    move-exception v0

    const-string/jumbo v1, "FileUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to chown("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Landroid/system/ErrnoException;->errno:I

    return v1
.end method

.method public static splitFileName(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 10

    const/4 v7, 0x0

    const-string/jumbo v5, "vnd.android.document/directory"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object v4, p1

    const/4 v0, 0x0

    :cond_c
    :goto_c
    if-nez v0, :cond_11

    const-string/jumbo v0, ""

    :cond_11
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v7

    const/4 v6, 0x1

    aput-object v0, v5, v6

    return-object v5

    :cond_1a
    const/16 v5, 0x2e

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ltz v2, :cond_54

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_38
    if-nez v3, :cond_3d

    const-string/jumbo v3, "application/octet-stream"

    :cond_3d
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    move-object v4, p1

    move-object v0, v1

    goto :goto_c

    :cond_54
    move-object v4, p1

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_38
.end method

.method public static stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    return-void
.end method

.method public static sync(Ljava/io/FileOutputStream;)Z
    .registers 3

    if-eqz p0, :cond_9

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_b

    :cond_9
    const/4 v1, 0x1

    return v1

    :catch_b
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public static trimFilename(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Landroid/os/FileUtils;->trimFilename(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static trimFilename(Ljava/lang/StringBuilder;I)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    if-le v1, p1, :cond_32

    add-int/lit8 p1, p1, -0x3

    :goto_f
    array-length v1, v0

    if-le v1, p1, :cond_26

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_f

    :cond_26
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const-string/jumbo v2, "..."

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_32
    return-void
.end method
