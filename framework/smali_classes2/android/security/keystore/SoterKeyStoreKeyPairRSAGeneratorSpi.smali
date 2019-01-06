.class public Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;
.source "SoterKeyStoreKeyPairRSAGeneratorSpi.java"


# static fields
.field public static final KM_TAG_SOTER_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY:I = 0x70002afc

.field public static final KM_TAG_SOTER_AUTO_SIGNED_COMMON_KEY_WHEN_GET_PUBLIC_KEY:I = -0x6fffd505

.field public static final KM_TAG_SOTER_AUTO_SIGNED_COMMON_KEY_WHEN_GET_PUBLIC_KEY_BLOB:I = -0x6fffd500

.field public static final KM_TAG_SOTER_IS_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY:I = 0x70002af9

.field public static final KM_TAG_SOTER_IS_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY:I = 0x70002afa

.field public static final KM_TAG_SOTER_IS_FROM_SOTER:I = 0x70002af8

.field public static final KM_TAG_SOTER_IS_SECMSG_FID_COUNTER_SIGNED_WHEN_SIGN:I = 0x70002afd

.field public static final KM_TAG_SOTER_UID:I = 0x30002aff

.field public static final KM_TAG_SOTER_USE_NEXT_ATTK:I = 0x70002afe

.field private static final RSA_DEFAULT_KEY_SIZE:I = 0x800

.field private static final RSA_MAX_KEY_SIZE:I = 0x2000

.field private static final RSA_MIN_KEY_SIZE:I = 0x200

.field public static final UINT32_MAX_VALUE:J = 0xffffffffL

.field private static final UINT32_RANGE:J = 0x100000000L

.field public static final UINT64_MAX_VALUE:Ljava/math/BigInteger;

.field private static final UINT64_RANGE:Ljava/math/BigInteger;

.field private static volatile sRng:Ljava/security/SecureRandom;


# instance fields
.field private isAutoAddCounterWhenGetPublicKey:Z

.field private isAutoSignedWithAttkWhenGetPublicKey:Z

.field private isAutoSignedWithCommonkWhenGetPublicKey:Z

.field private isForSoter:Z

.field private isNeedNextAttk:Z

.field private isSecmsgFidCounterSignedWhenSign:Z

.field private mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

.field private mEncryptionAtRestRequired:Z

.field private mEntryAlias:Ljava/lang/String;

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private mJcaKeyAlgorithm:Ljava/lang/String;

.field private mKeySizeBits:I

