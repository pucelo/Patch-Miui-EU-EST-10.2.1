.class public abstract Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "AndroidKeyStoreKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$AES;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacBase;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA1;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi$HmacSHA512;
    }
.end annotation


# instance fields
.field private final mDefaultKeySizeBits:I

.field protected mKeySizeBits:I

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterAlgorithm:I

.field private mKeymasterBlockModes:[I

.field private final mKeymasterDigest:I

.field private mKeymasterDigests:[I

.field private mKeymasterPaddings:[I

.field private mKeymasterPurposes:[I

.field private mRng:Ljava/security/SecureRandom;

.field private mSpec:Landroid/security/keystore/KeyGenParameterSpec;


# direct methods
.method protected constructor <init>(II)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;-><init>(III)V

    return-void
.end method

.method protected constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    iput p3, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    if-gtz v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Default key size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_30

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Digest algorithm must be specified for HMAC key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    return-void
.end method

.method private resetAll()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    return-void
.end method


# virtual methods
.method protected engineGenerateKey()Ljavax/crypto/SecretKey;
    .registers 19

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v14, :cond_f

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "Not initialized"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_f
    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    int-to-long v0, v4

    move-wide/from16 v16, v0

    const v4, 0x30000003

    move-wide/from16 v0, v16

    invoke-virtual {v3, v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const v6, 0x10000002

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    const v6, 0x20000001

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    const v6, 0x20000004

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    const v6, 0x20000006

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    const v6, 0x20000005

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v4

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    move-result v6

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    move-result v7

    const-wide/16 v8, 0x0

    invoke-static/range {v3 .. v9}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    invoke-static {v3, v4, v6, v8}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v4

    const v6, 0x60000190

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v4

    const v6, 0x60000191

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v4

    const v6, 0x60000192

    invoke-virtual {v3, v6, v4}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_ad

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_ad

    const v4, 0x70000007

    invoke-virtual {v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_ad
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    add-int/lit8 v6, v6, 0x7

    div-int/lit8 v6, v6, 0x8

    invoke-static {v4, v6}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v7

    const/4 v9, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "USRSKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v10}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    const/4 v15, 0x0

    :try_start_dc
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v8

    invoke-static {v4, v6, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v8

    move-object v6, v3

    invoke-virtual/range {v4 .. v10}, Landroid/security/KeyStore;->generateKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v11

    const/4 v4, 0x1

    if-eq v11, v4, :cond_11d

    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v6, "Keystore operation failed"

    invoke-static {v11}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v8

    invoke-direct {v4, v6, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_108
    .catchall {:try_start_dc .. :try_end_108} :catchall_108

    :catchall_108
    move-exception v4

    if-nez v15, :cond_11c

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v6, v8, v0}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_11c
    throw v4

    :cond_11d
    :try_start_11d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    invoke-static {v4, v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->fromKeymasterSecretKeyAlgorithm(II)Ljava/lang/String;
    :try_end_128
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11d .. :try_end_128} :catch_145
    .catchall {:try_start_11d .. :try_end_128} :catchall_108

    move-result-object v12

    :try_start_129
    new-instance v13, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v4

    invoke-direct {v13, v5, v4, v12}, Landroid/security/keystore/AndroidKeyStoreSecretKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_132
    .catchall {:try_start_129 .. :try_end_132} :catchall_108

    const/4 v15, 0x1

    if-nez v15, :cond_144

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14}, Landroid/security/keystore/KeyGenParameterSpec;->getUid()I

    move-result v8

    invoke-static {v4, v6, v8}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_144
    return-object v13

    :catch_145
    move-exception v2

    :try_start_146
    new-instance v4, Ljava/security/ProviderException;

    const-string/jumbo v6, "Failed to obtain JCA secret key algorithm name"

    invoke-direct {v4, v6, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_14f
    .catchall {:try_start_146 .. :try_end_14f} :catchall_108
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/SecureRandom;)V
    .registers 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot initialize without a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    const/4 v13, 0x0

    if-eqz p1, :cond_e

    :try_start_8
    instance-of v4, p1, Landroid/security/keystore/KeyGenParameterSpec;

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3c

    :cond_e
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot initialize without a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " parameter"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_35

    :catchall_35
    move-exception v3

    if-nez v13, :cond_3b

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    :cond_3b
    throw v3

    :cond_3c
    :try_start_3c
    move-object v0, p1

    check-cast v0, Landroid/security/keystore/KeyGenParameterSpec;

    move-object v12, v0

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getKeystoreAlias()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4f

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "KeyStore entry alias not provided"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4f
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mRng:Ljava/security/SecureRandom;

    iput-object v12, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mSpec:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_82

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getKeySize()I

    move-result v4

    :goto_60
    iput v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    if-gtz v4, :cond_85

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Key size must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_82
    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mDefaultKeySizeBits:I

    goto :goto_60

    :cond_85
    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    rem-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_a7

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Key size must be a multiple of 8: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_a7
    .catchall {:try_start_3c .. :try_end_a7} :catchall_35

    :cond_a7
    :try_start_a7
    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPurposes:[I

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterPaddings:[I

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_d2

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "Signature paddings not supported for symmetric key algorithms"

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_cb
    .catch Ljava/lang/IllegalStateException; {:try_start_a7 .. :try_end_cb} :catch_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a7 .. :try_end_cb} :catch_cb
    .catchall {:try_start_a7 .. :try_end_cb} :catchall_35

    :catch_cb
    move-exception v2

    :try_start_cc
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v3, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_d2
    .catchall {:try_start_cc .. :try_end_d2} :catchall_35

    :cond_d2
    :try_start_d2
    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getBlockModes()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getPurposes()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_130

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->isRandomizedEncryptionRequired()Z

    move-result v4

    if-eqz v4, :cond_130

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterBlockModes:[I

    array-length v5, v4

    :goto_ed
    if-ge v3, v5, :cond_130

    aget v10, v4, v3

    invoke-static {v10}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v6

    if-nez v6, :cond_12d

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v10}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

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

    :cond_12d
    add-int/lit8 v3, v3, 0x1

    goto :goto_ed

    :cond_130
    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterAlgorithm:I

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1a1

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeySizeBits:I

    const/16 v4, 0x40

    if-ge v3, v4, :cond_145

    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v4, "HMAC key size must be at least 64 bits."

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_145
    const/4 v3, 0x1

    new-array v3, v3, [I

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    const/4 v5, 0x0

    aput v4, v3, v5

    iput-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v3

    if-eqz v3, :cond_1b1

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v11

    array-length v3, v11

    if-ne v3, v7, :cond_167

    const/4 v3, 0x0

    aget v3, v11, v3

    iget v4, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    if-eq v3, v4, :cond_1b1

    :cond_167
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported digests specification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ". Only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigest:I

    invoke-static {v5}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " supported for this HMAC key algorithm"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1a1
    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v3

    if-eqz v3, :cond_1d2

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    iput-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I

    :cond_1b1
    :goto_1b1
    new-instance v3, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v3}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationRequired()Z

    move-result v4

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->getUserAuthenticationValidityDurationSeconds()I

    move-result v5

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->isUserAuthenticationValidWhileOnBody()Z

    move-result v6

    invoke-virtual {v12}, Landroid/security/keystore/KeyGenParameterSpec;->isInvalidatedByBiometricEnrollment()Z

    move-result v7

    const-wide/16 v8, 0x0

    invoke-static/range {v3 .. v9}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    :try_end_1cb
    .catch Ljava/lang/IllegalStateException; {:try_start_d2 .. :try_end_1cb} :catch_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d2 .. :try_end_1cb} :catch_cb
    .catchall {:try_start_d2 .. :try_end_1cb} :catchall_35

    const/4 v13, 0x1

    if-nez v13, :cond_1d1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->resetAll()V

    :cond_1d1
    return-void

    :cond_1d2
    :try_start_1d2
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/security/keystore/AndroidKeyStoreKeyGeneratorSpi;->mKeymasterDigests:[I
    :try_end_1d6
    .catch Ljava/lang/IllegalStateException; {:try_start_1d2 .. :try_end_1d6} :catch_cb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d2 .. :try_end_1d6} :catch_cb
    .catchall {:try_start_1d2 .. :try_end_1d6} :catchall_35

    goto :goto_1b1
.end method
