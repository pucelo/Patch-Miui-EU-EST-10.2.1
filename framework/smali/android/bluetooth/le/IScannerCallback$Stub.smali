.class public abstract Landroid/bluetooth/le/IScannerCallback$Stub;
.super Landroid/os/Binder;
.source "IScannerCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IScannerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IScannerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.le.IScannerCallback"

.field static final TRANSACTION_onBatchScanResults:I = 0x3

.field static final TRANSACTION_onFoundOrLost:I = 0x4

.field static final TRANSACTION_onScanManagerErrorCallback:I = 0x5

.field static final TRANSACTION_onScanResult:I = 0x2

.field static final TRANSACTION_onScannerRegistered:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/le/IScannerCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.le.IScannerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/le/IScannerCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/le/IScannerCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/le/IScannerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_7e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_9
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_10
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v0, v4}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScannerRegistered(II)V

    return v7

    :sswitch_22
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    sget-object v6, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanResult;

    :goto_36
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    return v7

    :cond_3a
    const/4 v1, 0x0

    goto :goto_36

    :sswitch_3c
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/bluetooth/le/IScannerCallback$Stub;->onBatchScanResults(Ljava/util/List;)V

    return v7

    :sswitch_4c
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6b

    const/4 v3, 0x1

    :goto_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    sget-object v6, Landroid/bluetooth/le/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/le/ScanResult;

    :goto_67
    invoke-virtual {p0, v3, v5}, Landroid/bluetooth/le/IScannerCallback$Stub;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    return v7

    :cond_6b
    const/4 v3, 0x0

    goto :goto_59

    :cond_6d
    const/4 v5, 0x0

    goto :goto_67

    :sswitch_6f
    const-string/jumbo v6, "android.bluetooth.le.IScannerCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/le/IScannerCallback$Stub;->onScanManagerErrorCallback(I)V

    return v7

    nop

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_4c
        0x5 -> :sswitch_6f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
