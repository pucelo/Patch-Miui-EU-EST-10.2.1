.class public abstract Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;
.super Landroid/os/Binder;
.source "IWhetstoneActivityManager.java"

# interfaces
.implements Lcom/miui/whetstone/server/IWhetstoneActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/server/IWhetstoneActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.server.IWhetstoneActivityManager"

.field static final TRANSACTION_addAppToServiceControlWhitelist:I = 0x19

.field static final TRANSACTION_bindWhetstoneService:I = 0x6

.field static final TRANSACTION_checkApplicationsMemoryThreshold:I = 0xb

.field static final TRANSACTION_checkIfPackageIsLocked:I = 0x14

.field static final TRANSACTION_checkIfPackageIsLockedWithUserId:I = 0x15

.field static final TRANSACTION_clearDeadAppFromNative:I = 0x11

.field static final TRANSACTION_distoryActivity:I = 0x5

.field static final TRANSACTION_getAndroidCachedEmptyProcessMemory:I = 0x9

.field static final TRANSACTION_getBackgroundAPPS:I = 0x2

.field static final TRANSACTION_getConnProviderNames:I = 0x1c

.field static final TRANSACTION_getPackageNamebyPid:I = 0x1

.field static final TRANSACTION_getPartialWakeLockHoldByUid:I = 0x10

.field static final TRANSACTION_getPowerKeeperPolicy:I = 0xf

.field static final TRANSACTION_getProcessReceiverState:I = 0x17

.field static final TRANSACTION_getSystemPid:I = 0x7

.field static final TRANSACTION_isProcessExecutingServices:I = 0x18

.field static final TRANSACTION_putUidFrozenState:I = 0xc

.field static final TRANSACTION_removeAppFromServiceControlWhitelist:I = 0x1a

.field static final TRANSACTION_removeTaskById:I = 0x1b

.field static final TRANSACTION_scheduleStopService:I = 0x4

.field static final TRANSACTION_scheduleTrimMemory:I = 0x3

.field static final TRANSACTION_setPerformanceComponents:I = 0x8

.field static final TRANSACTION_setWhetstonePackageInfo:I = 0x1d

.field static final TRANSACTION_updateApplicationByLockedState:I = 0xd

.field static final TRANSACTION_updateApplicationByLockedStateWithUserId:I = 0xe

.field static final TRANSACTION_updateApplicationsMemoryThreshold:I = 0xa

.field static final TRANSACTION_updateFrameworkCommonConfig:I = 0x16

.field static final TRANSACTION_updateUserLockedAppList:I = 0x12

