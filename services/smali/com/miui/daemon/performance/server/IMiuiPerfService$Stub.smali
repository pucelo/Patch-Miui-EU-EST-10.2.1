.class public abstract Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;
.super Landroid/os/Binder;
.source "IMiuiPerfService.java"

# interfaces
.implements Lcom/miui/daemon/performance/server/IMiuiPerfService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/daemon/performance/server/IMiuiPerfService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.daemon.performance.server.IMiuiPerfService"

.field static final TRANSACTION_abortMatchingScenario:I = 0x7

.field static final TRANSACTION_abortSpecificScenario:I = 0x8

.field static final TRANSACTION_beginScenario:I = 0x6

.field static final TRANSACTION_dump:I = 0x3

.field static final TRANSACTION_finishMatchingScenario:I = 0x9

.field static final TRANSACTION_finishSpecificScenario:I = 0xa

.field static final TRANSACTION_getPerfEventSocketFd:I = 0x5

.field static final TRANSACTION_markPerceptibleJank:I = 0x1

.field static final TRANSACTION_reportActivityLaunchRecords:I = 0x2

.field static final TRANSACTION_reportExcessiveCpuUsageRecords:I = 0xb

.field static final TRANSACTION_setSchedFgPid:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-virtual {p0, p0, v0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/daemon/performance/server/IMiuiPerfService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.daemon.performance.server.IMiuiPerfService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/daemon/performance/server/IMiuiPerfService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_21c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    :sswitch_8
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v3, 0x1

    return v3

    :sswitch_12
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_36

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/Bundle;

    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->markPerceptibleJank(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :cond_36
    const/16 v30, 0x0

    goto :goto_2a

    :sswitch_39
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->reportActivityLaunchRecords(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_55
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->dump([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_6d
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->setSchedFgPid(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_83
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v28, :cond_a4

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_a2
    const/4 v3, 0x1

    return v3

    :cond_a4
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a2

    :sswitch_ab
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/statistics/E2EScenario;

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/statistics/E2EScenarioSettings;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/statistics/E2EScenarioPayload;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v15, 0x1

    if-ne v3, v15, :cond_fe

    const/4 v14, 0x1

    :goto_ee
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v14}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    const/4 v3, 0x1

    return v3

    :cond_fe
    const/4 v14, 0x0

    goto :goto_ee

    :sswitch_100
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/statistics/E2EScenario;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, p0

    move-object/from16 v16, v4

    move-object/from16 v17, v6

    move-wide/from16 v18, v8

    move/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-virtual/range {v15 .. v23}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_141
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, p0

    move-wide/from16 v18, v8

    move/from16 v20, v10

    move/from16 v21, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    invoke-virtual/range {v16 .. v23}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->abortSpecificScenario(Landroid/os/Bundle;JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_175
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/os/statistics/E2EScenario;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/statistics/E2EScenarioPayload;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v18, p0

    move-object/from16 v19, v4

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-wide/from16 v22, v8

    move/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    invoke-virtual/range {v18 .. v27}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_1c1
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v17

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/os/statistics/E2EScenarioPayload;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, p0

    move-object/from16 v18, v7

    move-wide/from16 v19, v8

    move/from16 v21, v10

    move/from16 v22, v11

    move-object/from16 v23, v12

    move-object/from16 v24, v13

    invoke-virtual/range {v16 .. v24}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;JIILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_200
    const-string/jumbo v3, "com.miui.daemon.performance.server.IMiuiPerfService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService$Stub;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v3, 0x1

    return v3

    :sswitch_data_21c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_39
        0x3 -> :sswitch_55
        0x4 -> :sswitch_6d
        0x5 -> :sswitch_83
        0x6 -> :sswitch_ab
        0x7 -> :sswitch_100
        0x8 -> :sswitch_141
        0x9 -> :sswitch_175
        0xa -> :sswitch_1c1
        0xb -> :sswitch_200
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
