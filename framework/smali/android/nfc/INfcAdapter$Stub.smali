.class public abstract Landroid/nfc/INfcAdapter$Stub;
.super Landroid/os/Binder;
.source "INfcAdapter.java"

# interfaces
.implements Landroid/nfc/INfcAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/INfcAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/nfc/INfcAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.nfc.INfcAdapter"

.field static final TRANSACTION_addNfcUnlockHandler:I = 0x17

.field static final TRANSACTION_disable:I = 0x8

.field static final TRANSACTION_disableNdefPush:I = 0xb

.field static final TRANSACTION_dispatch:I = 0x14

.field static final TRANSACTION_enable:I = 0x9

.field static final TRANSACTION_enableNdefPush:I = 0xa

.field static final TRANSACTION_getListenTechMask:I = 0x1b

.field static final TRANSACTION_getNfcAdapterExtrasInterface:I = 0x4

.field static final TRANSACTION_getNfcAdapterVendorInterface:I = 0x5

.field static final TRANSACTION_getNfcCardEmulationInterface:I = 0x2

.field static final TRANSACTION_getNfcDtaInterface:I = 0x6

.field static final TRANSACTION_getNfcFCardEmulationInterface:I = 0x3

.field static final TRANSACTION_getNfcTagInterface:I = 0x1

.field static final TRANSACTION_getSeRouting:I = 0x1e

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_ignore:I = 0x13

.field static final TRANSACTION_invokeBeam:I = 0x11

.field static final TRANSACTION_invokeBeamInternal:I = 0x12

.field static final TRANSACTION_isNdefPushEnabled:I = 0xc

.field static final TRANSACTION_pausePolling:I = 0xd

.field static final TRANSACTION_removeNfcUnlockHandler:I = 0x18

.field static final TRANSACTION_resumePolling:I = 0xe

.field static final TRANSACTION_setAppCallback:I = 0x10

.field static final TRANSACTION_setConfig:I = 0x1c

.field static final TRANSACTION_setForegroundDispatch:I = 0xf

.field static final TRANSACTION_setListenTechMask:I = 0x1a

.field static final TRANSACTION_setP2pModes:I = 0x16

.field static final TRANSACTION_setReaderMode:I = 0x15

.field static final TRANSACTION_setSeRouting:I = 0x1d

