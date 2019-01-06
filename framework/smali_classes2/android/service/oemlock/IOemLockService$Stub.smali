.class public abstract Landroid/service/oemlock/IOemLockService$Stub;
.super Landroid/os/Binder;
.source "IOemLockService.java"

# interfaces
.implements Landroid/service/oemlock/IOemLockService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/oemlock/IOemLockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/oemlock/IOemLockService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.oemlock.IOemLockService"

.field static final TRANSACTION_isDeviceOemUnlocked:I = 0x6

.field static final TRANSACTION_isOemUnlockAllowed:I = 0x5

.field static final TRANSACTION_isOemUnlockAllowedByCarrier:I = 0x2

.field static final TRANSACTION_isOemUnlockAllowedByUser:I = 0x4

.field static final TRANSACTION_setOemUnlockAllowedByCarrier:I = 0x1

.field static final TRANSACTION_setOemUnlockAllowedByUser:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.oemlock.IOemLockService"

    invoke-virtual {p0, p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/oemlock/IOemLockService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.service.oemlock.IOemLockService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/oemlock/IOemLockService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/service/oemlock/IOemLockService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/service/oemlock/IOemLockService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/oemlock/IOemLockService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_92

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_a
    const-string/jumbo v3, "android.service.oemlock.IOemLockService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_11
    const-string/jumbo v3, "android.service.oemlock.IOemLockService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_29

    const/4 v0, 0x1

    :goto_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByCarrier(Z[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_29
    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_2b
    const-string/jumbo v5, "android.service.oemlock.IOemLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByCarrier()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3b

    move v3, v4

    :cond_3b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_3f
    const-string/jumbo v3, "android.service.oemlock.IOemLockService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_53

    const/4 v0, 0x1

    :goto_4c
    invoke-virtual {p0, v0}, Landroid/service/oemlock/IOemLockService$Stub;->setOemUnlockAllowedByUser(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_53
    const/4 v0, 0x0

    goto :goto_4c

    :sswitch_55
    const-string/jumbo v5, "android.service.oemlock.IOemLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowedByUser()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_65

    move v3, v4

    :cond_65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_69
    const-string/jumbo v5, "android.service.oemlock.IOemLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isOemUnlockAllowed()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_79

    move v3, v4

    :cond_79
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_7d
    const-string/jumbo v5, "android.service.oemlock.IOemLockService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/oemlock/IOemLockService$Stub;->isDeviceOemUnlocked()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8d

    move v3, v4

    :cond_8d
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    nop

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_55
        0x5 -> :sswitch_69
        0x6 -> :sswitch_7d
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
