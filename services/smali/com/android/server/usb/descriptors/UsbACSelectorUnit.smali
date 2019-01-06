.class public final Lcom/android/server/usb/descriptors/UsbACSelectorUnit;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACSelectorUnit.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACSelectorUnit"


# instance fields
.field private mNameIndex:B

.field private mNumPins:B

.field private mSourceIDs:[B

.field private mUnitID:B


# direct methods
.method public constructor <init>(IBBB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBB)V

    return-void
.end method


# virtual methods
.method public getNameIndex()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNameIndex:B

    return v0
.end method

.method public getNumPins()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    return v0
.end method

.method public getSourceIDs()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    return-object v0
.end method

.method public getUnitID()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mUnitID:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 5

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mUnitID:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    const/4 v0, 0x0

    :goto_13
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNumPins:B

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mSourceIDs:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_22
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mNameIndex:B

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;->mLength:I

    return v1
.end method
