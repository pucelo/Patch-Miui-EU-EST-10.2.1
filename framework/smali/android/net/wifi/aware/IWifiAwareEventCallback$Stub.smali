.class public abstract Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareEventCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareEventCallback"

.field static final TRANSACTION_onConnectFail:I = 0x2

.field static final TRANSACTION_onConnectSuccess:I = 0x1

.field static final TRANSACTION_onIdentityChanged:I = 0x3

.field static final TRANSACTION_onRangingAborted:I = 0x6

.field static final TRANSACTION_onRangingFailure:I = 0x5

.field static final TRANSACTION_onRangingSuccess:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_7c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onConnectSuccess(I)V

    return v6

    :sswitch_1e
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onConnectFail(I)V

    return v6

    :sswitch_2c
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onIdentityChanged([B)V

    return v6

    :sswitch_3a
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_56

    sget-object v5, Landroid/net/wifi/RttManager$ParcelableRttResults;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/RttManager$ParcelableRttResults;

    :goto_52
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V

    return v6

    :cond_56
    const/4 v3, 0x0

    goto :goto_52

    :sswitch_58
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onRangingFailure(IILjava/lang/String;)V

    return v6

    :sswitch_6e
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onRangingAborted(I)V

    return v6

    :sswitch_data_7c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_58
        0x6 -> :sswitch_6e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
