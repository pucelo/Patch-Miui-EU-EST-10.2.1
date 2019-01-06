.class public final Landroid/media/AudioFormat;
.super Ljava/lang/Object;
.source "AudioFormat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFormat$1;,
        Landroid/media/AudioFormat$Builder;
    }
.end annotation


# static fields
.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_INDEX_MASK:I = 0x8

.field public static final AUDIO_FORMAT_HAS_PROPERTY_CHANNEL_MASK:I = 0x4

.field public static final AUDIO_FORMAT_HAS_PROPERTY_ENCODING:I = 0x1

.field public static final AUDIO_FORMAT_HAS_PROPERTY_NONE:I = 0x0

.field public static final AUDIO_FORMAT_HAS_PROPERTY_SAMPLE_RATE:I = 0x2

.field public static final CHANNEL_CONFIGURATION_DEFAULT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_INVALID:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_MONO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_CONFIGURATION_STEREO:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_INVALID:I = 0x0

.field public static final CHANNEL_IN_5POINT1:I = 0xfc

.field public static final CHANNEL_IN_BACK:I = 0x20

.field public static final CHANNEL_IN_BACK_PROCESSED:I = 0x200

.field public static final CHANNEL_IN_DEFAULT:I = 0x1

.field public static final CHANNEL_IN_FRONT:I = 0x10

.field public static final CHANNEL_IN_FRONT_BACK:I = 0x30

.field public static final CHANNEL_IN_FRONT_PROCESSED:I = 0x100

.field public static final CHANNEL_IN_LEFT:I = 0x4

.field public static final CHANNEL_IN_LEFT_PROCESSED:I = 0x40

.field public static final CHANNEL_IN_MONO:I = 0x10

.field public static final CHANNEL_IN_PRESSURE:I = 0x400

.field public static final CHANNEL_IN_RIGHT:I = 0x8

.field public static final CHANNEL_IN_RIGHT_PROCESSED:I = 0x80

.field public static final CHANNEL_IN_STEREO:I = 0xc

.field public static final CHANNEL_IN_VOICE_DNLINK:I = 0x8000

.field public static final CHANNEL_IN_VOICE_UPLINK:I = 0x4000

.field public static final CHANNEL_IN_X_AXIS:I = 0x800

.field public static final CHANNEL_IN_Y_AXIS:I = 0x1000

.field public static final CHANNEL_IN_Z_AXIS:I = 0x2000

.field public static final CHANNEL_OUT_5POINT1:I = 0xfc

.field public static final CHANNEL_OUT_5POINT1_SIDE:I = 0x183c

.field public static final CHANNEL_OUT_7POINT1:I = 0x3fc
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CHANNEL_OUT_7POINT1_SURROUND:I = 0x18fc

.field public static final CHANNEL_OUT_BACK_CENTER:I = 0x400

.field public static final CHANNEL_OUT_BACK_LEFT:I = 0x40

.field public static final CHANNEL_OUT_BACK_RIGHT:I = 0x80

.field public static final CHANNEL_OUT_DEFAULT:I = 0x1

.field public static final CHANNEL_OUT_FRONT_CENTER:I = 0x10

.field public static final CHANNEL_OUT_FRONT_LEFT:I = 0x4

.field public static final CHANNEL_OUT_FRONT_LEFT_OF_CENTER:I = 0x100

.field public static final CHANNEL_OUT_FRONT_RIGHT:I = 0x8

.field public static final CHANNEL_OUT_FRONT_RIGHT_OF_CENTER:I = 0x200

.field public static final CHANNEL_OUT_LOW_FREQUENCY:I = 0x20

.field public static final CHANNEL_OUT_MONO:I = 0x4

.field public static final CHANNEL_OUT_QUAD:I = 0xcc

.field public static final CHANNEL_OUT_QUAD_SIDE:I = 0x180c

.field public static final CHANNEL_OUT_SIDE_LEFT:I = 0x800

.field public static final CHANNEL_OUT_SIDE_RIGHT:I = 0x1000

