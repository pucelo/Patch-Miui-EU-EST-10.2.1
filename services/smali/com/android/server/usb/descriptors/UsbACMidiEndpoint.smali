.class public final Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACMidiEndpoint.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACMidiEndpoint"


# instance fields
.field private mJackIds:[B

.field private mNumJacks:B


# direct methods
.method public constructor <init>(IBB)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBB)V

    return-void
.end method


# virtual methods
.method public getJackIds()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->mJackIds:[B

    return-object v0
.end method

.method public getNumJacks()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->mNumJacks:B

    return v0
.end method

.method public bridge synthetic getSubclass()B
    .registers 2

    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubclass()B

    move-result v0

    return v0
.end method

.method public bridge synthetic getSubtype()B
    .registers 2

    invoke-super {p0}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->getSubtype()B

    move-result v0

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->mNumJacks:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->mNumJacks:B

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->mJackIds:[B

    const/4 v0, 0x0

    :goto_10
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->mNumJacks:B

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->mJackIds:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    :cond_1f
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->mLength:I

    return v1
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AC Midi Endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->getType()B

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeHeader(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidiEndpoint;->getNumJacks()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " Jacks."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
