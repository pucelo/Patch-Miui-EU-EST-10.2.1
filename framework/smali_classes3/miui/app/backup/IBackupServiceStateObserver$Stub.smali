.class public abstract Lmiui/app/backup/IBackupServiceStateObserver$Stub;
.super Landroid/os/Binder;
.source "IBackupServiceStateObserver.java"

# interfaces
.implements Lmiui/app/backup/IBackupServiceStateObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IBackupServiceStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IBackupServiceStateObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IBackupServiceStateObserver"

.field static final TRANSACTION_onServiceStateIdle:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.app.backup.IBackupServiceStateObserver"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.app.backup.IBackupServiceStateObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IBackupServiceStateObserver;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/app/backup/IBackupServiceStateObserver;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/app/backup/IBackupServiceStateObserver$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IBackupServiceStateObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :sswitch_9
    const-string/jumbo v0, "miui.app.backup.IBackupServiceStateObserver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :sswitch_10
    const-string/jumbo v0, "miui.app.backup.IBackupServiceStateObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->onServiceStateIdle()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
