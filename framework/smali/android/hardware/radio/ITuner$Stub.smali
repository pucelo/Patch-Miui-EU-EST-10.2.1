.class public abstract Landroid/hardware/radio/ITuner$Stub;
.super Landroid/os/Binder;
.source "ITuner.java"

# interfaces
.implements Landroid/hardware/radio/ITuner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/ITuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/ITuner$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.radio.ITuner"

.field static final TRANSACTION_cancel:I = 0xa

.field static final TRANSACTION_cancelAnnouncement:I = 0xb

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_getConfiguration:I = 0x4

.field static final TRANSACTION_getImage:I = 0xd

.field static final TRANSACTION_getProgramInformation:I = 0xc

.field static final TRANSACTION_getProgramList:I = 0xf

.field static final TRANSACTION_isAnalogForced:I = 0x10

.field static final TRANSACTION_isAntennaConnected:I = 0x12

.field static final TRANSACTION_isClosed:I = 0x2

.field static final TRANSACTION_isMuted:I = 0x6

.field static final TRANSACTION_scan:I = 0x8

.field static final TRANSACTION_setAnalogForced:I = 0x11

.field static final TRANSACTION_setConfiguration:I = 0x3

.field static final TRANSACTION_setMuted:I = 0x5

.field static final TRANSACTION_startBackgroundScan:I = 0xe

.field static final TRANSACTION_step:I = 0x7

.field static final TRANSACTION_tune:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.radio.ITuner"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/ITuner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/ITuner;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.radio.ITuner"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/ITuner;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/radio/ITuner;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/radio/ITuner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/ITuner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_21e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    :sswitch_8
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v13, 0x1

    return v13

    :sswitch_12
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_22
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isClosed()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_3b

    const/4 v13, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_3b
    const/4 v13, 0x0

    goto :goto_34

    :sswitch_3d
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5d

    sget-object v13, Landroid/hardware/radio/RadioManager$BandConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/RadioManager$BandConfig;

    :goto_55
    invoke-virtual {p0, v3}, Landroid/hardware/radio/ITuner$Stub;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_5d
    const/4 v3, 0x0

    goto :goto_55

    :sswitch_5f
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getConfiguration()Landroid/hardware/radio/RadioManager$BandConfig;

    move-result-object v8

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_7e

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0, v13}, Landroid/hardware/radio/RadioManager$BandConfig;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7c
    const/4 v13, 0x1

    return v13

    :cond_7e
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7c

    :sswitch_85
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_9c

    const/4 v5, 0x1

    :goto_94
    invoke-virtual {p0, v5}, Landroid/hardware/radio/ITuner$Stub;->setMuted(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_9c
    const/4 v5, 0x0

    goto :goto_94

    :sswitch_9e
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isMuted()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_b7

    const/4 v13, 0x1

    :goto_b0
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_b7
    const/4 v13, 0x0

    goto :goto_b0

    :sswitch_b9
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_d7

    const/4 v5, 0x1

    :goto_c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_d9

    const/4 v6, 0x1

    :goto_cf
    invoke-virtual {p0, v5, v6}, Landroid/hardware/radio/ITuner$Stub;->step(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_d7
    const/4 v5, 0x0

    goto :goto_c8

    :cond_d9
    const/4 v6, 0x0

    goto :goto_cf

    :sswitch_db
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_f9

    const/4 v5, 0x1

    :goto_ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_fb

    const/4 v6, 0x1

    :goto_f1
    invoke-virtual {p0, v5, v6}, Landroid/hardware/radio/ITuner$Stub;->scan(ZZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_f9
    const/4 v5, 0x0

    goto :goto_ea

    :cond_fb
    const/4 v6, 0x0

    goto :goto_f1

    :sswitch_fd
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_11d

    sget-object v13, Landroid/hardware/radio/ProgramSelector;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/ProgramSelector;

    :goto_115
    invoke-virtual {p0, v2}, Landroid/hardware/radio/ITuner$Stub;->tune(Landroid/hardware/radio/ProgramSelector;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_11d
    const/4 v2, 0x0

    goto :goto_115

    :sswitch_11f
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancel()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_12f
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->cancelAnnouncement()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :sswitch_13f
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getProgramInformation()Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v9

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_15e

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v13}, Landroid/hardware/radio/RadioManager$ProgramInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_15c
    const/4 v13, 0x1

    return v13

    :cond_15e
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15c

    :sswitch_165
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/hardware/radio/ITuner$Stub;->getImage(I)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_188

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v7, v0, v13}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_186
    const/4 v13, 0x1

    return v13

    :cond_188
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_186

    :sswitch_18f
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->startBackgroundScan()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_1a8

    const/4 v13, 0x1

    :goto_1a1
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_1a8
    const/4 v13, 0x0

    goto :goto_1a1

    :sswitch_1aa
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/hardware/radio/ITuner$Stub;->getProgramList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v13, 0x1

    return v13

    :sswitch_1ce
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isAnalogForced()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_1e7

    const/4 v13, 0x1

    :goto_1e0
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_1e7
    const/4 v13, 0x0

    goto :goto_1e0

    :sswitch_1e9
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_200

    const/4 v5, 0x1

    :goto_1f8
    invoke-virtual {p0, v5}, Landroid/hardware/radio/ITuner$Stub;->setAnalogForced(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v13, 0x1

    return v13

    :cond_200
    const/4 v5, 0x0

    goto :goto_1f8

    :sswitch_202
    const-string/jumbo v13, "android.hardware.radio.ITuner"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/radio/ITuner$Stub;->isAntennaConnected()Z

    move-result v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v11, :cond_21b

    const/4 v13, 0x1

    :goto_214
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v13, 0x1

    return v13

    :cond_21b
    const/4 v13, 0x0

    goto :goto_214

    nop

    :sswitch_data_21e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_22
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_5f
        0x5 -> :sswitch_85
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_b9
        0x8 -> :sswitch_db
        0x9 -> :sswitch_fd
        0xa -> :sswitch_11f
        0xb -> :sswitch_12f
        0xc -> :sswitch_13f
        0xd -> :sswitch_165
        0xe -> :sswitch_18f
        0xf -> :sswitch_1aa
        0x10 -> :sswitch_1ce
        0x11 -> :sswitch_1e9
        0x12 -> :sswitch_202
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