.field private mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private mKeymasterDigests:[I

.field private mKeymasterEncryptionPaddings:[I

.field private mKeymasterPurposes:[I

.field private mKeymasterSignaturePaddings:[I

.field private final mOriginalKeymasterAlgorithm:I

.field private mRSAPublicExponent:Ljava/math/BigInteger;

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    iput-boolean v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    const/4 v0, 0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    return-void
.end method

.method private addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 5

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    const v1, 0x500000c8

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    :cond_c
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    if-eqz v0, :cond_21

    const v0, 0x70002af8

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    int-to-long v0, v0

    const v2, 0x30002aff

    invoke-virtual {p1, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    :cond_21
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    if-eqz v0, :cond_2b

    const v0, 0x70002af9

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_2b
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    if-eqz v0, :cond_5d

    const v0, 0x70002afa

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v1, -0x6fffd505

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_5d
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    if-eqz v0, :cond_67

    const v0, 0x70002afc

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_67
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    if-eqz v0, :cond_71

    const v0, 0x70002afd

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_71
    iget-boolean v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    if-eqz v0, :cond_7b

    const v0, 0x70002afe

    invoke-virtual {p1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_7b
    return-void
.end method

.method private static checkValidKeySize(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/16 v0, 0x200

    if-lt p1, v0, :cond_8

    const/16 v0, 0x2000

    if-le p1, v0, :cond_11

    :cond_8
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "RSA key size must be >= 512 and <= 8192"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    return-void
.end method

.method private generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "generateSelfSignedCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    iget v3, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v2, v3, v4}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "generateSelfSignedCertificateWithFakeSignature1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2

    :cond_23
    :try_start_23
    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "generateSelfSignedCertificateWithValidSignature"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, v1}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2f} :catch_31

    move-result-object v2

    return-object v2

    :catch_31
    move-exception v0

    const-string/jumbo v2, "Soter"

    const-string/jumbo v3, "generateSelfSignedCertificateWithFakeSignature2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;

    move-result-object v2

    return-object v2
.end method

.method private generateSelfSignedCertificateWithFakeSignature(Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v8, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;-><init>()V

    iget v10, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    packed-switch v10, :pswitch_data_108

    :pswitch_a
    new-instance v10, Ljava/security/ProviderException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unsupported key algorithm: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v10

    :pswitch_26
    sget-object v4, Lcom/android/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->ecdsa_with_SHA256:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-direct {v3, v4}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v9, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERInteger;

    const-wide/16 v12, 0x0

    invoke-direct {v10, v12, v13}, Lcom/android/org/bouncycastle/asn1/DERInteger;-><init>(J)V

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>()V

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v5

    :goto_4f
    const/4 v11, 0x0

    const/4 v0, 0x0

    :try_start_51
    new-instance v1, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    invoke-interface/range {p1 .. p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_5a} :catch_7c
    .catchall {:try_start_51 .. :try_end_5a} :catchall_fe

    :try_start_5a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v10

    invoke-static {v10}, Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubjectPublicKeyInfo(Lcom/android/org/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_65} :catch_103
    .catchall {:try_start_5a .. :try_end_65} :catchall_100

    if-eqz v1, :cond_6a

    :try_start_67
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6a} :catch_7a

    :cond_6a
    :goto_6a
    if-eqz v11, :cond_96

    throw v11

    :pswitch_6d
    sget-object v4, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->sha256WithRSAEncryption:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v3, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v10, Lcom/android/org/bouncycastle/asn1/DERNull;->INSTANCE:Lcom/android/org/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v4, v10}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v10, 0x1

    new-array v5, v10, [B

    goto :goto_4f

    :catch_7a
    move-exception v11

    goto :goto_6a

    :catch_7c
    move-exception v10

    :goto_7d
    :try_start_7d
    throw v10
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception v11

    move-object v14, v11

    move-object v11, v10

    move-object v10, v14

    :goto_82
    if-eqz v0, :cond_87

    :try_start_84
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->close()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_87} :catch_8a

    :cond_87
    :goto_87
    if-eqz v11, :cond_95

    throw v11

    :catch_8a
    move-exception v12

    if-nez v11, :cond_8f

    move-object v11, v12

    goto :goto_87

    :cond_8f
    if-eq v11, v12, :cond_87

    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_87

    :cond_95
    throw v10

    :cond_96
    new-instance v10, Lcom/android/org/bouncycastle/asn1/ASN1Integer;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSerialNumber(Lcom/android/org/bouncycastle/asn1/ASN1Integer;)V

    new-instance v6, Lcom/android/org/bouncycastle/jce/X509Principal;

    iget-object v10, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v10}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v10

    invoke-virtual {v10}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-direct {v6, v10}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>([B)V

    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSubject(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    invoke-virtual {v8, v6}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setIssuer(Lcom/android/org/bouncycastle/asn1/x509/X509Name;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setStartDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/x509/Time;

    iget-object v11, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v11}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/asn1/x509/Time;-><init>(Ljava/util/Date;)V

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setEndDate(Lcom/android/org/bouncycastle/asn1/x509/Time;)V

    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->setSignature(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/asn1/x509/V3TBSCertificateGenerator;->generateTBSCertificate()Lcom/android/org/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v7

    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/asn1/DERBitString;

    invoke-direct {v10, v5}, Lcom/android/org/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v10, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;

    new-instance v11, Lcom/android/org/bouncycastle/asn1/DERSequence;

    invoke-direct {v11, v2}, Lcom/android/org/bouncycastle/asn1/DERSequence;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v11}, Lcom/android/org/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/Certificate;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/org/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lcom/android/org/bouncycastle/asn1/x509/Certificate;)V

    return-object v10

    :catchall_fe
    move-exception v10

    goto :goto_82

    :catchall_100
    move-exception v10

    move-object v0, v1

    goto :goto_82

    :catch_103
    move-exception v10

    move-object v0, v1

    goto/16 :goto_7d

    nop

    :pswitch_data_108
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_a
        :pswitch_26
    .end packed-switch
.end method

.method private generateSelfSignedCertificateWithValidSignature(Ljava/security/PrivateKey;Ljava/security/PublicKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;-><init>()V

    invoke-virtual {v0, p2}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setPublicKey(Ljava/security/PublicKey;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSerialNumber(Ljava/math/BigInteger;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSubjectDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateSubject()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setIssuerDN(Ljavax/security/auth/x500/X500Principal;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotBefore(Ljava/util/Date;)V

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getCertificateNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setNotAfter(Ljava/util/Date;)V

    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->setSignatureAlgorithm(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/x509/X509V3CertificateGenerator;->generate(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    return-object v1
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .registers 3

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Failed to obtain application Context from ActivityThread"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    return-object v0
.end method

.method private static getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    array-length v7, v6

    move v5, v4

    :goto_c
    if-ge v5, v7, :cond_1a

    aget v1, v6, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_1a
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v5

    array-length v6, v5

    :goto_24
    if-ge v4, v6, :cond_32

    aget v1, v5, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    :cond_32
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    return-object v2
.end method

.method private static getCertificateSignatureAlgorithm(IILandroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;
    .registers 15

    const/4 v11, -0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v8

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_b

    return-object v10

    :cond_b
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v8

    if-eqz v8, :cond_12

    return-object v10

    :cond_12
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v8

    if-nez v8, :cond_19

    return-object v10

    :cond_19
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v8

    const/4 v9, 0x5

    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v7

    if-nez v7, :cond_29

    return-object v10

    :cond_29
    invoke-virtual {p2}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getSupportedEcdsaSignatureDigests()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getAvailableKeymasterSignatureDigests([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    add-int/lit16 v5, p1, -0xf0

    const/4 v2, -0x1

    const/4 v1, -0x1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getDigestOutputSizeBits(I)I

    move-result v6

    if-gt v6, v5, :cond_3d

    if-ne v2, v11, :cond_58

    move v2, v3

    move v1, v6

    goto :goto_3d

    :cond_58
    if-le v6, v1, :cond_3d

    move v2, v3

    move v1, v6

    goto :goto_3d

    :cond_5d
    if-ne v2, v11, :cond_60

    return-object v10

    :cond_60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymasterToSignatureAlgorithmDigest(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "WithRSA"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static getDefaultKeySize(I)I
    .registers 2

    const/16 v0, 0x800

    return v0
.end method

.method public static getDigestOutputSizeBits(I)I
    .registers 4

    packed-switch p0, :pswitch_data_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const/4 v0, -0x1

    return v0

    :pswitch_1f
    const/16 v0, 0x80

    return v0

    :pswitch_22
    const/16 v0, 0xa0

    return v0

    :pswitch_25
    const/16 v0, 0xe0

    return v0

    :pswitch_28
    const/16 v0, 0x100

    return v0

    :pswitch_2b
    const/16 v0, 0x180

    return v0

    :pswitch_2e
    const/16 v0, 0x200

    return v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
    .end packed-switch
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_28

    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_a
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    iget-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_28

    monitor-exit p0

    return-object v1

    :cond_1d
    :try_start_1d
    const-string/jumbo v1, "Soter"

    const-string/jumbo v2, "Unable to acquire GateKeeperService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_28

    monitor-exit p0

    return-object v3

    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method static getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B
    .registers 4

    if-gtz p1, :cond_5

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    return-object v1

    :cond_5
    if-nez p0, :cond_b

    invoke-static {}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getRng()Ljava/security/SecureRandom;

    move-result-object p0

    :cond_b
    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private getRealKeyBlobByKeyName(Ljava/lang/String;)[B
    .registers 5

    const-string/jumbo v0, "Soter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start retrieve key blob by key name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static getRng()Ljava/security/SecureRandom;
    .registers 1

    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    :cond_b
    sget-object v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->sRng:Ljava/security/SecureRandom;

    return-object v0
.end method

.method private static getSupportedEcdsaSignatureDigests()[Ljava/lang/String;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NONE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-1"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-224"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-256"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-384"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "SHA-512"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method private initAlgorithmSpecificParameters()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    sget-object v1, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    instance-of v4, v0, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-eqz v4, :cond_bb

    move-object v2, v0

    check-cast v2, Ljava/security/spec/RSAKeyGenParameterSpec;

    iget v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_41

    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v4

    iput v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    :cond_1a
    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_8c

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RSA public exponent must be positive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_41
    iget v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v5

    if-eq v4, v5, :cond_1a

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "RSA key size must match  between "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " vs "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_8c
    sget-object v4, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_bb

    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported RSA public exponent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ". Maximum supported value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_MAX_VALUE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_bb
    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    iget-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/SoterUtil;->convertKeyNameToParameterSpec(Ljava/lang/String;)Landroid/security/keystore/SoterRSAKeyGenParameterSpec;

    move-result-object v3

    if-eqz v3, :cond_f3

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->getAutoSignedKeyNameWhenGetPublicKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    invoke-virtual {v3}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk()Z

    move-result v4

    iput-boolean v4, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    :cond_f3
    return-void
.end method

.method public static intToByteArray(I)[B
    .registers 3

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .registers 4

    packed-switch p0, :pswitch_data_22

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const/4 v0, 0x0

    return v0

    :pswitch_1f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1f
        :pswitch_3
        :pswitch_1f
    .end packed-switch
.end method

.method private resetAll()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    iput v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRSAPublicExponent:Ljava/math/BigInteger;

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iput-object v1, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isForSoter:Z

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithAttkWhenGetPublicKey:Z

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isSecmsgFidCounterSignedWhenSign:Z

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isAutoAddCounterWhenGetPublicKey:Z

    iput-boolean v2, p0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isNeedNextAttk:Z

    return-void
.end method

.method public static toUint64(J)Ljava/math/BigInteger;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_b

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_b
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->UINT64_RANGE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 23

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v4, :cond_15

    :cond_c
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Not initialized"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    if-eqz v4, :cond_36

    const/16 v16, 0x1

    :goto_1d
    and-int/lit8 v4, v16, 0x1

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v4

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v4, v6, :cond_39

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Encryption at rest using secure lock screen credential requested for key pair, but the user has not yet entered the credential"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_36
    const/16 v16, 0x0

    goto :goto_1d

    :cond_39
    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    int-to-long v0, v4

    move-wide/from16 v20, v0

    const v4, 0x30000003

    move-wide/from16 v0, v20

    invoke-virtual {v3, v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    const v6, 0x10000002

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    const v6, 0x20000001

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    const v6, 0x20000004

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    const v6, 0x20000006

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    const v6, 0x20000006

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    const v6, 0x20000005

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v4

    if-eqz v4, :cond_16c

    :try_start_93
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_b1} :catch_162

    :goto_b1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_c9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v4

    const v6, 0x60000190

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    :cond_c9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_e1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v4

    const v6, 0x60000191

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    :cond_e1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_f9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v4

    const v6, 0x60000192

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addDate(ILjava/util/Date;)V

    :cond_f9
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->addAlgorithmSpecificParameters(Landroid/security/keymaster/KeymasterArguments;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    invoke-static {v4, v6}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x0

    :try_start_128
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    new-instance v9, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v9}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object v6, v3

    move/from16 v8, v16

    invoke-virtual/range {v4 .. v9}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v15

    const/4 v4, 0x1

    if-eq v15, v4, :cond_185

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v6, "Failed to generate key pair"

    invoke-static {v15}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-direct {v4, v6, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_153
    .catchall {:try_start_128 .. :try_end_153} :catchall_153

    :catchall_153
    move-exception v4

    if-nez v18, :cond_161

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-static {v6, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_161
    throw v4

    :catch_162
    move-exception v11

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v6, "Failed to connect with GateKeeper service"

    invoke-direct {v4, v6, v11}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_16c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v6}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v3 .. v9}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    goto/16 :goto_b1

    :cond_185
    :try_start_185
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-static {v4, v5}, Landroid/security/keystore/SoterKeyStoreProvider;->loadAndroidKeyStoreKeyPairFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;)Ljava/security/KeyPair;
    :try_end_18c
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_185 .. :try_end_18c} :catch_1d0
    .catchall {:try_start_185 .. :try_end_18c} :catchall_153

    move-result-object v17

    :try_start_18d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1da

    new-instance v4, Ljava/security/ProviderException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Generated key pair algorithm does not match requested algorithm: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v8

    invoke-interface {v8}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " vs "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_1d0
    move-exception v13

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v6, "Failed to load generated key pair from keystore"

    invoke-direct {v4, v6, v13}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_1da
    .catchall {:try_start_18d .. :try_end_1da} :catchall_153

    :cond_1da
    :try_start_1da
    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->generateSelfSignedCertificate(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Ljava/security/cert/X509Certificate;
    :try_end_1e7
    .catch Ljava/lang/Exception; {:try_start_1da .. :try_end_1e7} :catch_21a
    .catchall {:try_start_1da .. :try_end_1e7} :catchall_153

    move-result-object v2

    :try_start_1e8
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_1eb
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1e8 .. :try_end_1eb} :catch_224
    .catchall {:try_start_1e8 .. :try_end_1eb} :catchall_153

    move-result-object v10

    :try_start_1ec
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "USRCERT_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v6, v10, v8, v0}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v4

    if-nez v4, :cond_22e

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v6, "Failed to store self-signed certificate"

    invoke-direct {v4, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_21a
    move-exception v12

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v6, "Failed to generate self-signed certificate"

    invoke-direct {v4, v6, v12}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_224
    move-exception v14

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v6, "Failed to obtain encoded form of self-signed certificate"

    invoke-direct {v4, v6, v14}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_22e
    .catchall {:try_start_1ec .. :try_end_22e} :catchall_153

    :cond_22e
    const/16 v18, 0x1

    if-nez v18, :cond_23d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    invoke-static {v4, v6}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;)Z

    :cond_23d
    return-object v17
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " required to initialize this KeyPairGenerator"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    const/16 v16, 0x0

    if-nez p1, :cond_3f

    :try_start_7
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Must supply params of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception v3

    if-nez v16, :cond_3e

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    :cond_3e
    throw v3

    :cond_3f
    const/4 v11, 0x0

    :try_start_40
    move-object/from16 v0, p0

    iget v13, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mOriginalKeymasterAlgorithm:I

    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/security/keystore/KeyGenParameterSpec;

    if-eqz v3, :cond_98

    move-object/from16 v0, p1

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/SoterUtil;->getPureKeyAliasFromKeyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEntryAlias:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    move-object/from16 v0, p0

    iput v13, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterAlgorithm:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mEncryptionAtRestRequired:Z

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->initAlgorithmSpecificParameters()V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_82

    invoke-static {v13}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getDefaultKeySize(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    :cond_82
    move-object/from16 v0, p0

    iget v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeySizeBits:I

    invoke-static {v13, v3}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->checkValidKeySize(II)V

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_dc

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "KeyStore entry alias not provided"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_98
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported params class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/KeyPairGeneratorSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_dc
    .catchall {:try_start_40 .. :try_end_dc} :catchall_38

    :cond_dc
    :try_start_dc
    invoke-static {v13}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterAsymmetricKeyAlgorithm(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterBlockModes:[I

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_162

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v3

    if-eqz v3, :cond_162

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterEncryptionPaddings:[I

    const/4 v3, 0x0

    array-length v5, v4

    :goto_118
    if-ge v3, v5, :cond_162

    aget v14, v4, v3

    invoke-static {v14}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v6

    if-nez v6, :cond_15f

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Randomized encryption (IND-CPA) required but may be violated by padding scheme: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v14}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". See "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " documentation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_158
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dc .. :try_end_158} :catch_158
    .catch Ljava/lang/IllegalStateException; {:try_start_dc .. :try_end_158} :catch_158
    .catchall {:try_start_dc .. :try_end_158} :catchall_38

    :catch_158
    move-exception v2

    :try_start_159
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_15f
    .catchall {:try_start_159 .. :try_end_15f} :catchall_38

    :cond_15f
    add-int/lit8 v3, v3, 0x1

    goto :goto_118

    :cond_162
    :try_start_162
    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterSignaturePaddings:[I

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v3

    if-eqz v3, :cond_1ea

    invoke-virtual {v15}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    :goto_180
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v3}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z
    :try_end_187
    .catch Ljava/lang/IllegalArgumentException; {:try_start_162 .. :try_end_187} :catch_158
    .catch Ljava/lang/IllegalStateException; {:try_start_162 .. :try_end_187} :catch_158
    .catchall {:try_start_162 .. :try_end_187} :catchall_38

    move-result v3

    if-eqz v3, :cond_1fb

    :try_start_18a
    const-string/jumbo v3, "Soter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dual app bounding authkey with user_0: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/service/gatekeeper/IGateKeeperService;->getSecureUserId(I)J

    move-result-wide v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    :try_end_1d0
    .catch Landroid/os/RemoteException; {:try_start_18a .. :try_end_1d0} :catch_1f1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18a .. :try_end_1d0} :catch_158
    .catch Ljava/lang/IllegalStateException; {:try_start_18a .. :try_end_1d0} :catch_158
    .catchall {:try_start_18a .. :try_end_1d0} :catchall_38

    :goto_1d0
    :try_start_1d0
    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mJcaKeyAlgorithm:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;
    :try_end_1e2
    .catchall {:try_start_1d0 .. :try_end_1e2} :catchall_38

    const/16 v16, 0x1

    if-nez v16, :cond_1e9

    invoke-direct/range {p0 .. p0}, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->resetAll()V

    :cond_1e9
    return-void

    :cond_1ea
    :try_start_1ea
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mKeymasterDigests:[I

    goto :goto_180

    :catch_1f1
    move-exception v10

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "Failed to connect with GateKeeper service"

    invoke-direct {v3, v4, v10}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_1fb
    const-string/jumbo v3, "Soter"

    const-string/jumbo v4, "Not dual app, bounding authkey with root sid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v4}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/security/keystore/SoterKeyStoreKeyPairRSAGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v3 .. v9}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    :try_end_220
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1ea .. :try_end_220} :catch_158
    .catch Ljava/lang/IllegalStateException; {:try_start_1ea .. :try_end_220} :catch_158
    .catchall {:try_start_1ea .. :try_end_220} :catchall_38

    goto :goto_1d0
.end method
