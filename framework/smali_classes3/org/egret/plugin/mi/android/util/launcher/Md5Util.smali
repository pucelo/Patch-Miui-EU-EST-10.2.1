.class public Lorg/egret/plugin/mi/android/util/launcher/Md5Util;
.super Ljava/lang/Object;
.source "Md5Util.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMd5(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    :cond_5
    return v1

    :cond_6
    invoke-static {p0}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_10
    return v1
.end method

.method private static getMd5String([B)Ljava/lang/String;
    .registers 8

    const/16 v5, 0x10

    new-array v1, v5, [C

    fill-array-data v1, :array_2e

    array-length v3, p0

    mul-int/lit8 v5, v3, 0x2

    new-array v4, v5, [C

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v3, :cond_28

    aget-byte v0, p0, v2

    mul-int/lit8 v5, v2, 0x2

    ushr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    aput-char v6, v4, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v6, v0, 0xf

    aget-char v6, v1, v6

    aput-char v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_28
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    :array_2e
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static md5(Ljava/io/File;)Ljava/lang/String;
    .registers 10

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_8

    return-object v8

    :cond_8
    const/4 v4, 0x0

    :try_start_9
    const-string/jumbo v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_56
    .catchall {:try_start_9 .. :try_end_15} :catchall_47

    const/16 v7, 0x400

    :try_start_17
    new-array v1, v7, [B

    :goto_19
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_2f

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v0}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_23} :catch_24
    .catchall {:try_start_17 .. :try_end_23} :catchall_53

    goto :goto_19

    :catch_24
    move-exception v3

    move-object v4, v5

    :goto_26
    :try_start_26
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_47

    if-eqz v4, :cond_2e

    :try_start_2b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_42

    :cond_2e
    :goto_2e
    return-object v8

    :cond_2f
    :try_start_2f
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lorg/egret/plugin/mi/android/util/launcher/Md5Util;->getMd5String([B)Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_36} :catch_24
    .catchall {:try_start_2f .. :try_end_36} :catchall_53

    move-result-object v7

    if-eqz v5, :cond_3c

    :try_start_39
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d

    :cond_3c
    :goto_3c
    return-object v7

    :catch_3d
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3c

    :catch_42
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    :catchall_47
    move-exception v7

    :goto_48
    if-eqz v4, :cond_4d

    :try_start_4a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    :cond_4d
    :goto_4d
    throw v7

    :catch_4e
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    :catchall_53
    move-exception v7

    move-object v4, v5

    goto :goto_48

    :catch_56
    move-exception v3

    goto :goto_26
.end method
