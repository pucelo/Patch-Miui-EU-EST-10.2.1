.class public abstract Landroid/hardware/location/IContextHubService$Stub;
.super Landroid/os/Binder;
.source "IContextHubService.java"

# interfaces
.implements Landroid/hardware/location/IContextHubService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/IContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/IContextHubService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.hardware.location.IContextHubService"

.field static final TRANSACTION_findNanoAppOnHub:I = 0x7

.field static final TRANSACTION_getContextHubHandles:I = 0x2

.field static final TRANSACTION_getContextHubInfo:I = 0x3

.field static final TRANSACTION_getNanoAppInstanceInfo:I = 0x6

.field static final TRANSACTION_loadNanoApp:I = 0x4

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x8

.field static final TRANSACTION_unloadNanoApp:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.hardware.location.IContextHubService"

    invoke-virtual {p0, p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.hardware.location.IContextHubService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/location/IContextHubService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/hardware/location/IContextHubService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/hardware/location/IContextHubService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/location/IContextHubService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_10c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    :sswitch_8
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v10, 0x1

    return v10

    :sswitch_10
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/hardware/location/IContextHubCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/IContextHubCallback;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/hardware/location/IContextHubService$Stub;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_2a
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubHandles()[I

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v10, 0x1

    return v10

    :sswitch_3c
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object v7

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v7, :cond_59

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v7, p3, v10}, Landroid/hardware/location/ContextHubInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_57
    const/4 v10, 0x1

    return v10

    :cond_59
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_57

    :sswitch_5e
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_82

    sget-object v10, Landroid/hardware/location/NanoApp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/location/NanoApp;

    :goto_76
    invoke-virtual {p0, v0, v3}, Landroid/hardware/location/IContextHubService$Stub;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_82
    const/4 v3, 0x0

    goto :goto_76

    :sswitch_84
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->unloadNanoApp(I)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :sswitch_9a
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/location/IContextHubService$Stub;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v8

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v8, :cond_b7

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    invoke-virtual {v8, p3, v10}, Landroid/hardware/location/NanoAppInstanceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_b5
    const/4 v10, 0x1

    return v10

    :cond_b7
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b5

    :sswitch_bc
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e0

    sget-object v10, Landroid/hardware/location/NanoAppFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/location/NanoAppFilter;

    :goto_d4
    invoke-virtual {p0, v0, v4}, Landroid/hardware/location/IContextHubService$Stub;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeIntArray([I)V

    const/4 v10, 0x1

    return v10

    :cond_e0
    const/4 v4, 0x0

    goto :goto_d4

    :sswitch_e2
    const-string/jumbo v10, "android.hardware.location.IContextHubService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_10a

    sget-object v10, Landroid/hardware/location/ContextHubMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/location/ContextHubMessage;

    :goto_fe
    invoke-virtual {p0, v0, v2, v5}, Landroid/hardware/location/IContextHubService$Stub;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v10, 0x1

    return v10

    :cond_10a
    const/4 v5, 0x0

    goto :goto_fe

    :sswitch_data_10c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_3c
        0x4 -> :sswitch_5e
        0x5 -> :sswitch_84
        0x6 -> :sswitch_9a
        0x7 -> :sswitch_bc
        0x8 -> :sswitch_e2
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
