.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbDescriptorParser.java"


# static fields
.field private static final IN_HEADSET_TRIGGER:F = 0.75f

.field private static final OUT_HEADSET_TRIGGER:F = 0.75f

.field private static final TAG:Ljava/lang/String; = "UsbDescriptorParser"


# instance fields
.field private mACInterfacesSpec:I

.field private mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field private mDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    const/16 v0, 0x100

    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return-void
.end method

.method private allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .registers 8

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->resetReadCount()V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    const/4 v0, 0x0

    sparse-switch v2, :sswitch_data_72

    :goto_f
    if-nez v0, :cond_3f

    const-string/jumbo v3, "UsbDescriptorParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown Descriptor len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " type:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbUnknown;-><init>(IB)V

    :cond_3f
    return-object v0

    :sswitch_40
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;-><init>(IB)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    goto :goto_f

    :sswitch_48
    new-instance v0, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;-><init>(IB)V

    goto :goto_f

    :sswitch_4e
    new-instance v0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;-><init>(IB)V

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    goto :goto_f

    :sswitch_56
    new-instance v0, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;-><init>(IB)V

    goto :goto_f

    :sswitch_5c
    new-instance v0, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;-><init>(IB)V

    goto :goto_f

    :sswitch_62
    new-instance v0, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;-><init>(IB)V

    goto :goto_f

    :sswitch_68
    invoke-static {p0, p1, v1, v2}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    goto :goto_f

    :sswitch_6d
    invoke-static {p0, v1, v2}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v0

    goto :goto_f

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_40
        0x2 -> :sswitch_48
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_56
        0xb -> :sswitch_62
        0x21 -> :sswitch_5c
        0x24 -> :sswitch_68
        0x25 -> :sswitch_6d
    .end sparse-switch
.end method

.method private native getRawDescriptors(Ljava/lang/String;)[B
.end method


# virtual methods
.method public getACInterfaceDescriptors(BB)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BB)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_b

    instance-of v4, v1, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v4, :cond_36

    move-object v0, v1

    check-cast v0, Lcom/android/server/usb/descriptors/UsbACInterface;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v4

    if-ne v4, p1, :cond_b

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()B

    move-result v4

    if-ne v4, p2, :cond_b

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_36
    const-string/jumbo v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized Audio Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_68
    return-object v3
.end method

.method public getACInterfaceSpec()I
    .registers 2

    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return v0
.end method

.method public getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-object v0
.end method

.method public getDescriptors()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescriptors(B)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    if-ne v3, p1, :cond_b

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    return-object v2
.end method

.method public getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-object v0
.end method

.method public getInputHeadsetProbability()F
    .registers 14

    const/16 v12, 0x402

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    return v8

    :cond_b
    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x2

    invoke-virtual {p0, v8, v11}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BB)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v8, v1, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v8, :cond_89

    move-object v5, v1

    check-cast v5, Lcom/android/server/usb/descriptors/UsbACTerminal;

    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x201

    if-eq v8, v9, :cond_37

    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    if-ne v8, v12, :cond_78

    :cond_37
    :goto_37
    const/4 v3, 0x1

    :cond_38
    const/4 v4, 0x0

    const/4 v8, 0x3

    invoke-virtual {p0, v8, v11}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BB)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_42
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v8, v1, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v8, :cond_c3

    move-object v6, v1

    check-cast v6, Lcom/android/server/usb/descriptors/UsbACTerminal;

    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x301

    if-eq v8, v9, :cond_65

    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x302

    if-ne v8, v9, :cond_bc

    :cond_65
    :goto_65
    const/4 v4, 0x1

    :cond_66
    if-eqz v3, :cond_6c

    if-eqz v4, :cond_6c

    const/high16 v7, 0x3f400000    # 0.75f

    :cond_6c
    if-eqz v3, :cond_77

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDDescriptor()Z

    move-result v8

    if-eqz v8, :cond_77

    const/high16 v8, 0x3e800000    # 0.25f

    add-float/2addr v7, v8

    :cond_77
    return v7

    :cond_78
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x400

    if-eq v8, v9, :cond_37

    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x603

    if-ne v8, v9, :cond_16

    goto :goto_37

    :cond_89
    const-string/jumbo v8, "UsbDescriptorParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Undefined Audio Input terminal l: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " t:0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_bc
    invoke-virtual {v6}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    if-ne v8, v12, :cond_42

    goto :goto_65

    :cond_c3
    const-string/jumbo v8, "UsbDescriptorParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Undefined Audio Output terminal l: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " t:0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42
