.class public abstract Landroid/app/backup/IRestoreSession$Stub;
.super Landroid/os/Binder;
.source "IRestoreSession.java"

# interfaces
.implements Landroid/app/backup/IRestoreSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/backup/IRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IRestoreSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IRestoreSession"

.field static final TRANSACTION_endRestoreSession:I = 0x5

.field static final TRANSACTION_getAvailableRestoreSets:I = 0x1

.field static final TRANSACTION_restoreAll:I = 0x2

.field static final TRANSACTION_restorePackage:I = 0x4

.field static final TRANSACTION_restoreSome:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.backup.IRestoreSession"

    invoke-virtual {p0, p0, v0}, Landroid/app/backup/IRestoreSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreSession;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.backup.IRestoreSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/backup/IRestoreSession;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/backup/IRestoreSession;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/backup/IRestoreSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/backup/IRestoreSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v10, 0x1

    sparse-switch p1, :sswitch_data_b2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :sswitch_9
    const-string/jumbo v1, "android.app.backup.IRestoreSession"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :sswitch_10
    const-string/jumbo v1, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v8

    invoke-virtual {p0, v0, v8}, Landroid/app/backup/IRestoreSession$Stub;->getAvailableRestoreSets(Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_31
    const-string/jumbo v1, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/backup/IRestoreSession$Stub;->restoreAll(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_56
    const-string/jumbo v1, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/backup/IRestoreSession$Stub;->restoreSome(JLandroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;[Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_80
    const-string/jumbo v1, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IRestoreObserver;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManagerMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v5

    invoke-virtual {p0, v7, v4, v5}, Landroid/app/backup/IRestoreSession$Stub;->restorePackage(Ljava/lang/String;Landroid/app/backup/IRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;)I

    move-result v9

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    return v10

    :sswitch_a5
    const-string/jumbo v1, "android.app.backup.IRestoreSession"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/backup/IRestoreSession$Stub;->endRestoreSession()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v10

    :sswitch_data_b2
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_31
        0x3 -> :sswitch_56
        0x4 -> :sswitch_80
        0x5 -> :sswitch_a5
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
