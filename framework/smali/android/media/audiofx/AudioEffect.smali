.class public Landroid/media/audiofx/AudioEffect;
.super Ljava/lang/Object;
.source "AudioEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/AudioEffect$Descriptor;,
        Landroid/media/audiofx/AudioEffect$NativeEventHandler;,
        Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;,
        Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ACTION_DISPLAY_AUDIO_EFFECT_CONTROL_PANEL:Ljava/lang/String; = "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

.field public static final ACTION_OPEN_AUDIO_EFFECT_CONTROL_SESSION:Ljava/lang/String; = "android.media.action.OPEN_AUDIO_EFFECT_CONTROL_SESSION"

.field public static final ALREADY_EXISTS:I = -0x2

.field public static final CONTENT_TYPE_GAME:I = 0x2

.field public static final CONTENT_TYPE_MOVIE:I = 0x1

.field public static final CONTENT_TYPE_MUSIC:I = 0x0

.field public static final CONTENT_TYPE_VOICE:I = 0x3

.field public static final EFFECT_AUXILIARY:Ljava/lang/String; = "Auxiliary"

.field public static final EFFECT_INSERT:Ljava/lang/String; = "Insert"

.field public static final EFFECT_PRE_PROCESSING:Ljava/lang/String; = "Pre Processing"

.field public static final EFFECT_TYPE_AEC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_AGC:Ljava/util/UUID;

.field public static final EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

.field public static final EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field public static final EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

.field public static final EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final EXTRA_AUDIO_SESSION:Ljava/lang/String; = "android.media.extra.AUDIO_SESSION"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "android.media.extra.CONTENT_TYPE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.media.extra.PACKAGE_NAME"

.field public static final NATIVE_EVENT_CONTROL_STATUS:I = 0x0

.field public static final NATIVE_EVENT_ENABLED_STATUS:I = 0x1

.field public static final NATIVE_EVENT_PARAMETER_CHANGED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioEffect-JAVA"


# instance fields
.field private mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

.field private mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

.field private mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

.field private mId:I

.field private mJniData:J

.field public final mListenerLock:Ljava/lang/Object;

.field private mNativeAudioEffect:J

.field public mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

