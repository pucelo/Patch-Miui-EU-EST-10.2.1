.class public abstract Landroid/net/lowpan/ILowpanManager$Stub;
.super Landroid/os/Binder;
.source "ILowpanManager.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanManager"

.field static final TRANSACTION_addInterface:I = 0x5

.field static final TRANSACTION_addListener:I = 0x3

.field static final TRANSACTION_getInterface:I = 0x1

.field static final TRANSACTION_getInterfaceList:I = 0x2

.field static final TRANSACTION_removeInterface:I = 0x6

.field static final TRANSACTION_removeListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.lowpan.ILowpanManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/lowpan/ILowpanManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/lowpan/ILowpanManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/lowpan/ILowpanManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v5, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_92

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_a
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v7

    :sswitch_11
    const-string/jumbo v6, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/lowpan/ILowpanManager$Stub;->getInterface(Ljava/lang/String;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_28

    invoke-interface {v3}, Landroid/net/lowpan/ILowpanInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_28
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v7

    :sswitch_2c
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/lowpan/ILowpanManager$Stub;->getInterfaceList()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v7

    :sswitch_3d
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/lowpan/ILowpanManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManagerListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->addListener(Landroid/net/lowpan/ILowpanManagerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_52
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/lowpan/ILowpanManagerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanManagerListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/lowpan/ILowpanManager$Stub;->removeListener(Landroid/net/lowpan/ILowpanManagerListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_67
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/lowpan/ILowpanInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/ILowpanManager$Stub;->addInterface(Landroid/net/lowpan/ILowpanInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    :sswitch_7c
    const-string/jumbo v5, "android.net.lowpan.ILowpanManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/lowpan/ILowpanInterface$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/lowpan/ILowpanManager$Stub;->removeInterface(Landroid/net/lowpan/ILowpanInterface;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v7

    nop

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_52
        0x5 -> :sswitch_67
        0x6 -> :sswitch_7c
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