.field static final TRANSACTION_updateUserLockedAppListWithUserId:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/server/IWhetstoneActivityManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.whetstone.server.IWhetstoneActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/whetstone/server/IWhetstoneActivityManager;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_418

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v24

    return v24

    :sswitch_8
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v24, 0x1

    return v24

    :sswitch_15
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPackageNamebyPid(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v24, 0x1

    return v24

    :sswitch_36
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getBackgroundAPPS()[Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    const/16 v24, 0x1

    return v24

    :sswitch_51
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleTrimMemory(II)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_7a

    const/16 v24, 0x1

    :goto_70
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_7a
    const/16 v24, 0x0

    goto :goto_70

    :sswitch_7d
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_b4

    sget-object v24, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_9d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v11}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->scheduleStopService(Ljava/lang/String;Landroid/content/ComponentName;)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_b6

    const/16 v24, 0x1

    :goto_aa
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_b4
    const/4 v11, 0x0

    goto :goto_9d

    :cond_b6
    const/16 v24, 0x0

    goto :goto_aa

    :sswitch_b9
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->distoryActivity(I)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_de

    const/16 v24, 0x1

    :goto_d4
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_de
    const/16 v24, 0x0

    goto :goto_d4

    :sswitch_e1
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->bindWhetstoneService(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_fa
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getSystemPid()I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :sswitch_115
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v24, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/ComponentName;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setPerformanceComponents([Landroid/content/ComponentName;)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_142

    const/16 v24, 0x1

    :goto_138
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_142
    const/16 v24, 0x0

    goto :goto_138

    :sswitch_145
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getAndroidCachedEmptyProcessMemory()J

    move-result-wide v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v24, 0x1

    return v24

    :sswitch_160
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationsMemoryThreshold(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_179
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10, v14, v15}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkApplicationsMemoryThreshold(Ljava/lang/String;IJ)V

    const/16 v24, 0x1

    return v24

    :sswitch_197
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->putUidFrozenState(II)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_1c0

    const/16 v24, 0x1

    :goto_1b6
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_1c0
    const/16 v24, 0x0

    goto :goto_1b6

    :sswitch_1c3
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_1e3

    const/4 v12, 0x1

    :goto_1d8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedState(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :cond_1e3
    const/4 v12, 0x0

    goto :goto_1d8

    :sswitch_1e5
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_209

    const/4 v12, 0x1

    :goto_1fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12, v13}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateApplicationByLockedStateWithUserId(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :cond_209
    const/4 v12, 0x0

    goto :goto_1fa

    :sswitch_20b
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPowerKeeperPolicy()Lcom/miui/whetstone/IPowerKeeperPolicy;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_22c

    invoke-interface/range {v20 .. v20}, Lcom/miui/whetstone/IPowerKeeperPolicy;->asBinder()Landroid/os/IBinder;

    move-result-object v24

    :goto_222
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v24, 0x1

    return v24

    :cond_22c
    const/16 v24, 0x0

    goto :goto_222

    :sswitch_22f
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getPartialWakeLockHoldByUid(I)I

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :sswitch_250
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->clearDeadAppFromNative()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_263
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppList(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_27c
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateUserLockedAppListWithUserId(Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_299
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLocked(Ljava/lang/String;)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_2be

    const/16 v24, 0x1

    :goto_2b4
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_2be
    const/16 v24, 0x0

    goto :goto_2b4

    :sswitch_2c1
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->checkIfPackageIsLockedWithUserId(Ljava/lang/String;I)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_2ea

    const/16 v24, 0x1

    :goto_2e0
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_2ea
    const/16 v24, 0x0

    goto :goto_2e0

    :sswitch_2ed
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->updateFrameworkCommonConfig(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_306
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getProcessReceiverState(I)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_32b

    const/16 v24, 0x1

    :goto_321
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_32b
    const/16 v24, 0x0

    goto :goto_321

    :sswitch_32e
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->isProcessExecutingServices(I)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_353

    const/16 v24, 0x1

    :goto_349
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_353
    const/16 v24, 0x0

    goto :goto_349

    :sswitch_356
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->addAppToServiceControlWhitelist(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_36f
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeAppFromServiceControlWhitelist(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v24, 0x1

    return v24

    :sswitch_388
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_3b4

    const/4 v12, 0x1

    :goto_39d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->removeTaskById(IZ)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_3b6

    const/16 v24, 0x1

    :goto_3aa
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v24, 0x1

    return v24

    :cond_3b4
    const/4 v12, 0x0

    goto :goto_39d

    :cond_3b6
    const/16 v24, 0x0

    goto :goto_3aa

    :sswitch_3b9
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v6, v10, v1}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->getConnProviderNames(Ljava/lang/String;ILjava/util/List;)Z

    move-result v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_3ef

    const/16 v24, 0x1

    :goto_3de
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/16 v24, 0x1

    return v24

    :cond_3ef
    const/16 v24, 0x0

    goto :goto_3de

    :sswitch_3f2
    const-string/jumbo v24, "com.miui.whetstone.server.IWhetstoneActivityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v24, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    if-eqz v24, :cond_415

    const/4 v12, 0x1

    :goto_40d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Lcom/miui/whetstone/server/IWhetstoneActivityManager$Stub;->setWhetstonePackageInfo(Ljava/util/List;Z)V

    const/16 v24, 0x1

    return v24

    :cond_415
    const/4 v12, 0x0

    goto :goto_40d

    nop

    :sswitch_data_418
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_36
        0x3 -> :sswitch_51
        0x4 -> :sswitch_7d
        0x5 -> :sswitch_b9
        0x6 -> :sswitch_e1
        0x7 -> :sswitch_fa
        0x8 -> :sswitch_115
        0x9 -> :sswitch_145
        0xa -> :sswitch_160
        0xb -> :sswitch_179
        0xc -> :sswitch_197
        0xd -> :sswitch_1c3
        0xe -> :sswitch_1e5
        0xf -> :sswitch_20b
        0x10 -> :sswitch_22f
        0x11 -> :sswitch_250
        0x12 -> :sswitch_263
        0x13 -> :sswitch_27c
        0x14 -> :sswitch_299
        0x15 -> :sswitch_2c1
        0x16 -> :sswitch_2ed
        0x17 -> :sswitch_306
        0x18 -> :sswitch_32e
        0x19 -> :sswitch_356
        0x1a -> :sswitch_36f
        0x1b -> :sswitch_388
        0x1c -> :sswitch_3b9
        0x1d -> :sswitch_3f2
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
