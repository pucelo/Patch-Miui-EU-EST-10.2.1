.class public final Lcom/android/server/usb/descriptors/Usb10ASFormatII;
.super Lcom/android/server/usb/descriptors/UsbASFormat;
.source "Usb10ASFormatII.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ASFormatII"


# instance fields
.field private mMaxBitRate:I

.field private mSamFreqType:B

.field private mSampleRates:[I

.field private mSamplesPerFrame:I


# direct methods
.method public constructor <init>(IBBBB)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBB)V

    return-void
.end method


# virtual methods
.method public getMaxBitRate()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mMaxBitRate:I

    return v0
.end method

.method public getSamFreqType()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamFreqType:B

    return v0
.end method

.method public getSampleRates()[I
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSampleRates:[I

    return-object v0
.end method

.method public getSamplesPerFrame()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamplesPerFrame:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v2

    iput v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mMaxBitRate:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v2

    iput v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamplesPerFrame:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    iput-byte v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamFreqType:B

    iget-byte v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamFreqType:B

    if-nez v2, :cond_29

    const/4 v1, 0x2

    :goto_17
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSampleRates:[I

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v1, :cond_2c

    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSampleRates:[I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbTriple()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_29
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mSamFreqType:B

    goto :goto_17

    :cond_2c
    iget v2, p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->mLength:I

    return v2
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbASFormat;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Max Bit Rate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->getMaxBitRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Samples Per Frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->getMaxBitRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->getSamFreqType()B

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;->getSampleRates()[I

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

    if-nez v1, :cond_9b

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

    :cond_94
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void

    :cond_9b
    const/4 v0, 0x0

    :goto_9c
    if-ge v0, v1, :cond_94

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

    goto :goto_9c
.end method
