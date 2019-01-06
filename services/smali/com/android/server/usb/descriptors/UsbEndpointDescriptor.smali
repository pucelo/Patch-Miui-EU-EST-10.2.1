.class public Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbEndpointDescriptor.java"


# static fields
.field public static final DIRECTION_INPUT:B = -0x80t

.field public static final DIRECTION_OUTPUT:B = 0x0t

.field public static final MASK_ATTRIBS_SYNCTYPE:B = 0xct

.field public static final MASK_ATTRIBS_TRANSTYPE:B = 0x3t

.field public static final MASK_ATTRIBS_USEAGE:B = 0x30t

.field public static final MASK_ENDPOINT_ADDRESS:B = 0xft

.field public static final MASK_ENDPOINT_DIRECTION:B = -0x80t

.field public static final SYNCTYPE_ADAPTSYNC:B = 0x8t

.field public static final SYNCTYPE_ASYNC:B = 0x4t

.field public static final SYNCTYPE_NONE:B = 0x0t

.field public static final SYNCTYPE_RESERVED:B = 0xct

.field private static final TAG:Ljava/lang/String; = "UsbEndpointDescriptor"

.field public static final TRANSTYPE_BULK:B = 0x2t

.field public static final TRANSTYPE_CONTROL:B = 0x0t

.field public static final TRANSTYPE_INTERRUPT:B = 0x3t

.field public static final TRANSTYPE_ISO:B = 0x1t

.field public static final USEAGE_DATA:B = 0x0t

.field public static final USEAGE_EXPLICIT:B = 0x20t

.field public static final USEAGE_FEEDBACK:B = 0x10t

.field public static final USEAGE_RESERVED:B = 0x30t


# instance fields
.field private mAttributes:B

.field private mEndpointAddress:B

.field private mInterval:B

.field private mPacketSize:I

.field private mRefresh:B

.field private mSyncAddress:B


# direct methods
.method public constructor <init>(IB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method public getAttributes()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:B

    return v0
.end method

.method public getEndpointAddress()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:B

    return v0
.end method

.method public getInterval()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:B

    return v0
.end method

.method public getPacketSize()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    return v0
.end method

.method public getRefresh()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mRefresh:B

    return v0
.end method

.method public getSyncAddress()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mSyncAddress:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 4

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mEndpointAddress:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mAttributes:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mPacketSize:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mInterval:B

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mLength:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2a

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mRefresh:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mSyncAddress:B

    :cond_2a
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getEndpointAddress()B

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit8 v3, v0, 0xf

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit8 v2, v0, -0x80

    if-nez v2, :cond_c4

    const-string/jumbo v2, " [out]"

    :goto_27
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getAttributes()B

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attributes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x3

    packed-switch v2, :pswitch_data_11c

    :goto_60
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8a

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    const-string/jumbo v2, "Aync: "

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xc

    sparse-switch v2, :sswitch_data_128

    :goto_76
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openListItem()V

    const-string/jumbo v2, "Useage: "

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0x30

    sparse-switch v2, :sswitch_data_136

    :goto_87
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeListItem()V

    :cond_8a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package Size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getPacketSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getInterval()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void

    :cond_c4
    const-string/jumbo v2, " [in]"

    goto/16 :goto_27

    :pswitch_c9
    const-string/jumbo v2, "Control"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_60

    :pswitch_d0
    const-string/jumbo v2, "Iso"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_60

    :pswitch_d7
    const-string/jumbo v2, "Bulk"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_60

    :pswitch_de
    const-string/jumbo v2, "Interrupt"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto/16 :goto_60

    :sswitch_e6
    const-string/jumbo v2, "NONE"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_76

    :sswitch_ed
    const-string/jumbo v2, "ASYNC"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_76

    :sswitch_f4
    const-string/jumbo v2, "ADAPTIVE ASYNC"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto/16 :goto_76

    :sswitch_fc
    const-string/jumbo v2, "DATA"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto :goto_87

    :sswitch_103
    const-string/jumbo v2, "FEEDBACK"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto/16 :goto_87

    :sswitch_10b
    const-string/jumbo v2, "EXPLICIT FEEDBACK"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto/16 :goto_87

    :sswitch_113
    const-string/jumbo v2, "RESERVED"

    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->write(Ljava/lang/String;)V

    goto/16 :goto_87

    nop

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_d0
        :pswitch_d7
        :pswitch_de
    .end packed-switch

    :sswitch_data_128
    .sparse-switch
        0x0 -> :sswitch_e6
        0x4 -> :sswitch_ed
        0x8 -> :sswitch_f4
    .end sparse-switch

    :sswitch_data_136
    .sparse-switch
        0x0 -> :sswitch_fc
        0x10 -> :sswitch_103
        0x20 -> :sswitch_10b
        0x30 -> :sswitch_113
    .end sparse-switch
.end method
