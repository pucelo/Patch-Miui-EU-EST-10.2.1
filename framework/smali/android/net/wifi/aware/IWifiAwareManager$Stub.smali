.class public abstract Landroid/net/wifi/aware/IWifiAwareManager$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareManager.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareManager"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getCharacteristics:I = 0x2

.field static final TRANSACTION_isUsageEnabled:I = 0x1

.field static final TRANSACTION_publish:I = 0x5

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_startRanging:I = 0xb

.field static final TRANSACTION_subscribe:I = 0x6

.field static final TRANSACTION_terminateSession:I = 0xa

.field static final TRANSACTION_updatePublish:I = 0x7

.field static final TRANSACTION_updateSubscribe:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.aware.IWifiAwareManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.wifi.aware.IWifiAwareManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/wifi/aware/IWifiAwareManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_1f2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_8
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_12
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isUsageEnabled()Z

    move-result v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_2b

    const/4 v3, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_2b
    const/4 v3, 0x0

    goto :goto_24

    :sswitch_2d
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_4e

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/aware/Characteristics;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4c
    const/4 v3, 0x1

    return v3

    :cond_4e
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c

    :sswitch_55
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareEventCallback;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8e

    sget-object v3, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/aware/ConfigRequest;

    :goto_7d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_90

    const/4 v8, 0x1

    :goto_84
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_8e
    const/4 v7, 0x0

    goto :goto_7d

    :cond_90
    const/4 v8, 0x0

    goto :goto_84

    :sswitch_92
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->disconnect(ILandroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_ae
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_e0

    sget-object v3, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/aware/PublishConfig;

    :goto_ca
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_e0
    const/16 v16, 0x0

    goto :goto_ca

    :sswitch_e3
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_115

    sget-object v3, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/aware/SubscribeConfig;

    :goto_ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_115
    const/16 v17, 0x0

    goto :goto_ff

    :sswitch_118
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_144

    sget-object v3, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/aware/PublishConfig;

    :goto_138
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v11, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_144
    const/16 v21, 0x0

    goto :goto_138

    :sswitch_147
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_173

    sget-object v3, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/aware/SubscribeConfig;

    :goto_167
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v11, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_173
    const/16 v22, 0x0

    goto :goto_167

    :sswitch_176
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v15}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->sendMessage(III[BII)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_1a0
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->terminateSession(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_1ba
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1ee

    sget-object v3, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/RttManager$ParcelableRttParams;

    :goto_1da
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v11, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->startRanging(IILandroid/net/wifi/RttManager$ParcelableRttParams;)I

    move-result v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    return v3

    :cond_1ee
    const/16 v19, 0x0

    goto :goto_1da

    nop

    :sswitch_data_1f2
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2d
        0x3 -> :sswitch_55
        0x4 -> :sswitch_92
        0x5 -> :sswitch_ae
        0x6 -> :sswitch_e3
        0x7 -> :sswitch_118
        0x8 -> :sswitch_147
        0x9 -> :sswitch_176
        0xa -> :sswitch_1a0
        0xb -> :sswitch_1ba
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
