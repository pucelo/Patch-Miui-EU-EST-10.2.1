.class public abstract Landroid/view/IGestureStubListener$Stub;
.super Landroid/os/Binder;
.source "IGestureStubListener.java"

# interfaces
.implements Landroid/view/IGestureStubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IGestureStubListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IGestureStubListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IGestureStubListener"

.field static final TRANSACTION_onGestureFinish:I = 0x3

.field static final TRANSACTION_onGestureReady:I = 0x1

.field static final TRANSACTION_onGestureStart:I = 0x2

.field static final TRANSACTION_skipAppTransition:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.IGestureStubListener"

    invoke-virtual {p0, p0, v0}, Landroid/view/IGestureStubListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IGestureStubListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.view.IGestureStubListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IGestureStubListener;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/view/IGestureStubListener;

    return-object v0

    :cond_14
    new-instance v1, Landroid/view/IGestureStubListener$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IGestureStubListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_4e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_9
    const-string/jumbo v1, "android.view.IGestureStubListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    const-string/jumbo v1, "android.view.IGestureStubListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IGestureStubListener$Stub;->onGestureReady()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_1d
    const-string/jumbo v1, "android.view.IGestureStubListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IGestureStubListener$Stub;->onGestureStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :sswitch_2a
    const-string/jumbo v1, "android.view.IGestureStubListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3e

    const/4 v0, 0x1

    :goto_37
    invoke-virtual {p0, v0}, Landroid/view/IGestureStubListener$Stub;->onGestureFinish(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_3e
    const/4 v0, 0x0

    goto :goto_37

    :sswitch_40
    const-string/jumbo v1, "android.view.IGestureStubListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IGestureStubListener$Stub;->skipAppTransition()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    nop

    :sswitch_data_4e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2a
        0x4 -> :sswitch_40
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
