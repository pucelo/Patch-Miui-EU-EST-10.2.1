.class public abstract Landroid/net/IMiuiNetworkManager$Stub;
.super Landroid/os/Binder;
.source "IMiuiNetworkManager.java"

# interfaces
.implements Landroid/net/IMiuiNetworkManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IMiuiNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IMiuiNetworkManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IMiuiNetworkManager"

.field static final TRANSACTION_setNetworkTrafficPolicy:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.net.IMiuiNetworkManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IMiuiNetworkManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IMiuiNetworkManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.net.IMiuiNetworkManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IMiuiNetworkManager;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/net/IMiuiNetworkManager;

    return-object v0

    :cond_14
    new-instance v1, Landroid/net/IMiuiNetworkManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IMiuiNetworkManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_2a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_9
    const-string/jumbo v2, "android.net.IMiuiNetworkManager"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :sswitch_10
    const-string/jumbo v2, "android.net.IMiuiNetworkManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/IMiuiNetworkManager$Stub;->setNetworkTrafficPolicy(I)Z

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_28

    move v2, v3

    :goto_24
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    :cond_28
    const/4 v2, 0x0

    goto :goto_24

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
