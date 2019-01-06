.class public abstract Landroid/os/IBatteryPropertiesRegistrar$Stub;
.super Landroid/os/Binder;
.source "IBatteryPropertiesRegistrar.java"

# interfaces
.implements Landroid/os/IBatteryPropertiesRegistrar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IBatteryPropertiesRegistrar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IBatteryPropertiesRegistrar"

.field static final TRANSACTION_getProperty:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_scheduleUpdate:I = 0x4

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p0, p0, v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.os.IBatteryPropertiesRegistrar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IBatteryPropertiesRegistrar;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/os/IBatteryPropertiesRegistrar;

    return-object v0

    :cond_14
    new-instance v1, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_6c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IBatteryPropertiesListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->registerListener(Landroid/os/IBatteryPropertiesListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_25
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IBatteryPropertiesListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->unregisterListener(Landroid/os/IBatteryPropertiesListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_3a
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v2, Landroid/os/BatteryProperty;

    invoke-direct {v2}, Landroid/os/BatteryProperty;-><init>()V

    invoke-virtual {p0, v0, v2}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->getProperty(ILandroid/os/BatteryProperty;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v2, :cond_5c

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v5}, Landroid/os/BatteryProperty;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5b
    return v5

    :cond_5c
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5b

    :sswitch_61
    const-string/jumbo v4, "android.os.IBatteryPropertiesRegistrar"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->scheduleUpdate()V

    return v5

    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_61
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
