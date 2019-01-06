.class public abstract Landroid/hardware/location/IFusedLocationHardwareSink$Stub;
.super Landroid/os/Binder;
.source "IFusedLocationHardwareSink.java"

# interfaces
.implements Landroid/hardware/location/IFusedLocationHardwareSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IFusedLocationHardwareSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IFusedLocationHardwareSink"

.field static final TRANSACTION_onCapabilities:I = 0x3

.field static final TRANSACTION_onDiagnosticDataAvailable:I = 0x2

.field static final TRANSACTION_onLocationAvailable:I = 0x1

.field static final TRANSACTION_onStatusChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.location.IFusedLocationHardwareSink"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.location.IFusedLocationHardwareSink"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IFusedLocationHardwareSink;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/location/IFusedLocationHardwareSink;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_4c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_9
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_10
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/location/Location;

    invoke-virtual {p0, v2}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->onLocationAvailable([Landroid/location/Location;)V

    return v4

    :sswitch_22
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->onDiagnosticDataAvailable(Ljava/lang/String;)V

    return v4

    :sswitch_30
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->onCapabilities(I)V

    return v4

    :sswitch_3e
    const-string/jumbo v3, "android.hardware.location.IFusedLocationHardwareSink"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->onStatusChanged(I)V

    return v4

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_30
        0x4 -> :sswitch_3e
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
