.class public abstract Lcom/android/systemui/fsgesture/IFsGestureService$Stub;
.super Landroid/os/Binder;
.source "IFsGestureService.java"

# interfaces
.implements Lcom/android/systemui/fsgesture/IFsGestureService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/IFsGestureService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_0
    const-string/jumbo v3, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_1
    const-string/jumbo v3, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->registerCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_2
    const-string/jumbo v3, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->unregisterCallback(Ljava/lang/String;Lcom/android/systemui/fsgesture/IFsGestureCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :sswitch_3
    const-string/jumbo v3, "com.android.systemui.fsgesture.IFsGestureService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/fsgesture/IFsGestureService$Stub;->notifyHomeStatus(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v4

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
