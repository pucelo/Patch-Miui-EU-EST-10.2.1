.class public final Landroid/media/MediaCodec;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$BufferInfo;,
        Landroid/media/MediaCodec$BufferMap;,
        Landroid/media/MediaCodec$Callback;,
        Landroid/media/MediaCodec$CodecException;,
        Landroid/media/MediaCodec$CryptoException;,
        Landroid/media/MediaCodec$CryptoInfo;,
        Landroid/media/MediaCodec$EventHandler;,
        Landroid/media/MediaCodec$MediaImage;,
        Landroid/media/MediaCodec$MetricsConstants;,
        Landroid/media/MediaCodec$OnFrameRenderedListener;,
        Landroid/media/MediaCodec$PersistentSurface;
    }
.end annotation


# static fields
.field public static final BUFFER_FLAG_CODEC_CONFIG:I = 0x2

.field public static final BUFFER_FLAG_END_OF_STREAM:I = 0x4

.field public static final BUFFER_FLAG_KEY_FRAME:I = 0x1

.field public static final BUFFER_FLAG_PARTIAL_FRAME:I = 0x8

.field public static final BUFFER_FLAG_SYNC_FRAME:I = 0x1

.field private static final CB_ERROR:I = 0x3

.field private static final CB_INPUT_AVAILABLE:I = 0x1

.field private static final CB_OUTPUT_AVAILABLE:I = 0x2

.field private static final CB_OUTPUT_FORMAT_CHANGE:I = 0x4

.field public static final CONFIGURE_FLAG_ENCODE:I = 0x1

.field public static final CRYPTO_MODE_AES_CBC:I = 0x2

.field public static final CRYPTO_MODE_AES_CTR:I = 0x1

.field public static final CRYPTO_MODE_UNENCRYPTED:I = 0x0

.field private static final EVENT_CALLBACK:I = 0x1

.field private static final EVENT_FRAME_RENDERED:I = 0x3

.field private static final EVENT_SET_CALLBACK:I = 0x2

.field public static final INFO_OUTPUT_BUFFERS_CHANGED:I = -0x3

.field public static final INFO_OUTPUT_FORMAT_CHANGED:I = -0x2

.field public static final INFO_TRY_AGAIN_LATER:I = -0x1

.field public static final PARAMETER_KEY_REQUEST_SYNC_FRAME:Ljava/lang/String; = "request-sync"

.field public static final PARAMETER_KEY_SUSPEND:Ljava/lang/String; = "drop-input-frames"

.field public static final PARAMETER_KEY_VIDEO_BITRATE:Ljava/lang/String; = "video-bitrate"

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT:I = 0x1

.field public static final VIDEO_SCALING_MODE_SCALE_TO_FIT_WITH_CROPPING:I = 0x2


# instance fields
.field private final mBufferLock:Ljava/lang/Object;

.field private mCachedInputBuffers:[Ljava/nio/ByteBuffer;

.field private mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

.field private mCallback:Landroid/media/MediaCodec$Callback;

.field private mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

.field private final mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

.field private final mDequeuedOutputInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaCodec$BufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Landroid/media/MediaCodec$EventHandler;

.field private mHasSurface:Z

.field private mListenerLock:Ljava/lang/Object;

.field private mNativeContext:J

.field private mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

.field private mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;


# direct methods
.method static synthetic -get0(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/MediaCodec;)[Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$Callback;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/MediaCodec;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/MediaCodec;)Landroid/media/MediaCodec$OnFrameRenderedListener;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/media/MediaCodec;Landroid/media/MediaCodec$Callback;)Landroid/media/MediaCodec$Callback;
    .registers 2

    iput-object p1, p0, Landroid/media/MediaCodec;->mCallback:Landroid/media/MediaCodec$Callback;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/view/Surface;)V
    .registers 1

    invoke-static {p0}, Landroid/media/MediaCodec;->native_releasePersistentInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/MediaCodec;[Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaCodec;->native_init()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZZ)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    new-instance v1, Landroid/media/MediaCodec$BufferMap;

    invoke-direct {v1, v2}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec$BufferMap;)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    new-instance v1, Landroid/media/MediaCodec$BufferMap;

    invoke-direct {v1, v2}, Landroid/media/MediaCodec$BufferMap;-><init>(Landroid/media/MediaCodec$BufferMap;)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_43

    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    :goto_30
    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    iput-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_setup(Ljava/lang/String;ZZ)V

    return-void

    :cond_43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_51

    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_30

    :cond_51
    iput-object v2, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    goto :goto_30
.end method

.method private final cacheBuffers(Z)V
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getBuffers(Z)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_8} :catch_10

    :goto_8
    if-eqz p1, :cond_d

    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    :goto_c
    return-void

    :cond_d
    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    goto :goto_c

    :catch_10
    move-exception v1

    goto :goto_8
