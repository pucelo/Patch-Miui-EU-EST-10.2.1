.class public abstract Lmiui/mqsas/IMQSService$Stub;
.super Landroid/os/Binder;
.source "IMQSService.java"

# interfaces
.implements Lmiui/mqsas/IMQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSService"

.field static final TRANSACTION_checkIfNeedDumpFd:I = 0x2

.field static final TRANSACTION_checkIfNeedDumpheap:I = 0x3

.field static final TRANSACTION_dialogButtonChecked:I = 0x15

.field static final TRANSACTION_dumpBugReport:I = 0x14

.field static final TRANSACTION_getOnlineRuleMatched:I = 0x12

.field static final TRANSACTION_onBootCompleted:I = 0x9

.field static final TRANSACTION_reportAnrEvent:I = 0x4

.field static final TRANSACTION_reportBluetoothEvent:I = 0xf

.field static final TRANSACTION_reportBootEvent:I = 0xb

.field static final TRANSACTION_reportBrightnessEvent:I = 0x16

.field static final TRANSACTION_reportBroadcastEvent:I = 0xa

.field static final TRANSACTION_reportConnectExceptionEvent:I = 0xd

.field static final TRANSACTION_reportEvent:I = 0x10

.field static final TRANSACTION_reportEvents:I = 0x11

.field static final TRANSACTION_reportHangExceptionEvents:I = 0x17

.field static final TRANSACTION_reportJavaExceptionEvent:I = 0x5

.field static final TRANSACTION_reportKillProcessEvents:I = 0xe

.field static final TRANSACTION_reportPackageEvent:I = 0x8

.field static final TRANSACTION_reportPackageForegroundEvents:I = 0x13

.field static final TRANSACTION_reportScreenOnEvent:I = 0x7

.field static final TRANSACTION_reportSimpleEvent:I = 0x1

.field static final TRANSACTION_reportTelephonyEvent:I = 0xc

