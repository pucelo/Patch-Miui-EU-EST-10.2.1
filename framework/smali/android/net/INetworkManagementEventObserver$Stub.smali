.class public abstract Landroid/net/INetworkManagementEventObserver$Stub;
.super Landroid/os/Binder;
.source "INetworkManagementEventObserver.java"

# interfaces
.implements Landroid/net/INetworkManagementEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkManagementEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkManagementEventObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkManagementEventObserver"

.field static final TRANSACTION_addressRemoved:I = 0x6

.field static final TRANSACTION_addressUpdated:I = 0x5

.field static final TRANSACTION_interfaceAdded:I = 0x3

.field static final TRANSACTION_interfaceClassDataActivityChanged:I = 0x8

.field static final TRANSACTION_interfaceConfigurationLost:I = 0xc

.field static final TRANSACTION_interfaceDnsServerInfo:I = 0x9

.field static final TRANSACTION_interfaceLinkStateChanged:I = 0x2

.field static final TRANSACTION_interfaceRemoved:I = 0x4

.field static final TRANSACTION_interfaceStatusChanged:I = 0x1

.field static final TRANSACTION_limitReached:I = 0x7

.field static final TRANSACTION_routeRemoved:I = 0xb

.field static final TRANSACTION_routeUpdated:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkManagementEventObserver;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.INetworkManagementEventObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/INetworkManagementEventObserver;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/INetworkManagementEventObserver;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_124

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_26

    const/4 v6, 0x1

    :goto_21
    invoke-virtual {p0, v1, v6}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceStatusChanged(Ljava/lang/String;Z)V

    const/4 v10, 0x1

    return v10

    :cond_26
    const/4 v6, 0x0

    goto :goto_21

    :sswitch_28
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3e

    const/4 v6, 0x1

    :goto_39
    invoke-virtual {p0, v1, v6}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    const/4 v10, 0x1

    return v10

    :cond_3e
    const/4 v6, 0x0

    goto :goto_39

    :sswitch_40
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceAdded(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_4f
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceRemoved(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_5e
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7b

    sget-object v10, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    :goto_76
    invoke-virtual {p0, v1, v4}, Landroid/net/INetworkManagementEventObserver$Stub;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    const/4 v10, 0x1

    return v10

    :cond_7b
    const/4 v4, 0x0

    goto :goto_76

    :sswitch_7d
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9a

    sget-object v10, Landroid/net/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    :goto_95
    invoke-virtual {p0, v1, v4}, Landroid/net/INetworkManagementEventObserver$Stub;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    const/4 v10, 0x1

    return v10

    :cond_9a
    const/4 v4, 0x0

    goto :goto_95

    :sswitch_9c
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5}, Landroid/net/INetworkManagementEventObserver$Stub;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_af
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_c9

    const/4 v6, 0x1

    :goto_c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual {p0, v1, v6, v8, v9}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V

    const/4 v10, 0x1

    return v10

    :cond_c9
    const/4 v6, 0x0

    goto :goto_c0

    :sswitch_cb
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v1, v2, v3, v7}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_e2
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_fb

    sget-object v10, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    :goto_f6
    invoke-virtual {p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->routeUpdated(Landroid/net/RouteInfo;)V

    const/4 v10, 0x1

    return v10

    :cond_fb
    const/4 v0, 0x0

    goto :goto_f6

    :sswitch_fd
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_116

    sget-object v10, Landroid/net/RouteInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    :goto_111
    invoke-virtual {p0, v0}, Landroid/net/INetworkManagementEventObserver$Stub;->routeRemoved(Landroid/net/RouteInfo;)V

    const/4 v10, 0x1

    return v10

    :cond_116
    const/4 v0, 0x0

    goto :goto_111

    :sswitch_118
    const-string/jumbo v10, "android.net.INetworkManagementEventObserver"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/INetworkManagementEventObserver$Stub;->interfaceConfigurationLost()V

    const/4 v10, 0x1

    return v10

    nop

    :sswitch_data_124
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_40
        0x4 -> :sswitch_4f
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_9c
        0x8 -> :sswitch_af
        0x9 -> :sswitch_cb
        0xa -> :sswitch_e2
        0xb -> :sswitch_fd
        0xc -> :sswitch_118
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
