.class public abstract Landroid/content/pm/IPackageManagerNative$Stub;
.super Landroid/os/Binder;
.source "IPackageManagerNative.java"

# interfaces
.implements Landroid/content/pm/IPackageManagerNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManagerNative$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManagerNative"

.field static final TRANSACTION_getInstallerForPackage:I = 0x2

.field static final TRANSACTION_getNamesForUids:I = 0x1

.field static final TRANSACTION_getVersionCodeForPackage:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.pm.IPackageManagerNative"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManagerNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.content.pm.IPackageManagerNative"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageManagerNative;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/content/pm/IPackageManagerNative;

    return-object v0

    :cond_14
    new-instance v1, Landroid/content/pm/IPackageManagerNative$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManagerNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_50

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_9
    const-string/jumbo v5, "android.content.pm.IPackageManagerNative"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_10
    const-string/jumbo v5, "android.content.pm.IPackageManagerNative"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManagerNative$Stub;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v6

    :sswitch_25
    const-string/jumbo v5, "android.content.pm.IPackageManagerNative"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageManagerNative$Stub;->getInstallerForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    :sswitch_3a
    const-string/jumbo v5, "android.content.pm.IPackageManagerNative"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageManagerNative$Stub;->getVersionCodeForPackage(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    nop

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_3a
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
