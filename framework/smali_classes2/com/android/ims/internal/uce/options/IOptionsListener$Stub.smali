.class public abstract Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;
.super Landroid/os/Binder;
.source "IOptionsListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.uce.options.IOptionsListener"

.field static final TRANSACTION_cmdStatus:I = 0x5

.field static final TRANSACTION_getVersionCb:I = 0x1

.field static final TRANSACTION_incomingOptions:I = 0x6

.field static final TRANSACTION_serviceAvailable:I = 0x2

.field static final TRANSACTION_serviceUnavailable:I = 0x3

.field static final TRANSACTION_sipResponseReceived:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/uce/options/IOptionsListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/uce/options/IOptionsListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/ims/internal/uce/options/IOptionsListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_ce

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_9
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_10
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->getVersionCb(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_21
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_3c

    sget-object v7, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    :goto_35
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_3c
    const/4 v0, 0x0

    goto :goto_35

    :sswitch_3e
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_59

    sget-object v7, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/common/StatusCode;

    :goto_52
    invoke-virtual {p0, v0}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->serviceUnavailable(Lcom/android/ims/internal/uce/common/StatusCode;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_59
    const/4 v0, 0x0

    goto :goto_52

    :sswitch_5b
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_88

    sget-object v7, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/internal/uce/options/OptionsSipResponse;

    :goto_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_8a

    sget-object v7, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    :goto_81
    invoke-virtual {p0, v2, v4, v6}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->sipResponseReceived(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsSipResponse;Lcom/android/ims/internal/uce/options/OptionsCapInfo;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_88
    const/4 v4, 0x0

    goto :goto_73

    :cond_8a
    const/4 v6, 0x0

    goto :goto_81

    :sswitch_8c
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_a7

    sget-object v7, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ims/internal/uce/options/OptionsCmdStatus;

    :goto_a0
    invoke-virtual {p0, v1}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->cmdStatus(Lcom/android/ims/internal/uce/options/OptionsCmdStatus;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_a7
    const/4 v1, 0x0

    goto :goto_a0

    :sswitch_a9
    const-string/jumbo v7, "com.android.ims.internal.uce.options.IOptionsListener"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_cc

    sget-object v7, Lcom/android/ims/internal/uce/options/OptionsCapInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/options/OptionsCapInfo;

    :goto_c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v3, v5}, Lcom/android/ims/internal/uce/options/IOptionsListener$Stub;->incomingOptions(Ljava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_cc
    const/4 v3, 0x0

    goto :goto_c1

    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_8c
        0x6 -> :sswitch_a9
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
