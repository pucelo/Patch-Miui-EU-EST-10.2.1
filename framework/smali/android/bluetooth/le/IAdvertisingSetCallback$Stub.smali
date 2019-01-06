.class public abstract Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.super Landroid/os/Binder;
.source "IAdvertisingSetCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IAdvertisingSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IAdvertisingSetCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IAdvertisingSetCallback"

.field static final TRANSACTION_onAdvertisingDataSet:I = 0x5

.field static final TRANSACTION_onAdvertisingEnabled:I = 0x4

.field static final TRANSACTION_onAdvertisingParametersUpdated:I = 0x7

.field static final TRANSACTION_onAdvertisingSetStarted:I = 0x1

.field static final TRANSACTION_onAdvertisingSetStopped:I = 0x3

.field static final TRANSACTION_onOwnAddressRead:I = 0x2

.field static final TRANSACTION_onPeriodicAdvertisingDataSet:I = 0x9

.field static final TRANSACTION_onPeriodicAdvertisingEnabled:I = 0xa

.field static final TRANSACTION_onPeriodicAdvertisingParametersUpdated:I = 0x8

.field static final TRANSACTION_onScanResponseDataSet:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingSetStarted(III)V

    return v6

    :sswitch_26
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v1, v4}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onOwnAddressRead(IILjava/lang/String;)V

    return v6

    :sswitch_3c
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingSetStopped(I)V

    return v6

    :sswitch_4a
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_63

    const/4 v2, 0x1

    :goto_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingEnabled(IZI)V

    return v6

    :cond_63
    const/4 v2, 0x0

    goto :goto_5b

    :sswitch_65
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingDataSet(II)V

    return v6

    :sswitch_77
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onScanResponseDataSet(II)V

    return v6

    :sswitch_89
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onAdvertisingParametersUpdated(III)V

    return v6

    :sswitch_9f
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingParametersUpdated(II)V

    return v6

    :sswitch_b1
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingDataSet(II)V

    return v6

    :sswitch_c3
    const-string/jumbo v5, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_dc

    const/4 v2, 0x1

    :goto_d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;->onPeriodicAdvertisingEnabled(IZI)V

    return v6

    :cond_dc
    const/4 v2, 0x0

    goto :goto_d4

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_65
        0x6 -> :sswitch_77
        0x7 -> :sswitch_89
        0x8 -> :sswitch_9f
        0x9 -> :sswitch_b1
        0xa -> :sswitch_c3
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
