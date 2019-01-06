.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;
.implements Landroid/media/VolumeAutomation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;
    }
.end annotation


# static fields
.field private static final AUDIO_OUTPUT_FLAG_DEEP_BUFFER:I = 0x8

.field private static final AUDIO_OUTPUT_FLAG_FAST:I = 0x4

.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field private static final HEADER_V2_SIZE_BYTES:F = 20.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PERFORMANCE_MODE_LOW_LATENCY:I = 0x1

.field public static final PERFORMANCE_MODE_NONE:I = 0x0

.field public static final PERFORMANCE_MODE_POWER_SAVING:I = 0x2

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mOffset:I

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 5

    invoke-static {p0, p1, p2, p3}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/media/AudioTrack;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    const-string/jumbo v0, "AudioTrack"

    const-string/jumbo v1, "AudioTrack()"

    invoke-static {p1, v0, v1}, Landroid/media/AudioTrack;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(J)V
    .registers 12

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-direct {p0, v1, v3}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    iput v3, p0, Landroid/media/AudioTrack;->mPlayState:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    iput v2, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    iput v2, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iput v5, p0, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v1, 0x3

    iput v1, p0, Landroid/media/AudioTrack;->mStreamType:I

    iput v3, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    iput v5, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    iput v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iput v2, p0, Landroid/media/AudioTrack;->mSessionId:I

    iput-object v4, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    iput v2, p0, Landroid/media/AudioTrack;->mOffset:I

    iput-object v4, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    iput-wide v6, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    iput-wide v6, p0, Landroid/media/AudioTrack;->mJniData:J

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_4d

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_4d
    iput-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    cmp-long v1, p1, v6

    if-eqz v1, :cond_5a

    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    :goto_59
    return-void

    :cond_5a
    iput v2, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_59
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;I)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mState:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mPlayState:I

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mChannelMask:I

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mStreamType:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v4, 0x4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mOffset:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_70

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Illegal null AudioFormat"

    invoke-direct {v4, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_70
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {v4, v0, v1, v2}, Landroid/media/AudioTrack;->shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z

    move-result v4

    if-eqz v4, :cond_a1

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {v4, v9}, Landroid/media/AudioAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v9}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v9

    or-int/lit16 v9, v9, 0x200

    and-int/lit16 v9, v9, -0x101

    invoke-virtual {v4, v9}, Landroid/media/AudioAttributes$Builder;->replaceFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    :cond_a1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v24

    if-nez v24, :cond_ab

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v24

    :cond_ab
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v5

    if-nez v5, :cond_b2

    const/4 v5, 0x0

    :cond_b2
    const/4 v7, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_bf

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v7

    :cond_bf
    const/4 v6, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_110

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v6

    :cond_cc
    :goto_cc
    const/4 v8, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_d9

    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v8

    :cond_d9
    move-object/from16 v4, p0

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mStreamType:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    if-gez p5, :cond_115

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid audio session ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_110
    if-nez v7, :cond_cc

    const/16 v6, 0xc

    goto :goto_cc

    :cond_115
    const/4 v4, 0x1

    new-array v13, v4, [I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mSampleRate:I

    const/4 v9, 0x0

    aput v4, v13, v9

    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/4 v4, 0x0

    aput p5, v19, v4

    new-instance v11, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioTrack;->mChannelMask:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move/from16 v18, v0

    const-wide/16 v20, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v21}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v23

    if-eqz v23, :cond_177

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error code "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v9, " when initializing AudioTrack."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void

    :cond_177
    const/4 v4, 0x0

    aget v4, v13, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mSampleRate:I

    const/4 v4, 0x0

    aget v4, v19, v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mSessionId:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_1bc

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v4}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v4

    if-eqz v4, :cond_1cb

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mChannelCount:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v9}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v9

    mul-int v22, v4, v9

    :goto_1a9
    move/from16 v0, v22

    int-to-float v4, v0

    const/high16 v9, 0x41a00000    # 20.0f

    div-float v4, v9, v4

    float-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v4, v10

    mul-int v4, v4, v22

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mOffset:I

    :cond_1bc
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v4, :cond_1ce

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mState:I

    :goto_1c7
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioTrack;->baseRegisterPlayer()V

    return-void

    :cond_1cb
    const/16 v22, 0x1

    goto :goto_1a9

    :cond_1ce
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_1c7
.end method

