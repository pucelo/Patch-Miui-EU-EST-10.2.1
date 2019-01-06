.class public abstract Lcom/android/internal/telecom/IInCallService$Stub;
.super Landroid/os/Binder;
.source "IInCallService.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallService"

.field static final TRANSACTION_addCall:I = 0x2

.field static final TRANSACTION_bringToForeground:I = 0x7

.field static final TRANSACTION_onCallAudioStateChanged:I = 0x6

.field static final TRANSACTION_onCanAddCallChanged:I = 0x8

.field static final TRANSACTION_onConnectionEvent:I = 0xa

.field static final TRANSACTION_onRttInitiationFailure:I = 0xc

.field static final TRANSACTION_onRttUpgradeRequest:I = 0xb

.field static final TRANSACTION_setInCallAdapter:I = 0x1

.field static final TRANSACTION_setPostDial:I = 0x4

.field static final TRANSACTION_setPostDialWait:I = 0x5

.field static final TRANSACTION_silenceRinger:I = 0x9

.field static final TRANSACTION_updateCall:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.telecom.IInCallService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/telecom/IInCallService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v9, 0x1

    sparse-switch p1, :sswitch_data_10a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    return v8

    :sswitch_9
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v9

    :sswitch_10
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallService$Stub;->setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V

    return v9

    :sswitch_22
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3a

    sget-object v8, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ParcelableCall;

    :goto_36
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->addCall(Landroid/telecom/ParcelableCall;)V

    return v9

    :cond_3a
    const/4 v1, 0x0

    goto :goto_36

    :sswitch_3c
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_54

    sget-object v8, Landroid/telecom/ParcelableCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/ParcelableCall;

    :goto_50
    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallService$Stub;->updateCall(Landroid/telecom/ParcelableCall;)V

    return v9

    :cond_54
    const/4 v1, 0x0

    goto :goto_50

    :sswitch_56
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDial(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :sswitch_68
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/telecom/IInCallService$Stub;->setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V

    return v9

    :sswitch_7a
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_92

    sget-object v8, Landroid/telecom/CallAudioState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/CallAudioState;

    :goto_8e
    invoke-virtual {p0, v0}, Lcom/android/internal/telecom/IInCallService$Stub;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    return v9

    :cond_92
    const/4 v0, 0x0

    goto :goto_8e

    :sswitch_94
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a5

    const/4 v4, 0x1

    :goto_a1
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallService$Stub;->bringToForeground(Z)V

    return v9

    :cond_a5
    const/4 v4, 0x0

    goto :goto_a1

    :sswitch_a7
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b8

    const/4 v4, 0x1

    :goto_b4
    invoke-virtual {p0, v4}, Lcom/android/internal/telecom/IInCallService$Stub;->onCanAddCallChanged(Z)V

    return v9

    :cond_b8
    const/4 v4, 0x0

    goto :goto_b4

    :sswitch_ba
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallService$Stub;->silenceRinger()V

    return v9

    :sswitch_c4
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e4

    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_e0
    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/telecom/IInCallService$Stub;->onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return v9

    :cond_e4
    const/4 v7, 0x0

    goto :goto_e0

    :sswitch_e6
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttUpgradeRequest(Ljava/lang/String;I)V

    return v9

    :sswitch_f8
    const-string/jumbo v8, "com.android.internal.telecom.IInCallService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telecom/IInCallService$Stub;->onRttInitiationFailure(Ljava/lang/String;I)V

    return v9

    :sswitch_data_10a
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_56
        0x5 -> :sswitch_68
        0x6 -> :sswitch_7a
        0x7 -> :sswitch_94
        0x8 -> :sswitch_a7
        0x9 -> :sswitch_ba
        0xa -> :sswitch_c4
        0xb -> :sswitch_e6
        0xc -> :sswitch_f8
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