.end method

.method private configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V
    .registers 19

    if-eqz p3, :cond_d

    if-eqz p4, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Can\'t use crypto and descrambler together!"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_7b

    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v3, "audio-session-id"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/4 v12, 0x0

    :try_start_46
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4f} :catch_62

    move-result v12

    const-string/jumbo v0, "audio-hw-sync"

    aput-object v0, v1, v11

    invoke-static {v12}, Landroid/media/AudioSystem;->getAudioHwSyncForSession(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v11

    :goto_5f
    add-int/lit8 v11, v11, 0x1

    goto :goto_2a

    :catch_62
    move-exception v7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Wrong Session ID Parameter!"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6c
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v11

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v11

    goto :goto_5f

    :cond_7b
    if-eqz p2, :cond_8c

    const/4 v0, 0x1

    :goto_7e
    iput-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    move-object v0, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaCodec;->native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    return-void

    :cond_8c
    const/4 v0, 0x0

    goto :goto_7e
.end method

.method public static createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v0, Landroid/media/MediaCodec;

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/MediaCodec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    new-instance v0, Landroid/media/MediaCodec;

    invoke-direct {v0, p0, v1, v1}, Landroid/media/MediaCodec;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method

.method public static createPersistentInputSurface()Landroid/view/Surface;
    .registers 1

    invoke-static {}, Landroid/media/MediaCodec;->native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;

    move-result-object v0

    return-object v0
.end method

.method private final freeAllTrackedBuffers()V
    .registers 3

    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->freeByteBuffers([Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->freeByteBuffers([Ljava/nio/ByteBuffer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final freeByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2

    if-eqz p1, :cond_5

    invoke-static {p1}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    :cond_5
    return-void
.end method

.method private final freeByteBuffers([Ljava/nio/ByteBuffer;)V
    .registers 5

    if-eqz p1, :cond_e

    const/4 v1, 0x0

    array-length v2, p1

    :goto_4
    if-ge v1, v2, :cond_e

    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->freeByteBuffer(Ljava/nio/ByteBuffer;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method private final native getBuffer(ZI)Ljava/nio/ByteBuffer;
.end method

.method private final native getBuffers(Z)[Ljava/nio/ByteBuffer;
.end method

.method private getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;
    .registers 5

    if-nez p1, :cond_5

    iget-object v1, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    return-object v1

    :cond_5
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2}, Landroid/media/MediaCodec$EventHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_10

    return-object p2

    :cond_10
    new-instance v1, Landroid/media/MediaCodec$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaCodec$EventHandler;-><init>(Landroid/media/MediaCodec;Landroid/media/MediaCodec;Landroid/os/Looper;)V

    return-object v1
.end method

.method private final native getFormatNative(Z)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native getImage(ZI)Landroid/media/Image;
.end method

.method private final native getOutputFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_f

    if-ltz p2, :cond_f

    array-length v1, p1

    if-ge p2, v1, :cond_f

    aget-object v0, p1, p2

    if-eqz v0, :cond_f

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    :cond_f
    return-void
.end method

.method private final invalidateByteBuffers([Ljava/nio/ByteBuffer;)V
    .registers 6

    const/4 v2, 0x0

    if-eqz p1, :cond_11

    array-length v3, p1

    move v1, v2

    :goto_5
    if-ge v1, v3, :cond_11

    aget-object v0, p1, v1

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method private final native native_configure([Ljava/lang/String;[Ljava/lang/Object;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V
.end method

.method private static final native native_createPersistentInputSurface()Landroid/media/MediaCodec$PersistentSurface;
.end method

.method private final native native_dequeueInputBuffer(J)I
.end method

.method private final native native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
.end method

.method private native native_enableOnFrameRenderedListener(Z)V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private native native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private static final native native_init()V
.end method

.method private final native native_queueInputBuffer(IIIJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation
.end method

.method private final native native_release()V
.end method

.method private static final native native_releasePersistentInputSurface(Landroid/view/Surface;)V
.end method

.method private final native native_reset()V
.end method

.method private final native native_setCallback(Landroid/media/MediaCodec$Callback;)V
.end method

.method private final native native_setInputSurface(Landroid/view/Surface;)V
.end method

.method private native native_setSurface(Landroid/view/Surface;)V
.end method

.method private final native native_setup(Ljava/lang/String;ZZ)V
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private postEventFromNative(IIILjava/lang/Object;)V
    .registers 9

    iget-object v3, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCodec;->mEventHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x1

    if-ne p1, v2, :cond_15

    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    :cond_a
    :goto_a
    if-eqz v0, :cond_13

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_1b

    :cond_13
    monitor-exit v3

    return-void

    :cond_15
    const/4 v2, 0x3

    if-ne p1, v2, :cond_a

    :try_start_18
    iget-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;
    :try_end_1a
    .catchall {:try_start_18 .. :try_end_1a} :catchall_1b

    goto :goto_a

    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private final native releaseOutputBuffer(IZZJ)V
.end method

.method private final revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V
    .registers 6

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_12

    if-ltz p2, :cond_12

    :try_start_7
    array-length v1, p1

    if-ge p2, v1, :cond_12

    aget-object v0, p1, p2

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v2

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private final native setParameters([Ljava/lang/String;[Ljava/lang/Object;)V
.end method

.method private final validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V
    .registers 5

    if-eqz p1, :cond_12

    if-ltz p2, :cond_12

    array-length v1, p1

    if-ge p2, v1, :cond_12

    aget-object v0, p1, p2

    if-eqz v0, :cond_12

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_12
    return-void
.end method

.method private final validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
    .registers 7

    if-eqz p1, :cond_1d

    if-ltz p2, :cond_1d

    array-length v1, p1

    if-ge p2, v1, :cond_1d

    aget-object v0, p1, p2

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->setAccessible(Z)V

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    :cond_1d
    return-void
.end method


# virtual methods
.method public configure(Landroid/media/MediaFormat;Landroid/view/Surface;ILandroid/media/MediaDescrambler;)V
    .registers 11

    const/4 v3, 0x0

    if-eqz p4, :cond_f

    invoke-virtual {p4}, Landroid/media/MediaDescrambler;->getBinder()Landroid/os/IHwBinder;

    move-result-object v4

    :goto_7
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    return-void

    :cond_f
    move-object v4, v3

    goto :goto_7
.end method

.method public configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;Landroid/os/IHwBinder;I)V

    return-void
.end method

.method public final native createInputSurface()Landroid/view/Surface;
.end method

.method public final dequeueInputBuffer(J)I
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodec;->native_dequeueInputBuffer(J)I

    move-result v0

    if-ltz v0, :cond_f

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v0}, Landroid/media/MediaCodec;->validateInputByteBuffer([Ljava/nio/ByteBuffer;I)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    monitor-exit v2

    :cond_f
    return v0

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    .registers 10

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodec;->native_dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, -0x3

    if-ne v0, v1, :cond_10

    const/4 v1, 0x0

    :try_start_b
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->cacheBuffers(Z)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_29

    :cond_e
    :goto_e
    monitor-exit v2

    return v0

    :cond_10
    if-ltz v0, :cond_e

    :try_start_12
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, v0, p1}, Landroid/media/MediaCodec;->validateOutputByteBuffer([Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V

    iget-boolean v1, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaCodec$BufferInfo;->dup()Landroid/media/MediaCodec$BufferInfo;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_29

    goto :goto_e

    :catchall_29
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected finalize()V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->native_finalize()V

    return-void
.end method

.method public final flush()V
    .registers 3

    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->invalidateByteBuffers([Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V

    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap;->clear()V
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1c

    monitor-exit v1

    invoke-direct {p0}, Landroid/media/MediaCodec;->native_flush()V

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getCodecInfo()Landroid/media/MediaCodecInfo;
    .registers 2

    invoke-virtual {p0}, Landroid/media/MediaCodec;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodecList;->getInfoFor(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    return-object v0
.end method

.method public getInputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    monitor-exit v2

    return-object v0

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getInputBuffers()[Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getInputFormat()Landroid/media/MediaFormat;
    .registers 3

    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getInputImage(I)Landroid/media/Image;
    .registers 5

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    monitor-exit v2

    return-object v0

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    invoke-direct {p0}, Landroid/media/MediaCodec;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    return-object v0
.end method

.method public final native getName()Ljava/lang/String;
.end method

.method public getOutputBuffer(I)Ljava/nio/ByteBuffer;
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getBuffer(ZI)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILjava/nio/ByteBuffer;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    monitor-exit v2

    return-object v0

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getOutputBuffers()[Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getOutputFormat()Landroid/media/MediaFormat;
    .registers 3

    new-instance v0, Landroid/media/MediaFormat;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->getFormatNative(Z)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public final getOutputFormat(I)Landroid/media/MediaFormat;
    .registers 4

    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->getOutputFormatNative(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public getOutputImage(I)Landroid/media/Image;
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->getImage(ZI)Landroid/media/Image;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1, v0}, Landroid/media/MediaCodec$BufferMap;->put(ILandroid/media/Image;)V
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_14

    monitor-exit v2

    return-object v0

    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final queueInputBuffer(IIIJI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    monitor-exit v2

    :try_start_e
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueInputBuffer(IIIJI)V
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_11} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_11} :catch_15

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_15
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    throw v0
.end method

.method public final queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/media/MediaCodec$CryptoException;
        }
    .end annotation

    iget-object v2, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    iget-object v1, p0, Landroid/media/MediaCodec;->mDequeuedInputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_12

    monitor-exit v2

    :try_start_e
    invoke-direct/range {p0 .. p6}, Landroid/media/MediaCodec;->native_queueSecureInputBuffer(IILandroid/media/MediaCodec$CryptoInfo;JI)V
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_11} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_11} :catch_15

    return-void

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_15
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaCodec;->mCachedInputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1, p1}, Landroid/media/MediaCodec;->revalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    throw v0
.end method

.method public final release()V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    invoke-direct {p0}, Landroid/media/MediaCodec;->native_release()V

    return-void
.end method

.method public final releaseOutputBuffer(IJ)V
    .registers 12

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaCodec$BufferInfo;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_28

    :cond_1f
    monitor-exit v1

    move-object v0, p0

    move v1, p1

    move v3, v2

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final releaseOutputBuffer(IZ)V
    .registers 10

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Landroid/media/MediaCodec;->mCachedOutputBuffers:[Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, p1}, Landroid/media/MediaCodec;->invalidateByteBuffer([Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputBuffers:Landroid/media/MediaCodec$BufferMap;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec$BufferMap;->remove(I)V

    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/media/MediaCodec;->mDequeuedOutputInfos:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/MediaCodec$BufferInfo;
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_29

    :cond_1e
    monitor-exit v1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZZJ)V

    return-void

    :catchall_29
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final reset()V
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    invoke-direct {p0}, Landroid/media/MediaCodec;->native_reset()V

    return-void
.end method

.method public setCallback(Landroid/media/MediaCodec$Callback;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    if-eqz p1, :cond_37

    iget-object v3, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p2, v2}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq v1, v2, :cond_20

    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    iput-object v1, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_34

    :cond_20
    monitor-exit v3

    :cond_21
    :goto_21
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v2, :cond_33

    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v5, v6, v6, p1}, Landroid/media/MediaCodec$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec$EventHandler;->sendMessage(Landroid/os/Message;)Z

    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setCallback(Landroid/media/MediaCodec$Callback;)V

    :cond_33
    return-void

    :catchall_34
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_37
    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v5}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    iget-object v2, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    goto :goto_21
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .registers 4

    instance-of v0, p1, Landroid/media/MediaCodec$PersistentSurface;

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "not a PersistentSurface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V
    .registers 7

    iget-object v2, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iput-object p1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedListener:Landroid/media/MediaCodec$OnFrameRenderedListener;

    if-eqz p1, :cond_21

    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    invoke-direct {p0, p2, v1}, Landroid/media/MediaCodec;->getEventHandlerOn(Landroid/os/Handler;Landroid/media/MediaCodec$EventHandler;)Landroid/media/MediaCodec$EventHandler;

    move-result-object v0

    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eq v0, v1, :cond_17

    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    :cond_17
    iput-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    :cond_19
    :goto_19
    if-eqz p1, :cond_2f

    const/4 v1, 0x1

    :goto_1c
    invoke-direct {p0, v1}, Landroid/media/MediaCodec;->native_enableOnFrameRenderedListener(Z)V
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_2c

    monitor-exit v2

    return-void

    :cond_21
    :try_start_21
    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_2c

    goto :goto_19

    :catchall_2c
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_1c
.end method

.method public setOutputSurface(Landroid/view/Surface;)V
    .registers 4

    iget-boolean v0, p0, Landroid/media/MediaCodec;->mHasSurface:Z

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "codec was not configured for an output surface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-direct {p0, p1}, Landroid/media/MediaCodec;->native_setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v0

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_2f
    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodec;->setParameters([Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final native setVideoScalingMode(I)V
.end method

.method public final native signalEndOfInputStream()V
.end method

.method public final start()V
    .registers 3

    invoke-direct {p0}, Landroid/media/MediaCodec;->native_start()V

    iget-object v1, p0, Landroid/media/MediaCodec;->mBufferLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_7
    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->cacheBuffers(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaCodec;->cacheBuffers(Z)V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_10

    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final stop()V
    .registers 4

    invoke-direct {p0}, Landroid/media/MediaCodec;->native_stop()V

    invoke-direct {p0}, Landroid/media/MediaCodec;->freeAllTrackedBuffers()V

    iget-object v1, p0, Landroid/media/MediaCodec;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    iget-object v0, p0, Landroid/media/MediaCodec;->mCallbackHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V

    :cond_19
    iget-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/media/MediaCodec;->mOnFrameRenderedHandler:Landroid/media/MediaCodec$EventHandler;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/MediaCodec$EventHandler;->removeMessages(I)V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_25

    :cond_23
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method
