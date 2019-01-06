.class public abstract Landroid/hardware/camera2/ICameraDeviceUser$Stub;
.super Landroid/os/Binder;
.source "ICameraDeviceUser.java"

# interfaces
.implements Landroid/hardware/camera2/ICameraDeviceUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/ICameraDeviceUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.camera2.ICameraDeviceUser"

.field static final TRANSACTION_beginConfigure:I = 0x5

.field static final TRANSACTION_cancelRequest:I = 0x4

.field static final TRANSACTION_createDefaultRequest:I = 0xb

.field static final TRANSACTION_createInputStream:I = 0x9

.field static final TRANSACTION_createStream:I = 0x8

.field static final TRANSACTION_deleteStream:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x1

.field static final TRANSACTION_endConfigure:I = 0x6

.field static final TRANSACTION_finalizeOutputConfigurations:I = 0x12

.field static final TRANSACTION_flush:I = 0xe

.field static final TRANSACTION_getCameraInfo:I = 0xc

.field static final TRANSACTION_getInputSurface:I = 0xa

.field static final TRANSACTION_prepare:I = 0xf

.field static final TRANSACTION_prepare2:I = 0x11

.field static final TRANSACTION_submitRequest:I = 0x2

.field static final TRANSACTION_submitRequestList:I = 0x3

.field static final TRANSACTION_tearDown:I = 0x10

.field static final TRANSACTION_waitUntilIdle:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.camera2.ICameraDeviceUser"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceUser;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.camera2.ICameraDeviceUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/camera2/ICameraDeviceUser;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/camera2/ICameraDeviceUser;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_2c0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v16

    return v16

    :sswitch_8
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v16, 0x1

    return v16

    :sswitch_15
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->disconnect()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_28
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_6b

    sget-object v16, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    :goto_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_6d

    const/4 v8, 0x1

    :goto_4b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequest(Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_6f

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_68
    const/16 v16, 0x1

    return v16

    :cond_6b
    const/4 v3, 0x0

    goto :goto_44

    :cond_6d
    const/4 v8, 0x0

    goto :goto_4b

    :cond_6f
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_68

    :sswitch_79
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v16, Landroid/hardware/camera2/CaptureRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_b6

    const/4 v8, 0x1

    :goto_96
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v8}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_b8

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v14, v0, v1}, Landroid/hardware/camera2/utils/SubmitInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b3
    const/16 v16, 0x1

    return v16

    :cond_b6
    const/4 v8, 0x0

    goto :goto_96

    :cond_b8
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b3

    :sswitch_c2
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->cancelRequest(I)J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v16, 0x1

    return v16

    :sswitch_e1
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->beginConfigure()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_f4
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->endConfigure(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_10d
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->deleteStream(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_126
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_153

    sget-object v16, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    :goto_142
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    :cond_153
    const/4 v4, 0x0

    goto :goto_142

    :sswitch_155
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6, v9}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createInputStream(III)I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    return v16

    :sswitch_17c
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getInputSurface()Landroid/view/Surface;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_1a4

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Landroid/view/Surface;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a1
    const/16 v16, 0x1

    return v16

    :cond_1a4
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a1

    :sswitch_1ae
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_1dc

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d9
    const/16 v16, 0x1

    return v16

    :cond_1dc
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d9

    :sswitch_1e6
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->getCameraInfo()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_20e

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v11, v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_20b
    const/16 v16, 0x1

    return v16

    :cond_20e
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20b

    :sswitch_218
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->waitUntilIdle()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_22b
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->flush()J

    move-result-wide v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v16, 0x1

    return v16

    :sswitch_244
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_25d
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->tearDown(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_276
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v6}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->prepare2(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :sswitch_293
    const-string/jumbo v16, "android.hardware.camera2.ICameraDeviceUser"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    if-eqz v16, :cond_2be

    sget-object v16, Landroid/hardware/camera2/params/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/camera2/params/OutputConfiguration;

    :goto_2b3
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Landroid/hardware/camera2/ICameraDeviceUser$Stub;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v16, 0x1

    return v16

    :cond_2be
    const/4 v7, 0x0

    goto :goto_2b3

    :sswitch_data_2c0
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_28
        0x3 -> :sswitch_79
        0x4 -> :sswitch_c2
        0x5 -> :sswitch_e1
        0x6 -> :sswitch_f4
        0x7 -> :sswitch_10d
        0x8 -> :sswitch_126
        0x9 -> :sswitch_155
        0xa -> :sswitch_17c
        0xb -> :sswitch_1ae
        0xc -> :sswitch_1e6
        0xd -> :sswitch_218
        0xe -> :sswitch_22b
        0xf -> :sswitch_244
        0x10 -> :sswitch_25d
        0x11 -> :sswitch_276
        0x12 -> :sswitch_293
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
