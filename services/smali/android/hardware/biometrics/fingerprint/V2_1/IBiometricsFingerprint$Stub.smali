.class public abstract Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;
.super Landroid/os/HwBinder;
.source "IBiometricsFingerprint.java"

# interfaces
.implements Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;
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
        -0x7dt
        0x7t
        0x59t
        -0x15t
        -0x2t
        -0x20t
        0x3at
        -0x29t
        0x23t
        -0x69t
        0x27t
        0x14t
        0x45t
        0x6bt
        -0x27t
        -0x4et
        -0x66t
        -0x3ft
        -0x57t
        -0x7ft
        0x9t
        0x9t
        0x4t
        -0x22t
        -0x5dt
        -0x41t
        0x4t
        0x27t
        0x61t
        -0x2bt
        0x26t
        0x2at
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

    const-string/jumbo v2, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

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

    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

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
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_31c

    :goto_3
    :sswitch_3
    return-void

    :sswitch_4
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;->asInterface(Landroid/os/IHwBinder;)Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setNotify(Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprintClientCallback;)J

    move-result-wide v20

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    :sswitch_32
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->preEnroll()J

    move-result-wide v14

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto :goto_3

    :sswitch_52
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v35, 0x45

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v29, v0

    const-wide/16 v36, 0x45

    move-object/from16 v0, p2

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v8

    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    :goto_71
    const/16 v35, 0x45

    move/from16 v0, v35

    if-ge v10, v0, :cond_84

    invoke-virtual {v8, v4, v5}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v35

    aput-byte v35, v29, v10

    const-wide/16 v36, 0x1

    add-long v4, v4, v36

    add-int/lit8 v10, v10, 0x1

    goto :goto_71

    :cond_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v34

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v28

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enroll([BII)I

    move-result v16

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_ad
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->postEnroll()I

    move-result v16

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_d0
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getAuthenticatorId()J

    move-result-wide v12

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/HwParcel;->writeInt64(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_f1
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->cancel()I

    move-result v16

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_114
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->enumerate()I

    move-result v16

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_137
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->remove(II)I

    move-result v16

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_168
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, p0

    move/from16 v1, v28

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setActiveGroup(ILjava/lang/String;)I

    move-result v16

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_199
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v30

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v28

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->authenticate(JI)I

    move-result v16

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_1ca
    const-string/jumbo v35, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->extCmd(II)I

    move-result v16

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeInt32(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_1fb
    const-string/jumbo v35, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_21e
    const-string/jumbo v35, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_236
    const-string/jumbo v35, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v17

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_259
    const-string/jumbo v35, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v19

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v8, Landroid/os/HwBlob;

    const/16 v35, 0x10

    move/from16 v0, v35

    invoke-direct {v8, v0}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    const-wide/16 v36, 0x8

    move-wide/from16 v0, v36

    move/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v36, 0xc

    const/16 v35, 0x0

    move-wide/from16 v0, v36

    move/from16 v2, v35

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v24, Landroid/os/HwBlob;

    mul-int/lit8 v35, v23, 0x20

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const/4 v9, 0x0

    :goto_29d
    move/from16 v0, v23

    if-ge v9, v0, :cond_2c8

    mul-int/lit8 v35, v9, 0x20

    move/from16 v0, v35

    int-to-long v6, v0

    const/4 v11, 0x0

    :goto_2a7
    const/16 v35, 0x20

    move/from16 v0, v35

    if-ge v11, v0, :cond_2c5

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [B

    aget-byte v35, v35, v11

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/HwBlob;->putInt8(JB)V

    const-wide/16 v36, 0x1

    add-long v6, v6, v36

    add-int/lit8 v11, v11, 0x1

    goto :goto_2a7

    :cond_2c5
    add-int/lit8 v9, v9, 0x1

    goto :goto_29d

    :cond_2c8
    const-wide/16 v36, 0x0

    move-wide/from16 v0, v36

    move-object/from16 v2, v24

    invoke-virtual {v8, v0, v1, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_2db
    const-string/jumbo v35, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->setHALInstrumentation()V

    goto/16 :goto_3

    :sswitch_2ea
    const-string/jumbo v35, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v22

    const/16 v35, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_3

    :sswitch_30d
    const-string/jumbo v35, "android.hidl.base@1.0::IBase"

    move-object/from16 v0, p2

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->notifySyspropsChanged()V

    goto/16 :goto_3

    :sswitch_data_31c
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_32
        0x3 -> :sswitch_52
        0x4 -> :sswitch_ad
        0x5 -> :sswitch_d0
        0x6 -> :sswitch_f1
        0x7 -> :sswitch_114
        0x8 -> :sswitch_137
        0x9 -> :sswitch_168
        0xa -> :sswitch_199
        0xb -> :sswitch_1ca
        0xf43484e -> :sswitch_1fb
        0xf444247 -> :sswitch_21e
        0xf445343 -> :sswitch_236
        0xf485348 -> :sswitch_259
        0xf494e54 -> :sswitch_2db
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2ea
        0xf535953 -> :sswitch_30d
        0xf555444 -> :sswitch_3
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string/jumbo v0, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

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

    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->registerService(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint$Stub;->interfaceDescriptor()Ljava/lang/String;

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
