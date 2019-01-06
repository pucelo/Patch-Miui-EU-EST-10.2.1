.class public abstract Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.super Landroid/os/Binder;
.source "ILowpanInterfaceListener.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterfaceListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanInterfaceListener"

.field static final TRANSACTION_onConnectedChanged:I = 0x2

.field static final TRANSACTION_onEnabledChanged:I = 0x1

.field static final TRANSACTION_onLinkAddressAdded:I = 0x9

.field static final TRANSACTION_onLinkAddressRemoved:I = 0xa

.field static final TRANSACTION_onLinkNetworkAdded:I = 0x7

.field static final TRANSACTION_onLinkNetworkRemoved:I = 0x8

.field static final TRANSACTION_onLowpanIdentityChanged:I = 0x6

.field static final TRANSACTION_onReceiveFromCommissioner:I = 0xb

.field static final TRANSACTION_onRoleChanged:I = 0x4

.field static final TRANSACTION_onStateChanged:I = 0x5

.field static final TRANSACTION_onUpChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterfaceListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/lowpan/ILowpanInterfaceListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_de

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_21

    const/4 v3, 0x1

    :goto_1d
    invoke-virtual {p0, v3}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onEnabledChanged(Z)V

    return v6

    :cond_21
    const/4 v3, 0x0

    goto :goto_1d

    :sswitch_23
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_34

    const/4 v3, 0x1

    :goto_30
    invoke-virtual {p0, v3}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onConnectedChanged(Z)V

    return v6

    :cond_34
    const/4 v3, 0x0

    goto :goto_30

    :sswitch_36
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    const/4 v3, 0x1

    :goto_43
    invoke-virtual {p0, v3}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onUpChanged(Z)V

    return v6

    :cond_47
    const/4 v3, 0x0

    goto :goto_43

    :sswitch_49
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onRoleChanged(Ljava/lang/String;)V

    return v6

    :sswitch_57
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onStateChanged(Ljava/lang/String;)V

    return v6

    :sswitch_65
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7d

    sget-object v5, Landroid/net/lowpan/LowpanIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/lowpan/LowpanIdentity;

    :goto_79
    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    return v6

    :cond_7d
    const/4 v1, 0x0

    goto :goto_79

    :sswitch_7f
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_97

    sget-object v5, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    :goto_93
    invoke-virtual {p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    return v6

    :cond_97
    const/4 v0, 0x0

    goto :goto_93

    :sswitch_99
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b1

    sget-object v5, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IpPrefix;

    :goto_ad
    invoke-virtual {p0, v0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    return v6

    :cond_b1
    const/4 v0, 0x0

    goto :goto_ad

    :sswitch_b3
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressAdded(Ljava/lang/String;)V

    return v6

    :sswitch_c1
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onLinkAddressRemoved(Ljava/lang/String;)V

    return v6

    :sswitch_cf
    const-string/jumbo v5, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->onReceiveFromCommissioner([B)V

    return v6

    nop

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_49
        0x5 -> :sswitch_57
        0x6 -> :sswitch_65
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_99
        0x9 -> :sswitch_b3
        0xa -> :sswitch_c1
        0xb -> :sswitch_cf
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
