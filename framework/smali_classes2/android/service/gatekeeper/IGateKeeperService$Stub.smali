.class public abstract Landroid/service/gatekeeper/IGateKeeperService$Stub;
.super Landroid/os/Binder;
.source "IGateKeeperService.java"

# interfaces
.implements Landroid/service/gatekeeper/IGateKeeperService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/gatekeeper/IGateKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.gatekeeper.IGateKeeperService"

.field static final TRANSACTION_clearSecureUserId:I = 0x5

.field static final TRANSACTION_enroll:I = 0x1

.field static final TRANSACTION_getSecureUserId:I = 0x4

.field static final TRANSACTION_reportDeviceSetupComplete:I = 0x6

.field static final TRANSACTION_verify:I = 0x2

.field static final TRANSACTION_verifyChallenge:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p0, p0, v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.service.gatekeeper.IGateKeeperService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_ce

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_8
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    invoke-virtual {p0, v1, v6, v4, v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_39

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_37
    const/4 v0, 0x1

    return v0

    :cond_39
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_37

    :sswitch_3e
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v1, v6, v4}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_63

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_61
    const/4 v0, 0x1

    return v0

    :cond_63
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_61

    :sswitch_68
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_92

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v7, p3, v0}, Landroid/service/gatekeeper/GateKeeperResponse;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_90
    const/4 v0, 0x1

    return v0

    :cond_92
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_90

    :sswitch_97
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->getSecureUserId(I)J

    move-result-wide v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v8, v9}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v0, 0x1

    return v0

    :sswitch_ad
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->clearSecureUserId(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_bf
    const-string/jumbo v0, "android.service.gatekeeper.IGateKeeperService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->reportDeviceSetupComplete()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3e
        0x3 -> :sswitch_68
        0x4 -> :sswitch_97
        0x5 -> :sswitch_ad
        0x6 -> :sswitch_bf
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
