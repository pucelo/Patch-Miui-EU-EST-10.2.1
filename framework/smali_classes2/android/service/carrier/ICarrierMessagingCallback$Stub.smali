.class public abstract Landroid/service/carrier/ICarrierMessagingCallback$Stub;
.super Landroid/os/Binder;
.source "ICarrierMessagingCallback.java"

# interfaces
.implements Landroid/service/carrier/ICarrierMessagingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/carrier/ICarrierMessagingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.carrier.ICarrierMessagingCallback"

.field static final TRANSACTION_onDownloadMmsComplete:I = 0x5

.field static final TRANSACTION_onFilterComplete:I = 0x1

.field static final TRANSACTION_onSendMmsComplete:I = 0x4

.field static final TRANSACTION_onSendMultipartSmsComplete:I = 0x3

.field static final TRANSACTION_onSendSmsComplete:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p0, p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/carrier/ICarrierMessagingCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.service.carrier.ICarrierMessagingCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/carrier/ICarrierMessagingCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/service/carrier/ICarrierMessagingCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_62

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_9
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v5

    :sswitch_10
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onFilterComplete(I)V

    return v5

    :sswitch_1e
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendSmsComplete(II)V

    return v5

    :sswitch_30
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMultipartSmsComplete(I[I)V

    return v5

    :sswitch_42
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onSendMmsComplete(I[B)V

    return v5

    :sswitch_54
    const-string/jumbo v4, "android.service.carrier.ICarrierMessagingCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/service/carrier/ICarrierMessagingCallback$Stub;->onDownloadMmsComplete(I)V

    return v5

    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_30
        0x4 -> :sswitch_42
        0x5 -> :sswitch_54
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
