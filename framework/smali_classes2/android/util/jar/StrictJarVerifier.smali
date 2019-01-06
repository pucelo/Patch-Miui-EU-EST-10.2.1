.class Landroid/util/jar/StrictJarVerifier;
.super Ljava/lang/Object;
.source "StrictJarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    }
.end annotation


# static fields
.field private static final DIGEST_ALGORITHMS:[Ljava/lang/String;


# instance fields
.field private final certificates:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final jarName:Ljava/lang/String;

.field private final mainAttributesEnd:I

.field private final manifest:Landroid/util/jar/StrictJarManifest;

.field private final metaEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private final signatureSchemeRollbackProtectionsEnforced:Z

.field private final signatures:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/jar/Attributes;",
            ">;>;"
        }
    .end annotation
.end field

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0([B[B)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/util/jar/StrictJarVerifier;->verifyMessageDigest([B[B)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 4

    invoke-static {p0, p1, p2}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "SHA-512"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-384"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-256"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/util/jar/StrictJarManifest;Ljava/util/HashMap;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/jar/StrictJarManifest;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;Z)V"
        }
    .end annotation

    const/4 v1, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {p2}, Landroid/util/jar/StrictJarManifest;->getMainAttributesEnd()I

    move-result v0

    iput v0, p0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    iput-boolean p4, p0, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    return-void
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 5

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;
    .registers 6

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " failed verification of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;
    .registers 6

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has invalid digest for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z
    .registers 17

    const/4 v5, 0x0

    :goto_1
    sget-object v7, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v7, v7

    if-ge v5, v7, :cond_57

    sget-object v7, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v0, v7, v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_24

    :goto_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_24
    :try_start_24
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_24 .. :try_end_27} :catch_4f

    move-result-object v6

    if-eqz p6, :cond_51

    add-int/lit8 v7, p5, -0x1

    aget-byte v7, p3, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_51

    add-int/lit8 v7, p5, -0x2

    aget-byte v7, p3, v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_51

    add-int/lit8 v7, p5, -0x1

    sub-int/2addr v7, p4

    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    :goto_40
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/jar/StrictJarVerifier;->verifyMessageDigest([B[B)Z

    move-result v7

    return v7

    :catch_4f
    move-exception v2

    goto :goto_21

    :cond_51
    sub-int v7, p5, p4

    invoke-virtual {v6, p3, p4, v7}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_40

    :cond_57
    return p7
.end method

.method static verifyBytes([B[B)[Ljava/security/cert/Certificate;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lsun/security/jca/Providers;->startJarVerification()Ljava/lang/Object;

    move-result-object v2

    new-instance v0, Lsun/security/pkcs/PKCS7;

    invoke-direct {v0, p0}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    invoke-virtual {v0, p1}, Lsun/security/pkcs/PKCS7;->verify([B)[Lsun/security/pkcs/SignerInfo;

    move-result-object v5

    if-eqz v5, :cond_13

    array-length v6, v5

    if-nez v6, :cond_2b

    :cond_13
    new-instance v6, Ljava/security/GeneralSecurityException;

    const-string/jumbo v7, "Failed to verify signature: no verified SignerInfos"

    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1c} :catch_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_26

    :catch_1c
    move-exception v1

    :try_start_1d
    new-instance v6, Ljava/security/GeneralSecurityException;

    const-string/jumbo v7, "IO exception verifying jar cert"

    invoke-direct {v6, v7, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_26

    :catchall_26
    move-exception v6

    invoke-static {v2}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    throw v6

    :cond_2b
    const/4 v6, 0x0

    :try_start_2c
    aget-object v4, v5, v6

    invoke-virtual {v4, v0}, Lsun/security/pkcs/SignerInfo;->getCertificateChain(Lsun/security/pkcs/PKCS7;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_3d

    new-instance v6, Ljava/security/GeneralSecurityException;

    const-string/jumbo v7, "Failed to find verified SignerInfo certificate chain"

    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3d
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4c

    new-instance v6, Ljava/security/GeneralSecurityException;

    const-string/jumbo v7, "Verified SignerInfo certificate chain is emtpy"

    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_4c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v3, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/security/cert/Certificate;
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_58} :catch_1c
    .catchall {:try_start_2c .. :try_end_58} :catchall_26

    invoke-static {v2}, Lsun/security/jca/Providers;->stopJarVerification(Ljava/lang/Object;)V

    return-object v6
.end method

.method private verifyCertificate(Ljava/lang/String;)V
    .registers 34

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ".SF"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, [B

    if-nez v27, :cond_32

    return-void

    :cond_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    const-string/jumbo v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    if-nez v5, :cond_42

    return-void

    :cond_42
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [B

    :try_start_4e
    invoke-static/range {v26 .. v27}, Landroid/util/jar/StrictJarVerifier;->verifyBytes([B[B)[Ljava/security/cert/Certificate;

    move-result-object v29

    if-eqz v29, :cond_5f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5f
    .catch Ljava/security/GeneralSecurityException; {:try_start_4e .. :try_end_5f} :catch_e8

    :cond_5f
    new-instance v3, Ljava/util/jar/Attributes;

    invoke-direct {v3}, Ljava/util/jar/Attributes;-><init>()V

    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    :try_start_69
    new-instance v24, Landroid/util/jar/StrictJarManifestReader;

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1, v3}, Landroid/util/jar/StrictJarManifestReader;-><init>([BLjava/util/jar/Attributes;)V

    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/util/jar/StrictJarManifestReader;->readEntries(Ljava/util/Map;Ljava/util/Map;)V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_7a} :catch_f6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/util/jar/StrictJarVerifier;->signatureSchemeRollbackProtectionsEnforced:Z

    if-eqz v2, :cond_fa

    const-string/jumbo v2, "X-Android-APK-Signed"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_fa

    const/16 v31, 0x0

    new-instance v30, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ","

    move-object/from16 v0, v30

    invoke-direct {v0, v14, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    :goto_95
    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-virtual/range {v30 .. v30}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_95

    :try_start_a9
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_f8

    move-result v21

    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_95

    const/16 v31, 0x1

    :cond_b4
    if-eqz v31, :cond_fa

    new-instance v2, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " indicates "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is signed using APK Signature Scheme v2, but no such signature was"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " found. Signature stripped?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_e8
    move-exception v18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-static {v2, v0, v1}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    :catch_f6
    move-exception v17

    return-void

    :catch_f8
    move-exception v23

    goto :goto_95

    :cond_fa
    sget-object v2, Ljava/util/jar/Attributes$Name;->SIGNATURE_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_103

    return-void

    :cond_103
    const/4 v12, 0x0

    const-string/jumbo v2, "Created-By"

    invoke-virtual {v3, v2}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_11a

    const-string/jumbo v2, "signtool"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_141

    const/4 v12, 0x1

    :cond_11a
    :goto_11a
    move-object/from16 v0, p0

    iget v2, v0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    if-lez v2, :cond_143

    xor-int/lit8 v2, v12, 0x1

    if-eqz v2, :cond_143

    const-string/jumbo v4, "-Digest-Manifest-Main-Attributes"

    move-object/from16 v0, p0

    iget v7, v0, Landroid/util/jar/StrictJarVerifier;->mainAttributesEnd:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_143

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Landroid/util/jar/StrictJarVerifier;->failedVerification(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    :cond_141
    const/4 v12, 0x0

    goto :goto_11a

    :cond_143
    if-eqz v12, :cond_179

    const-string/jumbo v4, "-Digest"

    :goto_148
    array-length v7, v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_1a5

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_15c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a5

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/util/jar/StrictJarManifest;->getChunk(Ljava/lang/String;)Landroid/util/jar/StrictJarManifest$Chunk;

    move-result-object v15

    if-nez v15, :cond_17d

    return-void

    :cond_179
    const-string/jumbo v4, "-Digest-Manifest"

    goto :goto_148

    :cond_17d
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/Attributes;

    const-string/jumbo v8, "-Digest"

    iget v10, v15, Landroid/util/jar/StrictJarManifest$Chunk;->start:I

    iget v11, v15, Landroid/util/jar/StrictJarManifest$Chunk;->end:I

    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-object v9, v5

    invoke-direct/range {v6 .. v13}, Landroid/util/jar/StrictJarVerifier;->verify(Ljava/util/jar/Attributes;Ljava/lang/String;[BIIZZ)Z

    move-result v2

    if-nez v2, :cond_15c

    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->jarName:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-static {v0, v2, v6}, Landroid/util/jar/StrictJarVerifier;->invalidDigest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v2

    throw v2

    :cond_1a5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static verifyMessageDigest([B[B)Z
    .registers 5

    :try_start_0
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/Base64$Decoder;->decode([B)[B
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_d

    move-result-object v0

    invoke-static {p0, v0}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v2

    return v2

    :catch_d
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method addMetaEntry(Ljava/lang/String;[B)V
    .registers 5

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method getCertificateChains(Ljava/lang/String;)[[Ljava/security/cert/Certificate;
    .registers 3

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/security/cert/Certificate;

    return-object v0
.end method

.method initEntry(Ljava/lang/String;)Landroid/util/jar/StrictJarVerifier$VerifierEntry;
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    const/4 v1, 0x0

    return-object v1

    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->manifest:Landroid/util/jar/StrictJarManifest;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/util/jar/StrictJarManifest;->getAttributes(Ljava/lang/String;)Ljava/util/jar/Attributes;

    move-result-object v8

    if-nez v8, :cond_20

    const/4 v1, 0x0

    return-object v1

    :cond_20
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->signatures:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_31
    :goto_31
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/security/cert/Certificate;

    if-eqz v9, :cond_31

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_63
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6b

    const/4 v1, 0x0

    return-object v1

    :cond_6b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [[Ljava/security/cert/Certificate;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[Ljava/security/cert/Certificate;

    const/4 v14, 0x0

    :goto_78
    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v14, v1, :cond_b4

    sget-object v1, Landroid/util/jar/StrictJarVerifier;->DIGEST_ALGORITHMS:[Ljava/lang/String;

    aget-object v7, v1, v14

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "-Digest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_9e

    :goto_9b
    add-int/lit8 v14, v14, 0x1

    goto :goto_78

    :cond_9e
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    :try_start_a4
    new-instance v1, Landroid/util/jar/StrictJarVerifier$VerifierEntry;

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/util/jar/StrictJarVerifier;->verifiedEntries:Ljava/util/Hashtable;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Landroid/util/jar/StrictJarVerifier$VerifierEntry;-><init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    :try_end_b3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a4 .. :try_end_b3} :catch_b6

    return-object v1

    :cond_b4
    const/4 v1, 0x0

    return-object v1

    :catch_b6
    move-exception v15

    goto :goto_9b
.end method

.method isSignedJar()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier;->certificates:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method declared-synchronized readCertificates()Z
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_44

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    monitor-exit p0

    return v2

    :cond_c
    :try_start_c
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, ".DSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string/jumbo v2, ".RSA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3d

    const-string/jumbo v2, ".EC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_3d
    invoke-direct {p0, v1}, Landroid/util/jar/StrictJarVerifier;->verifyCertificate(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_43
    .catchall {:try_start_c .. :try_end_43} :catchall_44

    goto :goto_16

    :catchall_44
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_47
    const/4 v2, 0x1

    monitor-exit p0

    return v2
.end method

.method removeMetaEntries()V
    .registers 2

    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier;->metaEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method
