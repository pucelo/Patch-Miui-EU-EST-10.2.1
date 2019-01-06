.class public final Landroid/util/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeSha256Digest([B)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string/jumbo v2, "SHA256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_13

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Landroid/util/ByteStringUtils;->toHexString([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :catch_13
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public static computeSignaturesSha256Digest([Landroid/content/pm/Signature;)Ljava/lang/String;
    .registers 4

    array-length v1, p0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_10
    invoke-static {p0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/util/PackageUtils;->computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static computeSignaturesSha256Digest([Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    array-length v4, p0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    aget-object v3, p0, v3

    return-object v3

    :cond_8
    invoke-static {p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v4, p0

    :goto_11
    if-ge v3, v4, :cond_1f

    aget-object v2, p0, v3

    :try_start_15
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_28

    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_1f
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :catch_28
    move-exception v1

    goto :goto_1c
.end method

.method public static computeSignaturesSha256Digests([Landroid/content/pm/Signature;)[Ljava/lang/String;
    .registers 5

    array-length v2, p0

    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v2, :cond_15

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Landroid/util/PackageUtils;->computeSha256Digest([B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    return-object v0
.end method
