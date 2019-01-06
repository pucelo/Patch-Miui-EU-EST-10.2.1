.class public abstract Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.super Landroid/os/Binder;
.source "IWifiP2pManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/IWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/IWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.p2p.IWifiP2pManager"

.field static final TRANSACTION_checkConfigureWifiDisplayPermission:I = 0x5

.field static final TRANSACTION_close:I = 0x3

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getP2pStateMachineMessenger:I = 0x2

.field static final TRANSACTION_setMiracastMode:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/p2p/IWifiP2pManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/wifi/p2p/IWifiP2pManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v5, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_76

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_a
    const-string/jumbo v3, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_11
    const-string/jumbo v3, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getMessenger(Landroid/os/IBinder;)Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2b

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v4}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2a
    return v4

    :cond_2b
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    :sswitch_2f
    const-string/jumbo v3, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->getP2pStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_45

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v4}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_44
    return v4

    :cond_45
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    :sswitch_49
    const-string/jumbo v3, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->close(Landroid/os/IBinder;)V

    return v4

    :sswitch_57
    const-string/jumbo v3, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->setMiracastMode(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_68
    const-string/jumbo v3, "android.net.wifi.p2p.IWifiP2pManager"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;->checkConfigureWifiDisplayPermission()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    nop

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_49
        0x4 -> :sswitch_57
        0x5 -> :sswitch_68
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
