.class public abstract Landroid/view/IWindowSessionCallback$Stub;
.super Landroid/os/Binder;
.source "IWindowSessionCallback.java"

# interfaces
.implements Landroid/view/IWindowSessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowSessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowSessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowSessionCallback"

.field static final TRANSACTION_onAnimatorScaleChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.IWindowSessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowSessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.view.IWindowSessionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowSessionCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/view/IWindowSessionCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/view/IWindowSessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowSessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_1e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_9
    const-string/jumbo v1, "android.view.IWindowSessionCallback"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :sswitch_10
    const-string/jumbo v1, "android.view.IWindowSessionCallback"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/IWindowSessionCallback$Stub;->onAnimatorScaleChanged(F)V

    return v2

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
