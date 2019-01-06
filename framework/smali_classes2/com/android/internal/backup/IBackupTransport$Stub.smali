.class public abstract Lcom/android/internal/backup/IBackupTransport$Stub;
.super Landroid/os/Binder;
.source "IBackupTransport.java"

# interfaces
.implements Lcom/android/internal/backup/IBackupTransport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/backup/IBackupTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.IBackupTransport"

.field static final TRANSACTION_abortFullRestore:I = 0x1a

.field static final TRANSACTION_cancelFullBackup:I = 0x16

.field static final TRANSACTION_checkFullBackupSize:I = 0x14

.field static final TRANSACTION_clearBackupData:I = 0xa

.field static final TRANSACTION_configurationIntent:I = 0x2

.field static final TRANSACTION_currentDestinationString:I = 0x3

.field static final TRANSACTION_dataManagementIntent:I = 0x4

.field static final TRANSACTION_dataManagementLabel:I = 0x5

.field static final TRANSACTION_finishBackup:I = 0xb

.field static final TRANSACTION_finishRestore:I = 0x11

.field static final TRANSACTION_getAvailableRestoreSets:I = 0xc

.field static final TRANSACTION_getBackupQuota:I = 0x18

.field static final TRANSACTION_getCurrentRestoreSet:I = 0xd

.field static final TRANSACTION_getNextFullRestoreDataChunk:I = 0x19

.field static final TRANSACTION_getRestoreData:I = 0x10

.field static final TRANSACTION_initializeDevice:I = 0x8

.field static final TRANSACTION_isAppEligibleForBackup:I = 0x17

.field static final TRANSACTION_name:I = 0x1

.field static final TRANSACTION_nextRestorePackage:I = 0xf

.field static final TRANSACTION_performBackup:I = 0x9

.field static final TRANSACTION_performFullBackup:I = 0x13

.field static final TRANSACTION_requestBackupTime:I = 0x7

.field static final TRANSACTION_requestFullBackupTime:I = 0x12

.field static final TRANSACTION_sendBackupData:I = 0x15

.field static final TRANSACTION_startRestore:I = 0xe

.field static final TRANSACTION_transportDirName:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.backup.IBackupTransport"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/backup/IBackupTransport$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/backup/IBackupTransport;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.backup.IBackupTransport"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/backup/IBackupTransport;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/backup/IBackupTransport;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/backup/IBackupTransport$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_3ec

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    :sswitch_8
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_15
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->name()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_30
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->configurationIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_5a

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_57
    const/16 v22, 0x1

    return v22

    :cond_5a
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_57

    :sswitch_64
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->currentDestinationString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_7f
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_a9

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a6
    const/16 v22, 0x1

    return v22

    :cond_a9
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a6

    :sswitch_b3
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->dataManagementLabel()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_ce
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->transportDirName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v22, 0x1

    return v22

    :sswitch_e9
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestBackupTime()J

    move-result-wide v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v22, 0x1

    return v22

    :sswitch_104
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->initializeDevice()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :sswitch_11d
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_160

    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    :goto_139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_162

    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelFileDescriptor;

    :goto_14b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v13}, Lcom/android/internal/backup/IBackupTransport$Stub;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_160
    const/4 v5, 0x0

    goto :goto_139

    :cond_162
    const/4 v10, 0x0

    goto :goto_14b

    :sswitch_164
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_191

    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    :goto_180
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/backup/IBackupTransport$Stub;->clearBackupData(Landroid/content/pm/PackageInfo;)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_191
    const/4 v5, 0x0

    goto :goto_180

    :sswitch_193
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishBackup()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :sswitch_1ac
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/16 v22, 0x1

    return v22

    :sswitch_1cb
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->getCurrentRestoreSet()J

    move-result-wide v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v22, 0x1

    return v22

    :sswitch_1e6
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v12}, Lcom/android/internal/backup/IBackupTransport$Stub;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :sswitch_211
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->nextRestorePackage()Landroid/app/backup/RestoreDescription;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_239

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Landroid/app/backup/RestoreDescription;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_236
    const/16 v22, 0x1

    return v22

    :cond_239
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_236

    :sswitch_243
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_270

    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    :goto_25f
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/backup/IBackupTransport$Stub;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_270
    const/4 v8, 0x0

    goto :goto_25f

    :sswitch_272
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->finishRestore()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_285
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->requestFullBackupTime()J

    move-result-wide v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v22, 0x1

    return v22

    :sswitch_2a0
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_2e3

    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    :goto_2bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_2e5

    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/ParcelFileDescriptor;

    :goto_2ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v13}, Lcom/android/internal/backup/IBackupTransport$Stub;->performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;I)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_2e3
    const/4 v5, 0x0

    goto :goto_2bc

    :cond_2e5
    const/4 v10, 0x0

    goto :goto_2ce

    :sswitch_2e7
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/backup/IBackupTransport$Stub;->checkFullBackupSize(J)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :sswitch_306
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/backup/IBackupTransport$Stub;->sendBackupData(I)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :sswitch_325
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->cancelFullBackup()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v22, 0x1

    return v22

    :sswitch_338
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_372

    sget-object v22, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    :goto_354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_374

    const/4 v11, 0x1

    :goto_35b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v11}, Lcom/android/internal/backup/IBackupTransport$Stub;->isAppEligibleForBackup(Landroid/content/pm/PackageInfo;Z)Z

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_376

    const/16 v22, 0x1

    :goto_368
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_372
    const/4 v5, 0x0

    goto :goto_354

    :cond_374
    const/4 v11, 0x0

    goto :goto_35b

    :cond_376
    const/16 v22, 0x0

    goto :goto_368

    :sswitch_379
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_3a1

    const/4 v11, 0x1

    :goto_38e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/android/internal/backup/IBackupTransport$Stub;->getBackupQuota(Ljava/lang/String;Z)J

    move-result-wide v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v22, 0x1

    return v22

    :cond_3a1
    const/4 v11, 0x0

    goto :goto_38e

    :sswitch_3a3
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_3d0

    sget-object v22, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    :goto_3bf
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/backup/IBackupTransport$Stub;->getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    :cond_3d0
    const/4 v8, 0x0

    goto :goto_3bf

    :sswitch_3d2
    const-string/jumbo v22, "com.android.internal.backup.IBackupTransport"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/backup/IBackupTransport$Stub;->abortFullRestore()I

    move-result v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v22, 0x1

    return v22

    nop

    :sswitch_data_3ec
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_30
        0x3 -> :sswitch_64
        0x4 -> :sswitch_7f
        0x5 -> :sswitch_b3
        0x6 -> :sswitch_ce
        0x7 -> :sswitch_e9
        0x8 -> :sswitch_104
        0x9 -> :sswitch_11d
        0xa -> :sswitch_164
        0xb -> :sswitch_193
        0xc -> :sswitch_1ac
        0xd -> :sswitch_1cb
        0xe -> :sswitch_1e6
        0xf -> :sswitch_211
        0x10 -> :sswitch_243
        0x11 -> :sswitch_272
        0x12 -> :sswitch_285
        0x13 -> :sswitch_2a0
        0x14 -> :sswitch_2e7
        0x15 -> :sswitch_306
        0x16 -> :sswitch_325
        0x17 -> :sswitch_338
        0x18 -> :sswitch_379
        0x19 -> :sswitch_3a3
        0x1a -> :sswitch_3d2
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
