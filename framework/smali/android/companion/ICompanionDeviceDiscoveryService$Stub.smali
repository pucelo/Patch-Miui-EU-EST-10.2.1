.class public abstract Landroid/companion/ICompanionDeviceDiscoveryService$Stub;
.super Landroid/os/Binder;
.source "ICompanionDeviceDiscoveryService.java"

# interfaces
.implements Landroid/companion/ICompanionDeviceDiscoveryService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ICompanionDeviceDiscoveryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.companion.ICompanionDeviceDiscoveryService"

.field static final TRANSACTION_startDiscovery:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.companion.ICompanionDeviceDiscoveryService"

    invoke-virtual {p0, p0, v0}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceDiscoveryService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.companion.ICompanionDeviceDiscoveryService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/companion/ICompanionDeviceDiscoveryService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/companion/ICompanionDeviceDiscoveryService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_42

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "android.companion.ICompanionDeviceDiscoveryService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "android.companion.ICompanionDeviceDiscoveryService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3f

    sget-object v4, Landroid/companion/AssociationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationRequest;

    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/companion/IFindDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/IFindDeviceCallback;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/companion/ICompanionDeviceDiscoveryServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceDiscoveryServiceCallback;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/companion/ICompanionDeviceDiscoveryService$Stub;->startDiscovery(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Landroid/companion/ICompanionDeviceDiscoveryServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_3f
    const/4 v0, 0x0

    goto :goto_24

    nop

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
