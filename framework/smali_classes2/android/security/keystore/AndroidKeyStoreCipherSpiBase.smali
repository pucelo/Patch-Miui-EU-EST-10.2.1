.class abstract Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;
.super Ljavax/crypto/CipherSpi;
.source "AndroidKeyStoreCipherSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mAdditionalAuthenticationDataStreamerClosed:Z

.field private mCachedException:Ljava/lang/Exception;

.field private mEncrypting:Z

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mKeymasterPurposeOverride:I

.field private mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mRng:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v0, :cond_17

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForBegin()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4b

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    :goto_30
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v6

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v8

    if-nez v8, :cond_53

    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    :cond_4b
    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    if-eqz v0, :cond_51

    const/4 v2, 0x0

    goto :goto_30

    :cond_51
    const/4 v2, 0x1

    goto :goto_30

    :cond_53
    iget-object v0, v8, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    iget-wide v0, v8, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iget v3, v8, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0, v1, v3}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getExceptionForCipherInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/GeneralSecurityException;

    move-result-object v7

    if-eqz v7, :cond_7e

    instance-of v0, v7, Ljava/security/InvalidKeyException;

    if-eqz v0, :cond_6e

    check-cast v7, Ljava/security/InvalidKeyException;

    throw v7

    :cond_6e
    instance-of v0, v7, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v0, :cond_75

    check-cast v7, Ljava/security/InvalidAlgorithmParameterException;

    throw v7

    :cond_75
    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Unexpected exception type"

    invoke-direct {v0, v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_7e
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-nez v0, :cond_8b

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore returned null operation token"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    const-wide/16 v10, 0x0

    cmp-long v0, v0, v10

    if-nez v0, :cond_9c

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore returned invalid operation handle"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9c
    iget-object v0, v8, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, v8, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, v8, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    return-void
.end method

.method private flushAAD()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/security/KeyStoreException;
        }
    .end annotation

    const/4 v7, 0x1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_44

    :try_start_b
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_40

    move-result-object v6

    iput-boolean v7, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-eqz v6, :cond_44

    array-length v0, v6

    if-lez v0, :cond_44

    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AAD update unexpectedly returned data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_40
    move-exception v0

    iput-boolean v7, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    throw v0

    :cond_44
    return-void
.end method

