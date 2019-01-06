.class public abstract Landroid/content/pm/IPackageInstallerCallback$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerCallback.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerCallback"

.field static final TRANSACTION_onSessionActiveChanged:I = 0x3

.field static final TRANSACTION_onSessionBadgingChanged:I = 0x2

.field static final TRANSACTION_onSessionCreated:I = 0x1

.field static final TRANSACTION_onSessionFinished:I = 0x5

.field static final TRANSACTION_onSessionProgressChanged:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerCallback;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.content.pm.IPackageInstallerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageInstallerCallback;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/content/pm/IPackageInstallerCallback;

    return-object v0

    :cond_14
    new-instance v1, Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_6c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_9
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v4

    :sswitch_10
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionCreated(I)V

    return v4

    :sswitch_1e
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionBadgingChanged(I)V

    return v4

    :sswitch_2c
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    const/4 v2, 0x1

    :goto_3d
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionActiveChanged(IZ)V

    return v4

    :cond_41
    const/4 v2, 0x0

    goto :goto_3d

    :sswitch_43
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionProgressChanged(IF)V

    return v4

    :sswitch_55
    const-string/jumbo v3, "android.content.pm.IPackageInstallerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6a

    const/4 v2, 0x1

    :goto_66
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/IPackageInstallerCallback$Stub;->onSessionFinished(IZ)V

    return v4

    :cond_6a
    const/4 v2, 0x0

    goto :goto_66

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_43
        0x5 -> :sswitch_55
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
