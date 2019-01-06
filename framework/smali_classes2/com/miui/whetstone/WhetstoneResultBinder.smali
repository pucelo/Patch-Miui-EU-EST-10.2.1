.class public Lcom/miui/whetstone/WhetstoneResultBinder;
.super Landroid/os/Binder;
.source "WhetstoneResultBinder.java"

# interfaces
.implements Lcom/miui/whetstone/IWhetstoneResult;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstoneResult;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.whetstone.IWhetstoneResult"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/IWhetstoneResult;

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    new-instance v1, Lcom/miui/whetstone/WhetstoneResultProxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/WhetstoneResultProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onResult(Lcom/miui/whetstone/WhetstoneResult;)V
    .registers 2

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_1e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_8
    const-string/jumbo v1, "com.miui.whetstone.IWhetstoneResult"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v1, Lcom/miui/whetstone/WhetstoneResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstoneResult;

    invoke-virtual {p0, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
