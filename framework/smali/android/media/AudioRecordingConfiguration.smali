.class public final Landroid/media/AudioRecordingConfiguration;
.super Ljava/lang/Object;
.source "AudioRecordingConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecordingConfiguration$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClientFormat:Landroid/media/AudioFormat;

.field private final mClientPackageName:Ljava/lang/String;

.field private final mClientSource:I

.field private final mClientUid:I

.field private final mDeviceFormat:Landroid/media/AudioFormat;

.field private final mPatchHandle:I

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "AudioRecordingConfiguration"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/media/AudioRecordingConfiguration$1;

    invoke-direct {v0}, Landroid/media/AudioRecordingConfiguration$1;-><init>()V

    sput-object v0, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    iput p2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    iput p3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iput-object p4, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iput-object p5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iput p6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iput-object p7, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    sget-object v0, Landroid/media/AudioFormat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioFormat;

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/AudioRecordingConfiguration;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/AudioRecordingConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;
    .registers 9

    new-instance v0, Landroid/media/AudioRecordingConfiguration;

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    iget v3, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget-object v4, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iget-object v5, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget v6, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    const-string/jumbo v7, ""

    const/4 v1, -0x1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;)V

    return-object v0
.end method

.method public static toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "session:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- source:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-static {v2}, Landroid/media/MediaRecorder;->toLogFriendlyAudioSource(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- patch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- pack:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " -- format client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", dev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2}, Landroid/media/AudioFormat;->toLogFriendlyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Landroid/media/AudioRecordingConfiguration;->toLogFriendlyString(Landroid/media/AudioRecordingConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    const/4 v1, 0x1

    return v1

    :cond_5
    if-eqz p1, :cond_d

    instance-of v2, p1, Landroid/media/AudioRecordingConfiguration;

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_e

    :cond_d
    return v1

    :cond_e
    move-object v0, p1

    check-cast v0, Landroid/media/AudioRecordingConfiguration;

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    if-ne v2, v3, :cond_45

    iget v2, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    iget v3, v0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v2, v3, :cond_45

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    iget-object v3, v0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    iget-object v3, v0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_45
    return v1
.end method

.method public getAudioDevice()Landroid/media/AudioDeviceInfo;
    .registers 12

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Landroid/media/AudioManager;->listAudioPatches(Ljava/util/ArrayList;)I

    move-result v7

    if-eqz v7, :cond_16

    sget-object v7, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Error retrieving list of audio patches"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_58

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPatch;

    invoke-virtual {v4}, Landroid/media/AudioPatch;->id()I

    move-result v7

    iget v8, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    if-ne v7, v8, :cond_55

    invoke-virtual {v4}, Landroid/media/AudioPatch;->sources()[Landroid/media/AudioPortConfig;

    move-result-object v6

    if-eqz v6, :cond_58

    array-length v7, v6

    if-lez v7, :cond_58

    aget-object v7, v6, v9

    invoke-virtual {v7}, Landroid/media/AudioPortConfig;->port()Landroid/media/AudioPort;

    move-result-object v7

    invoke-virtual {v7}, Landroid/media/AudioPort;->id()I

    move-result v0

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    const/4 v3, 0x0

    :goto_44
    array-length v7, v1

    if-ge v3, v7, :cond_58

    aget-object v7, v1, v3

    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v7

    if-ne v7, v0, :cond_52

    aget-object v7, v1, v3

    return-object v7

    :cond_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_44

    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_58
    sget-object v7, Landroid/media/AudioRecordingConfiguration;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Couldn\'t find device for recording, did recording end already?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10
.end method

.method public getClientAudioSessionId()I
    .registers 2

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    return v0
.end method

.method public getClientAudioSource()I
    .registers 2

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    return v0
.end method

.method public getClientFormat()Landroid/media/AudioFormat;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getClientUid()I
    .registers 2

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .registers 2

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    const/4 v1, 0x0

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mSessionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mDeviceFormat:Landroid/media/AudioFormat;

    invoke-virtual {v0, p1, v1}, Landroid/media/AudioFormat;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mPatchHandle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/media/AudioRecordingConfiguration;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