.end method

.method public getInterfaceDescriptorsForClass(B)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/usb/descriptors/UsbDescriptor;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_b

    instance-of v4, v0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_2f

    move-object v2, v0

    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()B

    move-result v4

    if-ne v4, p1, :cond_b

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_2f
    const-string/jumbo v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unrecognized Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_61
    return-object v3
.end method

.method public getOutputHeadsetProbability()F
    .registers 10

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    return v6

    :cond_8
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BB)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v6, v1, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v6, :cond_51

    move-object v4, v1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x301

    if-eq v6, v7, :cond_37

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x302

    if-ne v6, v7, :cond_48

    :cond_37
    :goto_37
    const/4 v3, 0x1

    :cond_38
    if-eqz v3, :cond_3c

    const/high16 v5, 0x3f400000    # 0.75f

    :cond_3c
    if-eqz v3, :cond_47

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDDescriptor()Z

    move-result v6

    if-eqz v6, :cond_47

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    :cond_47
    return v5

    :cond_48
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v6

    const/16 v7, 0x402

    if-ne v6, v7, :cond_14

    goto :goto_37

    :cond_51
    const-string/jumbo v6, "UsbDescriptorParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Undefined Audio Output terminal l: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " t:0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public getParsingSpec()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getUsbSpec()I
    .registers 2

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSpec()I

    move-result v0

    return v0

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public hasHIDDescriptor()Z
    .registers 3

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(B)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public hasMIDIInterface()Z
    .registers 9

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(B)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    instance-of v4, v0, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_24

    move-object v3, v0

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()B

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    return v7

    :cond_24
    const-string/jumbo v4, "UsbDescriptorParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Undefined Audio Class Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_56
    const/4 v4, 0x0

    return v4
.end method

.method public isInputHeadset()Z
    .registers 5

    const-string/jumbo v0, "UsbDescriptorParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "---- isInputHeadset() prob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public isOutputHeadset()Z
    .registers 5

    const-string/jumbo v0, "UsbDescriptorParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "---- isOutputHeadset() prob:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public parseDescriptors([B)V
    .registers 7

    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v2, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v2, p1}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    :cond_a
    :goto_a
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v3

    if-lez v3, :cond_49

    const/4 v0, 0x0

    :try_start_11
    invoke-direct {p0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_23

    move-result-object v0

    :goto_15
    if-eqz v0, :cond_a

    :try_start_17
    invoke-virtual {v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    invoke-virtual {v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_2e
    .catchall {:try_start_17 .. :try_end_1d} :catchall_42

    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catch_23
    move-exception v1

    const-string/jumbo v3, "UsbDescriptorParser"

    const-string/jumbo v4, "Exception allocating USB descriptor."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :catch_2e
    move-exception v1

    :try_start_2f
    const-string/jumbo v3, "UsbDescriptorParser"

    const-string/jumbo v4, "Exception parsing USB descriptors."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->setStatus(I)V
    :try_end_3c
    .catchall {:try_start_2f .. :try_end_3c} :catchall_42

    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :catchall_42
    move-exception v3

    iget-object v4, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    throw v3

    :cond_49
    return-void
.end method

.method public parseDevice(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDescriptors([B)V

    const/4 v1, 0x1

    return v1

    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public setACInterfaceSpec(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return-void
.end method
