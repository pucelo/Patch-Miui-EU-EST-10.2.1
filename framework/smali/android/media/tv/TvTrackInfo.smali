.class public final Landroid/media/tv/TvTrackInfo;
.super Ljava/lang/Object;
.source "TvTrackInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvTrackInfo$1;,
        Landroid/media/tv/TvTrackInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/tv/TvTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_AUDIO:I = 0x0

.field public static final TYPE_SUBTITLE:I = 0x2

.field public static final TYPE_VIDEO:I = 0x1


# instance fields
.field private final mAudioChannelCount:I

.field private final mAudioSampleRate:I

.field private final mDescription:Ljava/lang/CharSequence;

.field private final mExtra:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private final mLanguage:Ljava/lang/String;

.field private final mType:I

.field private final mVideoActiveFormatDescription:B

.field private final mVideoFrameRate:F

.field private final mVideoHeight:I

.field private final mVideoPixelAspectRatio:F

.field private final mVideoWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/media/tv/TvTrackInfo$1;

    invoke-direct {v0}, Landroid/media/tv/TvTrackInfo$1;-><init>()V

    sput-object v0, Landroid/media/tv/TvTrackInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    iput-object p2, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iput-object p3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iput-object p4, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    iput p5, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    iput p6, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    iput p7, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    iput p8, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    iput p9, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    iput p10, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    iput-byte p11, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    iput-object p12, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;Landroid/media/tv/TvTrackInfo;)V
    .registers 14

    invoke-direct/range {p0 .. p12}, Landroid/media/tv/TvTrackInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;IIIIFFBLandroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/tv/TvTrackInfo;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvTrackInfo;-><init>(Landroid/os/Parcel;)V

    return-void
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
    instance-of v3, p1, Landroid/media/tv/TvTrackInfo;

    if-nez v3, :cond_a

    return v2

    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/media/tv/TvTrackInfo;

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-ne v3, v4, :cond_4c

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    iget-object v4, v0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget-object v3, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    iget-object v4, v0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-nez v3, :cond_4d

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    if-ne v3, v4, :cond_4c

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    if-ne v3, v4, :cond_4c

    move v2, v1

    :cond_4c
    :goto_4c
    return v2

    :cond_4d
    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-ne v3, v1, :cond_6d

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    if-ne v3, v4, :cond_4c

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    if-ne v3, v4, :cond_4c

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4c

    iget v3, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    iget v4, v0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6f

    :cond_6d
    :goto_6d
    move v2, v1

    goto :goto_4c

    :cond_6f
    move v1, v2

    goto :goto_6d
.end method

.method public final getAudioChannelCount()I
    .registers 3

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    return v0
.end method

.method public final getAudioSampleRate()I
    .registers 3

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not an audio track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    return v0
.end method

.method public final getDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getExtra()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    return v0
.end method

.method public final getVideoActiveFormatDescription()B
    .registers 3

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    return v0
.end method

.method public final getVideoFrameRate()F
    .registers 3

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    return v0
.end method

.method public final getVideoHeight()I
    .registers 3

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    return v0
.end method

.method public final getVideoPixelAspectRatio()F
    .registers 3

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    return v0
.end method

.method public final getVideoWidth()I
    .registers 3

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not a video track"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Landroid/media/tv/TvTrackInfo;->mType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1a

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mDescription:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioChannelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mAudioSampleRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoFrameRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoPixelAspectRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-byte v0, p0, Landroid/media/tv/TvTrackInfo;->mVideoActiveFormatDescription:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Landroid/media/tv/TvTrackInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
