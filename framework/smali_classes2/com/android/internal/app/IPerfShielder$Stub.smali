.class public abstract Lcom/android/internal/app/IPerfShielder$Stub;
.super Landroid/os/Binder;
.source "IPerfShielder.java"

# interfaces
.implements Lcom/android/internal/app/IPerfShielder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IPerfShielder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IPerfShielder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IPerfShielder"

.field static final TRANSACTION_abortMatchingScenario:I = 0x1e

.field static final TRANSACTION_abortSpecificScenario:I = 0x1f

.field static final TRANSACTION_addActivityLaunchTime:I = 0x2

.field static final TRANSACTION_addCallingPkgHookRule:I = 0x1a

.field static final TRANSACTION_addTimeConsumingIntent:I = 0x10

.field static final TRANSACTION_beginScenario:I = 0x1d

.field static final TRANSACTION_clearTimeConsumingIntent:I = 0x12

.field static final TRANSACTION_closeCheckPriority:I = 0xd

.field static final TRANSACTION_deletePackageInfo:I = 0x17

.field static final TRANSACTION_deleteRedirectRule:I = 0x15

.field static final TRANSACTION_finishMatchingScenario:I = 0x20

.field static final TRANSACTION_finishSpecificScenario:I = 0x21

.field static final TRANSACTION_getAllRunningProcessMemInfos:I = 0x7

.field static final TRANSACTION_getFreeMemory:I = 0x18

.field static final TRANSACTION_getMemoryTrimLevel:I = 0x13

.field static final TRANSACTION_getPackageNameByPid:I = 0x5

.field static final TRANSACTION_getPerfEventSocketFd:I = 0x1c

.field static final TRANSACTION_insertPackageInfo:I = 0x16

.field static final TRANSACTION_insertRedirectRule:I = 0x14

.field static final TRANSACTION_killUnusedApp:I = 0x4

.field static final TRANSACTION_removeCallingPkgHookRule:I = 0x1b

.field static final TRANSACTION_removeServicePriority:I = 0xc

.field static final TRANSACTION_removeTimeConsumingIntent:I = 0x11

.field static final TRANSACTION_reportAnr:I = 0x19

.field static final TRANSACTION_reportExcessiveCpuUsageRecords:I = 0x22

.field static final TRANSACTION_reportPerceptibleJank:I = 0x1

.field static final TRANSACTION_setForkedProcessGroup:I = 0x6

.field static final TRANSACTION_setMiuiBroadcastDispatchEnable:I = 0xf

.field static final TRANSACTION_setMiuiContentProviderControl:I = 0xe

.field static final TRANSACTION_setSchedFgPid:I = 0x3

.field static final TRANSACTION_setServicePriority:I = 0xa

.field static final TRANSACTION_setServicePriorityWithNoProc:I = 0xb

.field static final TRANSACTION_updateProcessFullMemInfoByPids:I = 0x8

