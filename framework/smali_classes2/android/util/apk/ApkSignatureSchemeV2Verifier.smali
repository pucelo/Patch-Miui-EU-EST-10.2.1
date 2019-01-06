.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.super Ljava/lang/Object;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;,
        Landroid/util/apk/ApkSignatureSchemeV2Verifier$WrappedX509Certificate;
    }
.end annotation


# static fields
.field private static final APK_SIGNATURE_SCHEME_V2_BLOCK_ID:I = 0x7109871a

.field private static final APK_SIG_BLOCK_MAGIC_HI:J = 0x3234206b636f6c42L

.field private static final APK_SIG_BLOCK_MAGIC_LO:J = 0x20676953204b5041L

.field private static final APK_SIG_BLOCK_MIN_SIZE:I = 0x20

.field private static final CHUNK_SIZE_BYTES:I = 0x100000

.field private static final CONTENT_DIGEST_CHUNKED_SHA256:I = 0x1

.field private static final CONTENT_DIGEST_CHUNKED_SHA512:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_ID:I = 0x2

.field public static final SF_ATTRIBUTE_ANDROID_APK_SIGNED_NAME:Ljava/lang/String; = "X-Android-APK-Signed"

.field private static final SIGNATURE_DSA_WITH_SHA256:I = 0x301

.field private static final SIGNATURE_ECDSA_WITH_SHA256:I = 0x201

.field private static final SIGNATURE_ECDSA_WITH_SHA512:I = 0x202

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA256:I = 0x103

.field private static final SIGNATURE_RSA_PKCS1_V1_5_WITH_SHA512:I = 0x104

.field private static final SIGNATURE_RSA_PSS_WITH_SHA256:I = 0x101

.field private static final SIGNATURE_RSA_PSS_WITH_SHA512:I = 0x102


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-eq v0, v1, :cond_11

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ByteBuffer byte order must be little endian"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method private static compareContentDigestAlgorithm(II)I
    .registers 5

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_5e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    packed-switch p1, :pswitch_data_66

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3b
    return v0

    :pswitch_3c
    const/4 v0, -0x1

    return v0

    :pswitch_3e
    packed-switch p1, :pswitch_data_6e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digestAlgorithm2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5b
    const/4 v0, 0x1

    return v0

    :pswitch_5d
    return v0

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_3e
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3c
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5b
        :pswitch_5d
    .end packed-switch
.end method

