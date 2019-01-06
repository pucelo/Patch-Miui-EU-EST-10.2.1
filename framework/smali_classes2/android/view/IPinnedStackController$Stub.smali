.class public abstract Landroid/view/IPinnedStackController$Stub;
.super Landroid/os/Binder;
.source "IPinnedStackController.java"

# interfaces
.implements Landroid/view/IPinnedStackController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IPinnedStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IPinnedStackController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IPinnedStackController"

.field static final TRANSACTION_getDisplayRotation:I = 0x3

.field static final TRANSACTION_setIsMinimized:I = 0x1

.field static final TRANSACTION_setMinEdgeSize:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.IPinnedStackController"

    invoke-virtual {p0, p0, v0}, Landroid/view/IPinnedStackController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedStackController;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.view.IPinnedStackController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IPinnedStackController;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/view/IPinnedStackController;

    return-object v0

    :cond_14
    new-instance v1, Landroid/view/IPinnedStackController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IPinnedStackController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_42

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_9
    const-string/jumbo v3, "android.view.IPinnedStackController"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_10
    const-string/jumbo v3, "android.view.IPinnedStackController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_21

    const/4 v1, 0x1

    :goto_1d
    invoke-virtual {p0, v1}, Landroid/view/IPinnedStackController$Stub;->setIsMinimized(Z)V

    return v4

    :cond_21
    const/4 v1, 0x0

    goto :goto_1d

    :sswitch_23
    const-string/jumbo v3, "android.view.IPinnedStackController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/IPinnedStackController$Stub;->setMinEdgeSize(I)V

    return v4

    :sswitch_31
    const-string/jumbo v3, "android.view.IPinnedStackController"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/IPinnedStackController$Stub;->getDisplayRotation()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :sswitch_data_42
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_31
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method