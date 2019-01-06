.class public abstract Landroid/hardware/ICameraService$Stub;
.super Landroid/os/Binder;
.source "ICameraService.java"

# interfaces
.implements Landroid/hardware/ICameraService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/ICameraService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.ICameraService"

.field static final TRANSACTION_addListener:I = 0x6

.field static final TRANSACTION_addParallelProcessListener:I = 0x10

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_connectDevice:I = 0x4

.field static final TRANSACTION_connectLegacy:I = 0x5

.field static final TRANSACTION_getCameraCharacteristics:I = 0x8

.field static final TRANSACTION_getCameraInfo:I = 0x2

.field static final TRANSACTION_getCameraVendorTagCache:I = 0xa

.field static final TRANSACTION_getCameraVendorTagDescriptor:I = 0x9

.field static final TRANSACTION_getLegacyParameters:I = 0xb

.field static final TRANSACTION_getNumberOfCameras:I = 0x1

.field static final TRANSACTION_getParallelProcessingTasks:I = 0xf

.field static final TRANSACTION_notifySystemEvent:I = 0xe

.field static final TRANSACTION_removeListener:I = 0x7

.field static final TRANSACTION_removeParallelProcessListener:I = 0x11

.field static final TRANSACTION_setTorchMode:I = 0xd

.field static final TRANSACTION_supportsCameraApi:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.ICameraService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/ICameraService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.ICameraService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/ICameraService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/ICameraService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/ICameraService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/ICameraService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_2b4

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_8
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_12
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getNumberOfCameras(I)I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_32
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraInfo(I)Landroid/hardware/CameraInfo;

    move-result-object v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_5b

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/CameraInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_59
    const/4 v4, 0x1

    return v4

    :cond_5b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_59

    :sswitch_62
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Landroid/hardware/ICameraService$Stub;->connect(Landroid/hardware/ICameraClient;ILjava/lang/String;II)Landroid/hardware/ICamera;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_98

    invoke-interface/range {v28 .. v28}, Landroid/hardware/ICamera;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_91
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x1

    return v4

    :cond_98
    const/4 v4, 0x0

    goto :goto_91

    :sswitch_9a
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/camera2/ICameraDeviceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/camera2/ICameraDeviceCallbacks;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v7, v8}, Landroid/hardware/ICameraService$Stub;->connectDevice(Landroid/hardware/camera2/ICameraDeviceCallbacks;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/camera2/ICameraDeviceUser;

    move-result-object v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_d0

    invoke-interface/range {v29 .. v29}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_c9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x1

    return v4

    :cond_d0
    const/4 v4, 0x0

    goto :goto_c9

    :sswitch_d2
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraClient;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v10, p0

    move-object v11, v5

    move v12, v6

    move v15, v9

    invoke-virtual/range {v10 .. v15}, Landroid/hardware/ICameraService$Stub;->connectLegacy(Landroid/hardware/ICameraClient;IILjava/lang/String;I)Landroid/hardware/ICamera;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_10b

    invoke-interface/range {v28 .. v28}, Landroid/hardware/ICamera;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_104
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x1

    return v4

    :cond_10b
    const/4 v4, 0x0

    goto :goto_104

    :sswitch_10d
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->addListener(Landroid/hardware/ICameraServiceListener;)[Landroid/hardware/CameraStatus;

    move-result-object v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v4, 0x1

    return v4

    :sswitch_132
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraServiceListener;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->removeListener(Landroid/hardware/ICameraServiceListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_14e
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_177

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_175
    const/4 v4, 0x1

    return v4

    :cond_177
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_175

    :sswitch_17e
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagDescriptor()Landroid/hardware/camera2/params/VendorTagDescriptor;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v31, :cond_19f

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/params/VendorTagDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_19d
    const/4 v4, 0x1

    return v4

    :cond_19f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19d

    :sswitch_1a6
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/ICameraService$Stub;->getCameraVendorTagCache()Landroid/hardware/camera2/params/VendorTagDescriptorCache;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v32, :cond_1c7

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/hardware/camera2/params/VendorTagDescriptorCache;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1c5
    const/4 v4, 0x1

    return v4

    :cond_1c7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1c5

    :sswitch_1ce
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getLegacyParameters(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_1ee
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Landroid/hardware/ICameraService$Stub;->supportsCameraApi(Ljava/lang/String;I)Z

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v34, :cond_213

    const/4 v4, 0x1

    :goto_20c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_213
    const/4 v4, 0x0

    goto :goto_20c

    :sswitch_215
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23d

    const/16 v23, 0x1

    :goto_229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v23

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/ICameraService$Stub;->setTorchMode(Ljava/lang/String;ZLandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_23d
    const/16 v23, 0x0

    goto :goto_229

    :sswitch_240
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v24

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/hardware/ICameraService$Stub;->notifySystemEvent(I[I)V

    const/4 v4, 0x1

    return v4

    :sswitch_25b
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->getParallelProcessingTasks(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :sswitch_27b
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraParallelProcessListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraParallelProcessListener;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->addParallelProcessListener(Landroid/hardware/ICameraParallelProcessListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_297
    const-string/jumbo v4, "android.hardware.ICameraService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/ICameraParallelProcessListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/ICameraParallelProcessListener;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/ICameraService$Stub;->removeParallelProcessListener(Landroid/hardware/ICameraParallelProcessListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    nop

    :sswitch_data_2b4
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_32
        0x3 -> :sswitch_62
        0x4 -> :sswitch_9a
        0x5 -> :sswitch_d2
        0x6 -> :sswitch_10d
        0x7 -> :sswitch_132
        0x8 -> :sswitch_14e
        0x9 -> :sswitch_17e
        0xa -> :sswitch_1a6
        0xb -> :sswitch_1ce
        0xc -> :sswitch_1ee
        0xd -> :sswitch_215
        0xe -> :sswitch_240
        0xf -> :sswitch_25b
        0x10 -> :sswitch_27b
        0x11 -> :sswitch_297
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
