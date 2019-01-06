.class public abstract Landroid/os/IThermalService$Stub;
.super Landroid/os/Binder;
.source "IThermalService.java"

# interfaces
.implements Landroid/os/IThermalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IThermalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IThermalService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IThermalService"

.field static final TRANSACTION_isThrottling:I = 0x4

.field static final TRANSACTION_notifyThrottling:I = 0x3

.field static final TRANSACTION_registerThermalEventListener:I = 0x1

.field static final TRANSACTION_unregisterThermalEventListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IThermalService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IThermalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.os.IThermalService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IThermalService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/os/IThermalService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/os/IThermalService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IThermalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_72

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_a
    const-string/jumbo v4, "android.os.IThermalService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_11
    const-string/jumbo v4, "android.os.IThermalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/IThermalService$Stub;->registerThermalEventListener(Landroid/os/IThermalEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_26
    const-string/jumbo v4, "android.os.IThermalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IThermalEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalEventListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/IThermalService$Stub;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_3b
    const-string/jumbo v4, "android.os.IThermalService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5a

    const/4 v1, 0x1

    :goto_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5c

    sget-object v4, Landroid/os/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Temperature;

    :goto_56
    invoke-virtual {p0, v1, v2}, Landroid/os/IThermalService$Stub;->notifyThrottling(ZLandroid/os/Temperature;)V

    return v5

    :cond_5a
    const/4 v1, 0x0

    goto :goto_48

    :cond_5c
    const/4 v2, 0x0

    goto :goto_56

    :sswitch_5e
    const-string/jumbo v6, "android.os.IThermalService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IThermalService$Stub;->isThrottling()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_6e

    move v4, v5

    :cond_6e
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_data_72
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3b
        0x4 -> :sswitch_5e
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
