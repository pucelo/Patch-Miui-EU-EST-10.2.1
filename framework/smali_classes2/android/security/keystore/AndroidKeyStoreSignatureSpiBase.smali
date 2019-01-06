.class abstract Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;
.super Ljava/security/SignatureSpi;
.source "AndroidKeyStoreSignatureSpiBase.java"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperation;


# instance fields
.field private mCachedException:Ljava/lang/Exception;

.field private mKey:Landroid/security/keystore/AndroidKeyStoreKey;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

.field private mOperationHandle:J

.field private mOperationToken:Landroid/os/IBinder;

.field private mSigning:Z


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

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

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    if-eqz v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v4, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v4}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    invoke-virtual {p0, v4}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    if-eqz v2, :cond_40

    const/4 v2, 0x2

    :goto_2d
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v3}, Landroid/security/keystore/AndroidKeyStoreKey;->getUid()I

    move-result v6

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/security/KeyStore;->begin(Ljava/lang/String;IZLandroid/security/keymaster/KeymasterArguments;[BI)Landroid/security/keymaster/OperationResult;

    move-result-object v8

    if-nez v8, :cond_42

    new-instance v0, Landroid/security/keystore/KeyStoreConnectException;

    invoke-direct {v0}, Landroid/security/keystore/KeyStoreConnectException;-><init>()V

    throw v0

    :cond_40
    const/4 v2, 0x3

    goto :goto_2d

    :cond_42
    iget-object v0, v8, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    iget-wide v0, v8, Landroid/security/keymaster/OperationResult;->operationHandle:J

    iput-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iget v2, v8, Landroid/security/keymaster/OperationResult;->resultCode:I

    invoke-static {v0, v1, v2}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getInvalidKeyExceptionForInit(Landroid/security/KeyStore;Landroid/security/keystore/AndroidKeyStoreKey;I)Ljava/security/InvalidKeyException;

    move-result-object v7

    if-eqz v7, :cond_57

    throw v7

    :cond_57
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-nez v0, :cond_64

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore returned null operation token"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_64
    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_75

    new-instance v0, Ljava/security/ProviderException;

    const-string/jumbo v1, "Keystore returned invalid operation handle"

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    iget-object v1, v8, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    return-void
.end method


# virtual methods
.method protected abstract addAlgorithmSpecificParametersToBegin(Landroid/security/keymaster/KeymasterArguments;)V
.end method

.method protected createMainDataStreamer(Landroid/security/KeyStore;Landroid/os/IBinder;)Landroid/security/keystore/KeyStoreCryptoOperationStreamer;
    .registers 5

    new-instance v0, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;

    new-instance v1, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;

    invoke-direct {v1, p1, p2}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$MainDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    invoke-direct {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer;-><init>(Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;)V

    return-object v0
.end method

.method protected final engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    return-void
.end method

.method protected final engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    const/4 v2, 0x0

    if-nez p1, :cond_16

    :try_start_6
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Unsupported key: null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v3

    if-nez v2, :cond_15

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_15
    throw v3

    :cond_16
    :try_start_16
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v3, :cond_30

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    move-object v1, v0

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_29
    .catchall {:try_start_16 .. :try_end_29} :catchall_f

    const/4 v2, 0x1

    if-nez v2, :cond_2f

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_2f
    return-void

    :cond_30
    :try_start_30
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported private key type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4a
    .catchall {:try_start_30 .. :try_end_4a} :catchall_f
.end method

.method protected final engineInitVerify(Ljava/security/PublicKey;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    const/4 v2, 0x0

    if-nez p1, :cond_16

    :try_start_6
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string/jumbo v4, "Unsupported key: null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v3

    if-nez v2, :cond_15

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_15
    throw v3

    :cond_16
    :try_start_16
    instance-of v3, p1, Landroid/security/keystore/AndroidKeyStorePublicKey;

    if-eqz v3, :cond_31

    move-object v0, p1

    check-cast v0, Landroid/security/keystore/AndroidKeyStorePublicKey;

    move-object v1, v0

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    invoke-virtual {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_f

    const/4 v2, 0x1

    if-nez v2, :cond_30

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetAll()V

    :cond_30
    return-void

    :cond_31
    :try_start_31
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unsupported public key type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4b
    .catchall {:try_start_31 .. :try_end_4b} :catchall_f
.end method

.method protected final engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0
.end method

.method protected final engineSign([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/security/SignatureSpi;->engineSign([BII)I

    move-result v0

    return v0
.end method

.method protected final engineSign()[B
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->getAdditionalEntropyAmountForSign()I

    move-result v1

    invoke-static {v0, v1}, Landroid/security/keystore/KeyStoreCryptoOperationUtils;->getRandomBytesToMixIntoKeystoreRng(Ljava/security/SecureRandom;I)[B

    move-result-object v5

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B
    :try_end_23
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_23} :catch_28
    .catch Landroid/security/KeyStoreException; {:try_start_c .. :try_end_23} :catch_28

    move-result-object v7

    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return-object v7

    :catch_28
    move-exception v6

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected final engineUpdate(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [B

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V

    return-void
.end method

.method protected final engineUpdate(Ljava/nio/ByteBuffer;)V
    .registers 8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int v3, v4, v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1f
    :try_start_1f
    invoke-virtual {p0, v0, v3, v2}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineUpdate([BII)V
    :try_end_22
    .catch Ljava/security/SignatureException; {:try_start_1f .. :try_end_22} :catch_2a

    :goto_22
    return-void

    :cond_23
    new-array v0, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_1f

    :catch_2a
    move-exception v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    goto :goto_22
.end method

.method protected final engineUpdate([BII)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v3, :cond_c

    new-instance v3, Ljava/security/SignatureException;

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_f} :catch_12

    if-nez p3, :cond_19

    return-void

    :catch_12
    move-exception v1

    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_19
    :try_start_19
    iget-object v3, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    invoke-interface {v3, p1, p2, p3}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->update([BII)[B
    :try_end_1e
    .catch Landroid/security/KeyStoreException; {:try_start_19 .. :try_end_1e} :catch_44

    move-result-object v2

    array-length v3, v2

    if-eqz v3, :cond_4b

    new-instance v3, Ljava/security/ProviderException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Update operation unexpectedly produced output: "

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

    :catch_44
    move-exception v0

    new-instance v3, Ljava/security/SignatureException;

    invoke-direct {v3, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_4b
    return-void
.end method

.method protected final engineVerify([B)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    if-eqz v0, :cond_c

    new-instance v0, Ljava/security/SignatureException;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    :try_start_c
    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->ensureKeystoreOperationInitialized()V
    :try_end_f
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_f} :catch_4e

    :try_start_f
    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/security/keystore/KeyStoreCryptoOperationStreamer;->doFinal([BII[B[B)[B

    move-result-object v8

    array-length v0, v8

    if-eqz v0, :cond_55

    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Signature verification unexpected produced output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catch Landroid/security/KeyStoreException; {:try_start_f .. :try_end_40} :catch_40

    :catch_40
    move-exception v6

    invoke-virtual {v6}, Landroid/security/KeyStoreException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_4e
    move-exception v7

    new-instance v0, Ljava/security/SignatureException;

    invoke-direct {v0, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_55
    const/4 v9, 0x1

    :goto_56
    invoke-virtual {p0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->resetWhilePreservingInitState()V

    return v9

    :pswitch_5a
    const/4 v9, 0x0

    goto :goto_56

    :pswitch_data_5c
    .packed-switch -0x1e
        :pswitch_5a
    .end packed-switch
.end method

.method protected final engineVerify([BII)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/security/keystore/ArrayUtils;->subarray([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->engineVerify([B)Z

    move-result v0

    return v0
.end method

.method protected abstract getAdditionalEntropyAmountForSign()I
.end method

.method protected final getKeyStore()Landroid/security/KeyStore;
    .registers 2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method public final getOperationHandle()J
    .registers 3

    iget-wide v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    return-wide v0
.end method

.method protected initKey(Landroid/security/keystore/AndroidKeyStoreKey;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    return-void
.end method

.method protected final isSigning()Z
    .registers 2

    iget-boolean v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    return v0
.end method

.method protected resetAll()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mSigning:Z

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKey:Landroid/security/keystore/AndroidKeyStoreKey;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->appRandom:Ljava/security/SecureRandom;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method

.method protected resetWhilePreservingInitState()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    if-eqz v0, :cond_c

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationToken:Landroid/os/IBinder;

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->abort(Landroid/os/IBinder;)I

    :cond_c
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mOperationHandle:J

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mMessageStreamer:Landroid/security/keystore/KeyStoreCryptoOperationStreamer;

    iput-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSignatureSpiBase;->mCachedException:Ljava/lang/Exception;

    return-void
.end method
