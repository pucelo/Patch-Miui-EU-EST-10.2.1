.class public abstract Landroid/security/keystore/AndroidKeyStoreHmacSpi;
.super Ljavax/crypto/MacSpi;
.source "AndroidKeyStoreHmacSpi.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA1;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA224;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA256;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA384;,
        Landroid/security/keystore/AndroidKeyStoreHmacSpi$HmacSHA512;
    }
.end annotation


# instance fields
.field private mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mKeymasterDigest:I

.field private final mMacSizeBits:I

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;


# direct methods
.method protected constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v0

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    return-void
.end method

.method private ensureKeystoreOperationInitialized()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    const v0, 0x10000002

    const/16 v1, 0x80

    invoke-virtual {v4, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeymasterDigest:I

    const v1, 0x20000005

    invoke-virtual {v4, v1, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    int-to-long v0, v0

    const v2, 0x300003eb

    invoke-virtual {v4, v2, v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v2}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getUid()I

    move-result v6

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v8

    if-nez v8, :cond_4d

    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    :cond_4d
    iget-object v0, v8, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    iget-wide v0, v8, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iget v2, v8, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0, v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v7

    if-eqz v7, :cond_62

    throw v7

    :cond_62
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-nez v0, :cond_6f

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore returned null operation token"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6f
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_80

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore returned invalid operation handle"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    invoke-direct {v1, v2, v3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method

.method private init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    instance-of v0, p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-nez v0, :cond_29

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Only Android KeyStore secret keys supported. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    check-cast p1, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz p2, :cond_49

    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported algorithm parameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    return-void
.end method

.method private resetAll()V
    .registers 6

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKey:Landroid/security/keystore/AndroidKeyStoreSecretKey;

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_c
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method

.method private resetWhilePreservingInitState()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_a
    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    return-void
.end method


# virtual methods
.method protected engineDoFinal()[B
    .registers 10

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_12

    :try_start_3
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->doFinal([BII[B[B)[B
    :try_end_d
    .catch Landroid/security/KeyStoreException; {:try_start_3 .. :try_end_d} :catch_1c

    move-result-object v8

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-object v8

    :catch_12
    move-exception v7

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Failed to reinitialize MAC"

    invoke-direct {v0, v1, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1c
    move-exception v6

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore operation failed"

    invoke-direct {v0, v1, v6}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected engineGetMacLength()I
    .registers 2

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mMacSizeBits:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    const/4 v0, 0x0

    :try_start_4
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->init(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_11

    const/4 v0, 0x1

    if-nez v0, :cond_10

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    :cond_10
    return-void

    :catchall_11
    move-exception v1

    if-nez v0, :cond_17

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetAll()V

    :cond_17
    throw v1
.end method

.method protected engineReset()V
    .registers 1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->resetWhilePreservingInitState()V

    return-void
.end method

.method protected engineUpdate(B)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->engineUpdate([BII)V

    return-void
.end method

.method protected engineUpdate([BII)V
    .registers 9

    :try_start_0
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->ensureKeystoreOperationInitialized()V
    :try_end_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_3} :catch_17

    :try_start_3
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mChunkedStreamer:Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    invoke-virtual {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;->update([BII)[B
    :try_end_8
    .catch Landroid/security/KeyStoreException; {:try_start_3 .. :try_end_8} :catch_21

    move-result-object v2

    if-eqz v2, :cond_2b

    array-length v3, v2

    if-eqz v3, :cond_2b

    new-instance v3, Ljava/security/ProviderException;

    const-string/jumbo v4, "Update operation unexpectedly produced output"

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_17
    move-exception v1

    new-instance v3, Ljava/security/ProviderException;

    const-string/jumbo v4, "Failed to reinitialize MAC"

    invoke-direct {v3, v4, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_21
    move-exception v0

    new-instance v3, Ljava/security/ProviderException;

    const-string/jumbo v4, "Keystore operation failed"

    invoke-direct {v3, v4, v0}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_2b
    return-void
.end method

.method public finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_9

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_d

    :cond_9
    invoke-super {p0}, Ljavax/crypto/MacSpi;->finalize()V

    return-void

    :catchall_d
    move-exception v1

    invoke-super {p0}, Ljavax/crypto/MacSpi;->finalize()V

    throw v1
.end method

.method public getOperationHandle()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreHmacSpi;->mOperationHandle:J

    return-wide v0
.end method
