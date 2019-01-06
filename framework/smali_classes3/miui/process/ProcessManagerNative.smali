.class public abstract Lmiui/process/ProcessManagerNative;
.super Landroid/os/Binder;
.source "ProcessManagerNative.java"

# interfaces
.implements Lmiui/process/IProcessManager;


# static fields
.field private static volatile pm:Lmiui/process/IProcessManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.IProcessManager"

    invoke-virtual {p0, p0, v0}, Lmiui/process/ProcessManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.IProcessManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lmiui/process/IProcessManager;

    if-eqz v0, :cond_10

    return-object v0

    :cond_10
    new-instance v1, Lmiui/process/ProcessManagerProxy;

    invoke-direct {v1, p0}, Lmiui/process/ProcessManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefault()Lmiui/process/IProcessManager;
    .registers 3

    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v1, :cond_19

    const-class v2, Lmiui/process/ProcessManagerNative;

    monitor-enter v2

    :try_start_7
    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    if-nez v1, :cond_18

    const-string/jumbo v1, "ProcessManager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lmiui/process/ProcessManagerNative;->asInterface(Landroid/os/IBinder;)Lmiui/process/IProcessManager;

    move-result-object v1

    sput-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1c

    :cond_18
    monitor-exit v2

    :cond_19
    sget-object v1, Lmiui/process/ProcessManagerNative;->pm:Lmiui/process/IProcessManager;

    return-object v1

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_2a2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :pswitch_8
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmiui/process/ProcessConfig;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->kill(Lmiui/process/ProcessConfig;)Z

    move-result v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_2f

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_2f
    const/4 v4, 0x0

    goto :goto_28

    :pswitch_31
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    const/16 v28, 0x1

    :goto_49
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v13, v8, v1}, Lmiui/process/ProcessManagerNative;->updateApplicationLockedState(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_55
    const/16 v28, 0x0

    goto :goto_49

    :pswitch_58
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/process/ProcessManagerNative;->getLockedApplication(I)Ljava/util/List;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v30, :cond_94

    invoke-interface/range {v30 .. v30}, Ljava/util/List;->size()I

    move-result v21

    :goto_73
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v27, 0x0

    :goto_7c
    move/from16 v0, v27

    move/from16 v1, v21

    if-ge v0, v1, :cond_97

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v27, v27, 0x1

    goto :goto_7c

    :cond_94
    const/16 v21, -0x1

    goto :goto_73

    :cond_97
    const/4 v4, 0x1

    return v4

    :pswitch_99
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Lmiui/process/ProcessConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lmiui/process/ProcessConfig;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->updateConfig(Lmiui/process/ProcessConfig;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :pswitch_b7
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const-class v4, Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v10, 0x1

    if-ne v4, v10, :cond_f1

    const/4 v7, 0x1

    :goto_d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lmiui/process/ProcessManagerNative;->startProcesses(Ljava/util/List;IZII)I

    move-result v34

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_f1
    const/4 v7, 0x0

    goto :goto_d7

    :pswitch_f3
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11e

    const/16 v29, 0x1

    :goto_103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lmiui/process/ProcessManagerNative;->protectCurrentProcess(ZI)Z

    move-result v35

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v35, :cond_121

    const/4 v4, 0x1

    :goto_117
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_11e
    const/16 v29, 0x0

    goto :goto_103

    :cond_121
    const/4 v4, 0x0

    goto :goto_117

    :pswitch_123
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Lmiui/process/ProcessCloudData;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lmiui/process/ProcessCloudData;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->updateCloudData(Lmiui/process/ProcessCloudData;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :pswitch_141
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v8}, Lmiui/process/ProcessManagerNative;->isLockedApplication(Ljava/lang/String;I)Z

    move-result v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_164

    const/4 v4, 0x1

    :goto_15d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_164
    const/4 v4, 0x0

    goto :goto_15d

    :pswitch_166
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->registerForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    const/4 v4, 0x1

    return v4

    :pswitch_17f
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/process/IForegroundInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IForegroundInfoListener;

    move-result-object v33

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->unregisterForegroundInfoListener(Lmiui/process/IForegroundInfoListener;)V

    const/4 v4, 0x1

    return v4

    :pswitch_198
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->getForegroundInfo()Lmiui/process/ForegroundInfo;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lmiui/process/ForegroundInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v4, 0x1

    return v4

    :pswitch_1b1
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v23

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v23, :cond_1d1

    invoke-static/range {v23 .. v23}, Lmiui/process/IMiuiApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IMiuiApplicationThread;

    move-result-object v4

    :goto_1c7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lmiui/process/ProcessManagerNative;->addMiuiApplicationThread(Lmiui/process/IMiuiApplicationThread;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_1d1
    const/4 v4, 0x0

    goto :goto_1c7

    :pswitch_1d3
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->getForegroundApplicationThread()Lmiui/process/IMiuiApplicationThread;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_1ef

    invoke-interface/range {v22 .. v22}, Lmiui/process/IMiuiApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1e8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v4, 0x1

    return v4

    :cond_1ef
    const/4 v4, 0x0

    goto :goto_1e8

    :pswitch_1f1
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move-object/from16 v2, v36

    move-object/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lmiui/process/ProcessManagerNative;->registerActivityChangeListener(Ljava/util/List;Ljava/util/List;Lmiui/process/IActivityChangeListener;)V

    const/4 v4, 0x1

    return v4

    :pswitch_226
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lmiui/process/IActivityChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/process/IActivityChangeListener;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerNative;->unregisterActivityChangeListener(Lmiui/process/IActivityChangeListener;)V

    const/4 v4, 0x1

    return v4

    :pswitch_23f
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v10, p0

    move v15, v8

    invoke-virtual/range {v10 .. v15}, Lmiui/process/ProcessManagerNative;->getRunningProcessInfo(IILjava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :pswitch_26e
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/process/ProcessManagerNative;->boostCameraIfNeeded()V

    const/4 v4, 0x1

    return v4

    :pswitch_27b
    const-string/jumbo v4, "miui.IProcessManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object/from16 v15, p0

    move-object/from16 v16, v14

    move/from16 v20, v8

    invoke-virtual/range {v15 .. v20}, Lmiui/process/ProcessManagerNative;->adjBoost(Ljava/lang/String;IJI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    nop

    :pswitch_data_2a2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_31
        :pswitch_58
        :pswitch_99
        :pswitch_b7
        :pswitch_f3
        :pswitch_123
        :pswitch_141
        :pswitch_166
        :pswitch_17f
        :pswitch_198
        :pswitch_1b1
        :pswitch_1d3
        :pswitch_1f1
        :pswitch_226
        :pswitch_23f
        :pswitch_26e
        :pswitch_27b
    .end packed-switch
.end method