.field static final TRANSACTION_updateProcessPartialMemInfoByPids:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.app.IPerfShielder"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IPerfShielder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IPerfShielder;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.app.IPerfShielder"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/app/IPerfShielder;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/app/IPerfShielder;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IPerfShielder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_554

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_8
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_12
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v16}, Lcom/android/internal/app/IPerfShielder$Stub;->reportPerceptibleJank(IILjava/lang/String;JJJIJ)V

    const/4 v4, 0x1

    return v4

    :sswitch_41
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_72

    const/16 v24, 0x1

    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_75

    const/16 v25, 0x1

    :goto_69
    move-object/from16 v17, p0

    move-wide/from16 v22, v8

    invoke-virtual/range {v17 .. v25}, Lcom/android/internal/app/IPerfShielder$Stub;->addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZZ)V

    const/4 v4, 0x1

    return v4

    :cond_72
    const/16 v24, 0x0

    goto :goto_61

    :cond_75
    const/16 v25, 0x0

    goto :goto_69

    :sswitch_78
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IPerfShielder$Stub;->setSchedFgPid(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_8b
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/app/IPerfShielder$Stub;->killUnusedApp(II)V

    const/4 v4, 0x1

    return v4

    :sswitch_a2
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/app/IPerfShielder$Stub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_c0
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v62

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v62

    invoke-virtual {v0, v5, v6, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->setForkedProcessGroup(IIILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_e6
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getAllRunningProcessMemInfos()Ljava/util/List;

    move-result-object v69

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :sswitch_fe
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->updateProcessFullMemInfoByPids([I)Ljava/util/List;

    move-result-object v69

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :sswitch_11e
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v56

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->updateProcessPartialMemInfoByPids([I)Ljava/util/List;

    move-result-object v69

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :sswitch_13e
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v54

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->setServicePriority(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    :sswitch_157
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v54

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v58

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-wide/from16 v2, v58

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->setServicePriorityWithNoProc(Ljava/util/List;J)V

    const/4 v4, 0x1

    return v4

    :sswitch_176
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a1

    sget-object v4, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Lcom/android/internal/app/MiuiServicePriority;

    :goto_18e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1a4

    const/16 v60, 0x1

    :goto_196
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    const/4 v4, 0x1

    return v4

    :cond_1a1
    const/16 v52, 0x0

    goto :goto_18e

    :cond_1a4
    const/16 v60, 0x0

    goto :goto_196

    :sswitch_1a7
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->closeCheckPriority()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_1b7
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d0

    const/16 v55, 0x1

    :goto_1c7
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->setMiuiContentProviderControl(Z)V

    const/4 v4, 0x1

    return v4

    :cond_1d0
    const/16 v55, 0x0

    goto :goto_1c7

    :sswitch_1d3
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1ec

    const/16 v55, 0x1

    :goto_1e3
    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->setMiuiBroadcastDispatchEnable(Z)V

    const/4 v4, 0x1

    return v4

    :cond_1ec
    const/16 v55, 0x0

    goto :goto_1e3

    :sswitch_1ef
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->addTimeConsumingIntent([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_207
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v57

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->removeTimeConsumingIntent([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_21f
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->clearTimeConsumingIntent()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :sswitch_22f
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getMemoryTrimLevel()I

    move-result v63

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_247
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_284

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/os/Bundle;

    :goto_26b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v61

    invoke-virtual {v0, v1, v2, v7, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v70

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v70, :cond_287

    const/4 v4, 0x1

    :goto_27d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_284
    const/16 v61, 0x0

    goto :goto_26b

    :cond_287
    const/4 v4, 0x0

    goto :goto_27d

    :sswitch_289
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v70

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v70, :cond_2b0

    const/4 v4, 0x1

    :goto_2a9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_2b0
    const/4 v4, 0x0

    goto :goto_2a9

    :sswitch_2b2
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2df

    sget-object v4, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/pm/PackageInfo;

    :goto_2ca
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->insertPackageInfo(Landroid/content/pm/PackageInfo;)Z

    move-result v70

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v70, :cond_2e2

    const/4 v4, 0x1

    :goto_2d8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_2df
    const/16 v35, 0x0

    goto :goto_2ca

    :cond_2e2
    const/4 v4, 0x0

    goto :goto_2d8

    :sswitch_2e4
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->deletePackageInfo(Ljava/lang/String;)Z

    move-result v70

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v70, :cond_305

    const/4 v4, 0x1

    :goto_2fe
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_305
    const/4 v4, 0x0

    goto :goto_2fe

    :sswitch_307
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getFreeMemory()J

    move-result-wide v64

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v64

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v4, 0x1

    return v4

    :sswitch_31f
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v27, p0

    move/from16 v28, v5

    move-object/from16 v29, v19

    move-wide/from16 v30, v20

    move-wide/from16 v32, v8

    invoke-virtual/range {v27 .. v34}, Lcom/android/internal/app/IPerfShielder$Stub;->reportAnr(ILjava/lang/String;JJLjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_34a
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/app/IPerfShielder$Stub;->addCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v70

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v70, :cond_375

    const/4 v4, 0x1

    :goto_36e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_375
    const/4 v4, 0x0

    goto :goto_36e

    :sswitch_377
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IPerfShielder$Stub;->removeCallingPkgHookRule(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v70

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v70, :cond_39e

    const/4 v4, 0x1

    :goto_397
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    return v4

    :cond_39e
    const/4 v4, 0x0

    goto :goto_397

    :sswitch_3a0
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IPerfShielder$Stub;->getPerfEventSocketFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v67

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v67, :cond_3c1

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_3bf
    const/4 v4, 0x1

    return v4

    :cond_3c1
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3bf

    :sswitch_3c8
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_433

    sget-object v4, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/statistics/E2EScenario;

    :goto_3e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_436

    sget-object v4, Landroid/os/statistics/E2EScenarioSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/statistics/E2EScenarioSettings;

    :goto_3f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_439

    sget-object v4, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/statistics/E2EScenarioPayload;

    :goto_404
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_43c

    const/16 v44, 0x1

    :goto_414
    move-object/from16 v36, p0

    move-object/from16 v39, v7

    move-wide/from16 v42, v12

    invoke-virtual/range {v36 .. v44}, Lcom/android/internal/app/IPerfShielder$Stub;->beginScenario(Landroid/os/statistics/E2EScenario;Landroid/os/statistics/E2EScenarioSettings;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJZ)Landroid/os/Bundle;

    move-result-object v66

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v66, :cond_43f

    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v4, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_431
    const/4 v4, 0x1

    return v4

    :cond_433
    const/16 v37, 0x0

    goto :goto_3e0

    :cond_436
    const/16 v38, 0x0

    goto :goto_3f0

    :cond_439
    const/16 v40, 0x0

    goto :goto_404

    :cond_43c
    const/16 v44, 0x0

    goto :goto_414

    :cond_43f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_431

    :sswitch_446
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_47a

    sget-object v4, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/statistics/E2EScenario;

    :goto_45e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object/from16 v26, p0

    move-object/from16 v27, v37

    move-object/from16 v28, v19

    move-wide/from16 v30, v8

    invoke-virtual/range {v26 .. v31}, Lcom/android/internal/app/IPerfShielder$Stub;->abortMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_47a
    const/16 v37, 0x0

    goto :goto_45e

    :sswitch_47d
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4ab

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    :goto_495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/app/IPerfShielder$Stub;->abortSpecificScenario(Landroid/os/Bundle;IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_4ab
    const/16 v27, 0x0

    goto :goto_495

    :sswitch_4ae
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f2

    sget-object v4, Landroid/os/statistics/E2EScenario;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/statistics/E2EScenario;

    :goto_4c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4f5

    sget-object v4, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/statistics/E2EScenarioPayload;

    :goto_4da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v49

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v45, p0

    move-object/from16 v46, v37

    move-object/from16 v47, v19

    move-wide/from16 v50, v10

    invoke-virtual/range {v45 .. v51}, Lcom/android/internal/app/IPerfShielder$Stub;->finishMatchingScenario(Landroid/os/statistics/E2EScenario;Ljava/lang/String;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_4f2
    const/16 v37, 0x0

    goto :goto_4c6

    :cond_4f5
    const/16 v48, 0x0

    goto :goto_4da

    :sswitch_4f8
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_534

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/os/Bundle;

    :goto_510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_537

    sget-object v4, Landroid/os/statistics/E2EScenarioPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/statistics/E2EScenarioPayload;

    :goto_520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    move-object/from16 v26, p0

    move-wide/from16 v30, v8

    invoke-virtual/range {v26 .. v31}, Lcom/android/internal/app/IPerfShielder$Stub;->finishSpecificScenario(Landroid/os/Bundle;Landroid/os/statistics/E2EScenarioPayload;IJ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v4, 0x1

    return v4

    :cond_534
    const/16 v27, 0x0

    goto :goto_510

    :cond_537
    const/16 v28, 0x0

    goto :goto_520

    :sswitch_53a
    const-string/jumbo v4, "com.android.internal.app.IPerfShielder"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v53

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IPerfShielder$Stub;->reportExcessiveCpuUsageRecords(Ljava/util/List;)V

    const/4 v4, 0x1

    return v4

    nop

    :sswitch_data_554
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_41
        0x3 -> :sswitch_78
        0x4 -> :sswitch_8b
        0x5 -> :sswitch_a2
        0x6 -> :sswitch_c0
        0x7 -> :sswitch_e6
        0x8 -> :sswitch_fe
        0x9 -> :sswitch_11e
        0xa -> :sswitch_13e
        0xb -> :sswitch_157
        0xc -> :sswitch_176
        0xd -> :sswitch_1a7
        0xe -> :sswitch_1b7
        0xf -> :sswitch_1d3
        0x10 -> :sswitch_1ef
        0x11 -> :sswitch_207
        0x12 -> :sswitch_21f
        0x13 -> :sswitch_22f
        0x14 -> :sswitch_247
        0x15 -> :sswitch_289
        0x16 -> :sswitch_2b2
        0x17 -> :sswitch_2e4
        0x18 -> :sswitch_307
        0x19 -> :sswitch_31f
        0x1a -> :sswitch_34a
        0x1b -> :sswitch_377
        0x1c -> :sswitch_3a0
        0x1d -> :sswitch_3c8
        0x1e -> :sswitch_446
        0x1f -> :sswitch_47d
        0x20 -> :sswitch_4ae
        0x21 -> :sswitch_4f8
        0x22 -> :sswitch_53a
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