.field static final TRANSACTION_reportWatchdogEvent:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.mqsas.IMQSService"

    invoke-virtual {p0, p0, v0}, Lmiui/mqsas/IMQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.mqsas.IMQSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/mqsas/IMQSService;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/mqsas/IMQSService;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/mqsas/IMQSService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/mqsas/IMQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_338

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    :sswitch_8
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v21, 0x1

    return v21

    :sswitch_15
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lmiui/mqsas/IMQSService$Stub;->reportSimpleEvent(ILjava/lang/String;)V

    const/16 v21, 0x1

    return v21

    :sswitch_2f
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_5e

    sget-object v21, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    :goto_4b
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/mqsas/IMQSService$Stub;->checkIfNeedDumpFd(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v21, 0x1

    return v21

    :cond_5e
    const/4 v7, 0x0

    goto :goto_4b

    :sswitch_60
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_8f

    sget-object v21, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    :goto_7c
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/mqsas/IMQSService$Stub;->checkIfNeedDumpheap(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)I

    move-result v19

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v21, 0x1

    return v21

    :cond_8f
    const/4 v7, 0x0

    goto :goto_7c

    :sswitch_91
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_b8

    sget-object v21, Lmiui/mqsas/sdk/event/AnrEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/mqsas/sdk/event/AnrEvent;

    :goto_ad
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/mqsas/IMQSService$Stub;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v21, 0x1

    return v21

    :cond_b8
    const/4 v5, 0x0

    goto :goto_ad

    :sswitch_ba
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_e1

    sget-object v21, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    :goto_d6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/mqsas/IMQSService$Stub;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v21, 0x1

    return v21

    :cond_e1
    const/4 v7, 0x0

    goto :goto_d6

    :sswitch_e3
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_10a

    sget-object v21, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/mqsas/sdk/event/WatchdogEvent;

    :goto_ff
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/mqsas/IMQSService$Stub;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v21, 0x1

    return v21

    :cond_10a
    const/4 v10, 0x0

    goto :goto_ff

    :sswitch_10c
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_130

    sget-object v21, Lmiui/mqsas/sdk/event/ScreenOnEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmiui/mqsas/sdk/event/ScreenOnEvent;

    :goto_128
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/mqsas/IMQSService$Stub;->reportScreenOnEvent(Lmiui/mqsas/sdk/event/ScreenOnEvent;)V

    const/16 v21, 0x1

    return v21

    :cond_130
    const/4 v9, 0x0

    goto :goto_128

    :sswitch_132
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_156

    sget-object v21, Lmiui/mqsas/sdk/event/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmiui/mqsas/sdk/event/PackageEvent;

    :goto_14e
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/mqsas/IMQSService$Stub;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    const/16 v21, 0x1

    return v21

    :cond_156
    const/4 v8, 0x0

    goto :goto_14e

    :sswitch_158
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->onBootCompleted()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v21, 0x1

    return v21

    :sswitch_16b
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_18f

    sget-object v21, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    :goto_187
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/mqsas/IMQSService$Stub;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V

    const/16 v21, 0x1

    return v21

    :cond_18f
    const/4 v3, 0x0

    goto :goto_187

    :sswitch_191
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_1b5

    sget-object v21, Lmiui/mqsas/sdk/event/BootEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/mqsas/sdk/event/BootEvent;

    :goto_1ad
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmiui/mqsas/IMQSService$Stub;->reportBootEvent(Lmiui/mqsas/sdk/event/BootEvent;)V

    const/16 v21, 0x1

    return v21

    :cond_1b5
    const/4 v6, 0x0

    goto :goto_1ad

    :sswitch_1b7
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lmiui/mqsas/IMQSService$Stub;->reportTelephonyEvent(ILjava/lang/String;)V

    const/16 v21, 0x1

    return v21

    :sswitch_1d1
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v11, v15}, Lmiui/mqsas/IMQSService$Stub;->reportConnectExceptionEvent(IILjava/lang/String;)V

    const/16 v21, 0x1

    return v21

    :sswitch_1ef
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_213

    sget-object v21, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    :goto_20b
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/mqsas/IMQSService$Stub;->reportKillProcessEvents(Landroid/content/pm/ParceledListSlice;)V

    const/16 v21, 0x1

    return v21

    :cond_213
    const/4 v3, 0x0

    goto :goto_20b

    :sswitch_215
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v12}, Lmiui/mqsas/IMQSService$Stub;->reportBluetoothEvent(ILjava/lang/String;)V

    const/16 v21, 0x1

    return v21

    :sswitch_22f
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_253

    const/16 v16, 0x1

    :goto_249
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v12, v1}, Lmiui/mqsas/IMQSService$Stub;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v21, 0x1

    return v21

    :cond_253
    const/16 v16, 0x0

    goto :goto_249

    :sswitch_256
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_27a

    const/16 v16, 0x1

    :goto_270
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v4, v13, v1}, Lmiui/mqsas/IMQSService$Stub;->reportEvents(Ljava/lang/String;Ljava/util/List;Z)V

    const/16 v21, 0x1

    return v21

    :cond_27a
    const/16 v16, 0x0

    goto :goto_270

    :sswitch_27d
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12}, Lmiui/mqsas/IMQSService$Stub;->getOnlineRuleMatched(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v21, 0x1

    return v21

    :sswitch_2a2
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_2c6

    sget-object v21, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    :goto_2be
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmiui/mqsas/IMQSService$Stub;->reportPackageForegroundEvents(Landroid/content/pm/ParceledListSlice;)V

    const/16 v21, 0x1

    return v21

    :cond_2c6
    const/4 v3, 0x0

    goto :goto_2be

    :sswitch_2c8
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->dumpBugReport()V

    const/16 v21, 0x1

    return v21

    :sswitch_2d8
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_300

    const/16 v18, 0x1

    :goto_2f6
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v11, v15, v1}, Lmiui/mqsas/IMQSService$Stub;->dialogButtonChecked(IILjava/lang/String;Z)V

    const/16 v21, 0x1

    return v21

    :cond_300
    const/16 v18, 0x0

    goto :goto_2f6

    :sswitch_303
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v11, v14, v1}, Lmiui/mqsas/IMQSService$Stub;->reportBrightnessEvent(IIILjava/lang/String;)V

    const/16 v21, 0x1

    return v21

    :sswitch_327
    const-string/jumbo v21, "miui.mqsas.IMQSService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/mqsas/IMQSService$Stub;->reportHangExceptionEvents()V

    const/16 v21, 0x1

    return v21

    nop

    :sswitch_data_338
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_2f
        0x3 -> :sswitch_60
        0x4 -> :sswitch_91
        0x5 -> :sswitch_ba
        0x6 -> :sswitch_e3
        0x7 -> :sswitch_10c
        0x8 -> :sswitch_132
        0x9 -> :sswitch_158
        0xa -> :sswitch_16b
        0xb -> :sswitch_191
        0xc -> :sswitch_1b7
        0xd -> :sswitch_1d1
        0xe -> :sswitch_1ef
        0xf -> :sswitch_215
        0x10 -> :sswitch_22f
        0x11 -> :sswitch_256
        0x12 -> :sswitch_27d
        0x13 -> :sswitch_2a2
        0x14 -> :sswitch_2c8
        0x15 -> :sswitch_2d8
        0x16 -> :sswitch_303
        0x17 -> :sswitch_327
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
