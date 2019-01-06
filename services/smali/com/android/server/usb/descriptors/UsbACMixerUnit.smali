.class public Lcom/android/server/usb/descriptors/UsbACMixerUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACMixerUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACMixerUnit"


# instance fields
.field protected mInputIDs:[B

.field protected mNumInputs:B

.field protected mNumOutputs:B

.field protected mUnitID:B


# direct methods
.method public constructor <init>(IBBB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBB)V

    return-void
.end method

.method protected static calcControlArraySize(II)I
    .registers 4

    mul-int v0, p0, p1

    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method


# virtual methods
.method public getInputIDs()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    return-object v0
.end method

.method public getNumInputs()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    return v0
.end method

.method public getNumOutputs()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    return v0
.end method

.method public getUnitID()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mUnitID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mUnitID:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    const/4 v0, 0x0

    :goto_13
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumInputs:B

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mInputIDs:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mNumOutputs:B

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbACMixerUnit;->mLength:I

    return v1
.end method
