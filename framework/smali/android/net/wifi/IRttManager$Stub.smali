.class public abstract Landroid/net/wifi/IRttManager$Stub;
.super Landroid/os/Binder;
.source "IRttManager.java"

# interfaces
.implements Landroid/net/wifi/IRttManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IRttManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IRttManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IRttManager"

.field static final TRANSACTION_getMessenger:I = 0x1

.field static final TRANSACTION_getRttCapabilities:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.wifi.IRttManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IRttManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IRttManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.wifi.IRttManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/wifi/IRttManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/wifi/IRttManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/wifi/IRttManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/IRttManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_56

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_a
    const-string/jumbo v5, "android.net.wifi.IRttManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_11
    const-string/jumbo v5, "android.net.wifi.IRttManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-gez v2, :cond_35

    const/4 v1, 0x0

    :goto_22
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IRttManager$Stub;->getMessenger(Landroid/os/IBinder;[I)Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v4, :cond_38

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v4, p3, v6}, Landroid/os/Messenger;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_31
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    return v6

    :cond_35
    new-array v1, v2, [I

    goto :goto_22

    :cond_38
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_31

    :sswitch_3c
    const-string/jumbo v5, "android.net.wifi.IRttManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IRttManager$Stub;->getRttCapabilities()Landroid/net/wifi/RttManager$RttCapabilities;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_52

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v6}, Landroid/net/wifi/RttManager$RttCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_51
    return v6

    :cond_52
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_51

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
