.class public abstract Lmiui/app/backup/IBackupManager$Stub;
.super Landroid/os/Binder;
.source "IBackupManager.java"

# interfaces
.implements Lmiui/app/backup/IBackupManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IBackupManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IBackupManager"

.field static final TRANSACTION_acquire:I = 0x4

.field static final TRANSACTION_addCompletedSize:I = 0xd

.field static final TRANSACTION_backupPackage:I = 0x1

.field static final TRANSACTION_delCacheBackup:I = 0x15

.field static final TRANSACTION_errorOccur:I = 0x6

.field static final TRANSACTION_getBackupTimeoutScale:I = 0x13

.field static final TRANSACTION_getCurrentRunningPackage:I = 0x7

.field static final TRANSACTION_getCurrentWorkingFeature:I = 0x8

.field static final TRANSACTION_getState:I = 0x9

.field static final TRANSACTION_isNeedBeKilled:I = 0xe

.field static final TRANSACTION_isRunningFromMiui:I = 0x10

.field static final TRANSACTION_isServiceIdle:I = 0x11

.field static final TRANSACTION_onApkInstalled:I = 0xc

.field static final TRANSACTION_readMiuiBackupHeader:I = 0xb

.field static final TRANSACTION_release:I = 0x5

.field static final TRANSACTION_restoreFile:I = 0x3

.field static final TRANSACTION_setCustomProgress:I = 0x12

.field static final TRANSACTION_setIsNeedBeKilled:I = 0xf

.field static final TRANSACTION_shouldSkipData:I = 0x14

.field static final TRANSACTION_startConfirmationUi:I = 0x2

.field static final TRANSACTION_writeMiuiBackupHeader:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.app.backup.IBackupManager"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IBackupManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.app.backup.IBackupManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/app/backup/IBackupManager;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/app/backup/IBackupManager;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/app/backup/IBackupManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/app/backup/IBackupManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_2d8

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_8
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_12
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_71

    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    :goto_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_73

    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_75

    const/4 v11, 0x1

    :goto_51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_77

    const/4 v12, 0x1

    :goto_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_79

    const/4 v13, 0x1

    :goto_5f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v14

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v14}, Lmiui/app/backup/IBackupManager$Stub;->backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_71
    const/4 v5, 0x0

    goto :goto_2a

    :cond_73
    const/4 v6, 0x0

    goto :goto_3a

    :cond_75
    const/4 v11, 0x0

    goto :goto_51

    :cond_77
    const/4 v12, 0x0

    goto :goto_58

    :cond_79
    const/4 v13, 0x0

    goto :goto_5f

    :sswitch_7b
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lmiui/app/backup/IBackupManager$Stub;->startConfirmationUi(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_97
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d3

    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    :goto_af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d5

    const/16 v25, 0x1

    :goto_bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v5, v1, v2, v3}, Lmiui/app/backup/IBackupManager$Stub;->restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_d3
    const/4 v5, 0x0

    goto :goto_af

    :cond_d5
    const/16 v25, 0x0

    goto :goto_bb

    :sswitch_d8
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lmiui/app/backup/IBackupManager$Stub;->acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_103

    const/4 v4, 0x1

    :goto_fc
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_103
    const/4 v4, 0x0

    goto :goto_fc

    :sswitch_105
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/app/backup/IBackupServiceStateObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IBackupServiceStateObserver;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmiui/app/backup/IBackupManager$Stub;->release(Lmiui/app/backup/IBackupServiceStateObserver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_121
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmiui/app/backup/IBackupManager$Stub;->errorOccur(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_137
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getCurrentRunningPackage()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_14f
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getCurrentWorkingFeature()I

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_167
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getState()I

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_17f
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a1

    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    :goto_197
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/app/backup/IBackupManager$Stub;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_1a1
    const/4 v5, 0x0

    goto :goto_197

    :sswitch_1a3
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1c5

    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    :goto_1bb
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/app/backup/IBackupManager$Stub;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_1c5
    const/4 v5, 0x0

    goto :goto_1bb

    :sswitch_1c7
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->onApkInstalled()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_1d7
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Lmiui/app/backup/IBackupManager$Stub;->addCompletedSize(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_1ef
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lmiui/app/backup/IBackupManager$Stub;->isNeedBeKilled(Ljava/lang/String;)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_210

    const/4 v4, 0x1

    :goto_209
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_210
    const/4 v4, 0x0

    goto :goto_209

    :sswitch_212
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_234

    const/16 v23, 0x1

    :goto_226
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmiui/app/backup/IBackupManager$Stub;->setIsNeedBeKilled(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_234
    const/16 v23, 0x0

    goto :goto_226

    :sswitch_237
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmiui/app/backup/IBackupManager$Stub;->isRunningFromMiui(I)Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_256

    const/4 v4, 0x1

    :goto_24f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_256
    const/4 v4, 0x0

    goto :goto_24f

    :sswitch_258
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->isServiceIdle()Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_271

    const/4 v4, 0x1

    :goto_26a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_271
    const/4 v4, 0x0

    goto :goto_26a

    :sswitch_273
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v24

    invoke-virtual {v0, v15, v1, v2}, Lmiui/app/backup/IBackupManager$Stub;->setCustomProgress(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_295
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->getBackupTimeoutScale()I

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_2ad
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->shouldSkipData()Z

    move-result v29

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v29, :cond_2c6

    const/4 v4, 0x1

    :goto_2bf
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_2c6
    const/4 v4, 0x0

    goto :goto_2bf

    :sswitch_2c8
    const-string/jumbo v4, "miui.app.backup.IBackupManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/app/backup/IBackupManager$Stub;->delCacheBackup()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_data_2d8
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_7b
        0x3 -> :sswitch_97
        0x4 -> :sswitch_d8
        0x5 -> :sswitch_105
        0x6 -> :sswitch_121
        0x7 -> :sswitch_137
        0x8 -> :sswitch_14f
        0x9 -> :sswitch_167
        0xa -> :sswitch_17f
        0xb -> :sswitch_1a3
        0xc -> :sswitch_1c7
        0xd -> :sswitch_1d7
        0xe -> :sswitch_1ef
        0xf -> :sswitch_212
        0x10 -> :sswitch_237
        0x11 -> :sswitch_258
        0x12 -> :sswitch_273
        0x13 -> :sswitch_295
        0x14 -> :sswitch_2ad
        0x15 -> :sswitch_2c8
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
