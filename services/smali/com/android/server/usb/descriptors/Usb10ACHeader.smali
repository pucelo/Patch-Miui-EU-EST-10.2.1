.class public final Lcom/android/server/usb/descriptors/Usb10ACHeader;
.super Lcom/android/server/usb/descriptors/UsbACHeaderInterface;
.source "Usb10ACHeader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Usb10ACHeader"


# instance fields
.field private mControls:B

.field private mInterfaceNums:[B

.field private mNumInterfaces:B


# direct methods
.method public constructor <init>(IBBBI)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;-><init>(IBBBI)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    return-void
.end method


# virtual methods
.method public getControls()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mControls:B

    return v0
.end method

.method public getInterfaceNums()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    return-object v0
.end method

.method public getNumInterfaces()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mTotalLength:I

    iget v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mADCRelease:I

    const/16 v2, 0x200

    if-lt v1, v2, :cond_15

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mControls:B

    :cond_12
    iget v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mLength:I

    return v1

    :cond_15
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    const/4 v0, 0x0

    :goto_22
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mNumInterfaces:B

    if-ge v0, v1, :cond_12

    iget-object v1, p0, Lcom/android/server/usb/descriptors/Usb10ACHeader;->mInterfaceNums:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getNumInterfaces()B

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Interfaces"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v2, :cond_50

    const-string/jumbo v4, " ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getInterfaceNums()[B

    move-result-object v1

    if-eqz v1, :cond_4a

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v2, :cond_4a

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-byte v5, v1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_47

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_4a
    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Controls: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACHeader;->getControls()B

    move-result v5

    invoke-static {v5}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
