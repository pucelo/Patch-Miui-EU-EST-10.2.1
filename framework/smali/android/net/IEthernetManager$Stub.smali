.class public abstract Landroid/net/IEthernetManager$Stub;
.super Landroid/os/Binder;
.source "IEthernetManager.java"

# interfaces
.implements Landroid/net/IEthernetManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IEthernetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IEthernetManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IEthernetManager"

.field static final TRANSACTION_addListener:I = 0x4

.field static final TRANSACTION_getConfiguration:I = 0x1

.field static final TRANSACTION_isAvailable:I = 0x3

.field static final TRANSACTION_removeListener:I = 0x5

.field static final TRANSACTION_setConfiguration:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.IEthernetManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IEthernetManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.IEthernetManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IEthernetManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/IEthernetManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/IEthernetManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IEthernetManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_86

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_a
    const-string/jumbo v4, "android.net.IEthernetManager"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_11
    const-string/jumbo v6, "android.net.IEthernetManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->getConfiguration()Landroid/net/IpConfiguration;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_27

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v5}, Landroid/net/IpConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_26
    return v5

    :cond_27
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    :sswitch_2b
    const-string/jumbo v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_46

    sget-object v4, Landroid/net/IpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpConfiguration;

    :goto_3f
    invoke-virtual {p0, v1}, Landroid/net/IEthernetManager$Stub;->setConfiguration(Landroid/net/IpConfiguration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :cond_46
    const/4 v1, 0x0

    goto :goto_3f

    :sswitch_48
    const-string/jumbo v6, "android.net.IEthernetManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/IEthernetManager$Stub;->isAvailable()Z

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_58

    move v4, v5

    :cond_58
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v5

    :sswitch_5c
    const-string/jumbo v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->addListener(Landroid/net/IEthernetServiceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_71
    const-string/jumbo v4, "android.net.IEthernetManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/net/IEthernetServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IEthernetServiceListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/IEthernetManager$Stub;->removeListener(Landroid/net/IEthernetServiceListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v5

    :sswitch_data_86
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2b
        0x3 -> :sswitch_48
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_71
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
