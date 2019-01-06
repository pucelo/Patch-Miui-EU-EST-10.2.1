.class abstract Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.super Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.source "AndroidKeyStoreAuthenticatedAESCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$BufferAllOutputUntilDoFinalStreamer;,
        Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$GCM;
    }
.end annotation


# static fields
.field private static final BLOCK_SIZE_BYTES:I = 0x10


# instance fields
.field private mIv:[B

.field private mIvHasBeenUsed:Z

.field private final mKeymasterBlockMode:I

.field private final mKeymasterPadding:I


# direct methods
.method constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;-><init>()V

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    return-void
.end method


# virtual methods
.method protected addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 4

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "IV has already been used. Reusing IV in encryption mode violates security best practices."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const v0, 0x10000002

    const/16 v1, 0x20

    invoke-virtual {p1, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterBlockMode:I

    const v1, 0x20000004

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mKeymasterPadding:I

    const v1, 0x20000006

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    if-eqz v0, :cond_37

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    const v1, -0x6ffffc17

    invoke-virtual {p1, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_37
    return-void
.end method

.method protected final engineGetBlockSize()I
    .registers 2

    const/16 v0, 0x10

    return v0
.end method

.method protected final engineGetIV()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method

.method protected getIv()[B
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    return-object v0
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

    invoke-virtual {p0, p2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    return-void
.end method

.method protected final loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    const v1, -0x6ffffc17

    invoke-virtual {p1, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->getBytes(I[B)[B

    move-result-object v0

    if-eqz v0, :cond_11

    array-length v1, v0

    if-nez v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    if-nez v1, :cond_18

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    :cond_17
    return-void

    :cond_18
    if-eqz v0, :cond_17

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/security/ProviderException;

    const-string/jumbo v2, "IV in use differs from provided IV"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected resetAll()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIvHasBeenUsed:Z

    invoke-super {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    return-void
.end method

.method protected setIv([B)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;->mIv:[B

    return-void
.end method
