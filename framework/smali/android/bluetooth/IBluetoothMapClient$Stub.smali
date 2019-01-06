.class public abstract Landroid/bluetooth/IBluetoothMapClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMapClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothMapClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothMapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothMapClient"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x4

.field static final TRANSACTION_getConnectionState:I = 0x6

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x5

.field static final TRANSACTION_getPriority:I = 0x8

.field static final TRANSACTION_getUnreadMessages:I = 0xa

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_setPriority:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothMapClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMapClient;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothMapClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothMapClient;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_198

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_8
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_24
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_35

    const/4 v0, 0x1

    :goto_2e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_33
    const/4 v1, 0x0

    goto :goto_24

    :cond_35
    const/4 v0, 0x0

    goto :goto_2e

    :sswitch_37
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_4b
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_5c

    const/4 v0, 0x1

    :goto_55
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_5a
    const/4 v1, 0x0

    goto :goto_4b

    :cond_5c
    const/4 v0, 0x0

    goto :goto_55

    :sswitch_5e
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_81

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_72
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_83

    const/4 v0, 0x1

    :goto_7c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_81
    const/4 v1, 0x0

    goto :goto_72

    :cond_83
    const/4 v0, 0x0

    goto :goto_7c

    :sswitch_85
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0

    :sswitch_97
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v0, 0x1

    return v0

    :sswitch_ad
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_cd

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_c1
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_cd
    const/4 v1, 0x0

    goto :goto_c1

    :sswitch_cf
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f6

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual {p0, v1, v7}, Landroid/bluetooth/IBluetoothMapClient$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_f8

    const/4 v0, 0x1

    :goto_f1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_f6
    const/4 v1, 0x0

    goto :goto_e3

    :cond_f8
    const/4 v0, 0x0

    goto :goto_f1

    :sswitch_fa
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11a

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_10e
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_11a
    const/4 v1, 0x0

    goto :goto_10e

    :sswitch_11c
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_168

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_130
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16a

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    :goto_14a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16c

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    :goto_158
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothMapClient$Stub;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_16e

    const/4 v0, 0x1

    :goto_163
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_168
    const/4 v1, 0x0

    goto :goto_130

    :cond_16a
    const/4 v4, 0x0

    goto :goto_14a

    :cond_16c
    const/4 v5, 0x0

    goto :goto_158

    :cond_16e
    const/4 v0, 0x0

    goto :goto_163

    :sswitch_170
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_193

    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    :goto_184
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_195

    const/4 v0, 0x1

    :goto_18e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    return v0

    :cond_193
    const/4 v1, 0x0

    goto :goto_184

    :cond_195
    const/4 v0, 0x0

    goto :goto_18e

    nop

    :sswitch_data_198
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_37
        0x3 -> :sswitch_5e
        0x4 -> :sswitch_85
        0x5 -> :sswitch_97
        0x6 -> :sswitch_ad
        0x7 -> :sswitch_cf
        0x8 -> :sswitch_fa
        0x9 -> :sswitch_11c
        0xa -> :sswitch_170
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
