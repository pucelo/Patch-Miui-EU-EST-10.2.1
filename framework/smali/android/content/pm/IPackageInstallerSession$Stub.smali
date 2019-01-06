.class public abstract Landroid/content/pm/IPackageInstallerSession$Stub;
.super Landroid/os/Binder;
.source "IPackageInstallerSession.java"

# interfaces
.implements Landroid/content/pm/IPackageInstallerSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageInstallerSession"

.field static final TRANSACTION_abandon:I = 0xa

.field static final TRANSACTION_addClientProgress:I = 0x2

.field static final TRANSACTION_close:I = 0x7

.field static final TRANSACTION_commit:I = 0x8

.field static final TRANSACTION_getNames:I = 0x3

.field static final TRANSACTION_openRead:I = 0x5

.field static final TRANSACTION_openWrite:I = 0x4

.field static final TRANSACTION_removeSplit:I = 0x6

.field static final TRANSACTION_setClientProgress:I = 0x1

.field static final TRANSACTION_transfer:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageInstallerSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallerSession;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.content.pm.IPackageInstallerSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/content/pm/IPackageInstallerSession;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/content/pm/IPackageInstallerSession;

    return-object v0

    :cond_14
    new-instance v1, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageInstallerSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_fa

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_8
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_10
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->setClientProgress(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_22
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v6

    invoke-virtual {p0, v6}, Landroid/content/pm/IPackageInstallerSession$Stub;->addClientProgress(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_34
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->getNames()[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :sswitch_46
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession$Stub;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_6c

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6a
    const/4 v0, 0x1

    return v0

    :cond_6c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6a

    :sswitch_71
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v9, :cond_8e

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_8c
    const/4 v0, 0x1

    return v0

    :cond_8e
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8c

    :sswitch_93
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->removeSplit(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_a5
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->close()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_b3
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d6

    sget-object v0, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    :goto_c7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d8

    const/4 v8, 0x1

    :goto_ce
    invoke-virtual {p0, v7, v8}, Landroid/content/pm/IPackageInstallerSession$Stub;->commit(Landroid/content/IntentSender;Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :cond_d6
    const/4 v7, 0x0

    goto :goto_c7

    :cond_d8
    const/4 v8, 0x0

    goto :goto_ce

    :sswitch_da
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageInstallerSession$Stub;->transfer(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_ec
    const-string/jumbo v0, "android.content.pm.IPackageInstallerSession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/IPackageInstallerSession$Stub;->abandon()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    return v0

    :sswitch_data_fa
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_34
        0x4 -> :sswitch_46
        0x5 -> :sswitch_71
        0x6 -> :sswitch_93
        0x7 -> :sswitch_a5
        0x8 -> :sswitch_b3
        0x9 -> :sswitch_da
        0xa -> :sswitch_ec
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
