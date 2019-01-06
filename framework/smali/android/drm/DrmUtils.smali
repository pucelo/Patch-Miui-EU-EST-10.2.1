.class public Landroid/drm/DrmUtils;
.super Ljava/lang/Object;
.source "DrmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmUtils$ExtendedMetadataParser;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExtendedMetadataParser([B)Landroid/drm/DrmUtils$ExtendedMetadataParser;
    .registers 3

    new-instance v0, Landroid/drm/DrmUtils$ExtendedMetadataParser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmUtils$ExtendedMetadataParser;-><init>([BLandroid/drm/DrmUtils$ExtendedMetadataParser;)V

    return-object v0
.end method

.method private static quietlyDispose(Ljava/io/Closeable;)V
    .registers 2

    if-eqz p0, :cond_5

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    :cond_5
    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static readBytes(Ljava/io/File;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->available()I

    move-result v3

    if-lez v3, :cond_16

    new-array v1, v3, [B

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1d

    :cond_16
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    return-object v1

    :catchall_1d
    move-exception v4

    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    invoke-static {v2}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    throw v4
.end method

.method static readBytes(Ljava/lang/String;)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/drm/DrmUtils;->readBytes(Ljava/io/File;)[B

    move-result-object v1

    return-object v1
.end method

.method static removeFile(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static writeToFile(Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    :try_start_5
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_12

    :try_start_a
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_17

    invoke-static {v1}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    move-object v0, v1

    :cond_11
    return-void

    :catchall_12
    move-exception v2

    :goto_13
    invoke-static {v0}, Landroid/drm/DrmUtils;->quietlyDispose(Ljava/io/Closeable;)V

    throw v2

    :catchall_17
    move-exception v2

    move-object v0, v1

    goto :goto_13
.end method
