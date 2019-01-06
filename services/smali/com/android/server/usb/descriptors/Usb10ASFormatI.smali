.class public final Lcom/android/server/usb/descriptors/Usb10ASFormatI;
.super Lcom/android/server/usb/descriptors/UsbASFormat;
.source "Usb10ASFormatI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ASFormatI"


# instance fields
.field private mBitResolution:B

.field private mNumChannels:B

.field private mSampleFreqType:B

.field private mSampleRates:[I

.field private mSubframeSize:B


# direct methods
.method public constructor <init>(IBBBB)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBB)V

    return-void
.end method


# virtual methods
.method public getBitDepths()[I
    .registers 4

    const/4 v1, 0x1

    new-array v0, v1, [I

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0
.end method

.method public getBitResolution()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    return v0
.end method

.method public getChannelCounts()[I
    .registers 4

    const/4 v1, 0x1

    new-array v0, v1, [I

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    const/4 v2, 0x0

    aput v1, v0, v2

    return-object v0
.end method

.method public getNumChannels()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    return v0
.end method

.method public getSampleFreqType()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    return v0
.end method

.method public getSampleRates()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    return-object v0
.end method

.method public getSubframeSize()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSubframeSize:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mNumChannels:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSubframeSize:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mBitResolution:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    if-nez v1, :cond_36

    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    iget-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v2

    aput v2, v1, v3

    iget-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    :cond_33
    iget v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mLength:I

    return v1

    :cond_36
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    const/4 v0, 0x0

    :goto_3d
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleFreqType:B

    if-ge v0, v1, :cond_33

    iget-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3d
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbASFormat;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getNumChannels()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Channels."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Subframe Size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSubframeSize()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Bit Resolution: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getBitResolution()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSampleFreqType()B

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;->getSampleRates()[I

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sample Freq Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    if-nez v1, :cond_bd

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "min: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "max: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    :cond_b6
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void

    :cond_bd
    const/4 v0, 0x0

    :goto_be
    if-ge v0, v1, :cond_b6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_be
.end method
