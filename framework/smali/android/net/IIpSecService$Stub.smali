.class public abstract Landroid/net/IIpSecService$Stub;
.super Landroid/os/Binder;
.source "IIpSecService.java"

# interfaces
.implements Landroid/net/IIpSecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpSecService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IIpSecService"

.field static final TRANSACTION_applyTransportModeTransform:I = 0x7

.field static final TRANSACTION_closeUdpEncapsulationSocket:I = 0x4

.field static final TRANSACTION_createTransportModeTransform:I = 0x5

.field static final TRANSACTION_deleteTransportModeTransform:I = 0x6

.field static final TRANSACTION_openUdpEncapsulationSocket:I = 0x3

.field static final TRANSACTION_releaseSecurityParameterIndex:I = 0x2

.field static final TRANSACTION_removeTransportModeTransform:I = 0x8

.field static final TRANSACTION_reserveSecurityParameterIndex:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.IIpSecService"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpSecService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.IIpSecService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IIpSecService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/IIpSecService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/IIpSecService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpSecService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_110

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    :sswitch_8
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v11, 0x1

    return v11

    :sswitch_10
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {p0, v0, v5, v6, v7}, Landroid/net/IIpSecService$Stub;->reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_39

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v8, p3, v11}, Landroid/net/IpSecSpiResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_37
    const/4 v11, 0x1

    return v11

    :cond_39
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    :sswitch_3e
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/IIpSecService$Stub;->releaseSecurityParameterIndex(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_50
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Landroid/net/IIpSecService$Stub;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_71

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v10, p3, v11}, Landroid/net/IpSecUdpEncapResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6f
    const/4 v11, 0x1

    return v11

    :cond_71
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6f

    :sswitch_76
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/IIpSecService$Stub;->closeUdpEncapsulationSocket(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_88
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_b3

    sget-object v11, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecConfig;

    :goto_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Landroid/net/IIpSecService$Stub;->createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/net/IpSecTransformResponse;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_b5

    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v11, 0x1

    invoke-virtual {v9, p3, v11}, Landroid/net/IpSecTransformResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b1
    const/4 v11, 0x1

    return v11

    :cond_b3
    const/4 v1, 0x0

    goto :goto_9c

    :cond_b5
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b1

    :sswitch_ba
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/IIpSecService$Stub;->deleteTransportModeTransform(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :sswitch_cc
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_ec

    sget-object v11, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    :goto_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/net/IIpSecService$Stub;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_ec
    const/4 v2, 0x0

    goto :goto_e0

    :sswitch_ee
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_10e

    sget-object v11, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    :goto_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/net/IIpSecService$Stub;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v11, 0x1

    return v11

    :cond_10e
    const/4 v2, 0x0

    goto :goto_102

    :sswitch_data_110
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_50
        0x4 -> :sswitch_76
        0x5 -> :sswitch_88
        0x6 -> :sswitch_ba
        0x7 -> :sswitch_cc
        0x8 -> :sswitch_ee
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
