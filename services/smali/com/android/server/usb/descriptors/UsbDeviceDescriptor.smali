.class public final Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbDeviceDescriptor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbDeviceDescriptor"

.field public static final USBSPEC_1_0:I = 0x100

.field public static final USBSPEC_1_1:I = 0x110

.field public static final USBSPEC_2_0:I = 0x200


# instance fields
.field private mDevClass:B

.field private mDevSubClass:B

.field private mDeviceRelease:I

.field private mMfgIndex:B

.field private mNumConfigs:B

.field private mPacketSize:B

.field private mProductID:I

.field private mProductIndex:B

.field private mProtocol:B

.field private mSerialNum:B

.field private mSpec:I

.field private mVendorID:I


# direct methods
.method constructor <init>(IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method public getDevClass()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:B

    return v0
.end method

.method public getDevSubClass()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:B

    return v0
.end method

.method public getDeviceRelease()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    return v0
.end method

.method public getMfgIndex()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    return v0
.end method

.method public getNumConfigs()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mNumConfigs:B

    return v0
.end method

.method public getPacketSize()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mPacketSize:B

    return v0
.end method

.method public getProductID()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    return v0
.end method

.method public getProductIndex()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    return v0
.end method

.method public getProtocol()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:B

    return v0
.end method

.method public getSerialNum()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialNum:B

    return v0
.end method

.method public getSpec()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    return v0
.end method

.method public getVendorID()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSpec:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevClass:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDevSubClass:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProtocol:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mPacketSize:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mVendorID:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductID:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mDeviceRelease:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mMfgIndex:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mProductIndex:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mSerialNum:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mNumConfigs:B

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 13

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Spec: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDevClass()B

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDevSubClass()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getClassName(B)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Class "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Subclass"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Vendor ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Product ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Product Release: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceRelease()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgIndex()B

    move-result v4

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getUsbDescriptorString(Landroid/hardware/usb/UsbDeviceConnection;B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductIndex()B

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getConnection()Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getUsbDescriptorString(Landroid/hardware/usb/UsbDeviceConnection;B)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Manufacturer "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " Product "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