.method private audioBuffSizeCheck(I)V
    .registers 5

    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    :goto_12
    rem-int v1, p1, v0

    if-nez v1, :cond_19

    const/4 v1, 0x1

    if-ge p1, v1, :cond_24

    :cond_19
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    const/4 v0, 0x1

    goto :goto_12

    :cond_24
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    return-void
.end method

.method private audioParamCheck(IIIII)V
    .registers 12

    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0xfa0

    if-lt p1, v2, :cond_d

    const v2, 0x2ee00

    if-le p1, v2, :cond_29

    :cond_d
    if-eqz p1, :cond_29

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "Hz is not a supported sample rate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_29
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 v2, 0xd

    if-ne p4, v2, :cond_3a

    if-eq p2, v5, :cond_3a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3a
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    sparse-switch p2, :sswitch_data_da

    if-nez p2, :cond_7b

    if-eqz p3, :cond_7b

    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    :goto_45
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    iget v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v2, :cond_9d

    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    shl-int v2, v4, v2

    add-int/lit8 v1, v2, -0x1

    not-int v2, v1

    and-int/2addr v2, p3

    if-eqz v2, :cond_93

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported channel index configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_6f
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_45

    :sswitch_75
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iput v5, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_45

    :cond_7b
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_8a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported channel configuration."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8a
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_45

    :cond_93
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_af

    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    :cond_9d
    if-ne p4, v4, :cond_a0

    const/4 p4, 0x2

    :cond_a0
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_bc

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported audio encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_af
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-eq v2, v0, :cond_9d

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_bc
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-eq p5, v4, :cond_cb

    if-eqz p5, :cond_cb

    :cond_c2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_cb
    if-eq p5, v4, :cond_d7

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_c2

    :cond_d7
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    return-void

    :sswitch_data_da
    .sparse-switch
        0x1 -> :sswitch_6f
        0x2 -> :sswitch_6f
        0x3 -> :sswitch_75
        0x4 -> :sswitch_6f
        0xc -> :sswitch_75
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .registers 6

    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    iget-object v4, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v4

    :try_start_6
    iget-object v3, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_10

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_28

    goto :goto_10

    :catchall_28
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2b
    monitor-exit v4

    return-void
.end method

.method private static clampGainOrLevel(F)F
    .registers 2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_13

    const/4 p0, 0x0

    :cond_12
    :goto_12
    return p0

    :cond_13
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_12

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_12
.end method

.method public static getMaxVolume()F
    .registers 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .registers 8

    const/4 v4, -0x2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_5e

    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_22

    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v4

    :sswitch_12
    const/4 v0, 0x1

    :goto_13
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_27

    const-string/jumbo v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v4

    :sswitch_20
    const/4 v0, 0x2

    goto :goto_13

    :cond_22
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    goto :goto_13

    :cond_27
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_30

    const v2, 0x2ee00

    if-le p0, v2, :cond_4f

    :cond_30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v4

    :cond_4f
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    if-gtz v1, :cond_5d

    const-string/jumbo v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    const/4 v2, -0x1

    return v2

    :cond_5d
    return v1

    :sswitch_data_5e
    .sparse-switch
        0x2 -> :sswitch_12
        0x3 -> :sswitch_20
        0x4 -> :sswitch_12
        0xc -> :sswitch_20
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .registers 2

    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .registers 8

    const/4 v6, 0x0

    and-int/lit16 v4, p0, 0x1cfc

    if-eq v4, p0, :cond_c

    const-string/jumbo v4, "Channel configuration features unsupported channels"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v6

    :cond_c
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    sget v4, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    if-le v1, v4, :cond_39

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Channel configuration contains too many channels "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v6

    :cond_39
    const/16 v2, 0xc

    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-eq v4, v5, :cond_48

    const-string/jumbo v4, "Front channels must be present in multichannel configurations"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v6

    :cond_48
    const/16 v0, 0xc0

    and-int/lit16 v4, p0, 0xc0

    if-eqz v4, :cond_5b

    and-int/lit16 v4, p0, 0xc0

    const/16 v5, 0xc0

    if-eq v4, v5, :cond_5b

    const-string/jumbo v4, "Rear channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v6

    :cond_5b
    const/16 v3, 0x1800

    and-int/lit16 v4, p0, 0x1800

    if-eqz v4, :cond_6e

    and-int/lit16 v4, p0, 0x1800

    const/16 v5, 0x1800

    if-eq v4, v5, :cond_6e

    const-string/jumbo v4, "Side channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return v6

    :cond_6e
    const/4 v4, 0x1

    return v4
