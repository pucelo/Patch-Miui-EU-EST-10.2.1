.class public abstract Landroid/hardware/location/IFusedLocationHardware$Stub;
.super Landroid/os/Binder;
.source "IFusedLocationHardware.java"

# interfaces
.implements Landroid/hardware/location/IFusedLocationHardware;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IFusedLocationHardware;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IFusedLocationHardware"

.field static final TRANSACTION_flushBatchedLocations:I = 0xc

.field static final TRANSACTION_getSupportedBatchSize:I = 0x3

.field static final TRANSACTION_getVersion:I = 0xd

.field static final TRANSACTION_injectDeviceContext:I = 0xb

.field static final TRANSACTION_injectDiagnosticData:I = 0x9

.field static final TRANSACTION_registerSink:I = 0x1

.field static final TRANSACTION_requestBatchOfLocations:I = 0x7

.field static final TRANSACTION_startBatching:I = 0x4

.field static final TRANSACTION_stopBatching:I = 0x5

.field static final TRANSACTION_supportsDeviceContextInjection:I = 0xa

.field static final TRANSACTION_supportsDiagnosticDataInjection:I = 0x8

.field static final TRANSACTION_unregisterSink:I = 0x2

.field static final TRANSACTION_updateBatchingOptions:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardware;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.location.IFusedLocationHardware"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IFusedLocationHardware;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/location/IFusedLocationHardware;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IFusedLocationHardware$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_118

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_a
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_11
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/location/IFusedLocationHardware$Stub;->registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_26
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/location/IFusedLocationHardwareSink$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/location/IFusedLocationHardware$Stub;->unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_3b
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->getSupportedBatchSize()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_4c
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6b

    sget-object v6, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/FusedBatchOptions;

    :goto_64
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IFusedLocationHardware$Stub;->startBatching(ILandroid/location/FusedBatchOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_6b
    const/4 v3, 0x0

    goto :goto_64

    :sswitch_6d
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->stopBatching(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_7e
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9d

    sget-object v6, Landroid/location/FusedBatchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/FusedBatchOptions;

    :goto_96
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IFusedLocationHardware$Stub;->updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :cond_9d
    const/4 v3, 0x0

    goto :goto_96

    :sswitch_9f
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->requestBatchOfLocations(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_b0
    const-string/jumbo v8, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->supportsDiagnosticDataInjection()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_c0

    move v6, v7

    :cond_c0
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_c4
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/hardware/location/IFusedLocationHardware$Stub;->injectDiagnosticData(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_d5
    const-string/jumbo v8, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->supportsDeviceContextInjection()Z

    move-result v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_e5

    move v6, v7

    :cond_e5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_e9
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->injectDeviceContext(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_fa
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->flushBatchedLocations()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_107
    const-string/jumbo v6, "android.hardware.location.IFusedLocationHardware"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;->getVersion()I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v7

    :sswitch_data_118
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_6d
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_9f
        0x8 -> :sswitch_b0
        0x9 -> :sswitch_c4
        0xa -> :sswitch_d5
        0xb -> :sswitch_e9
        0xc -> :sswitch_fa
        0xd -> :sswitch_107
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
