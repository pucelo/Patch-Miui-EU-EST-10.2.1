.class public abstract Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageBackupRestoreObserver.java"

# interfaces
.implements Lmiui/app/backup/IPackageBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IPackageBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IPackageBackupRestoreObserver"

.field static final TRANSACTION_onBackupEnd:I = 0x2

.field static final TRANSACTION_onBackupStart:I = 0x1

.field static final TRANSACTION_onCustomProgressChange:I = 0x7

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onRestoreEnd:I = 0x4

.field static final TRANSACTION_onRestoreError:I = 0x5

.field static final TRANSACTION_onRestoreStart:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/app/backup/IPackageBackupRestoreObserver;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_a4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_9
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_10
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupStart(Ljava/lang/String;I)V

    return v8

    :sswitch_22
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupEnd(Ljava/lang/String;I)V

    return v8

    :sswitch_34
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreStart(Ljava/lang/String;I)V

    return v8

    :sswitch_46
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreEnd(Ljava/lang/String;I)V

    return v8

    :sswitch_58
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreError(Ljava/lang/String;II)V

    return v8

    :sswitch_6e
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onError(Ljava/lang/String;II)V

    return v8

    :sswitch_84
    const-string/jumbo v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    return v8

    nop

    :sswitch_data_a4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_22
        0x3 -> :sswitch_34
        0x4 -> :sswitch_46
        0x5 -> :sswitch_58
        0x6 -> :sswitch_6e
        0x7 -> :sswitch_84
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
