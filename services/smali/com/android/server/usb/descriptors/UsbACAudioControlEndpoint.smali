.class public Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACAudioControlEndpoint.java"


# static fields
.field static final ADDRESSMASK_DIRECTION:B = -0x80t

.field static final ADDRESSMASK_ENDPOINT:B = 0xft

.field static final ATTRIBMASK_TRANS:B = 0x3t

.field static final ATTRIBSMASK_SYNC:B = 0xct

.field private static final TAG:Ljava/lang/String; = "UsbACAudioControlEndpoint"


# instance fields
.field private mAddress:B

.field private mAttribs:B

.field private mInterval:B

.field private mMaxPacketSize:I


# direct methods
.method public constructor <init>(IBB)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBB)V

    return-void
.end method


# virtual methods
.method public getAddress()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAddress:B

    return v0
.end method

.method public getAttribs()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAttribs:B

    return v0
.end method

.method public getInterval()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mInterval:B

    return v0
.end method

.method public getMaxPacketSize()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mMaxPacketSize:I

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
    .registers 3

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAddress:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mAttribs:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mMaxPacketSize:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mInterval:B

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACAudioControlEndpoint;->mLength:I

    return v0
.end method
