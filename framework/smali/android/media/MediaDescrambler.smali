.class public final Landroid/media/MediaDescrambler;
.super Ljava/lang/Object;
.source "MediaDescrambler.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaDescrambler"


# instance fields
.field private mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaDescrambler;->native_init()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCasException$UnsupportedCasException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    invoke-static {}, Landroid/media/MediaCas;->getService()Landroid/hardware/cas/V1_0/IMediaCasService;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/hardware/cas/V1_0/IMediaCasService;->createDescrambler(I)Landroid/hardware/cas/V1_0/IDescramblerBase;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_2b
    .catchall {:try_start_3 .. :try_end_d} :catchall_67

    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    if-nez v1, :cond_87

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string/jumbo v1, "MediaDescrambler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to create descrambler: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;
    :try_end_49
    .catchall {:try_start_2c .. :try_end_49} :catchall_67

    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    if-nez v1, :cond_87

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_67
    move-exception v1

    iget-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    if-nez v2, :cond_86

    new-instance v1, Landroid/media/MediaCasException$UnsupportedCasException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported CA_system_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/media/MediaCasException$UnsupportedCasException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_86
    throw v1

    :cond_87
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    invoke-interface {v1}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/MediaDescrambler;->native_setup(Landroid/os/IHwBinder;)V

    return-void
.end method

.method private final cleanupAndRethrowIllegalState()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private final native native_descramble(BI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setup(Landroid/os/IHwBinder;)V
.end method

.method private final validateInternalStates()V
    .registers 2

    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    if-eqz v1, :cond_c

    :try_start_5
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    invoke-interface {v1}, Landroid/hardware/cas/V1_0/IDescramblerBase;->release()I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_14
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    :goto_a
    iput-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    :cond_c
    invoke-direct {p0}, Landroid/media/MediaDescrambler;->native_release()V

    return-void

    :catchall_10
    move-exception v1

    iput-object v2, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    throw v1

    :catch_14
    move-exception v0

    goto :goto_a
.end method

.method public final descramble(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$CryptoInfo;)I
    .registers 18

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    move-object/from16 v0, p3

    iget v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-gtz v1, :cond_27

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid CryptoInfo: invalid numSubSamples="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    iget v3, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-nez v1, :cond_3c

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-nez v1, :cond_3c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid CryptoInfo: clearData and encryptedData size arrays are both null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3c
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    if-eqz v1, :cond_56

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    array-length v1, v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-ge v1, v2, :cond_56

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid CryptoInfo: numBytesOfClearData is too small!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    if-eqz v1, :cond_70

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    array-length v1, v1

    move-object/from16 v0, p3

    iget v2, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    if-ge v1, v2, :cond_70

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid CryptoInfo: numBytesOfEncryptedData is too small!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_70
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    if-eqz v1, :cond_7f

    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_88

    :cond_7f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid CryptoInfo: key array is invalid!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_88
    :try_start_88
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    const/4 v2, 0x0

    aget-byte v2, v1, v2

    move-object/from16 v0, p3

    iget v3, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    move-object v1, p0

    move-object v6, p1

    move-object/from16 v9, p2

    invoke-direct/range {v1 .. v11}, Landroid/media/MediaDescrambler;->native_descramble(BI[I[ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)I
    :try_end_b2
    .catch Landroid/os/ServiceSpecificException; {:try_start_88 .. :try_end_b2} :catch_ba
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_b2} :catch_b4

    move-result v1

    return v1

    :catch_b4
    move-exception v12

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    :goto_b8
    const/4 v1, -0x1

    return v1

    :catch_ba
    move-exception v13

    iget v1, v13, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v13}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(ILjava/lang/String;)V

    goto :goto_b8
.end method

.method protected finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/MediaDescrambler;->close()V

    return-void
.end method

.method getBinder()Landroid/os/IHwBinder;
    .registers 2

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    iget-object v0, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    invoke-interface {v0}, Landroid/hardware/cas/V1_0/IDescramblerBase;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    return-object v0
.end method

.method public final requiresSecureDecoderComponent(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    invoke-interface {v1, p1}, Landroid/hardware/cas/V1_0/IDescramblerBase;->requiresSecureDecoderComponent(Ljava/lang/String;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a

    move-result v1

    return v1

    :catch_a
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    const/4 v1, 0x1

    return v1
.end method

.method public final setMediaCasSession(Landroid/media/MediaCas$Session;)V
    .registers 5

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->validateInternalStates()V

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaDescrambler;->mIDescrambler:Landroid/hardware/cas/V1_0/IDescramblerBase;

    iget-object v2, p1, Landroid/media/MediaCas$Session;->mSessionId:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Landroid/hardware/cas/V1_0/IDescramblerBase;->setMediaCasSession(Ljava/util/ArrayList;)I

    move-result v1

    invoke-static {v1}, Landroid/media/MediaCasStateException;->throwExceptionIfNeeded(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-direct {p0}, Landroid/media/MediaDescrambler;->cleanupAndRethrowIllegalState()V

    goto :goto_e
.end method