.field static final TRANSACTION_verifyNfcPermission:I = 0x19


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.nfc.INfcAdapter"

    invoke-virtual {p0, p0, v0}, Landroid/nfc/INfcAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.nfc.INfcAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/nfc/INfcAdapter;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/nfc/INfcAdapter;

    return-object v0

    :cond_14
    new-instance v1, Landroid/nfc/INfcAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/nfc/INfcAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_432

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v27

    return v27

    :sswitch_8
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v27, 0x1

    return v27

    :sswitch_15
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcTagInterface()Landroid/nfc/INfcTag;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_36

    invoke-interface/range {v24 .. v24}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    :goto_2c
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v27, 0x1

    return v27

    :cond_36
    const/16 v27, 0x0

    goto :goto_2c

    :sswitch_39
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_5a

    invoke-interface/range {v21 .. v21}, Landroid/nfc/INfcCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    :goto_50
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v27, 0x1

    return v27

    :cond_5a
    const/16 v27, 0x0

    goto :goto_50

    :sswitch_5d
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_7e

    invoke-interface/range {v23 .. v23}, Landroid/nfc/INfcFCardEmulation;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    :goto_74
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v27, 0x1

    return v27

    :cond_7e
    const/16 v27, 0x0

    goto :goto_74

    :sswitch_81
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_a8

    invoke-interface/range {v20 .. v20}, Landroid/nfc/INfcAdapterExtras;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    :goto_9e
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v27, 0x1

    return v27

    :cond_a8
    const/16 v27, 0x0

    goto :goto_9e

    :sswitch_ab
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v27, 0x1

    return v27

    :sswitch_cc
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->getNfcDtaInterface(Ljava/lang/String;)Landroid/nfc/INfcDta;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_f3

    invoke-interface/range {v22 .. v22}, Landroid/nfc/INfcDta;->asBinder()Landroid/os/IBinder;

    move-result-object v27

    :goto_e9
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v27, 0x1

    return v27

    :cond_f3
    const/16 v27, 0x0

    goto :goto_e9

    :sswitch_f6
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getState()I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :sswitch_111
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_139

    const/4 v10, 0x1

    :goto_122
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/nfc/INfcAdapter$Stub;->disable(Z)Z

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_13b

    const/16 v27, 0x1

    :goto_12f
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :cond_139
    const/4 v10, 0x0

    goto :goto_122

    :cond_13b
    const/16 v27, 0x0

    goto :goto_12f

    :sswitch_13e
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enable()Z

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_15d

    const/16 v27, 0x1

    :goto_153
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :cond_15d
    const/16 v27, 0x0

    goto :goto_153

    :sswitch_160
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->enableNdefPush()Z

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_17f

    const/16 v27, 0x1

    :goto_175
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :cond_17f
    const/16 v27, 0x0

    goto :goto_175

    :sswitch_182
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->disableNdefPush()Z

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1a1

    const/16 v27, 0x1

    :goto_197
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :cond_1a1
    const/16 v27, 0x0

    goto :goto_197

    :sswitch_1a4
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->isNdefPushEnabled()Z

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_1c3

    const/16 v27, 0x1

    :goto_1b9
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :cond_1c3
    const/16 v27, 0x0

    goto :goto_1b9

    :sswitch_1c6
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->pausePolling(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :sswitch_1df
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->resumePolling()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :sswitch_1f2
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_239

    sget-object v27, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    :goto_20e
    sget-object v27, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/IntentFilter;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_23b

    sget-object v27, Landroid/nfc/TechListParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/nfc/TechListParcel;

    :goto_22c
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v14, v1}, Landroid/nfc/INfcAdapter$Stub;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :cond_239
    const/4 v3, 0x0

    goto :goto_20e

    :cond_23b
    const/16 v17, 0x0

    goto :goto_22c

    :sswitch_23e
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/nfc/INfcAdapter$Stub;->setAppCallback(Landroid/nfc/IAppCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :sswitch_25b
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->invokeBeam()V

    const/16 v27, 0x1

    return v27

    :sswitch_26b
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_28f

    sget-object v27, Landroid/nfc/BeamShareData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/BeamShareData;

    :goto_287
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/nfc/INfcAdapter$Stub;->invokeBeamInternal(Landroid/nfc/BeamShareData;)V

    const/16 v27, 0x1

    return v27

    :cond_28f
    const/4 v4, 0x0

    goto :goto_287

    :sswitch_291
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/nfc/ITagRemovedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/ITagRemovedCallback;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v11, v1}, Landroid/nfc/INfcAdapter$Stub;->ignore(IILandroid/nfc/ITagRemovedCallback;)Z

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_2c4

    const/16 v27, 0x1

    :goto_2ba
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :cond_2c4
    const/16 v27, 0x0

    goto :goto_2ba

    :sswitch_2c7
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_2ee

    sget-object v27, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/nfc/Tag;

    :goto_2e3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/nfc/INfcAdapter$Stub;->dispatch(Landroid/nfc/Tag;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :cond_2ee
    const/4 v7, 0x0

    goto :goto_2e3

    :sswitch_2f0
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/nfc/IAppCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/IAppCallback;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    if-eqz v27, :cond_329

    sget-object v27, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/Bundle;

    :goto_31c
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v12, v15, v1}, Landroid/nfc/INfcAdapter$Stub;->setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :cond_329
    const/16 v18, 0x0

    goto :goto_31c

    :sswitch_32c
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11}, Landroid/nfc/INfcAdapter$Stub;->setP2pModes(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :sswitch_349
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v13}, Landroid/nfc/INfcAdapter$Stub;->addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :sswitch_36a
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/nfc/INfcUnlockHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcUnlockHandler;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/nfc/INfcAdapter$Stub;->removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :sswitch_387
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->verifyNfcPermission()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :sswitch_39a
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->setListenTechMask(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v27, 0x1

    return v27

    :sswitch_3b3
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getListenTechMask()I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :sswitch_3ce
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/nfc/INfcAdapter$Stub;->setConfig(Ljava/lang/String;)I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :sswitch_3ef
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/nfc/INfcAdapter$Stub;->setSeRouting(I)Z

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_414

    const/16 v27, 0x1

    :goto_40a
    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :cond_414
    const/16 v27, 0x0

    goto :goto_40a

    :sswitch_417
    const-string/jumbo v27, "android.nfc.INfcAdapter"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/nfc/INfcAdapter$Stub;->getSeRouting()I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x1

    return v27

    :sswitch_data_432
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_39
        0x3 -> :sswitch_5d
        0x4 -> :sswitch_81
        0x5 -> :sswitch_ab
        0x6 -> :sswitch_cc
        0x7 -> :sswitch_f6
        0x8 -> :sswitch_111
        0x9 -> :sswitch_13e
        0xa -> :sswitch_160
        0xb -> :sswitch_182
        0xc -> :sswitch_1a4
        0xd -> :sswitch_1c6
        0xe -> :sswitch_1df
        0xf -> :sswitch_1f2
        0x10 -> :sswitch_23e
        0x11 -> :sswitch_25b
        0x12 -> :sswitch_26b
        0x13 -> :sswitch_291
        0x14 -> :sswitch_2c7
        0x15 -> :sswitch_2f0
        0x16 -> :sswitch_32c
        0x17 -> :sswitch_349
        0x18 -> :sswitch_36a
        0x19 -> :sswitch_387
        0x1a -> :sswitch_39a
        0x1b -> :sswitch_3b3
        0x1c -> :sswitch_3ce
        0x1d -> :sswitch_3ef
        0x1e -> :sswitch_417
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
