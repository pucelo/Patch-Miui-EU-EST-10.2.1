.class public abstract Landroid/net/wifi/IWifiScanner$Stub;
.super Landroid/os/Binder;
.source "IWifiScanner.java"

# interfaces
.implements Landroid/net/wifi/IWifiScanner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiScanner$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiScanner"

.field static final TRANSACTION_getAvailableChannels:I = 0x2

.field static final TRANSACTION_getMessenger:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.IWifiScanner"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiScanner$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiScanner;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.wifi.IWifiScanner"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IWifiScanner;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/wifi/IWifiScanner;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/wifi/IWifiScanner$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IWifiScanner$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_4a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_a
    const-string/jumbo v3, "android.net.wifi.IWifiScanner"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_11
    const-string/jumbo v3, "android.net.wifi.IWifiScanner"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiScanner$Stub;->getMessenger()Landroid/os/Messenger;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_27

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v4}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_26
    return v4

    :cond_27
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    :sswitch_2b
    const-string/jumbo v3, "android.net.wifi.IWifiScanner"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiScanner$Stub;->getAvailableChannels(I)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_45

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_44
    return v4

    :cond_45
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2b
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
