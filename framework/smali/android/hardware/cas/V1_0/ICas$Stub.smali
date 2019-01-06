.class public abstract Landroid/hardware/cas/V1_0/ICas$Stub;
.super Landroid/os/HwBinder;
.source "ICas.java"

# interfaces
.implements Landroid/hardware/cas/V1_0/ICas;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/cas/V1_0/ICas;
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
        0xet
        0x65t
        0x6bt
        -0x5ft
        -0x46t
        -0x3ft
        0x14t
        0x61t
        -0x5ft
        0x70t
        -0x6at
        -0x11t
        0x75t
        0x2bt
        0x69t
        -0x2et
        0x4bt
        0x0t
        0xdt
        -0x7et
        0xet
        -0xbt
        0x65t
        0x2ft
        0x1t
        0x50t
        -0x60t
        -0x7t
        0x73t
        0x1dt
        0x54t
        -0x3et
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

    const-string/jumbo v2, "android.hardware.cas@1.0::ICas"

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

    const-string/jumbo v0, "android.hardware.cas@1.0::ICas"

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
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_2ba

    :goto_3
    :sswitch_3
    return-void

    :sswitch_4
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/cas/V1_0/ICas$Stub;->setPrivateData(Ljava/util/ArrayList;)I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    :sswitch_2c
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v26, Landroid/hardware/cas/V1_0/ICas$Stub$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas$Stub$1;-><init>(Landroid/hardware/cas/V1_0/ICas$Stub;Landroid/os/HwParcel;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/hardware/cas/V1_0/ICas$Stub;->openSession(Landroid/hardware/cas/V1_0/ICas$openSessionCallback;)V

    goto :goto_3

    :sswitch_49
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/cas/V1_0/ICas$Stub;->closeSession(Ljava/util/ArrayList;)I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    :sswitch_71
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas$Stub;->setSessionPrivateData(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_a0
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas$Stub;->processEcm(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_cf
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/cas/V1_0/ICas$Stub;->processEmm(Ljava/util/ArrayList;)I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_f8
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v15, v2}, Landroid/hardware/cas/V1_0/ICas$Stub;->sendEvent(IILjava/util/ArrayList;)I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_12b
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/cas/V1_0/ICas$Stub;->provision(Ljava/lang/String;)I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_154
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/hardware/cas/V1_0/ICas$Stub;->refreshEntitlements(ILjava/util/ArrayList;)I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_183
    const-string/jumbo v26, "android.hardware.cas@1.0::ICas"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/V1_0/ICas$Stub;->release()I

    move-result v13

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_1a4
    const-string/jumbo v26, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/V1_0/ICas$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v10

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_1c5
    const-string/jumbo v26, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_1dd
    const-string/jumbo v26, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/V1_0/ICas$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v9

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_1fe
    const-string/jumbo v26, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/V1_0/ICas$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v11

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v6, Landroid/os/HwBlob;

    const/16 v26, 0x10

    move/from16 v0, v26

    invoke-direct {v6, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    const-wide/16 v26, 0x8

    move-wide/from16 v0, v26

    invoke-virtual {v6, v0, v1, v14}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v26, 0xc

    const/16 v28, 0x0

    move-wide/from16 v0, v26

    move/from16 v2, v28

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v16, Landroid/os/HwBlob;

    mul-int/lit8 v26, v14, 0x20

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v7, 0x0

    :goto_240
    if-ge v7, v14, :cond_267

    mul-int/lit8 v26, v7, 0x20

    move/from16 v0, v26

    int-to-long v4, v0

    const/4 v8, 0x0

    :goto_248
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v8, v0, :cond_264

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [B

    aget-byte v26, v26, v8

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v26, 0x1

    add-long v4, v4, v26

    add-int/lit8 v8, v8, 0x1

    goto :goto_248

    :cond_264
    add-int/lit8 v7, v7, 0x1

    goto :goto_240

    :cond_267
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, v16

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_27a
    const-string/jumbo v26, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/V1_0/ICas$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    :sswitch_289
    const-string/jumbo v26, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/V1_0/ICas$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v12

    const/16 v26, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_2aa
    const-string/jumbo v26, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/cas/V1_0/ICas$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    nop

    :sswitch_data_2ba
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_49
        0x4 -> :sswitch_71
        0x5 -> :sswitch_a0
        0x6 -> :sswitch_cf
        0x7 -> :sswitch_f8
        0x8 -> :sswitch_12b
        0x9 -> :sswitch_154
        0xa -> :sswitch_183
        0xf43484e -> :sswitch_1a4
        0xf444247 -> :sswitch_1c5
        0xf445343 -> :sswitch_1dd
        0xf485348 -> :sswitch_1fe
        0xf494e54 -> :sswitch_27a
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_289
        0xf535953 -> :sswitch_2aa
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string/jumbo v0, "android.hardware.cas@1.0::ICas"

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

    invoke-virtual {p0, p1}, Landroid/hardware/cas/V1_0/ICas$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/cas/V1_0/ICas$Stub;->interfaceDescriptor()Ljava/lang/String;

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