.method private static compareSignatureAlgorithm(II)I
    .registers 5

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v0

    invoke-static {p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareContentDigestAlgorithm(II)I

    move-result v2

    return v2
.end method

.method private static computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    const-wide/16 v30, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    :goto_9
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_1e

    aget-object v17, p1, v29

    invoke-interface/range {v17 .. v17}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    move-result-wide v34

    invoke-static/range {v34 .. v35}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getChunkCount(J)J

    move-result-wide v34

    add-long v30, v30, v34

    add-int/lit8 v29, v29, 0x1

    goto :goto_9

    :cond_1e
    const-wide/32 v32, 0x1fffff

    cmp-long v29, v30, v32

    if-ltz v29, :cond_47

    new-instance v29, Ljava/security/DigestException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Too many chunks: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v29

    :cond_47
    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v12, v0, [[B

    const/16 v16, 0x0

    :goto_57
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_84

    aget v10, p0, v16

    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v11

    mul-int v29, v28, v11

    add-int/lit8 v29, v29, 0x5

    move/from16 v0, v29

    new-array v8, v0, [B

    const/16 v29, 0x5a

    const/16 v32, 0x0

    aput-byte v29, v8, v32

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-static {v0, v8, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    aput-object v8, v12, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_57

    :cond_84
    const/16 v29, 0x5

    move/from16 v0, v29

    new-array v5, v0, [B

    const/16 v29, -0x5b

    const/16 v32, 0x0

    aput-byte v29, v5, v32

    const/4 v6, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [Ljava/security/MessageDigest;

    move-object/from16 v25, v0

    const/16 v16, 0x0

    :goto_9e
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_db

    aget v29, p0, v16

    invoke-static/range {v29 .. v29}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v19

    :try_start_af
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v29

    aput-object v29, v25, v16
    :try_end_b5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_af .. :try_end_b5} :catch_b8

    add-int/lit8 v16, v16, 0x1

    goto :goto_9e

    :catch_b8
    move-exception v14

    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest not supported"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    :cond_db
    const/4 v9, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    :goto_e3
    move/from16 v0, v29

    move/from16 v1, v32

    if-ge v0, v1, :cond_1c6

    aget-object v17, p1, v29

    const-wide/16 v20, 0x0

    invoke-interface/range {v17 .. v17}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->size()J

    move-result-wide v22

    :goto_f1
    const-wide/16 v34, 0x0

    cmp-long v33, v22, v34

    if-lez v33, :cond_1c0

    const-wide/32 v34, 0x100000

    move-wide/from16 v0, v22

    move-wide/from16 v2, v34

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v7, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    invoke-static {v7, v5, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->setUnsignedInt32LittleEndian(I[BI)V

    const/16 v16, 0x0

    :goto_10e
    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_123

    aget-object v33, v25, v16

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_10e

    :cond_123
    :try_start_123
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;->feedIntoMessageDigests([Ljava/security/MessageDigest;JI)V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_123 .. :try_end_12c} :catch_180

    const/16 v16, 0x0

    :goto_12e
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v16

    move/from16 v1, v33

    if-ge v0, v1, :cond_1b2

    aget v10, p0, v16

    aget-object v8, v12, v16

    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmOutputSizeBytes(I)I

    move-result v15

    aget-object v24, v25, v16

    mul-int v33, v6, v15

    add-int/lit8 v33, v33, 0x5

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v8, v1, v15}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v4

    if-eq v4, v15, :cond_1ae

    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Unexpected output size of "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v24 .. v24}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v29

    :catch_180
    move-exception v13

    new-instance v29, Ljava/security/DigestException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v33, "Failed to digest chunk #"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " of section #"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v13}, Ljava/security/DigestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    :cond_1ae
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_12e

    :cond_1b2
    int-to-long v0, v7

    move-wide/from16 v34, v0

    add-long v20, v20, v34

    int-to-long v0, v7

    move-wide/from16 v34, v0

    sub-long v22, v22, v34

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f1

    :cond_1c0
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_e3

    :cond_1c6
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    new-array v0, v0, [[B

    move-object/from16 v27, v0

    const/16 v16, 0x0

    :goto_1d3
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_21a

    aget v10, p0, v16

    aget-object v18, v12, v16

    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v19

    :try_start_1e6
    invoke-static/range {v19 .. v19}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1e9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1e6 .. :try_end_1e9} :catch_1f7

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v26

    aput-object v26, v27, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_1d3

    :catch_1f7
    move-exception v14

    new-instance v29, Ljava/lang/RuntimeException;

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string/jumbo v33, " digest not supported"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v29

    :cond_21a
    return-object v27
.end method

.method private static findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const/16 v10, 0x8

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->checkByteOrderLittleEndian(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/lit8 v7, v7, -0x18

    invoke-static {p0, v10, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v0, 0x0

    :goto_10
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_c4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-ge v7, v10, :cond_38

    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Insufficient data to read size of APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_38
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    const-wide/16 v8, 0x4

    cmp-long v7, v4, v8

    if-ltz v7, :cond_49

    const-wide/32 v8, 0x7fffffff

    cmp-long v7, v4, v8

    if-lez v7, :cond_6e

    :cond_49
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6e
    long-to-int v2, v4

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v3, v7, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-le v2, v7, :cond_af

    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "APK Signing Block entry #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " size out of range: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", available: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_af
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v7, 0x7109871a

    if-ne v1, v7, :cond_bf

    add-int/lit8 v7, v2, -0x4

    invoke-static {v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    return-object v7

    :cond_bf
    invoke-virtual {v6, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_10

    :cond_c4
    new-instance v7, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v8, "No APK Signature Scheme v2 block in APK Signing Block"

    invoke-direct {v7, v8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            "J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    const-wide/16 v12, 0x20

    cmp-long v11, p1, v12

    if-gez v11, :cond_22

    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK too small for APK Signing Block. ZIP Central Directory offset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p1

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_22
    const/16 v11, 0x18

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    sub-long v12, p1, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x20676953204b5041L

    cmp-long v11, v12, v14

    if-nez v11, :cond_68

    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v12

    const-wide v14, 0x3234206b636f6c42L    # 7.465385175170059E-67

    cmp-long v11, v12, v14

    if-eqz v11, :cond_71

    :cond_68
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v12, "No APK Signing Block before ZIP Central Directory"

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_71
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v11

    int-to-long v12, v11

    cmp-long v11, v6, v12

    if-ltz v11, :cond_86

    const-wide/32 v12, 0x7ffffff7

    cmp-long v11, v6, v12

    if-lez v11, :cond_a0

    :cond_86
    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block size out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_a0
    const-wide/16 v12, 0x8

    add-long/2addr v12, v6

    long-to-int v10, v12

    int-to-long v12, v10

    sub-long v4, p1, v12

    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-gez v11, :cond_c7

    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block offset out of range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_c7
    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v12

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v8

    cmp-long v11, v8, v6

    if-eqz v11, :cond_114

    new-instance v11, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "APK Signing Block sizes in header and footer do not match: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " vs "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_114
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v11

    return-object v11
.end method

.method private static findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v12

    iget-object v8, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/nio/ByteBuffer;

    iget-object v0, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Landroid/util/apk/ZipUtils;->isZip64EndOfCentralDirectoryLocatorPresent(Ljava/io/RandomAccessFile;J)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v9, "ZIP64 APK not supported"

    invoke-direct {v0, v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-static {v8, v6, v7}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getCentralDirOffset(Ljava/nio/ByteBuffer;J)J

    move-result-wide v4

    invoke-static {p0, v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSigningBlock(Ljava/io/RandomAccessFile;J)Landroid/util/Pair;

    move-result-object v11

    iget-object v10, v11, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/nio/ByteBuffer;

    iget-object v0, v11, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findApkSignatureSchemeV2Block(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)V

    return-object v0
.end method

.method private static getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferUnderflowException;
        }
    .end annotation

    if-gez p1, :cond_1c

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int v0, v2, p1

    if-lt v0, v2, :cond_2a

    if-le v0, v1, :cond_30

    :cond_2a
    new-instance v4, Ljava/nio/BufferUnderflowException;

    invoke-direct {v4}, Ljava/nio/BufferUnderflowException;-><init>()V

    throw v4

    :cond_30
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :try_start_33
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_45

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-object v3

    :catchall_45
    move-exception v4

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    throw v4
.end method

.method private static getCentralDirOffset(Ljava/nio/ByteBuffer;J)J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    cmp-long v4, v0, p1

    if-lez v4, :cond_2d

    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ZIP Central Directory offset out of range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". ZIP End of Central Directory offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2d
    invoke-static {p0}, Landroid/util/apk/ZipUtils;->getZipEocdCentralDirectorySizeBytes(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long v4, v0, v2

    cmp-long v4, v4, p1

    if-eqz v4, :cond_40

    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v5, "ZIP Central Directory is not immediately followed by End of Central Directory"

    invoke-direct {v4, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_40
    return-wide v0
.end method

.method private static final getChunkCount(J)J
    .registers 8

    const-wide/32 v4, 0x100000

    add-long v0, p0, v4

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    div-long/2addr v0, v4

    return-wide v0
.end method

.method private static getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_26

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const-string/jumbo v0, "SHA-256"

    return-object v0

    :pswitch_21
    const-string/jumbo v0, "SHA-512"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_21
    .end packed-switch
.end method

.method private static getContentDigestAlgorithmOutputSizeBytes(I)I
    .registers 4

    packed-switch p0, :pswitch_data_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown content digest algorthm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const/16 v0, 0x20

    return v0

    :pswitch_20
    const/16 v0, 0x40

    return v0

    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method private static getEocd(Ljava/io/RandomAccessFile;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/RandomAccessFile;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ZipUtils;->findZipEndOfCentralDirectoryRecord(Ljava/io/RandomAccessFile;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v1, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;

    const-string/jumbo v2, "Not an APK file: ZIP End of Central Directory record not found"

    invoke-direct {v1, v2}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    return-object v0
.end method

.method private static getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_25

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Remaining buffer too short to contain length of length-prefixed field. Remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_25
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-gez v0, :cond_34

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Negative length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_34
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_63

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Length-prefixed field longer than remaining buffer. Field length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", remaining: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_63
    invoke-static {p0, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getByteBuffer(Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method private static getSignatureAlgorithmContentDigestAlgorithm(I)I
    .registers 5

    sparse-switch p0, :sswitch_data_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_24
    const/4 v0, 0x1

    return v0

    :sswitch_26
    const/4 v0, 0x2

    return v0

    :sswitch_data_28
    .sparse-switch
        0x101 -> :sswitch_24
        0x102 -> :sswitch_26
        0x103 -> :sswitch_24
        0x104 -> :sswitch_26
        0x201 -> :sswitch_24
        0x202 -> :sswitch_26
        0x301 -> :sswitch_24
    .end sparse-switch
.end method

.method private static getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;
    .registers 5

    sparse-switch p0, :sswitch_data_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_24
    const-string/jumbo v0, "RSA"

    return-object v0

    :sswitch_28
    const-string/jumbo v0, "EC"

    return-object v0

    :sswitch_2c
    const-string/jumbo v0, "DSA"

    return-object v0

    :sswitch_data_30
    .sparse-switch
        0x101 -> :sswitch_24
        0x102 -> :sswitch_24
        0x103 -> :sswitch_24
        0x104 -> :sswitch_24
        0x201 -> :sswitch_28
        0x202 -> :sswitch_28
        0x301 -> :sswitch_2c
    .end sparse-switch
.end method

.method private static getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_7c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown signature algorithm: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, p0, -0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_26
    const-string/jumbo v6, "SHA256withRSA/PSS"

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const-string/jumbo v1, "SHA-256"

    const-string/jumbo v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x20

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_3d
    const-string/jumbo v6, "SHA512withRSA/PSS"

    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    const-string/jumbo v1, "SHA-512"

    const-string/jumbo v2, "MGF1"

    sget-object v3, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    const/16 v4, 0x40

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    invoke-static {v6, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_54
    const-string/jumbo v0, "SHA256withRSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_5c
    const-string/jumbo v0, "SHA512withRSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_64
    const-string/jumbo v0, "SHA256withECDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_6c
    const-string/jumbo v0, "SHA512withECDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_74
    const-string/jumbo v0, "SHA256withDSA"

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :sswitch_data_7c
    .sparse-switch
        0x101 -> :sswitch_26
        0x102 -> :sswitch_3d
        0x103 -> :sswitch_54
        0x104 -> :sswitch_5c
        0x201 -> :sswitch_64
        0x202 -> :sswitch_6c
        0x301 -> :sswitch_74
    .end sparse-switch
.end method

.method public static hasSignature(Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "r"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_1d
    .catchall {:try_start_2 .. :try_end_a} :catchall_39

    :try_start_a
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_3e
    .catchall {:try_start_a .. :try_end_d} :catchall_3b

    const/4 v3, 0x1

    if-eqz v1, :cond_13

    :try_start_10
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_1a
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_10 .. :try_end_13} :catch_16

    :cond_13
    :goto_13
    if-eqz v4, :cond_1c

    :try_start_15
    throw v4
    :try_end_16
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_15 .. :try_end_16} :catch_16

    :catch_16
    move-exception v2

    move-object v0, v1

    :goto_18
    const/4 v3, 0x0

    return v3

    :catch_1a
    move-exception v4

    goto :goto_13

    :cond_1c
    return v3

    :catch_1d
    move-exception v3

    :goto_1e
    :try_start_1e
    throw v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    :goto_23
    if-eqz v0, :cond_28

    :try_start_25
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_28} :catch_2d
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_25 .. :try_end_28} :catch_2b

    :cond_28
    :goto_28
    if-eqz v4, :cond_38

    :try_start_2a
    throw v4

    :catch_2b
    move-exception v2

    goto :goto_18

    :catch_2d
    move-exception v5

    if-nez v4, :cond_32

    move-object v4, v5

    goto :goto_28

    :cond_32
    if-eq v4, v5, :cond_28

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_38
    throw v3
    :try_end_39
    .catch Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException; {:try_start_2a .. :try_end_39} :catch_2b

    :catchall_39
    move-exception v3

    goto :goto_23

    :catchall_3b
    move-exception v3

    move-object v0, v1

    goto :goto_23

    :catch_3e
    move-exception v3

    move-object v0, v1

    goto :goto_1e
.end method

.method private static isSupportedSignatureAlgorithm(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x101 -> :sswitch_5
        0x102 -> :sswitch_5
        0x103 -> :sswitch_5
        0x104 -> :sswitch_5
        0x201 -> :sswitch_5
        0x202 -> :sswitch_5
        0x301 -> :sswitch_5
    .end sparse-switch
.end method

.method private static readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-gez v0, :cond_f

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Negative length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v0, v2, :cond_3e

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Underflow while reading length-prefixed value. Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3e
    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method private static setUnsignedInt32LittleEndian(I[BI)V
    .registers 5

    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static sliceFromTo(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
    .registers 10

    const/4 v5, 0x0

    if-gez p1, :cond_1d

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1d
    if-ge p2, p1, :cond_44

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end < start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " < "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_44
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-le p2, v4, :cond_73

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "end > capacity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_73
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    const/4 v4, 0x0

    :try_start_7c
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
    :try_end_90
    .catchall {:try_start_7c .. :try_end_90} :catchall_9a

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v3

    :catchall_9a
    move-exception v4

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v4
.end method

.method private static verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/16 v18, 0x0

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    :try_start_c
    const-string/jumbo v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_12
    .catch Ljava/security/cert/CertificateException; {:try_start_c .. :try_end_12} :catch_57

    move-result-object v11

    :try_start_13
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get4(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1a} :catch_61

    move-result-object v19

    :goto_1b
    invoke-virtual/range {v19 .. v19}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_6b

    add-int/lit8 v18, v18, 0x1

    :try_start_23
    invoke-static/range {v19 .. v19}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v2, v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;

    move-result-object v12

    move-object/from16 v0, v17

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_32} :catch_33
    .catch Ljava/nio/BufferUnderflowException; {:try_start_23 .. :try_end_32} :catch_33
    .catch Ljava/lang/SecurityException; {:try_start_23 .. :try_end_32} :catch_33

    goto :goto_1b

    :catch_33
    move-exception v14

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to parse/verify signer #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " block"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_57
    move-exception v15

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v3, v4, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_61
    move-exception v13

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "Failed to read list of signers"

    invoke-direct {v3, v4, v13}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_6b
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ge v0, v3, :cond_79

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "No signers found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_79
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_88

    new-instance v3, Ljava/lang/SecurityException;

    const-string/jumbo v4, "No content digests found"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_88
    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get0(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v4

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get1(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v6

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get3(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J

    move-result-wide v8

    invoke-static/range {p1 .. p1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->-get2(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object/from16 v3, p0

    invoke-static/range {v2 .. v10}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [[Ljava/security/cert/X509Certificate;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/security/cert/X509Certificate;

    return-object v3
.end method

.method private static verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->findSignature(Ljava/io/RandomAccessFile;)Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/FileDescriptor;Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)[[Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public static verify(Ljava/lang/String;)[[Ljava/security/cert/X509Certificate;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;,
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_2
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_a} :catch_19
    .catchall {:try_start_2 .. :try_end_a} :catchall_33

    :try_start_a
    invoke-static {v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->verify(Ljava/io/RandomAccessFile;)[[Ljava/security/cert/X509Certificate;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_d} :catch_38
    .catchall {:try_start_a .. :try_end_d} :catchall_35

    move-result-object v2

    if-eqz v1, :cond_13

    :try_start_10
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_16

    :cond_13
    :goto_13
    if-eqz v3, :cond_18

    throw v3

    :catch_16
    move-exception v3

    goto :goto_13

    :cond_18
    return-object v2

    :catch_19
    move-exception v2

    :goto_1a
    :try_start_1a
    throw v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v3

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    :goto_1f
    if-eqz v0, :cond_24

    :try_start_21
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_27

    :cond_24
    :goto_24
    if-eqz v3, :cond_32

    throw v3

    :catch_27
    move-exception v4

    if-nez v3, :cond_2c

    move-object v3, v4

    goto :goto_24

    :cond_2c
    if-eq v3, v4, :cond_24

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_24

    :cond_32
    throw v2

    :catchall_33
    move-exception v2

    goto :goto_1f

    :catchall_35
    move-exception v2

    move-object v0, v1

    goto :goto_1f

    :catch_38
    move-exception v2

    move-object v0, v1

    goto :goto_1a
.end method

.method private static verifyIntegrity(Ljava/util/Map;Ljava/io/FileDescriptor;JJJLjava/nio/ByteBuffer;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/io/FileDescriptor;",
            "JJJ",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_f

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v7, "No digests provided"

    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    new-instance v4, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    const-wide/16 v6, 0x0

    move-object/from16 v5, p1

    move-wide/from16 v8, p2

    invoke-direct/range {v4 .. v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;

    sub-long v10, p6, p4

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    invoke-direct/range {v6 .. v11}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual/range {p8 .. p8}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p8

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, p8

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p8

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/util/apk/ZipUtils;->setZipEocdCentralDirectoryOffset(Ljava/nio/ByteBuffer;J)V

    new-instance v19, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;

    move-object/from16 v0, v19

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$ByteBufferDataSource;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v17, v0

    const/16 v16, 0x0

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_52
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v14

    aput v14, v17, v16

    add-int/lit8 v16, v16, 0x1

    goto :goto_52

    :cond_67
    const/4 v5, 0x3

    :try_start_68
    new-array v5, v5, [Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;

    const/4 v7, 0x0

    aput-object v4, v5, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v7, 0x2

    aput-object v19, v5, v7

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->computeContentDigests([I[Landroid/util/apk/ApkSignatureSchemeV2Verifier$DataSource;)[[B
    :try_end_78
    .catch Ljava/security/DigestException; {:try_start_68 .. :try_end_78} :catch_b8

    move-result-object v13

    const/16 v21, 0x0

    :goto_7b
    move-object/from16 v0, v17

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_c7

    aget v14, v17, v21

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    aget-object v12, v13, v21

    move-object/from16 v0, v20

    invoke-static {v0, v12}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v5

    if-nez v5, :cond_c4

    new-instance v5, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " digest of contents did not verify"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_b8
    move-exception v18

    new-instance v5, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Failed to compute digest(s) of contents"

    move-object/from16 v0, v18

    invoke-direct {v5, v7, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_c4
    add-int/lit8 v21, v21, 0x1

    goto :goto_7b

    :cond_c7
    return-void
.end method

.method private static verifySigner(Ljava/nio/ByteBuffer;Ljava/util/Map;Ljava/security/cert/CertificateFactory;)[Ljava/security/cert/X509Certificate;
    .registers 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;",
            "Ljava/security/cert/CertificateFactory;",
            ")[",
            "Ljava/security/cert/X509Certificate;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v36

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v34

    invoke-static/range {p0 .. p0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v27

    const/16 v33, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    :cond_15
    :goto_15
    invoke-virtual/range {v34 .. v34}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_85

    add-int/lit8 v33, v33, 0x1

    :try_start_1d
    invoke-static/range {v34 .. v34}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_5b

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "Signature record too short"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_36} :catch_36
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1d .. :try_end_36} :catch_36

    :catch_36
    move-exception v17

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to parse signature record #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_5b
    :try_start_5b
    invoke-virtual/range {v31 .. v31}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {v29 .. v29}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->isSupportedSignatureAlgorithm(I)Z

    move-result v37

    if-eqz v37, :cond_15

    const/16 v37, -0x1

    move/from16 v0, v37

    if-eq v3, v0, :cond_7e

    move/from16 v0, v29

    invoke-static {v0, v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->compareSignatureAlgorithm(II)I

    move-result v37

    if-lez v37, :cond_15

    :cond_7e
    move/from16 v3, v29

    invoke-static/range {v31 .. v31}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_83} :catch_36
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5b .. :try_end_83} :catch_36

    move-result-object v4

    goto :goto_15

    :cond_85
    const/16 v37, -0x1

    move/from16 v0, v37

    if-ne v3, v0, :cond_9f

    if-nez v33, :cond_96

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No signatures found"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_96
    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No supported signatures found"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_9f
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v23

    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmJcaSignatureAlgorithm(I)Landroid/util/Pair;

    move-result-object v32

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/security/spec/AlgorithmParameterSpec;

    :try_start_b7
    invoke-static/range {v23 .. v23}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v37

    new-instance v38, Ljava/security/spec/X509EncodedKeySpec;

    move-object/from16 v0, v38

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual/range {v37 .. v38}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v26

    invoke-static/range {v21 .. v21}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    if-eqz v22, :cond_dc

    move-object/from16 v0, v28

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/Signature;->setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    :cond_dc
    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update(Ljava/nio/ByteBuffer;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_e8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b7 .. :try_end_e8} :catch_109
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b7 .. :try_end_e8} :catch_109
    .catch Ljava/security/InvalidKeyException; {:try_start_b7 .. :try_end_e8} :catch_109
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_b7 .. :try_end_e8} :catch_109
    .catch Ljava/security/SignatureException; {:try_start_b7 .. :try_end_e8} :catch_109

    move-result v30

    if-nez v30, :cond_135

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " signature did not verify"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :catch_109
    move-exception v18

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to verify "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " signature"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_135
    const/4 v11, 0x0

    invoke-virtual/range {v36 .. v36}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static/range {v36 .. v36}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v15

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :cond_143
    :goto_143
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_19f

    add-int/lit8 v14, v14, 0x1

    :try_start_14b
    invoke-static {v15}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v37

    const/16 v38, 0x8

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_187

    new-instance v37, Ljava/io/IOException;

    const-string/jumbo v38, "Record too short"

    invoke-direct/range {v37 .. v38}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v37
    :try_end_164
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_164} :catch_164
    .catch Ljava/nio/BufferUnderflowException; {:try_start_14b .. :try_end_164} :catch_164

    :catch_164
    move-exception v17

    new-instance v37, Ljava/io/IOException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to parse digest record #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_187
    :try_start_187
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v0, v29

    if-ne v0, v3, :cond_143

    invoke-static {v12}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_187 .. :try_end_19d} :catch_164
    .catch Ljava/nio/BufferUnderflowException; {:try_start_187 .. :try_end_19d} :catch_164

    move-result-object v11

    goto :goto_143

    :cond_19f
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_1b2

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "Signature algorithms don\'t match between digests and signatures records"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_1b2
    invoke-static {v3}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getSignatureAlgorithmContentDigestAlgorithm(I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [B

    if-eqz v25, :cond_1ee

    move-object/from16 v0, v25

    invoke-static {v0, v11}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v37

    xor-int/lit8 v37, v37, 0x1

    if-eqz v37, :cond_1ee

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getContentDigestAlgorithmJcaDigestAlgorithm(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " contents digest does not match the digest specified by a preceding signer"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_1ee
    invoke-static/range {v36 .. v36}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->getLengthPrefixedSlice(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_1f8
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v37

    if-eqz v37, :cond_245

    add-int/lit8 v7, v7, 0x1

    invoke-static {v9}, Landroid/util/apk/ApkSignatureSchemeV2Verifier;->readLengthPrefixedByteArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v20

    :try_start_204
    new-instance v37, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v37

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_217
    .catch Ljava/security/cert/CertificateException; {:try_start_204 .. :try_end_217} :catch_222

    new-instance v6, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;

    move-object/from16 v0, v20

    invoke-direct {v6, v5, v0}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$VerbatimX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f8

    :catch_222
    move-exception v19

    new-instance v37, Ljava/lang/SecurityException;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Failed to decode certificate #"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v37

    :cond_245
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v37

    if-eqz v37, :cond_254

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "No certificates listed"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_254
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509Certificate;

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    move-object/from16 v0, v27

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v37

    if-nez v37, :cond_277

    new-instance v37, Ljava/lang/SecurityException;

    const-string/jumbo v38, "Public key mismatch between certificate and signature record"

    invoke-direct/range {v37 .. v38}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v37

    :cond_277
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v37

    move/from16 v0, v37

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v37

    check-cast v37, [Ljava/security/cert/X509Certificate;

    return-object v37
.end method
