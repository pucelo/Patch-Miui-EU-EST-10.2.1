.class public Lcom/android/server/usb/descriptors/UsbASFormat;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbASFormat.java"


# static fields
.field public static final EXT_FORMAT_TYPE_I:B = -0x7ft

.field public static final EXT_FORMAT_TYPE_II:B = -0x7et

.field public static final EXT_FORMAT_TYPE_III:B = -0x7dt

.field public static final FORMAT_TYPE_I:B = 0x1t

.field public static final FORMAT_TYPE_II:B = 0x2t

.field public static final FORMAT_TYPE_III:B = 0x3t

.field public static final FORMAT_TYPE_IV:B = 0x4t

.field private static final TAG:Ljava/lang/String; = "UsbASFormat"


# instance fields
.field private final mFormatType:B


# direct methods
.method public constructor <init>(IBBBB)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBB)V

    iput-byte p4, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 13

    const/16 v0, 0x200

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v6

    packed-switch v4, :pswitch_data_4e

    new-instance v0, Lcom/android/server/usb/descriptors/UsbASFormat;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBB)V

    return-object v0

    :pswitch_17
    if-ne v6, v0, :cond_23

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatI;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatI;-><init>(IBBBB)V

    return-object v0

    :cond_23
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;-><init>(IBBBB)V

    return-object v0

    :pswitch_2d
    if-ne v6, v0, :cond_39

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatII;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatII;-><init>(IBBBB)V

    return-object v0

    :cond_39
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;-><init>(IBBBB)V

    return-object v0

    :pswitch_43
    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;

    move v1, p2

    move v2, p3

    move v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;-><init>(IBBBB)V

    return-object v0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_17
        :pswitch_2d
        :pswitch_43
    .end packed-switch
.end method


# virtual methods
.method public getBitDepths()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelCounts()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormatType()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    return v0
.end method

.method public getSampleRates()[I
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbASFormat;->getFormatType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getFormatName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    return-void
.end method
