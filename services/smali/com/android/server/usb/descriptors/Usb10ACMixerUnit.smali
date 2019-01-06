.class public final Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.source "Usb10ACMixerUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ACMixerUnit"


# instance fields
.field private mChanNameID:B

.field private mChannelConfig:I

.field private mControls:[B

.field private mNameID:B


# direct methods
.method public constructor <init>(IBBB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;-><init>(IBBB)V

    return-void
.end method


# virtual methods
.method public getChanNameID()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChanNameID:B

    return v0
.end method

.method public getChannelConfig()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    return v0
.end method

.method public getControls()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    return-object v0
.end method

.method public getNameID()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNameID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 6

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v2

    iput v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChannelConfig:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    iput-byte v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mChanNameID:B

    iget-byte v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNumInputs:B

    iget-byte v3, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNumOutputs:B

    invoke-static {v2, v3}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->calcControlArraySize(II)I

    move-result v0

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    const/4 v1, 0x0

    :goto_1c
    if-ge v1, v0, :cond_29

    iget-object v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mControls:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_29
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    iput-byte v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mNameID:B

    iget v2, p0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->mLength:I

    return v2
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 9

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    const-string/jumbo v5, "Mixer Unit"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unit ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getUnitID()B

    move-result v6

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getNumInputs()B

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getInputIDs()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Num Inputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_56
    if-ge v2, v4, :cond_82

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v3, v2

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_7f

    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    :cond_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    :cond_82
    const-string/jumbo v5, "]"

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Num Outputs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getNumOutputs()B

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Channel Config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getChannelConfig()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;->getControls()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Controls: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_ec
    array-length v5, v0

    if-ge v1, v5, :cond_116

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_113

    const-string/jumbo v5, " "

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    :cond_113
    add-int/lit8 v1, v1, 0x1

    goto :goto_ec

    :cond_116
    const-string/jumbo v5, "]"

    invoke-virtual {p1, v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