.field public static final CHANNEL_OUT_STEREO:I = 0xc

.field public static final CHANNEL_OUT_SURROUND:I = 0x41c

.field public static final CHANNEL_OUT_TOP_BACK_CENTER:I = 0x40000

.field public static final CHANNEL_OUT_TOP_BACK_LEFT:I = 0x20000

.field public static final CHANNEL_OUT_TOP_BACK_RIGHT:I = 0x80000

.field public static final CHANNEL_OUT_TOP_CENTER:I = 0x2000

.field public static final CHANNEL_OUT_TOP_FRONT_CENTER:I = 0x8000

.field public static final CHANNEL_OUT_TOP_FRONT_LEFT:I = 0x4000

.field public static final CHANNEL_OUT_TOP_FRONT_RIGHT:I = 0x10000

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENCODING_AAC_HE_V1:I = 0xb

.field public static final ENCODING_AAC_HE_V2:I = 0xc

.field public static final ENCODING_AAC_LC:I = 0xa

.field public static final ENCODING_AC3:I = 0x5

.field public static final ENCODING_AMRNB:I = 0x64

.field public static final ENCODING_AMRWB:I = 0x65

.field public static final ENCODING_DEFAULT:I = 0x1

.field public static final ENCODING_DOLBY_TRUEHD:I = 0xe

.field public static final ENCODING_DTS:I = 0x7

.field public static final ENCODING_DTS_HD:I = 0x8

.field public static final ENCODING_EVRC:I = 0x66

.field public static final ENCODING_EVRCB:I = 0x67

.field public static final ENCODING_EVRCNW:I = 0x69

.field public static final ENCODING_EVRCWB:I = 0x68

.field public static final ENCODING_E_AC3:I = 0x6

.field public static final ENCODING_IEC61937:I = 0xd

.field public static final ENCODING_INVALID:I = 0x0

.field public static final ENCODING_MP3:I = 0x9

.field public static final ENCODING_PCM_16BIT:I = 0x2

.field public static final ENCODING_PCM_8BIT:I = 0x3

.field public static final ENCODING_PCM_FLOAT:I = 0x4

.field public static final SAMPLE_RATE_HZ_MAX:I = 0x2ee00

.field public static final SAMPLE_RATE_HZ_MIN:I = 0xfa0

.field public static final SAMPLE_RATE_UNSPECIFIED:I


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method static synthetic -get0(Landroid/media/AudioFormat;)I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method static synthetic -get1(Landroid/media/AudioFormat;)I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/AudioFormat;)I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method static synthetic -get3(Landroid/media/AudioFormat;)I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method static synthetic -get4(Landroid/media/AudioFormat;)I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method static synthetic -set0(Landroid/media/AudioFormat;I)I
    .registers 2

    iput p1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return p1
.end method

.method static synthetic -set1(Landroid/media/AudioFormat;I)I
    .registers 2

    iput p1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return p1
.end method

.method static synthetic -set2(Landroid/media/AudioFormat;I)I
    .registers 2

    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    return p1
.end method

.method static synthetic -set3(Landroid/media/AudioFormat;I)I
    .registers 2

    iput p1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return p1
.end method

.method static synthetic -set4(Landroid/media/AudioFormat;I)I
    .registers 2

    iput p1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/AudioFormat$1;

    invoke-direct {v0}, Landroid/media/AudioFormat$1;-><init>()V

    sput-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "There is no valid usage of this constructor"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioFormat;->mEncoding:I

    iput p2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iput p3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iput p4, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    const/16 v0, 0xf

    iput v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return-void
.end method

