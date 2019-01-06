.class public abstract Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareDiscoverySessionCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

.field static final TRANSACTION_onMatch:I = 0x5

.field static final TRANSACTION_onMessageReceived:I = 0x8

.field static final TRANSACTION_onMessageSendFail:I = 0x7

.field static final TRANSACTION_onMessageSendSuccess:I = 0x6

.field static final TRANSACTION_onSessionConfigFail:I = 0x3

.field static final TRANSACTION_onSessionConfigSuccess:I = 0x2

.field static final TRANSACTION_onSessionStarted:I = 0x1

.field static final TRANSACTION_onSessionTerminated:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_8c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionStarted(I)V

    return v5

    :sswitch_1e
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionConfigSuccess()V

    return v5

    :sswitch_28
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionConfigFail(I)V

    return v5

    :sswitch_36
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionTerminated(I)V

    return v5

    :sswitch_44
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMatch(I[B[B)V

    return v5

    :sswitch_5a
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageSendSuccess(I)V

    return v5

    :sswitch_68
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageSendFail(II)V

    return v5

    :sswitch_7a
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageReceived(I[B)V

    return v5

    :sswitch_data_8c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_28
        0x4 -> :sswitch_36
        0x5 -> :sswitch_44
        0x6 -> :sswitch_5a
        0x7 -> :sswitch_68
        0x8 -> :sswitch_7a
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
