.class public abstract Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;
.super Landroid/os/HwBinder;
.source "ITetheringOffloadCallback.java"

# interfaces
.implements Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback;
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

    const/4 v1, 0x2

    new-array v1, v1, [[B

    new-array v2, v4, [B

    fill-array-data v2, :array_20

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v4, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x7t
        0x65t
        -0x78t
        0x29t
        0x33t
        -0x63t
        0x75t
        -0x6at
        0x20t
        0x16t
        -0x20t
        0xet
        -0x28t
        0x1bt
        0x0t
        0x5at
        -0x2et
        -0x61t
        -0x36t
        0x7at
        -0x3ft
        0x2at
        -0x2dt
        -0x44t
        0x3ct
        -0x33t
        -0x7at
        -0x50t
        -0x73t
        -0x6ct
        -0x3et
        -0x2dt
    .end array-data

    :array_34
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

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "android.hidl.base@1.0::IBase"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

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
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_110

    :goto_3
    :sswitch_3
    return-void

    :sswitch_4
    const-string/jumbo v15, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->onEvent(I)V

    goto :goto_3

    :sswitch_16
    const-string/jumbo v15, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v14, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;

    invoke-direct {v14}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;->readFromParcel(Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->updateTimeout(Landroid/hardware/tetheroffload/control/V1_0/NatTimeoutUpdate;)V

    goto :goto_3

    :sswitch_2e
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v8

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    :sswitch_49
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    :sswitch_5b
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    :sswitch_76
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v9

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v4, Landroid/os/HwBlob;

    const/16 v15, 0x10

    invoke-direct {v4, v15}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-wide/16 v16, 0x8

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v11}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v16, 0xc

    const/4 v15, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v15}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v12, Landroid/os/HwBlob;

    mul-int/lit8 v15, v11, 0x20

    invoke-direct {v12, v15}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v5, 0x0

    :goto_aa
    if-ge v5, v11, :cond_c9

    mul-int/lit8 v15, v5, 0x20

    int-to-long v2, v15

    const/4 v6, 0x0

    :goto_b0
    const/16 v15, 0x20

    if-ge v6, v15, :cond_c6

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [B

    aget-byte v15, v15, v6

    invoke-virtual {v12, v2, v3, v15}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v16, 0x1

    add-long v2, v2, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_b0

    :cond_c6
    add-int/lit8 v5, v5, 0x1

    goto :goto_aa

    :cond_c9
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1, v12}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_da
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    :sswitch_e7
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v10

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_103
    const-string/jumbo v15, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    :sswitch_data_110
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_16
        0xf43484e -> :sswitch_2e
        0xf444247 -> :sswitch_49
        0xf445343 -> :sswitch_5b
        0xf485348 -> :sswitch_76
        0xf494e54 -> :sswitch_da
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_e7
        0xf535953 -> :sswitch_103
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string/jumbo v0, "android.hardware.tetheroffload.control@1.0::ITetheringOffloadCallback"

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

    invoke-virtual {p0, p1}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/tetheroffload/control/V1_0/ITetheringOffloadCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

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