.field private mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/audiofx/AudioEffect;)Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    .registers 2

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_init()V

    const-string/jumbo v0, "c2e5d5f0-94bd-4763-9cac-4e234d06839e"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    const-string/jumbo v0, "47382d60-ddd8-11db-bf3a-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    const-string/jumbo v0, "0bed4300-ddd6-11db-8f34-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    const-string/jumbo v0, "0634f220-ddd4-11db-a0fc-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    const-string/jumbo v0, "37cc2c00-dddd-11db-8577-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    const-string/jumbo v0, "0a8abfe0-654c-11e0-ba26-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    const-string/jumbo v0, "7b491460-8d4d-11e0-bd61-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AEC:Ljava/util/UUID;

    const-string/jumbo v0, "58b4b260-8e06-11e0-aa8e-0002a5d5c51b"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NS:Ljava/util/UUID;

    const-string/jumbo v0, "fe3199be-aed0-413f-87bb-11260eb63cf1"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_LOUDNESS_ENHANCER:Ljava/util/UUID;

    const-string/jumbo v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;II)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v10, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    new-array v6, v2, [I

    new-array v7, v2, [Landroid/media/audiofx/AudioEffect$Descriptor;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v8}, Landroid/media/audiofx/AudioEffect;->native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_b2

    const/4 v0, -0x2

    if-eq v9, v0, :cond_b2

    const-string/jumbo v0, "AudioEffect-JAVA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " when initializing AudioEffect."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v9, :pswitch_data_c6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot initialize effect engine for type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Effect type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Effect library not loaded"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b2
    aget v0, v6, v10

    iput v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    aget-object v0, v7, v10

    iput-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_be
    iput v1, p0, Landroid/media/audiofx/AudioEffect;->mState:I
    :try_end_c0
    .catchall {:try_start_be .. :try_end_c0} :catchall_c2

    monitor-exit v0

    return-void

    :catchall_c2
    move-exception v1

    monitor-exit v0

    throw v1

    nop

    :pswitch_data_c6
    .packed-switch -0x5
        :pswitch_a9
        :pswitch_88
    .end packed-switch
.end method

.method public static byteArrayToInt([B)I
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v0

    return v0
.end method

.method public static byteArrayToInt([BI)I
    .registers 4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    return v1
.end method

.method public static byteArrayToShort([B)S
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v0

    return v0
.end method

.method public static byteArrayToShort([BI)S
    .registers 4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    return v1
.end method

.method public static varargs concatArrays([[B)[B
    .registers 9

    const/4 v5, 0x0

    const/4 v2, 0x0

    array-length v6, p0

    move v4, v5

    :goto_4
    if-ge v4, v6, :cond_d

    aget-object v0, p0, v4

    array-length v7, v0

    add-int/2addr v2, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    new-array v1, v2, [B

    const/4 v3, 0x0

    array-length v6, p0

    move v4, v5

    :goto_12
    if-ge v4, v6, :cond_1f

    aget-object v0, p0, v4

    array-length v7, v0

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v7, v0

    add-int/2addr v3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_1f
    return-object v1
.end method

.method private createNativeEventHandler()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_f

    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    :goto_e
    return-void

    :cond_f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1d

    new-instance v1, Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;-><init>(Landroid/media/audiofx/AudioEffect;Landroid/media/audiofx/AudioEffect;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_e

    :cond_1d
    iput-object v1, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    goto :goto_e
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

.method public static isEffectTypeAvailable(Ljava/util/UUID;)Z
    .registers 5

    const/4 v3, 0x0

    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v0

    if-nez v0, :cond_8

    return v3

    :cond_8
    const/4 v1, 0x0

    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    aget-object v2, v0, v1

    iget-object v2, v2, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v2, p0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    return v2

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    return v3
.end method

.method public static isError(I)Z
    .registers 2

    const/4 v0, 0x0

    if-gez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method private final native native_command(II[BI[B)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getParameter(I[BI[B)I
.end method

.method private final native native_hasControl()Z
.end method

.method private static final native native_init()V
.end method

.method private static native native_query_effects()[Ljava/lang/Object;
.end method

.method private static native native_query_pre_processing(I)[Ljava/lang/Object;
.end method

.method private final native native_release()V
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setParameter(I[BI[B)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;II[I[Ljava/lang/Object;Ljava/lang/String;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/audiofx/AudioEffect;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-eqz v2, :cond_1a

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, v0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    invoke-virtual {v2, v1}, Landroid/media/audiofx/AudioEffect$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1a
    return-void
.end method

.method public static queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 1

    invoke-static {}, Landroid/media/audiofx/AudioEffect;->native_query_effects()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static queryPreProcessings(I)[Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 2

    invoke-static {p0}, Landroid/media/audiofx/AudioEffect;->native_query_pre_processing(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public static shortToByteArray(S)[B
    .registers 4

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public checkState(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_25

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " called on uninitialized AudioEffect."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_25
    monitor-exit v1

    return-void
.end method

.method public checkStatus(I)V
    .registers 4

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->isError(I)Z

    move-result v0

    if-eqz v0, :cond_24

    packed-switch p1, :pswitch_data_26

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "AudioEffect: set/get parameter error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "AudioEffect: bad parameter value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "AudioEffect: invalid parameter operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    return-void

    nop

    :pswitch_data_26
    .packed-switch -0x5
        :pswitch_1b
        :pswitch_12
    .end packed-switch
.end method

.method public command(I[B[B)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "command()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    array-length v2, p2

    array-length v4, p3

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/audiofx/AudioEffect;->native_command(II[BI[B)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .registers 1

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_finalize()V

    return-void
.end method

.method public getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "getDescriptor()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mDescriptor:Landroid/media/audiofx/AudioEffect$Descriptor;

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "getEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_getEnabled()Z

    move-result v0

    return v0
.end method

.method public getId()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "getId()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/audiofx/AudioEffect;->mId:I

    return v0
.end method

.method public getParameter(I[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    return v1
.end method

.method public getParameter(I[I)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v5, 0x4

    array-length v3, p2

    const/4 v4, 0x2

    if-le v3, v4, :cond_9

    const/4 v3, -0x4

    return v3

    :cond_9
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x4

    new-array v2, v3, [B

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    if-eq v1, v5, :cond_1a

    if-ne v1, v6, :cond_2d

    :cond_1a
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v3

    const/4 v4, 0x0

    aput v3, p2, v4

    if-ne v1, v6, :cond_2a

    invoke-static {v2, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v3

    const/4 v4, 0x1

    aput v3, p2, v4

    :cond_2a
    div-int/lit8 v1, v1, 0x4

    :goto_2c
    return v1

    :cond_2d
    const/4 v1, -0x1

    goto :goto_2c
.end method

.method public getParameter(I[S)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x2

    array-length v3, p2

    if-le v3, v5, :cond_7

    const/4 v3, -0x4

    return v3

    :cond_7
    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v3, p2

    mul-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v1

    if-eq v1, v5, :cond_18

    if-ne v1, v6, :cond_2b

    :cond_18
    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v3

    const/4 v4, 0x0

    aput-short v3, p2, v4

    if-ne v1, v6, :cond_28

    invoke-static {v2, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v3

    const/4 v4, 0x1

    aput-short v3, p2, v4

    :cond_28
    div-int/lit8 v1, v1, 0x2

    :goto_2a
    return v1

    :cond_2b
    const/4 v1, -0x1

    goto :goto_2a
.end method

.method public getParameter([B[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "getParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_getParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public getParameter([I[B)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    array-length v2, p1

    if-le v2, v5, :cond_8

    const/4 v2, -0x4

    return v2

    :cond_8
    aget v2, p1, v4

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v2, p1

    if-le v2, v3, :cond_21

    aget v2, p1, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    new-array v2, v5, [[B

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_21
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    return v2
.end method

.method public getParameter([I[I)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    array-length v4, p1

    if-gt v4, v7, :cond_c

    array-length v4, p2

    if-le v4, v7, :cond_e

    :cond_c
    const/4 v4, -0x4

    return v4

    :cond_e
    aget v4, p1, v6

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v4, p1

    if-le v4, v5, :cond_27

    aget v4, p1, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_27
    array-length v4, p2

    mul-int/lit8 v4, v4, 0x4

    new-array v3, v4, [B

    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    if-eq v2, v8, :cond_34

    if-ne v2, v9, :cond_45

    :cond_34
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([B)I

    move-result v4

    aput v4, p2, v6

    if-ne v2, v9, :cond_42

    invoke-static {v3, v8}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v4

    aput v4, p2, v5

    :cond_42
    div-int/lit8 v2, v2, 0x4

    :goto_44
    return v2

    :cond_45
    const/4 v2, -0x1

    goto :goto_44
.end method

.method public getParameter([I[S)I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    array-length v4, p1

    if-gt v4, v5, :cond_a

    array-length v4, p2

    if-le v4, v5, :cond_c

    :cond_a
    const/4 v4, -0x4

    return v4

    :cond_c
    aget v4, p1, v7

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v4, p1

    if-le v4, v6, :cond_25

    aget v4, p1, v6

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    new-array v4, v5, [[B

    aput-object v0, v4, v7

    aput-object v1, v4, v6

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_25
    array-length v4, p2

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/AudioEffect;->getParameter([B[B)I

    move-result v2

    if-eq v2, v5, :cond_32

    if-ne v2, v8, :cond_43

    :cond_32
    invoke-static {v3}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([B)S

    move-result v4

    aput-short v4, p2, v7

    if-ne v2, v8, :cond_40

    invoke-static {v3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, p2, v6

    :cond_40
    div-int/lit8 v2, v2, 0x2

    :goto_42
    return v2

    :cond_43
    const/4 v2, -0x1

    goto :goto_42
.end method

.method public hasControl()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "hasControl()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_hasControl()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 3

    iget-object v1, p0, Landroid/media/audiofx/AudioEffect;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->native_release()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/AudioEffect;->mState:I
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setControlStatusListener(Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mControlChangeStatusListener:Landroid/media/audiofx/AudioEffect$OnControlStatusChangeListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    monitor-exit v0

    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_f
    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setEnableStatusListener(Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mEnableStatusChangeListener:Landroid/media/audiofx/AudioEffect$OnEnableStatusChangeListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    monitor-exit v0

    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_f
    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setEnabled(Z)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "setEnabled()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/audiofx/AudioEffect;->native_setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setParameter(II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter(IS)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-static {p2}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter(I[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-static {p1}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v1

    return v1
.end method

.method public setParameter([B[B)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const-string/jumbo v0, "setParameter()"

    invoke-virtual {p0, v0}, Landroid/media/audiofx/AudioEffect;->checkState(Ljava/lang/String;)V

    array-length v0, p1

    array-length v1, p2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/media/audiofx/AudioEffect;->native_setParameter(I[BI[B)I

    move-result v0

    return v0
.end method

.method public setParameter([I[B)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    array-length v2, p1

    if-le v2, v5, :cond_8

    const/4 v2, -0x4

    return v2

    :cond_8
    aget v2, p1, v4

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v2, p1

    if-le v2, v3, :cond_21

    aget v2, p1, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    new-array v2, v5, [[B

    aput-object v0, v2, v4

    aput-object v1, v2, v3

    invoke-static {v2}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_21
    invoke-virtual {p0, v0, p2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v2

    return v2
.end method

.method public setParameter([I[I)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    array-length v4, p1

    if-gt v4, v7, :cond_9

    array-length v4, p2

    if-le v4, v7, :cond_b

    :cond_9
    const/4 v4, -0x4

    return v4

    :cond_b
    aget v4, p1, v6

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v4, p1

    if-le v4, v5, :cond_24

    aget v4, p1, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_24
    aget v4, p2, v6

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v2

    array-length v4, p2

    if-le v4, v5, :cond_3d

    aget v4, p2, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v3

    new-array v4, v7, [[B

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    :cond_3d
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v4

    return v4
.end method

.method public setParameter([I[S)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    array-length v4, p1

    if-gt v4, v7, :cond_9

    array-length v4, p2

    if-le v4, v7, :cond_b

    :cond_9
    const/4 v4, -0x4

    return v4

    :cond_b
    aget v4, p1, v6

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v0

    array-length v4, p1

    if-le v4, v5, :cond_24

    aget v4, p1, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->intToByteArray(I)[B

    move-result-object v1

    new-array v4, v7, [[B

    aput-object v0, v4, v6

    aput-object v1, v4, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v0

    :cond_24
    aget-short v4, p2, v6

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v2

    array-length v4, p2

    if-le v4, v5, :cond_3d

    aget-short v4, p2, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->shortToByteArray(S)[B

    move-result-object v3

    new-array v4, v7, [[B

    aput-object v2, v4, v6

    aput-object v3, v4, v5

    invoke-static {v4}, Landroid/media/audiofx/AudioEffect;->concatArrays([[B)[B

    move-result-object v2

    :cond_3d
    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/AudioEffect;->setParameter([B[B)I

    move-result v4

    return v4
.end method

.method public setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V
    .registers 4

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput-object p1, p0, Landroid/media/audiofx/AudioEffect;->mParameterChangeListener:Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    monitor-exit v0

    if-eqz p1, :cond_f

    iget-object v0, p0, Landroid/media/audiofx/AudioEffect;->mNativeEventHandler:Landroid/media/audiofx/AudioEffect$NativeEventHandler;

    if-nez v0, :cond_f

    invoke-direct {p0}, Landroid/media/audiofx/AudioEffect;->createNativeEventHandler()V

    :cond_f
    return-void

    :catchall_10
    move-exception v1

    monitor-exit v0

    throw v1
.end method
