.class public abstract Lcom/android/server/usb/descriptors/UsbACInterface;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbACInterface.java"


# static fields
.field public static final ACI_CLOCK_MULTIPLIER:B = 0xct

.field public static final ACI_CLOCK_SELECTOR:B = 0xbt

.field public static final ACI_CLOCK_SOURCE:B = 0xat

.field public static final ACI_EXTENSION_UNIT:B = 0x8t

.field public static final ACI_FEATURE_UNIT:B = 0x6t

.field public static final ACI_HEADER:B = 0x1t

.field public static final ACI_INPUT_TERMINAL:B = 0x2t

.field public static final ACI_MIXER_UNIT:B = 0x4t

.field public static final ACI_OUTPUT_TERMINAL:B = 0x3t

.field public static final ACI_PROCESSING_UNIT:B = 0x7t

.field public static final ACI_SAMPLE_RATE_CONVERTER:B = 0xdt

.field public static final ACI_SELECTOR_UNIT:B = 0x5t

.field public static final ACI_UNDEFINED:B = 0x0t

.field public static final ASI_FORMAT_SPECIFIC:B = 0x3t

.field public static final ASI_FORMAT_TYPE:B = 0x2t

.field public static final ASI_GENERAL:B = 0x1t

.field public static final ASI_UNDEFINED:B = 0x0t

.field public static final FORMAT_III_IEC1937AC3:I = 0x2001

.field public static final FORMAT_III_IEC1937_MPEG1_Layer1:I = 0x2002

.field public static final FORMAT_III_IEC1937_MPEG1_Layer2:I = 0x2003

.field public static final FORMAT_III_IEC1937_MPEG2_EXT:I = 0x2004

.field public static final FORMAT_III_IEC1937_MPEG2_Layer1LS:I = 0x2005

.field public static final FORMAT_III_UNDEFINED:I = 0x2000

.field public static final FORMAT_II_AC3:I = 0x1002

.field public static final FORMAT_II_MPEG:I = 0x1001

.field public static final FORMAT_II_UNDEFINED:I = 0x1000

.field public static final FORMAT_I_ALAW:I = 0x4

.field public static final FORMAT_I_IEEE_FLOAT:I = 0x3

.field public static final FORMAT_I_MULAW:I = 0x5

.field public static final FORMAT_I_PCM:I = 0x1

.field public static final FORMAT_I_PCM8:I = 0x2

.field public static final FORMAT_I_UNDEFINED:I = 0x0

.field public static final MSI_ELEMENT:B = 0x4t

.field public static final MSI_HEADER:B = 0x1t

.field public static final MSI_IN_JACK:B = 0x2t

.field public static final MSI_OUT_JACK:B = 0x3t

.field public static final MSI_UNDEFINED:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "UsbACInterface"


# instance fields
.field protected final mSubclass:B

.field protected final mSubtype:B


# direct methods
.method public constructor <init>(IBBB)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    iput-byte p3, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    iput-byte p4, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:B

    return-void
.end method

.method private static allocAudioControlDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 12

    const/16 v0, 0x200

    packed-switch p4, :pswitch_data_88

    const-string/jumbo v0, "UsbACInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Audio Class Interface subtype:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACInterfaceUnparsed;-><init>(IBBB)V

    return-object v0

    :pswitch_29
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->setACInterfaceSpec(I)V

    if-ne v5, v0, :cond_3c

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACHeader;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ACHeader;-><init>(IBBBI)V

    return-object v0

    :cond_3c
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ACHeader;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ACHeader;-><init>(IBBBI)V

    return-object v0

    :pswitch_46
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v5

    if-ne v5, v0, :cond_52

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACInputTerminal;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACInputTerminal;-><init>(IBBB)V

    return-object v0

    :cond_52
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;-><init>(IBBB)V

    return-object v0

    :pswitch_58
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v5

    if-ne v5, v0, :cond_64

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACOutputTerminal;-><init>(IBBB)V

    return-object v0

    :cond_64
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;-><init>(IBBB)V

    return-object v0

    :pswitch_6a
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACSelectorUnit;-><init>(IBBB)V

    return-object v0

    :pswitch_70
    new-instance v0, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/UsbACFeatureUnit;-><init>(IBBB)V

    return-object v0

    :pswitch_76
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v5

    if-ne v5, v0, :cond_82

    new-instance v0, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ACMixerUnit;-><init>(IBBB)V

    return-object v0

    :cond_82
    new-instance v0, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ACMixerUnit;-><init>(IBBB)V

    return-object v0

    :pswitch_data_88
    .packed-switch 0x1
        :pswitch_29
        :pswitch_46
        :pswitch_58
        :pswitch_76
        :pswitch_6a
        :pswitch_70
    .end packed-switch
.end method

.method private static allocAudioStreamingDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v0

    packed-switch p4, :pswitch_data_3c

    const-string/jumbo v1, "UsbACInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown Audio Streaming Interface subtype:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :pswitch_27
    const/16 v1, 0x200

    if-ne v0, v1, :cond_31

    new-instance v1, Lcom/android/server/usb/descriptors/Usb20ASGeneral;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb20ASGeneral;-><init>(IBBB)V

    return-object v1

    :cond_31
    new-instance v1, Lcom/android/server/usb/descriptors/Usb10ASGeneral;

    invoke-direct {v1, p2, p3, p4, p5}, Lcom/android/server/usb/descriptors/Usb10ASGeneral;-><init>(IBBB)V

    return-object v1

    :pswitch_37
    invoke-static/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v1

    return-object v1

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_27
        :pswitch_37
    .end packed-switch
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 11

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()B

    move-result v5

    packed-switch v5, :pswitch_data_46

    const-string/jumbo v0, "UsbACInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown Audio Class Interface Subclass: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_2f
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocAudioControlDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_38
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocAudioStreamingDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_41
    invoke-static {p2, p3, v4, v5}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocMidiStreamingDescriptor(IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    return-object v0

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_38
        :pswitch_41
    .end packed-switch
.end method

.method private static allocMidiStreamingDescriptor(IBBB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 7

    packed-switch p2, :pswitch_data_36

    const-string/jumbo v0, "UsbACInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown MIDI Streaming Interface subtype:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :pswitch_23
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;-><init>(IBBB)V

    return-object v0

    :pswitch_29
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiInputJack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiInputJack;-><init>(IBBB)V

    return-object v0

    :pswitch_2f
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMSMidiOutputJack;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/descriptors/UsbMSMidiOutputJack;-><init>(IBBB)V

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_23
        :pswitch_29
        :pswitch_2f
    .end packed-switch
.end method


# virtual methods
.method public getSubclass()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubclass:B

    return v0
.end method

.method public getSubtype()B
    .registers 2

    iget-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACInterface;->mSubtype:B

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getACInterfaceSubclassName(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v3

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getACControlInterfaceName(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Subclass: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Subtype: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
