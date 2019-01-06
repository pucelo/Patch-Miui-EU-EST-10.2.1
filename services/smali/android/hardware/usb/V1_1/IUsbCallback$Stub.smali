.class public abstract Landroid/hardware/usb/V1_1/IUsbCallback$Stub;
.super Landroid/os/HwBinder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/V1_1/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/V1_1/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 5

    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/16 v4, 0x20

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [[B

    new-array v2, v4, [B

    fill-array-data v2, :array_28

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v4, [B

    fill-array-data v2, :array_3c

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v4, [B

    fill-array-data v2, :array_50

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_28
    .array-data 1
        0x13t
        -0x5bt
        -0x80t
        -0x1dt
        0x5at
        -0x10t
        0x12t
        0x70t
        -0x5ft
        -0x17t
        0x77t
        0x41t
        0x77t
        -0x3bt
        0x1dt
        -0x4bt
        0x1dt
        -0x7at
        0x72t
        -0x1at
        0x13t
        -0x65t
        -0x60t
        0x8t
        0x51t
        -0x1at
        0x54t
        -0x1at
        -0x76t
        0x4dt
        0x7dt
        -0x1t
    .end array-data

    :array_3c
    .array-data 1
        0x4bt
        -0x19t
        -0x78t
        0x1et
        0x41t
        0x1bt
        -0x5ct
        0x27t
        -0x7ct
        -0x41t
        0x5bt
        0x73t
        0x54t
        -0x3ft
        0x4at
        -0x20t
        -0x31t
        0x16t
        0x10t
        0x4t
        -0x2dt
        -0x6ct
        0x33t
        -0x56t
        -0x14t
        -0x56t
        -0x50t
        -0x2ft
        -0x62t
        -0x57t
        -0x6dt
        0x54t
    .end array-data

    :array_50
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.hardware.usb@1.1::IUsbCallback"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hardware.usb@1.0::IUsbCallback"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "android.hardware.usb@1.1::IUsbCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    invoke-static {}, Landroid/os/SystemProperties;->reportSyspropChanged()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_172

    :goto_3
    :sswitch_3
    return-void

    :sswitch_4
    const-string/jumbo v20, "android.hardware.usb@1.0::IUsbCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/V1_0/PortStatus;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v15, v1}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->notifyPortStatusChange(Ljava/util/ArrayList;I)V

    goto :goto_3

    :sswitch_1e
    const-string/jumbo v20, "android.hardware.usb@1.0::IUsbCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v18

    new-instance v17, Landroid/hardware/usb/V1_0/PortRole;

    invoke-direct/range {v17 .. v17}, Landroid/hardware/usb/V1_0/PortRole;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/hardware/usb/V1_0/PortRole;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/V1_0/PortRole;I)V

    goto :goto_3

    :sswitch_48
    const-string/jumbo v20, "android.hardware.usb@1.1::IUsbCallback"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/hardware/usb/V1_1/PortStatus_1_1;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->notifyPortStatusChange_1_1(Ljava/util/ArrayList;I)V

    goto :goto_3

    :sswitch_64
    const-string/jumbo v20, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v10

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    :sswitch_84
    const-string/jumbo v20, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_9c
    const-string/jumbo v20, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v9

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_bd
    const-string/jumbo v20, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v11

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v6, Landroid/os/HwBlob;

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    const-wide/16 v20, 0x8

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1, v13}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v20, 0xc

    const/16 v22, 0x0

    move-wide/from16 v0, v20

    move/from16 v2, v22

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v14, Landroid/os/HwBlob;

    mul-int/lit8 v20, v13, 0x20

    move/from16 v0, v20

    invoke-direct {v14, v0}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v7, 0x0

    :goto_fd
    if-ge v7, v13, :cond_122

    mul-int/lit8 v20, v7, 0x20

    move/from16 v0, v20

    int-to-long v4, v0

    const/4 v8, 0x0

    :goto_105
    const/16 v20, 0x20

    move/from16 v0, v20

    if-ge v8, v0, :cond_11f

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [B

    aget-byte v20, v20, v8

    move/from16 v0, v20

    invoke-virtual {v14, v4, v5, v0}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v20, 0x1

    add-long v4, v4, v20

    add-int/lit8 v8, v8, 0x1

    goto :goto_105

    :cond_11f
    add-int/lit8 v7, v7, 0x1

    goto :goto_fd

    :cond_122
    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v6, v0, v1, v14}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_133
    const-string/jumbo v20, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    :sswitch_142
    const-string/jumbo v20, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v12

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_163
    const-string/jumbo v20, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    :sswitch_data_172
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_48
        0xf43484e -> :sswitch_64
        0xf444247 -> :sswitch_84
        0xf445343 -> :sswitch_9c
        0xf485348 -> :sswitch_bd
        0xf494e54 -> :sswitch_133
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_142
        0xf535953 -> :sswitch_163
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string/jumbo v0, "android.hardware.usb@1.1::IUsbCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    return-object p0

    :cond_a
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/usb/V1_1/IUsbCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
