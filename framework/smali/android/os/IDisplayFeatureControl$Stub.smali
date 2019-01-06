.class public abstract Landroid/os/IDisplayFeatureControl$Stub;
.super Landroid/os/Binder;
.source "IDisplayFeatureControl.java"

# interfaces
.implements Landroid/os/IDisplayFeatureControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDisplayFeatureControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IDisplayFeatureControl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IDisplayFeatureControl"

.field static final TRANSACTION_setFeature:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.os.IDisplayFeatureControl"

    invoke-virtual {p0, p0, v0}, Landroid/os/IDisplayFeatureControl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IDisplayFeatureControl;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.os.IDisplayFeatureControl"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IDisplayFeatureControl;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/os/IDisplayFeatureControl;

    return-object v0

    :cond_14
    new-instance v1, Landroid/os/IDisplayFeatureControl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IDisplayFeatureControl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_32

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "android.os.IDisplayFeatureControl"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "android.os.IDisplayFeatureControl"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IDisplayFeatureControl$Stub;->setFeature(IIII)I

    move-result v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    nop

    :sswitch_data_32
    .sparse-switch
        0x64 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
