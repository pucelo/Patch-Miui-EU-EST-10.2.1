.class public abstract Lcom/android/server/usb/descriptors/UsbDescriptor;
.super Ljava/lang/Object;
.source "UsbDescriptor.java"

# interfaces
.implements Lcom/android/server/usb/descriptors/report/Reporting;


# static fields
.field public static final AUDIO_AUDIOCONTROL:B = 0x1t

.field public static final AUDIO_AUDIOSTREAMING:B = 0x2t

.field public static final AUDIO_MIDISTREAMING:B = 0x3t

.field public static final AUDIO_SUBCLASS_UNDEFINED:B = 0x0t

.field public static final CLASSID_APPSPECIFIC:B = -0x2t

.field public static final CLASSID_AUDIO:B = 0x1t

.field public static final CLASSID_AUDIOVIDEO:B = 0x10t

.field public static final CLASSID_BILLBOARD:B = 0x11t

.field public static final CLASSID_CDC_CONTROL:B = 0xat

.field public static final CLASSID_COM:B = 0x2t

.field public static final CLASSID_DEVICE:B = 0x0t

.field public static final CLASSID_DIAGNOSTIC:B = -0x24t

.field public static final CLASSID_HEALTHCARE:B = 0xft

.field public static final CLASSID_HID:B = 0x3t

.field public static final CLASSID_HUB:B = 0x9t

.field public static final CLASSID_IMAGE:B = 0x6t

.field public static final CLASSID_MISC:B = -0x11t

.field public static final CLASSID_PHYSICAL:B = 0x5t

.field public static final CLASSID_PRINTER:B = 0x7t

.field public static final CLASSID_SECURITY:B = 0xdt

.field public static final CLASSID_SMART_CARD:B = 0xbt

.field public static final CLASSID_STORAGE:B = 0x8t

.field public static final CLASSID_TYPECBRIDGE:B = 0x12t

.field public static final CLASSID_VENDSPECIFIC:B = -0x1t

.field public static final CLASSID_VIDEO:B = 0xet

.field public static final CLASSID_WIRELESS:B = -0x20t

.field public static final DESCRIPTORTYPE_AUDIO_ENDPOINT:B = 0x25t

.field public static final DESCRIPTORTYPE_AUDIO_INTERFACE:B = 0x24t

.field public static final DESCRIPTORTYPE_BOS:B = 0xft

.field public static final DESCRIPTORTYPE_CAPABILITY:B = 0x10t

.field public static final DESCRIPTORTYPE_CONFIG:B = 0x2t

.field public static final DESCRIPTORTYPE_DEVICE:B = 0x1t

.field public static final DESCRIPTORTYPE_ENDPOINT:B = 0x5t

.field public static final DESCRIPTORTYPE_ENDPOINT_COMPANION:B = 0x30t

.field public static final DESCRIPTORTYPE_HID:B = 0x21t

.field public static final DESCRIPTORTYPE_HUB:B = 0x29t

.field public static final DESCRIPTORTYPE_INTERFACE:B = 0x4t

.field public static final DESCRIPTORTYPE_INTERFACEASSOC:B = 0xbt

.field public static final DESCRIPTORTYPE_PHYSICAL:B = 0x23t

.field public static final DESCRIPTORTYPE_REPORT:B = 0x22t

.field public static final DESCRIPTORTYPE_STRING:B = 0x3t

.field public static final DESCRIPTORTYPE_SUPERSPEED_HUB:B = 0x2at

.field public static final REQUEST_CLEAR_FEATURE:I = 0x1

.field public static final REQUEST_GET_ADDRESS:I = 0x5

.field public static final REQUEST_GET_CONFIGURATION:I = 0x8

.field public static final REQUEST_GET_DESCRIPTOR:I = 0x6

.field public static final REQUEST_GET_STATUS:I = 0x0

.field public static final REQUEST_SET_CONFIGURATION:I = 0x9

.field public static final REQUEST_SET_DESCRIPTOR:I = 0x7

.field public static final REQUEST_SET_FEATURE:I = 0x3

.field private static final SIZE_STRINGBUFFER:I = 0x100

.field public static final STATUS_PARSED_OK:I = 0x1

.field public static final STATUS_PARSED_OVERRUN:I = 0x3

.field public static final STATUS_PARSED_UNDERRUN:I = 0x2

.field public static final STATUS_PARSE_EXCEPTION:I = 0x4

.field public static final STATUS_UNPARSED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbDescriptor"

.field private static sStatusStrings:[Ljava/lang/String;

.field private static sStringBuffer:[B


# instance fields
.field protected mHierarchyLevel:I

.field protected final mLength:I

.field private mOverUnderRunCount:I

.field private mRawData:[B

.field private mStatus:I

.field protected final mType:B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UNPARSED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "PARSED - OK"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "PARSED - UNDERRUN"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "PARSED - OVERRUN"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IB)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    const/4 v0, 0x2

    if-ge p1, v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_f
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    iput-byte p2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    return-void
.end method

.method public static getUsbDescriptorString(Landroid/hardware/usb/UsbDeviceConnection;B)Ljava/lang/String;
    .registers 14

    const-string/jumbo v10, ""

    if-eqz p1, :cond_25

    or-int/lit16 v3, p1, 0x300

    :try_start_7
    sget-object v5, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    const/16 v1, 0x80

    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v6, 0xff

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result v9

    if-ltz v9, :cond_26

    new-instance v11, Ljava/lang/String;

    sget-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStringBuffer:[B

    add-int/lit8 v1, v9, -0x2

    const-string/jumbo v2, "UTF-16LE"

    const/4 v3, 0x2

    invoke-direct {v11, v0, v3, v1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v10, v11

    :cond_25
    :goto_25
    return-object v10

    :cond_26
    const-string/jumbo v10, "?"
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_29} :catch_2a

    goto :goto_25

    :catch_2a
    move-exception v8

    const-string/jumbo v0, "UsbDescriptor"

    const-string/jumbo v1, "Can not communicate with USB device"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method private reportParseStatus(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 5

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v0

    packed-switch v0, :pswitch_data_3c

    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getOverUnderRunCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    goto :goto_7

    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getLength()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return v0
.end method

.method public getOverUnderRunCount()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    return v0
.end method

.method public getRawData()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    return v0
.end method

.method public getStatusString()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/android/server/usb/descriptors/UsbDescriptor;->sStatusStrings:[Ljava/lang/String;

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getType()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .registers 7

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v2

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int v0, v3, v2

    if-lez v0, :cond_1c

    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_1c

    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mRawData:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1c
    iget v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return v3
.end method

.method public postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    .registers 6

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v0

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    if-ge v0, v1, :cond_4f

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    const-string/jumbo v1, "UsbDescriptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UNDERRUN t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " < l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4e
    return-void

    :cond_4f
    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    if-le v0, v1, :cond_9c

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/ByteStream;->reverse(I)V

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    iget v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mOverUnderRunCount:I

    const-string/jumbo v1, "UsbDescriptor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OVERRRUN t:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mType:B

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " > l: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_9c
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    goto :goto_4e
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    if-eqz v2, :cond_4c

    iget v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mHierarchyLevel:I

    invoke-virtual {p1, v2, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeHeader(ILjava/lang/String;)V

    :goto_41
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4b

    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->reportParseStatus(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    :cond_4b
    return-void

    :cond_4c
    invoke-virtual {p1, v1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    goto :goto_41
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mStatus:I

    return-void
.end method

.method public shortReport(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v2

    invoke-static {v2}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getDescriptorName(B)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    return-void
.end method
