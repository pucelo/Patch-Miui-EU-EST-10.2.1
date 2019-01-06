.class public abstract Landroid/service/quicksettings/IQSService$Stub;
.super Landroid/os/Binder;
.source "IQSService.java"

# interfaces
.implements Landroid/service/quicksettings/IQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/IQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/quicksettings/IQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.quicksettings.IQSService"

.field static final TRANSACTION_getTile:I = 0x1

.field static final TRANSACTION_isLocked:I = 0x6

.field static final TRANSACTION_isSecure:I = 0x7

.field static final TRANSACTION_onDialogHidden:I = 0x9

.field static final TRANSACTION_onShowDialog:I = 0x4

.field static final TRANSACTION_onStartActivity:I = 0x5

.field static final TRANSACTION_onStartSuccessful:I = 0xa

.field static final TRANSACTION_startUnlockAndRun:I = 0x8

.field static final TRANSACTION_updateQsTile:I = 0x2

.field static final TRANSACTION_updateStatusIcon:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.quicksettings.IQSService"

    invoke-virtual {p0, p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.service.quicksettings.IQSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/quicksettings/IQSService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/service/quicksettings/IQSService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/service/quicksettings/IQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/quicksettings/IQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_f2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_a
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_11
    const-string/jumbo v9, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;

    move-result-object v5

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v5, :cond_2b

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v5, p3, v8}, Landroid/service/quicksettings/Tile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2a
    return v8

    :cond_2b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2a

    :sswitch_2f
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4e

    sget-object v7, Landroid/service/quicksettings/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/quicksettings/Tile;

    :goto_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Landroid/service/quicksettings/IQSService$Stub;->updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_4e
    const/4 v1, 0x0

    goto :goto_43

    :sswitch_50
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_73

    sget-object v7, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    :goto_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, v2, v4}, Landroid/service/quicksettings/IQSService$Stub;->updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :cond_73
    const/4 v2, 0x0

    goto :goto_68

    :sswitch_75
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->onShowDialog(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_86
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->onStartActivity(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_97
    const-string/jumbo v9, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isLocked()Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_a7

    move v7, v8

    :cond_a7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_ab
    const-string/jumbo v9, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/quicksettings/IQSService$Stub;->isSecure()Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_bb

    move v7, v8

    :cond_bb
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_bf
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->startUnlockAndRun(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_d0
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->onDialogHidden(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_e1
    const-string/jumbo v7, "android.service.quicksettings.IQSService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/service/quicksettings/IQSService$Stub;->onStartSuccessful(Landroid/os/IBinder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_50
        0x4 -> :sswitch_75
        0x5 -> :sswitch_86
        0x6 -> :sswitch_97
        0x7 -> :sswitch_ab
        0x8 -> :sswitch_bf
        0x9 -> :sswitch_d0
        0xa -> :sswitch_e1
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
