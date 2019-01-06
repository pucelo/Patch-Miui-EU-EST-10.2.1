.class public abstract Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;
.super Landroid/os/Binder;
.source "IBluetoothHeadsetPhone.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothHeadsetPhone;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothHeadsetPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothHeadsetPhone"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_cdmaSetSecondCallState:I = 0xb

.field static final TRANSACTION_cdmaSwapSecondCallState:I = 0xa

.field static final TRANSACTION_getNetworkOperator:I = 0x5

.field static final TRANSACTION_getSubscriberNumber:I = 0x6

.field static final TRANSACTION_hangupCall:I = 0x2

.field static final TRANSACTION_listCurrentCalls:I = 0x7

.field static final TRANSACTION_processChld:I = 0x4

.field static final TRANSACTION_queryPhoneState:I = 0x8

.field static final TRANSACTION_sendDtmf:I = 0x3

.field static final TRANSACTION_updateBtHandsfreeAfterRadioTechnologyChange:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetPhone;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object v0

    :cond_14
    new-instance v1, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_e4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_a
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_11
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->answerCall()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_21

    move v4, v5

    :cond_21
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_25
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->hangupCall()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_35

    move v4, v5

    :cond_35
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_39
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->sendDtmf(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_4d

    move v4, v5

    :cond_4d
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_51
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->processChld(I)Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_65

    move v4, v5

    :cond_65
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_69
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_7a
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_8b
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->listCurrentCalls()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_9b

    move v4, v5

    :cond_9b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_9f
    const-string/jumbo v6, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->queryPhoneState()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_af

    move v4, v5

    :cond_af
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_b3
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->updateBtHandsfreeAfterRadioTechnologyChange()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_c0
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->cdmaSwapSecondCallState()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_cd
    const-string/jumbo v4, "android.bluetooth.IBluetoothHeadsetPhone"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e1

    const/4 v1, 0x1

    :goto_da
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->cdmaSetSecondCallState(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_e1
    const/4 v1, 0x0

    goto :goto_da

    nop

    :sswitch_data_e4
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_25
        0x3 -> :sswitch_39
        0x4 -> :sswitch_51
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7a
        0x7 -> :sswitch_8b
        0x8 -> :sswitch_9f
        0x9 -> :sswitch_b3
        0xa -> :sswitch_c0
        0xb -> :sswitch_cd
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