.method private init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_38

    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported opmode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    :goto_20
    invoke-virtual {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initKey(ILjava/security/Key;)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v0, :cond_34

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "initKey did not initialize the key"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    goto :goto_20

    :cond_34
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_30
        :pswitch_1d
        :pswitch_30
    .end packed-switch
.end method

.method static opmodeToString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_18

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_8
    const-string/jumbo v0, "ENCRYPT_MODE"

    return-object v0

    :pswitch_c
    const-string/jumbo v0, "DECRYPT_MODE"

    return-object v0

    :pswitch_10
    const-string/jumbo v0, "WRAP_MODE"

    return-object v0

    :pswitch_14
    const-string/jumbo v0, "UNWRAP_MODE"

    return-object v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_c
        :pswitch_10
        :pswitch_14
    .end packed-switch
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected createAdditionalAuthenticationDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .registers 4

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .registers 5

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_c

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "input == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    if-nez p2, :cond_17

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "output == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7, v2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_3a
    if-eqz v3, :cond_51

    array-length v5, v3

    :goto_3d
    if-lez v5, :cond_46

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    :try_start_43
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_46
    .catch Ljava/nio/BufferOverflowException; {:try_start_43 .. :try_end_46} :catch_53

    :cond_46
    return v5

    :cond_47
    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, v7, v2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v3

    goto :goto_3a

    :cond_51
    const/4 v5, 0x0

    goto :goto_3d

    :catch_53
    move-exception v0

    new-instance v6, Ljavax/crypto/ShortBufferException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Output buffer too small. Produced: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected final engineDoFinal([BII[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B

    move-result-object v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    array-length v2, p4

    sub-int v0, v2, p5

    array-length v2, v1

    if-le v2, v0, :cond_34

    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_34
    array-length v2, v1

    invoke-static {v1, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, v1

    return v2
.end method

.method protected final engineDoFinal([BII)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_12

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    :cond_12
    :try_start_12
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_15
    .catch Ljava/security/InvalidKeyException; {:try_start_12 .. :try_end_15} :catch_30
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_12 .. :try_end_15} :catch_30

    :try_start_15
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->getAdditionalEntropyAmountForFinish()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_2b
    .catch Landroid/security/KeyStoreException; {:try_start_15 .. :try_end_2b} :catch_3d

    move-result-object v8

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetWhilePreservingInitState()V

    return-object v8

    :catch_30
    move-exception v7

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v0, v7}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    :catch_3d
    move-exception v6

    invoke-virtual {v6}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_76

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    :sswitch_51
    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v0}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/IllegalBlockSizeException;

    throw v0

    :sswitch_5d
    new-instance v0, Ljavax/crypto/BadPaddingException;

    invoke-direct {v0}, Ljavax/crypto/BadPaddingException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/BadPaddingException;

    throw v0

    :sswitch_69
    new-instance v0, Ljavax/crypto/AEADBadTagException;

    invoke-direct {v0}, Ljavax/crypto/AEADBadTagException;-><init>()V

    invoke-virtual {v0, v6}, Ljavax/crypto/AEADBadTagException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/crypto/AEADBadTagException;

    throw v0

    nop

    :sswitch_data_76
    .sparse-switch
        -0x26 -> :sswitch_5d
        -0x1e -> :sswitch_69
        -0x15 -> :sswitch_51
    .end sparse-switch
.end method

.method protected final engineGetKeySize(Ljava/security/Key;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected abstract engineGetParameters()Ljava/security/AlgorithmParameters;
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_14

    const/4 v0, 0x1

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_1a
    throw v1
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters()V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1b

    :try_start_a
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_d
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_a .. :try_end_d} :catch_14
    .catchall {:try_start_a .. :try_end_d} :catchall_1b

    const/4 v1, 0x1

    if-nez v1, :cond_13

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_13
    return-void

    :catch_14
    move-exception v0

    :try_start_15
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception v2

    if-nez v1, :cond_21

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_21
    throw v2
.end method

.method protected final engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2, p4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-virtual {p0, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_14

    const/4 v0, 0x1

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_13
    return-void

    :catchall_14
    move-exception v1

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->resetAll()V

    :cond_1a
    throw v1
.end method

.method protected final engineSetMode(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final engineSetPadding(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected final engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v4, :cond_d

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Not initilized"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_d
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1c
    if-nez p1, :cond_27

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "wrappedKey == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_27
    :try_start_27
    array-length v4, p1

    const/4 v5, 0x0

    invoke-virtual {p0, p1, v5, v4}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B
    :try_end_2c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_27 .. :try_end_2c} :catch_4a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_27 .. :try_end_2c} :catch_4a

    move-result-object v2

    packed-switch p3, :pswitch_data_8a

    new-instance v4, Ljava/security/InvalidParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unsupported wrappedKeyType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_4a
    move-exception v0

    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Failed to unwrap key"

    invoke-direct {v4, v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :pswitch_54
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v4, v2, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4

    :pswitch_5a
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    :try_start_5e
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_66
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_5e .. :try_end_66} :catch_68

    move-result-object v4

    return-object v4

    :catch_68
    move-exception v1

    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Failed to create private key from its PKCS#8 encoded form"

    invoke-direct {v4, v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :pswitch_72
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    :try_start_76
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_7e
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_76 .. :try_end_7e} :catch_80

    move-result-object v4

    return-object v4

    :catch_80
    move-exception v1

    new-instance v4, Ljava/security/InvalidKeyException;

    const-string/jumbo v5, "Failed to create public key from its X.509 encoded form"

    invoke-direct {v4, v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_72
        :pswitch_5a
        :pswitch_54
    .end packed-switch
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v7, 0x0

    if-nez p1, :cond_c

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "input == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    if-nez p2, :cond_17

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "output == null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_17
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0, v6, v7, v2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_3a
    if-eqz v3, :cond_51

    array-length v5, v3

    :goto_3d
    if-lez v5, :cond_46

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    :try_start_43
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_46
    .catch Ljava/nio/BufferOverflowException; {:try_start_43 .. :try_end_46} :catch_53

    :cond_46
    return v5

    :cond_47
    new-array v1, v2, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1, v7, v2}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v3

    goto :goto_3a

    :cond_51
    const/4 v5, 0x0

    goto :goto_3d

    :catch_53
    move-exception v0

    new-instance v6, Ljavax/crypto/ShortBufferException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Output buffer too small. Produced: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", available: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected final engineUpdate([BII[BI)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdate([BII)[B

    move-result-object v1

    if-nez v1, :cond_8

    return v3

    :cond_8
    array-length v2, p4

    sub-int v0, v2, p5

    array-length v2, v1

    if-le v2, v0, :cond_34

    new-instance v2, Ljavax/crypto/ShortBufferException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Output buffer too short. Produced: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_34
    array-length v2, v1

    invoke-static {v1, v3, p4, p5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v2, v1

    return v2
.end method

.method protected final engineUpdate([BII)[B
    .registers 9

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v3, :cond_6

    return-object v4

    :cond_6
    :try_start_6
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_9
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_9} :catch_c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_9} :catch_c

    if-nez p3, :cond_10

    return-object v4

    :catch_c
    move-exception v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-object v4

    :cond_10
    :try_start_10
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->flushAAD()V

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_18
    .catch Landroid/security/KeyStoreException; {:try_start_10 .. :try_end_18} :catch_1d

    move-result-object v2

    array-length v3, v2

    if-nez v3, :cond_21

    return-object v4

    :catch_1d
    move-exception v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-object v4

    :cond_21
    return-object v2
.end method

.method protected final engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 7

    if-nez p1, :cond_b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "src == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_12

    return-void

    :cond_12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int v2, v3, v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_31
    invoke-virtual {p0, v0, v2, v1}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineUpdateAAD([BII)V

    return-void

    :cond_35
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v0, v3, [B

    const/4 v2, 0x0

    array-length v1, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_31
.end method

.method protected final engineUpdateAAD([BII)V
    .registers 10

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v3, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_8
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_8} :catch_15
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5 .. :try_end_8} :catch_15

    iget-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    if-eqz v3, :cond_19

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "AAD can only be provided before Cipher.update is invoked"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_15
    move-exception v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void

    :cond_19
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-nez v3, :cond_26

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "This cipher does not support AAD"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_26
    :try_start_26
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_2b
    .catch Landroid/security/KeyStoreException; {:try_start_26 .. :try_end_2b} :catch_53

    move-result-object v2

    if-eqz v2, :cond_57

    array-length v3, v2

    if-lez v3, :cond_57

    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AAD update unexpectedly produced output: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_53
    move-exception v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void

    :cond_57
    return-void
.end method

.method protected final engineWrap(Ljava/security/Key;)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v8, :cond_d

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Not initilized"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_d
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->isEncrypting()Z

    move-result v8

    if-nez v8, :cond_1c

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Cipher must be initialized in Cipher.WRAP_MODE to wrap keys"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1c
    if-nez p1, :cond_27

    new-instance v8, Ljava/lang/NullPointerException;

    const-string/jumbo v9, "key == null"

    invoke-direct {v8, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_27
    const/4 v2, 0x0

    instance-of v8, p1, Ljavax/crypto/SecretKey;

    if-eqz v8, :cond_6a

    const-string/jumbo v8, "RAW"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3d

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    :cond_3d
    if-nez v2, :cond_55

    :try_start_3f
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    check-cast p1, Ljavax/crypto/SecretKey;

    const-class v8, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4, p1, v8}, Ljavax/crypto/SecretKeyFactory;->getKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v7

    check-cast v7, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v7}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B
    :try_end_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3f .. :try_end_54} :catch_60
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3f .. :try_end_54} :catch_60

    move-result-object v2

    :cond_55
    :goto_55
    if-nez v2, :cond_f8

    new-instance v8, Ljava/security/InvalidKeyException;

    const-string/jumbo v9, "Failed to wrap key because it does not export its key material"

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8

    :catch_60
    move-exception v0

    new-instance v8, Ljava/security/InvalidKeyException;

    const-string/jumbo v9, "Failed to wrap key because it does not export its key material"

    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_6a
    instance-of v8, p1, Ljava/security/PrivateKey;

    if-eqz v8, :cond_a0

    const-string/jumbo v8, "PKCS8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    :cond_7f
    if-nez v2, :cond_55

    :try_start_81
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    const-class v8, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v3, p1, v8}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-virtual {v5}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B
    :try_end_94
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_81 .. :try_end_94} :catch_96
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_81 .. :try_end_94} :catch_96

    move-result-object v2

    goto :goto_55

    :catch_96
    move-exception v0

    new-instance v8, Ljava/security/InvalidKeyException;

    const-string/jumbo v9, "Failed to wrap key because it does not export its key material"

    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_a0
    instance-of v8, p1, Ljava/security/PublicKey;

    if-eqz v8, :cond_d6

    const-string/jumbo v8, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b5

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v2

    :cond_b5
    if-nez v2, :cond_55

    :try_start_b7
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    const-class v8, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v3, p1, v8}, Ljava/security/KeyFactory;->getKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;

    move-result-object v6

    check-cast v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v6}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B
    :try_end_ca
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b7 .. :try_end_ca} :catch_cc
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_b7 .. :try_end_ca} :catch_cc

    move-result-object v2

    goto :goto_55

    :catch_cc
    move-exception v0

    new-instance v8, Ljava/security/InvalidKeyException;

    const-string/jumbo v9, "Failed to wrap key because it does not export its key material"

    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_d6
    new-instance v8, Ljava/security/InvalidKeyException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unsupported key type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_f8
    :try_start_f8
    array-length v8, v2

    const/4 v9, 0x0

    invoke-virtual {p0, v2, v9, v8}, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->engineDoFinal([BII)[B
    :try_end_fd
    .catch Ljavax/crypto/BadPaddingException; {:try_start_f8 .. :try_end_fd} :catch_ff

    move-result-object v8

    return-object v8

    :catch_ff
    move-exception v1

    new-instance v8, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v8}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    invoke-virtual {v8, v1}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v8

    check-cast v8, Ljavax/crypto/IllegalBlockSizeException;

    throw v8
.end method

.method public finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    :cond_9
    invoke-super {p0}, Ljavax/crypto/CipherSpi;->finalize()V

    return-void

    :catchall_d
    move-exception v1

    invoke-super {p0}, Ljavax/crypto/CipherSpi;->finalize()V

    throw v1
.end method

.method protected abstract getAdditionalEntropyAmountForBegin()I
.end method

.method protected abstract getAdditionalEntropyAmountForFinish()I
.end method

.method protected final getConsumedInputSizeBytes()J
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getConsumedInputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getKeyStore()Landroid/security/KeyStore;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method protected final getKeymasterPurposeOverride()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return v0
.end method

.method public final getOperationHandle()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    return-wide v0
.end method

.method protected final getProducedOutputSizeBytes()J
    .registers 3

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v0}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->getProducedOutputSizeBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract initAlgorithmSpecificParameters()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/AlgorithmParameters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initAlgorithmSpecificParameters(Ljava/security/spec/AlgorithmParameterSpec;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected abstract initKey(ILjava/security/Key;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method protected final isEncrypting()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    return v0
.end method

.method protected abstract loadAlgorithmSpecificParametersFromBeginResult(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected resetAll()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_b

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_b
    iput-boolean v5, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mEncrypting:Z

    const/4 v1, -0x1

    iput v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mRng:Ljava/security/SecureRandom;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    iput-boolean v5, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_a
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mMainDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mAdditionalAuthenticationDataStreamerClosed:Z

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method protected final setKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .registers 2

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    return-void
.end method

.method protected final setKeymasterPurposeOverride(I)V
    .registers 2

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreCipherSpiBase;->mKeymasterPurposeOverride:I

    return-void
.end method
