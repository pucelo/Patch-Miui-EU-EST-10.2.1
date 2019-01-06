.class public abstract Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;
.super Landroid/os/Binder;
.source "IFsGestureCallback.java"

# interfaces
.implements Lcom/android/systemui/fsgesture/IFsGestureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fsgesture/IFsGestureCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_0
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_1
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :goto_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->changeAlphaScale(FFIIIIZ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyMiuiAnimationStart()V

    const/4 v0, 0x1

    return v0

    :sswitch_4
    const-string/jumbo v0, "com.android.systemui.fsgesture.IFsGestureCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/IFsGestureCallback$Stub;->notifyMiuiAnimationEnd()V

    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
