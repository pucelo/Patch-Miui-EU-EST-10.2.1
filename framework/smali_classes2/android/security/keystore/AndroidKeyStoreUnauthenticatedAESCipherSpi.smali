.class Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreUnauthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CBC;,
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$CTR;,
        Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi$ECB;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mIvRequired:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    iput-boolean p3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    return-void
.end method


# virtual methods
.method protected final addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 4

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    if-eqz v0, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const v0, 0x10000002

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    const v1, 0x20000004

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mKeymasterPadding:I

    const v1, 0x20000006

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    const v1, -0x6ffffc17

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_3f
    return-void
.end method

.method protected final engineGetBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method protected final engineGetIV()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected final engineGetOutputSize(I)I
    .registers 3

    add-int/lit8 v0, p1, 0x30

    return v0
.end method

.method protected final engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 6

    const/4 v4, 0x0

    iget-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v3, :cond_6

    return-object v4

    :cond_6
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-eqz v3, :cond_35

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    array-length v3, v3

    if-lez v3, :cond_35

    :try_start_f
    const-string/jumbo v3, "AES"

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_f .. :try_end_20} :catch_2b
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_f .. :try_end_20} :catch_21

    return-object v2

    :catch_21
    move-exception v1

    new-instance v3, Ljava/security/ProviderException;

    const-string/jumbo v4, "Failed to initialize AES AlgorithmParameters with an IV"

    invoke-direct {v3, v4, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_2b
    move-exception v0

    new-instance v3, Ljava/security/ProviderException;

    const-string/jumbo v4, "Failed to obtain AES AlgorithmParameters"

    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_35
    return-object v4
.end method

.method protected final getAdditionalEntropyAmountForBegin()I
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 v0, 0x10

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method

.method protected final getAdditionalEntropyAmountForFinish()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected final initAlgorithmSpecificParameters()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v2, :cond_22

    if-eqz p1, :cond_21

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_21
    return-void

    :cond_22
    if-nez p1, :cond_34

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v2

    if-nez v2, :cond_33

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "IV required when decrypting. Use IvParameterSpec or AlgorithmParameters to provide it."

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_33
    return-void

    :cond_34
    const-string/jumbo v2, "AES"

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_66

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported AlgorithmParameters algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". Supported: AES"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_66
    :try_start_66
    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;
    :try_end_6e
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_66 .. :try_end_6e} :catch_81

    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v2, :cond_a5

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v3, "Null IV in AlgorithmParameters"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_81
    move-exception v0

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v2

    if-nez v2, :cond_a2

    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IV required when decrypting, but not found in parameters: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_a2
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    return-void

    :cond_a5
    return-void
.end method

.method protected final initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-nez v0, :cond_21

    if-eqz p1, :cond_20

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    return-void

    :cond_21
    if-nez p1, :cond_33

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-nez v0, :cond_32

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "IvParameterSpec must be provided when decrypting"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    return-void

    :cond_33
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_40

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "Only IvParameterSpec supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_40
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v0, :cond_55

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "Null IV in IvParameterSpec"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_55
    return-void
.end method

.method protected final initKey(ILjava/security/Key;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_2c

    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    const-string/jumbo v0, "null"

    goto :goto_1c

    :cond_2c
    const-string/jumbo v0, "AES"

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6c

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported key algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "AES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    check-cast p2, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {p0, p2}, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    return-void
.end method

.method protected final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    const v1, -0x6ffffc17

    invoke-virtual {p1, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    move-result-object v0

    if-eqz v0, :cond_11

    array-length v1, v0

    if-nez v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    iget-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvRequired:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    if-nez v1, :cond_1c

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    :cond_1b
    return-void

    :cond_1c
    if-eqz v0, :cond_1b

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v2, "IV in use differs from provided IV"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_31
    if-eqz v0, :cond_1b

    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v2, "IV in use despite IV not being used by this transformation"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected final resetAll()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIv:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreUnauthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    return-void
.end method

.method protected final resetWhilePreservingInitState()V
    .registers 1

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    return-void
.end method
