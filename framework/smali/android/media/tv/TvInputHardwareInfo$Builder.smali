.class public final Landroid/media/tv/TvInputHardwareInfo$Builder;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputHardwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mCableConnectionStatus:Ljava/lang/Integer;

.field private mDeviceId:Ljava/lang/Integer;

.field private mHdmiPortId:Ljava/lang/Integer;

.field private mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    iput v2, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    return-object p0
.end method

.method public audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 2

    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    return-object p0
.end method

.method public build()Landroid/media/tv/TvInputHardwareInfo;
    .registers 5

    const/16 v3, 0x9

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    if-nez v1, :cond_11

    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_11
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_23

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-nez v1, :cond_23

    :cond_1d
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_23
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_2f

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-nez v1, :cond_1d

    :cond_2f
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo;

    invoke-direct {v0, v2}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo;)V

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set3(Landroid/media/tv/TvInputHardwareInfo;I)I

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set5(Landroid/media/tv/TvInputHardwareInfo;I)I

    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set1(Landroid/media/tv/TvInputHardwareInfo;I)I

    invoke-static {v0}, Landroid/media/tv/TvInputHardwareInfo;->-get0(Landroid/media/tv/TvInputHardwareInfo;)I

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set0(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)Ljava/lang/String;

    :cond_56
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-eqz v1, :cond_63

    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set4(Landroid/media/tv/TvInputHardwareInfo;I)I

    :cond_63
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->-set2(Landroid/media/tv/TvInputHardwareInfo;I)I

    return-object v0
.end method

.method public cableConnectionStatus(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    return-object p0
.end method

.method public deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    return-object p0
.end method

.method public hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    return-object p0
.end method

.method public type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .registers 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    return-object p0
.end method