.end method

.method private static logd(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private native native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_flags()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 10

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    if-nez v3, :cond_b

    return-void

    :cond_b
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_13

    invoke-direct {v3}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    return-void

    :cond_13
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_24
    return-void
.end method

.method private static shouldEnablePowerSaving(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)Z
    .registers 16

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v3

    if-eq v3, v11, :cond_11

    :cond_10
    return v10

    :cond_11
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_25

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getContentType()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_10

    :cond_25
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    if-nez v3, :cond_2e

    :cond_2d
    return v10

    :cond_2e
    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2d

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->isValidEncoding(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2d

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    if-lt v3, v11, :cond_2d

    if-eq p3, v11, :cond_4f

    return v10

    :cond_4f
    if-eqz p2, :cond_77

    const-wide/16 v0, 0x64

    const/16 v2, 0x3e8

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-static {v3}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v3

    int-to-long v8, v3

    mul-long/2addr v6, v8

    invoke-virtual {p1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    int-to-long v8, v3

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    int-to-long v6, p2

    cmp-long v3, v6, v4

    if-gez v3, :cond_77

    return v10

    :cond_77
    return v11
.end method

.method private startImpl()V
    .registers 3

    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStart()V

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_e

    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .registers 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    :cond_b
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .registers 2

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    :cond_b
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 7

    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    if-eqz p1, :cond_1e

    :try_start_5
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1e

    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    if-eqz p2, :cond_20

    :goto_18
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_28

    :cond_1e
    monitor-exit v1

    return-void

    :cond_20
    :try_start_20
    new-instance p2, Landroid/os/Handler;

    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_27
    .catchall {:try_start_20 .. :try_end_27} :catchall_28

    goto :goto_18

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public attachAuxEffect(I)I
    .registers 3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    const/4 v0, -0x3

    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method public createVolumeShaper(Landroid/media/VolumeShaper$Configuration;)Landroid/media/VolumeShaper;
    .registers 3

    new-instance v0, Landroid/media/VolumeShaper;

    invoke-direct {v0, p1, p0}, Landroid/media/VolumeShaper;-><init>(Landroid/media/VolumeShaper$Configuration;Landroid/media/PlayerBase;)V

    return-object v0
.end method

.method deferred_connect(J)V
    .registers 16

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v9, v1

    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v3, v1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v10, p1

    invoke-direct/range {v0 .. v11}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v12

    if-eqz v12, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " when initializing AudioTrack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void

    :cond_45
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    :cond_4d
    return-void
.end method

.method protected finalize()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    return-void
.end method

.method public flush()V
    .registers 3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    :cond_e
    return-void
.end method

.method public getAudioFormat()I
    .registers 2

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .registers 2

    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferCapacityInFrames()I
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()I
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .registers 2

    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .registers 4

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_1a

    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    :cond_1a
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_23

    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    :cond_23
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public native getParameters(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getPerformanceMode()I
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_flags()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    return v1

    :cond_b
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_11

    const/4 v1, 0x2

    return v1

    :cond_11
    return v2
.end method

.method public getPlayState()I
    .registers 3

    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    if-nez v0, :cond_8

    return-object v4

    :cond_8
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    const/4 v2, 0x0

    :goto_e
    array-length v3, v1

    if-ge v2, v3, :cond_1f

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, v0, :cond_1c

    aget-object v3, v1, v2

    return-object v3

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1f
    return-object v4
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .registers 2

    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_a
    const/4 v2, 0x2

    new-array v0, v2, [J

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    if-eqz v1, :cond_14

    return v3

    :cond_14
    aget-wide v2, v0, v3

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    aget-wide v2, v0, v4

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    return v4
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .registers 6

    if-nez p1, :cond_8

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_8
    const/4 v2, 0x2

    new-array v0, v2, [J

    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    return v1
.end method

.method public getUnderrunCount()I
    .registers 2

    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "pause() called on uninitialized AudioTrack."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    iget-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->basePause()V

    const/4 v1, 0x2

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    const-string/jumbo v1, "com.changba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    :cond_30
    const-string/jumbo v1, "select_device"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pause():karaoke_mode=off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "karaoke_mode=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_50
    .catchall {:try_start_11 .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit v2

    return-void

    :catchall_52
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public play()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_e

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "play() called on uninitialized AudioTrack."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.tencent.tmgp.sgame"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string/jumbo v2, "com.changba"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    :cond_24
    const-string/jumbo v2, "select_device"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " play():karaoke_mode=on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "karaoke_mode=on"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    :cond_44
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getStartDelayMs()I

    move-result v0

    if-nez v0, :cond_4e

    invoke-direct {p0}, Landroid/media/AudioTrack;->startImpl()V

    :goto_4d
    return-void

    :cond_4e
    new-instance v2, Landroid/media/AudioTrack$1;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioTrack$1;-><init>(Landroid/media/AudioTrack;I)V

    invoke-virtual {v2}, Landroid/media/AudioTrack$1;->start()V

    goto :goto_4d
.end method

.method playerApplyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_applyVolumeShaper(Landroid/media/VolumeShaper$Configuration;Landroid/media/VolumeShaper$Operation;)I

    move-result v0

    return v0
.end method

.method playerGetVolumeShaperState(I)Landroid/media/VolumeShaper$State;
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_getVolumeShaperState(I)Landroid/media/VolumeShaper$State;

    move-result-object v0

    return-object v0
.end method

.method playerPause()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/AudioTrack;->pause()V

    return-void
.end method

.method playerSetAuxEffectSendLevel(ZF)I
    .registers 5

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    :cond_4
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    invoke-direct {p0, p2}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    if-nez v0, :cond_f

    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method playerSetVolume(ZFF)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    move p2, v0

    :cond_4
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    if-eqz p1, :cond_12

    :goto_a
    invoke-static {v0}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p3

    invoke-direct {p0, p2, p3}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    return-void

    :cond_12
    move v0, p3

    goto :goto_a
.end method

.method playerStart()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/AudioTrack;->play()V

    return-void
.end method

.method playerStop()V
    .registers 1

    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V

    return-void
.end method

.method public release()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_3} :catch_d

    :goto_3
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    return-void

    :catch_d
    move-exception v0

    goto :goto_3
.end method

.method public reloadStaticData()I
    .registers 3

    const/4 v1, 0x1

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_b

    :cond_9
    const/4 v0, -0x3

    return v0

    :cond_b
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .registers 4

    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    return-void
.end method

.method public setAuxEffectSendLevel(F)I
    .registers 3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    const/4 v0, -0x3

    return v0

    :cond_6
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public setBufferSizeInFrames(I)I
    .registers 3

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, -0x3

    return v0

    :cond_a
    if-gez p1, :cond_e

    const/4 v0, -0x2

    return v0

    :cond_e
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0
.end method

.method public setLoopPoints(III)I
    .registers 6

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_b

    :cond_9
    const/4 v0, -0x3

    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    if-nez p3, :cond_19

    :cond_14
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    :cond_19
    if-ltz p1, :cond_1f

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-lt p1, v0, :cond_21

    :cond_1f
    :goto_1f
    const/4 v0, -0x2

    return v0

    :cond_21
    if-ge p1, p2, :cond_1f

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_14

    goto :goto_1f
.end method

.method public setNotificationMarkerPosition(I)I
    .registers 3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    const/4 v0, -0x3

    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public native setParameters(Ljava/lang/String;)I
.end method

.method public setPlaybackHeadPosition(I)I
    .registers 4

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_b

    :cond_9
    const/4 v0, -0x3

    return v0

    :cond_b
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    if-ltz p1, :cond_18

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_1a

    :cond_18
    const/4 v0, -0x2

    return v0

    :cond_1a
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .registers 4

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    :goto_a
    return-void

    :cond_b
    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_a
.end method

.method public setPlaybackRate(I)I
    .registers 4

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v0, -0x3

    return v0

    :cond_7
    if-gtz p1, :cond_b

    const/4 v0, -0x2

    return v0

    :cond_b
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .registers 3

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_6

    const/4 v0, -0x3

    return v0

    :cond_6
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .registers 5

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    return v2

    :cond_c
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    :goto_12
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    monitor-enter p0

    :try_start_19
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1f

    monitor-exit p0

    :cond_1c
    return v1

    :cond_1d
    const/4 v0, 0x0

    goto :goto_12

    :catchall_1f
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected setState(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    return-void
.end method

.method public setStereoVolume(FF)I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_7

    const/4 v0, -0x3

    return v0

    :cond_7
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    return v1
.end method

.method public setVolume(F)I
    .registers 3

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v2, 0x1

    iget v1, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v1, v2, :cond_e

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "stop() called on uninitialized AudioTrack."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    iget-object v2, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_11
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStop()V

    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioTrack;->mPlayState:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.tencent.tmgp.sgame"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    const-string/jumbo v1, "com.changba"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    :cond_36
    const-string/jumbo v1, "select_device"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " stop():karaoke_mode=off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "karaoke_mode=off"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_11 .. :try_end_56} :catchall_58

    :cond_56
    monitor-exit v2

    return-void

    :catchall_58
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .registers 12

    const/4 v3, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_12

    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    return v0

    :cond_12
    if-eqz p3, :cond_20

    if-eq p3, v7, :cond_20

    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_20
    if-eqz p1, :cond_24

    if-gez p2, :cond_46

    :cond_24
    const-string/jumbo v0, "android.media.AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_46
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p2, v0, :cond_24

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_5c

    move v5, v7

    :cond_5c
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v6

    :goto_63
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_70

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    if-lez v6, :cond_70

    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    :cond_70
    if-lez v6, :cond_7a

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_7a
    return v6

    :cond_7b
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p3, :cond_8d

    move v5, v7

    :cond_8d
    move-object v0, p0

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    goto :goto_63
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .registers 14

    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v4, -0x3

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v2, :cond_13

    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_13
    if-eqz p3, :cond_21

    if-eq p3, v3, :cond_21

    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_21
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v2, v3, :cond_2f

    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2f
    iget-object v2, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_47

    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    return v2

    :cond_47
    if-eqz p1, :cond_4b

    if-gez p2, :cond_6d

    :cond_4b
    const-string/jumbo v2, "android.media.AudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6d
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt p2, v2, :cond_4b

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_8e

    iget v2, p0, Landroid/media/AudioTrack;->mOffset:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v3, 0x55550002

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_8e
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v2, :cond_af

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget v3, p0, Landroid/media/AudioTrack;->mOffset:I

    const/16 v4, 0x10

    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    :cond_af
    const/4 v0, 0x0

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_e6

    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0, v2, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_d4

    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v5, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return v0

    :cond_d4
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_e6

    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_e6
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, v1, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    if-gez v0, :cond_100

    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iput v5, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return v0

    :cond_100
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    return v0
.end method

.method public write([BII)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .registers 13

    const/4 v2, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, -0x3

    return v0

    :cond_e
    if-eqz p4, :cond_1c

    if-eq p4, v7, :cond_1c

    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1c
    if-eqz p1, :cond_20

    if-gez p2, :cond_21

    :cond_20
    return v2

    :cond_21
    if-ltz p3, :cond_20

    add-int v0, p2, p3

    if-ltz v0, :cond_20

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_20

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_31

    move v5, v7

    :cond_31
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_46

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    if-lez v6, :cond_46

    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    :cond_46
    return v6
.end method

.method public write([FIII)I
    .registers 13

    const/4 v3, -0x2

    const/4 v2, -0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_12

    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_12
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_21

    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_21
    if-eqz p4, :cond_2f

    if-eq p4, v7, :cond_2f

    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2f
    if-eqz p1, :cond_33

    if-gez p2, :cond_3d

    :cond_33
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3d
    if-ltz p3, :cond_33

    add-int v0, p2, p3

    if-ltz v0, :cond_33

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_33

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_4d

    move v5, v7

    :cond_4d
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v6

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_62

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_62

    if-lez v6, :cond_62

    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    :cond_62
    return v6
.end method

.method public write([SII)I
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .registers 13

    const/4 v2, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, -0x3

    return v0

    :cond_e
    if-eqz p4, :cond_1c

    if-eq p4, v7, :cond_1c

    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1c
    if-eqz p1, :cond_20

    if-gez p2, :cond_21

    :cond_20
    return v2

    :cond_21
    if-ltz p3, :cond_20

    add-int v0, p2, p3

    if-ltz v0, :cond_20

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_20

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    if-nez p4, :cond_31

    move v5, v7

    :cond_31
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v6

    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_46

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_46

    if-lez v6, :cond_46

    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    :cond_46
    return v6
.end method