.method synthetic constructor <init>(ILandroid/media/AudioFormat;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioFormat;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioFormat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static channelCountFromInChannelMask(I)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static channelCountFromOutChannelMask(I)I
    .registers 2

    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static convertChannelOutMaskToNativeMask(I)I
    .registers 2

    shr-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static convertNativeChannelMaskToOutMask(I)I
    .registers 2

    shl-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static filterPublicFormats([I)[I
    .registers 5

    const/4 v3, 0x0

    if-nez p0, :cond_4

    return-object v3

    :cond_4
    array-length v3, p0

    invoke-static {p0, v3}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_b
    array-length v3, v1

    if-ge v0, v3, :cond_21

    aget v3, v1, v0

    invoke-static {v3}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    if-eq v2, v0, :cond_1c

    aget v3, v1, v0

    aput v3, v1, v2

    :cond_1c
    add-int/lit8 v2, v2, 0x1

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    return-object v3
.end method

.method public static getBytesPerSample(I)I
    .registers 4

    sparse-switch p0, :sswitch_data_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1d
    const/4 v0, 0x1

    return v0

    :sswitch_1f
    const/4 v0, 0x2

    return v0

    :sswitch_21
    const/4 v0, 0x4

    return v0

    :sswitch_23
    const/16 v0, 0x20

    return v0

    :sswitch_26
    const/16 v0, 0x3d

    return v0

    :sswitch_29
    const/16 v0, 0x17

    return v0

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_1f
        0x2 -> :sswitch_1f
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_21
        0xd -> :sswitch_1f
        0x64 -> :sswitch_23
        0x65 -> :sswitch_26
        0x66 -> :sswitch_29
        0x67 -> :sswitch_29
        0x68 -> :sswitch_29
        0x69 -> :sswitch_29
    .end sparse-switch
.end method

.method public static inChannelMaskFromOutChannelMask(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal CHANNEL_OUT_DEFAULT channel mask for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    packed-switch v0, :pswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unsupported channel configuration for input."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1c
    const/16 v0, 0x10

    return v0

    :pswitch_1f
    const/16 v0, 0xc

    return v0

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1f
    .end packed-switch
.end method

.method public static isEncodingLinearFrames(I)Z
    .registers 4

    packed-switch p0, :pswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    const/4 v0, 0x1

    return v0

    :pswitch_1f
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method public static isEncodingLinearPcm(I)Z
    .registers 4

    sparse-switch p0, :sswitch_data_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Bad audio format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1d
    const/4 v0, 0x1

    return v0

    :sswitch_1f
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1d
        0x4 -> :sswitch_1d
        0x5 -> :sswitch_1f
        0x6 -> :sswitch_1f
        0x7 -> :sswitch_1f
        0x8 -> :sswitch_1f
        0x9 -> :sswitch_1f
        0xa -> :sswitch_1f
        0xb -> :sswitch_1f
        0xc -> :sswitch_1f
        0xd -> :sswitch_1f
        0x64 -> :sswitch_1f
        0x65 -> :sswitch_1f
        0x66 -> :sswitch_1f
        0x67 -> :sswitch_1f
        0x68 -> :sswitch_1f
        0x69 -> :sswitch_1f
    .end sparse-switch
.end method

.method public static isPublicEncoding(I)Z
    .registers 2

    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_8
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public static isValidEncoding(I)Z
    .registers 2

    sparse-switch p0, :sswitch_data_8

    const/4 v0, 0x0

    return v0

    :sswitch_5
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_8
    .sparse-switch
        0x2 -> :sswitch_5
        0x3 -> :sswitch_5
        0x4 -> :sswitch_5
        0x5 -> :sswitch_5
        0x6 -> :sswitch_5
        0x7 -> :sswitch_5
        0x8 -> :sswitch_5
        0x9 -> :sswitch_5
        0xa -> :sswitch_5
        0xb -> :sswitch_5
        0xc -> :sswitch_5
        0xd -> :sswitch_5
        0x64 -> :sswitch_5
        0x65 -> :sswitch_5
        0x66 -> :sswitch_5
        0x67 -> :sswitch_5
        0x68 -> :sswitch_5
        0x69 -> :sswitch_5
    .end sparse-switch
.end method

.method public static toLogFriendlyEncoding(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_50

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid encoding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_18
    const-string/jumbo v0, "ENCODING_INVALID"

    return-object v0

    :pswitch_1c
    const-string/jumbo v0, "ENCODING_PCM_16BIT"

    return-object v0

    :pswitch_20
    const-string/jumbo v0, "ENCODING_PCM_8BIT"

    return-object v0

    :pswitch_24
    const-string/jumbo v0, "ENCODING_PCM_FLOAT"

    return-object v0

    :pswitch_28
    const-string/jumbo v0, "ENCODING_AC3"

    return-object v0

    :pswitch_2c
    const-string/jumbo v0, "ENCODING_E_AC3"

    return-object v0

    :pswitch_30
    const-string/jumbo v0, "ENCODING_DTS"

    return-object v0

    :pswitch_34
    const-string/jumbo v0, "ENCODING_DTS_HD"

    return-object v0

    :pswitch_38
    const-string/jumbo v0, "ENCODING_MP3"

    return-object v0

    :pswitch_3c
    const-string/jumbo v0, "ENCODING_AAC_LC"

    return-object v0

    :pswitch_40
    const-string/jumbo v0, "ENCODING_AAC_HE_V1"

    return-object v0

    :pswitch_44
    const-string/jumbo v0, "ENCODING_AAC_HE_V2"

    return-object v0

    :pswitch_48
    const-string/jumbo v0, "ENCODING_IEC61937"

    return-object v0

    :pswitch_4c
    const-string/jumbo v0, "ENCODING_DOLBY_TRUEHD"

    return-object v0

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_18
        :pswitch_3
        :pswitch_1c
        :pswitch_20
        :pswitch_24
        :pswitch_28
        :pswitch_2c
        :pswitch_30
        :pswitch_34
        :pswitch_38
        :pswitch_3c
        :pswitch_40
        :pswitch_44
        :pswitch_48
        :pswitch_4c
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_12

    :cond_11
    return v2

    :cond_12
    move-object v0, p1

    check-cast v0, Landroid/media/AudioFormat;

    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    iget v4, v0, Landroid/media/AudioFormat;->mPropertySetMask:I

    if-eq v3, v4, :cond_1c

    return v2

    :cond_1c
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_28

    iget v3, p0, Landroid/media/AudioFormat;->mEncoding:I

    iget v4, v0, Landroid/media/AudioFormat;->mEncoding:I

    if-ne v3, v4, :cond_4f

    :cond_28
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_34

    iget v3, p0, Landroid/media/AudioFormat;->mSampleRate:I

    iget v4, v0, Landroid/media/AudioFormat;->mSampleRate:I

    if-ne v3, v4, :cond_4f

    :cond_34
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_40

    iget v3, p0, Landroid/media/AudioFormat;->mChannelMask:I

    iget v4, v0, Landroid/media/AudioFormat;->mChannelMask:I

    if-ne v3, v4, :cond_4f

    :cond_40
    iget v3, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_4c

    iget v3, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    iget v4, v0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    if-ne v3, v4, :cond_4d

    :cond_4c
    :goto_4c
    return v1

    :cond_4d
    move v1, v2

    goto :goto_4c

    :cond_4f
    move v1, v2

    goto :goto_4c
.end method

.method public getChannelCount()I
    .registers 4

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    if-nez v0, :cond_14

    move v0, v1

    :cond_13
    :goto_13
    return v0

    :cond_14
    if-eq v0, v1, :cond_13

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    goto :goto_13
.end method

.method public getChannelIndexMask()I
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    return v0
.end method

.method public getChannelMask()I
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    return v0
.end method

.method public getEncoding()I
    .registers 3

    const/4 v1, 0x0

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    return v0
.end method

.method public getPropertySetMask()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toLogFriendlyString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "%dch %dHz %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-static {v2}, Landroid/media/AudioFormat;->toLogFriendlyEncoding(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioFormat: props="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chan=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chan_index=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/media/AudioFormat;->mPropertySetMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mEncoding:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mChannelMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioFormat;->mChannelIndexMask:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
