.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final TRANSACTION_attachAgent:I = 0x3c

.field static final TRANSACTION_bindApplication:I = 0xc

.field static final TRANSACTION_clearDnsCache:I = 0x25

.field static final TRANSACTION_dispatchPackageBroadcast:I = 0x21

.field static final TRANSACTION_dumpActivity:I = 0x24

.field static final TRANSACTION_dumpDbInfo:I = 0x2d

.field static final TRANSACTION_dumpGfxInfo:I = 0x2b

.field static final TRANSACTION_dumpHeap:I = 0x23

.field static final TRANSACTION_dumpMemInfo:I = 0x2a

.field static final TRANSACTION_dumpProvider:I = 0x2c

.field static final TRANSACTION_dumpService:I = 0x14

.field static final TRANSACTION_handleTrustStorageUpdate:I = 0x3b

.field static final TRANSACTION_notifyCleartextNetwork:I = 0x35

.field static final TRANSACTION_notifyPackageForeground:I = 0x3f

.field static final TRANSACTION_processInBackground:I = 0x11

.field static final TRANSACTION_profilerControl:I = 0x1b

.field static final TRANSACTION_requestAssistContextExtras:I = 0x2f

.field static final TRANSACTION_scheduleActivityConfigurationChanged:I = 0x17

.field static final TRANSACTION_scheduleActivityMovedToDisplay:I = 0x18

.field static final TRANSACTION_scheduleApplicationInfoChanged:I = 0x3d

.field static final TRANSACTION_scheduleBindService:I = 0x12

.field static final TRANSACTION_scheduleConfigurationChanged:I = 0xe

.field static final TRANSACTION_scheduleCrash:I = 0x22

.field static final TRANSACTION_scheduleCreateBackupAgent:I = 0x1d

.field static final TRANSACTION_scheduleCreateService:I = 0xa

.field static final TRANSACTION_scheduleDestroyActivity:I = 0x8

.field static final TRANSACTION_scheduleDestroyBackupAgent:I = 0x1e

.field static final TRANSACTION_scheduleEnterAnimationComplete:I = 0x34

.field static final TRANSACTION_scheduleExit:I = 0xd

.field static final TRANSACTION_scheduleInstallProvider:I = 0x32

.field static final TRANSACTION_scheduleLaunchActivity:I = 0x6

.field static final TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x3a

.field static final TRANSACTION_scheduleLowMemory:I = 0x16

.field static final TRANSACTION_scheduleMultiWindowModeChanged:I = 0x38

.field static final TRANSACTION_scheduleNewIntent:I = 0x7

.field static final TRANSACTION_scheduleOnNewActivityOptions:I = 0x1f

.field static final TRANSACTION_schedulePauseActivity:I = 0x1

.field static final TRANSACTION_schedulePictureInPictureModeChanged:I = 0x39

.field static final TRANSACTION_scheduleReceiver:I = 0x9

.field static final TRANSACTION_scheduleRegisteredReceiver:I = 0x15

.field static final TRANSACTION_scheduleRelaunchActivity:I = 0x19

.field static final TRANSACTION_scheduleResumeActivity:I = 0x4

.field static final TRANSACTION_scheduleSendResult:I = 0x5

.field static final TRANSACTION_scheduleServiceArgs:I = 0xf

.field static final TRANSACTION_scheduleSleeping:I = 0x1a

.field static final TRANSACTION_scheduleStopActivity:I = 0x2

.field static final TRANSACTION_scheduleStopService:I = 0xb

.field static final TRANSACTION_scheduleSuicide:I = 0x20

.field static final TRANSACTION_scheduleTranslucentConversionComplete:I = 0x30

.field static final TRANSACTION_scheduleTrimMemory:I = 0x29

.field static final TRANSACTION_scheduleUnbindService:I = 0x13

.field static final TRANSACTION_scheduleWindowVisibility:I = 0x3

.field static final TRANSACTION_setCoreSettings:I = 0x27

.field static final TRANSACTION_setHttpProxy:I = 0x26

.field static final TRANSACTION_setNetworkBlockSeq:I = 0x3e

.field static final TRANSACTION_setProcessState:I = 0x31

.field static final TRANSACTION_setSchedulingGroup:I = 0x1c

.field static final TRANSACTION_startBinderTracking:I = 0x36

.field static final TRANSACTION_stopBinderTrackingAndDump:I = 0x37

.field static final TRANSACTION_unstableProviderDied:I = 0x2e

.field static final TRANSACTION_updatePackageCompatibilityInfo:I = 0x28

.field static final TRANSACTION_updateTimePrefs:I = 0x33

.field static final TRANSACTION_updateTimeZone:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/app/IApplicationThread;

    return-object v0

    :cond_14
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 127
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_b42

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    :sswitch_8
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_12
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    const/4 v8, 0x1

    :goto_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_40

    const/4 v9, 0x1

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    const/4 v11, 0x1

    :goto_37
    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, Landroid/app/IApplicationThread$Stub;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    const/4 v6, 0x1

    return v6

    :cond_3e
    const/4 v8, 0x0

    goto :goto_25

    :cond_40
    const/4 v9, 0x0

    goto :goto_2c

    :cond_42
    const/4 v11, 0x0

    goto :goto_37

    :sswitch_44
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_62

    const/4 v8, 0x1

    :goto_57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Landroid/app/IApplicationThread$Stub;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    const/4 v6, 0x1

    return v6

    :cond_62
    const/4 v8, 0x0

    goto :goto_57

    :sswitch_64
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7e

    const/4 v8, 0x1

    :goto_77
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_7e
    const/4 v8, 0x0

    goto :goto_77

    :sswitch_80
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v105

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b2

    const/4 v9, 0x1

    :goto_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v119

    check-cast v119, Landroid/os/Bundle;

    :goto_a7
    move-object/from16 v0, p0

    move/from16 v1, v105

    move-object/from16 v2, v119

    invoke-virtual {v0, v7, v1, v9, v2}, Landroid/app/IApplicationThread$Stub;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    const/4 v6, 0x1

    return v6

    :cond_b2
    const/4 v9, 0x0

    goto :goto_97

    :cond_b4
    const/16 v119, 0x0

    goto :goto_a7

    :sswitch_b7
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v68

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    const/4 v6, 0x1

    return v6

    :sswitch_d4
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19b

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    :goto_ec
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19e

    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ActivityInfo;

    :goto_104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a2

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/res/Configuration;

    :goto_114
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a6

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/Configuration;

    :goto_124
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1aa

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/res/CompatibilityInfo;

    :goto_134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1ad

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    :goto_154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b0

    sget-object v6, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/PersistableBundle;

    :goto_164
    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b3

    const/16 v27, 0x1

    :goto_17c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b6

    const/16 v28, 0x1

    :goto_184
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b9

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/app/ProfilerInfo;

    :goto_194
    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v29}, Landroid/app/IApplicationThread$Stub;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_19b
    const/4 v13, 0x0

    goto/16 :goto_ec

    :cond_19e
    const/16 v16, 0x0

    goto/16 :goto_104

    :cond_1a2
    const/16 v17, 0x0

    goto/16 :goto_114

    :cond_1a6
    const/16 v18, 0x0

    goto/16 :goto_124

    :cond_1aa
    const/16 v19, 0x0

    goto :goto_134

    :cond_1ad
    const/16 v23, 0x0

    goto :goto_154

    :cond_1b0
    const/16 v24, 0x0

    goto :goto_164

    :cond_1b3
    const/16 v27, 0x0

    goto :goto_17c

    :cond_1b6
    const/16 v28, 0x0

    goto :goto_184

    :cond_1b9
    const/16 v29, 0x0

    goto :goto_194

    :sswitch_1bc
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v103

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e0

    const/4 v9, 0x1

    :goto_1d7
    move-object/from16 v0, p0

    move-object/from16 v1, v103

    invoke-virtual {v0, v1, v14, v9}, Landroid/app/IApplicationThread$Stub;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_1e0
    const/4 v9, 0x0

    goto :goto_1d7

    :sswitch_1e2
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_200

    const/4 v8, 0x1

    :goto_1f5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v15}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    const/4 v6, 0x1

    return v6

    :cond_200
    const/4 v8, 0x0

    goto :goto_1f5

    :sswitch_202
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26d

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    :goto_21a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_26f

    sget-object v6, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/ActivityInfo;

    :goto_22a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_272

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/res/CompatibilityInfo;

    :goto_23a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_275

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Bundle;

    :goto_252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_278

    const/16 v37, 0x1

    :goto_25a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    move-object/from16 v30, p0

    move-object/from16 v31, v13

    move/from16 v34, v10

    invoke-virtual/range {v30 .. v39}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    const/4 v6, 0x1

    return v6

    :cond_26d
    const/4 v13, 0x0

    goto :goto_21a

    :cond_26f
    const/16 v32, 0x0

    goto :goto_22a

    :cond_272
    const/16 v33, 0x0

    goto :goto_23a

    :cond_275
    const/16 v36, 0x0

    goto :goto_252

    :cond_278
    const/16 v37, 0x0

    goto :goto_25a

    :sswitch_27b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b6

    sget-object v6, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/content/pm/ServiceInfo;

    :goto_297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b9

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/content/res/CompatibilityInfo;

    :goto_2a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, v108

    move-object/from16 v2, v33

    invoke-virtual {v0, v7, v1, v2, v10}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    const/4 v6, 0x1

    return v6

    :cond_2b6
    const/16 v108, 0x0

    goto :goto_297

    :cond_2b9
    const/16 v33, 0x0

    goto :goto_2a7

    :sswitch_2bc
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_2cf
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a6

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/content/pm/ApplicationInfo;

    :goto_2eb
    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v43

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3aa

    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/content/ComponentName;

    :goto_303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3ae

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/app/ProfilerInfo;

    :goto_313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b2

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Bundle;

    :goto_323
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v47

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v48

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b6

    const/16 v50, 0x1

    :goto_33f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b9

    const/16 v51, 0x1

    :goto_347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3bc

    const/16 v52, 0x1

    :goto_34f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3bf

    const/16 v53, 0x1

    :goto_357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c2

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Landroid/content/res/Configuration;

    :goto_367
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c5

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/content/res/CompatibilityInfo;

    :goto_377
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v121

    move-object/from16 v0, p2

    move-object/from16 v1, v121

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/os/Bundle;

    :goto_397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v58

    move-object/from16 v40, p0

    move-object/from16 v46, v36

    move/from16 v49, v39

    invoke-virtual/range {v40 .. v58}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_3a6
    const/16 v42, 0x0

    goto/16 :goto_2eb

    :cond_3aa
    const/16 v44, 0x0

    goto/16 :goto_303

    :cond_3ae
    const/16 v45, 0x0

    goto/16 :goto_313

    :cond_3b2
    const/16 v36, 0x0

    goto/16 :goto_323

    :cond_3b6
    const/16 v50, 0x0

    goto :goto_33f

    :cond_3b9
    const/16 v51, 0x0

    goto :goto_347

    :cond_3bc
    const/16 v52, 0x0

    goto :goto_34f

    :cond_3bf
    const/16 v53, 0x0

    goto :goto_357

    :cond_3c2
    const/16 v54, 0x0

    goto :goto_367

    :cond_3c5
    const/16 v55, 0x0

    goto :goto_377

    :cond_3c8
    const/16 v57, 0x0

    goto :goto_397

    :sswitch_3cb
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    const/4 v6, 0x1

    return v6

    :sswitch_3d8
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f9

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v101

    check-cast v101, Landroid/content/res/Configuration;

    :goto_3f0
    move-object/from16 v0, p0

    move-object/from16 v1, v101

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_3f9
    const/16 v101, 0x0

    goto :goto_3f0

    :sswitch_3fc
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_421

    sget-object v6, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v107

    check-cast v107, Landroid/content/pm/ParceledListSlice;

    :goto_418
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    const/4 v6, 0x1

    return v6

    :cond_421
    const/16 v107, 0x0

    goto :goto_418

    :sswitch_424
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    const/4 v6, 0x1

    return v6

    :sswitch_431
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    const/4 v6, 0x1

    return v6

    :sswitch_43e
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46e

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/content/Intent;

    :goto_45a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_471

    const/4 v9, 0x1

    :goto_461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v7, v1, v9, v10}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    const/4 v6, 0x1

    return v6

    :cond_46e
    const/16 v61, 0x0

    goto :goto_45a

    :cond_471
    const/4 v9, 0x0

    goto :goto_461

    :sswitch_473
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_498

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/content/Intent;

    :goto_48f
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    const/4 v6, 0x1

    return v6

    :cond_498
    const/16 v61, 0x0

    goto :goto_48f

    :sswitch_49b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c6

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    :goto_4b3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v117

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v14, v2}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_4c6
    const/16 v82, 0x0

    goto :goto_4b3

    :sswitch_4c9
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v60

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_528

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/content/Intent;

    :goto_4e9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52b

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/os/Bundle;

    :goto_501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52e

    const/16 v65, 0x1

    :goto_509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_531

    const/16 v37, 0x1

    :goto_511
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    move-object/from16 v59, p0

    move/from16 v62, v15

    move/from16 v66, v37

    move/from16 v67, v38

    move/from16 v68, v39

    invoke-virtual/range {v59 .. v68}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    const/4 v6, 0x1

    return v6

    :cond_528
    const/16 v61, 0x0

    goto :goto_4e9

    :cond_52b
    const/16 v64, 0x0

    goto :goto_501

    :cond_52e
    const/16 v65, 0x0

    goto :goto_509

    :cond_531
    const/16 v37, 0x0

    goto :goto_511

    :sswitch_534
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    const/4 v6, 0x1

    return v6

    :sswitch_541
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_566

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v110

    check-cast v110, Landroid/content/res/Configuration;

    :goto_55d
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_566
    const/16 v110, 0x0

    goto :goto_55d

    :sswitch_569
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v105

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_594

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/content/res/Configuration;

    :goto_589
    move-object/from16 v0, p0

    move/from16 v1, v105

    move-object/from16 v2, v115

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleActivityMovedToDisplay(Landroid/os/IBinder;ILandroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_594
    const/16 v115, 0x0

    goto :goto_589

    :sswitch_597
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    sget-object v6, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v68

    sget-object v6, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v69

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f5

    const/4 v11, 0x1

    :goto_5be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f7

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/Configuration;

    :goto_5ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5fa

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/res/Configuration;

    :goto_5de
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5fd

    const/16 v74, 0x1

    :goto_5e6
    move-object/from16 v66, p0

    move-object/from16 v67, v7

    move/from16 v70, v10

    move/from16 v71, v11

    move-object/from16 v72, v18

    invoke-virtual/range {v66 .. v74}, Landroid/app/IApplicationThread$Stub;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;Z)V

    const/4 v6, 0x1

    return v6

    :cond_5f5
    const/4 v11, 0x0

    goto :goto_5be

    :cond_5f7
    const/16 v18, 0x0

    goto :goto_5ce

    :cond_5fa
    const/16 v73, 0x0

    goto :goto_5de

    :cond_5fd
    const/16 v74, 0x0

    goto :goto_5e6

    :sswitch_600
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61a

    const/4 v8, 0x1

    :goto_613
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleSleeping(Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_61a
    const/4 v8, 0x0

    goto :goto_613

    :sswitch_61c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64b

    const/16 v76, 0x1

    :goto_62c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64e

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/app/ProfilerInfo;

    :goto_63c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    move/from16 v1, v76

    move-object/from16 v2, v106

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    const/4 v6, 0x1

    return v6

    :cond_64b
    const/16 v76, 0x0

    goto :goto_62c

    :cond_64e
    const/16 v106, 0x0

    goto :goto_63c

    :sswitch_651
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_666
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69d

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    :goto_67e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a0

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/content/res/CompatibilityInfo;

    :goto_68e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v109

    invoke-virtual {v0, v1, v2, v15}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    const/4 v6, 0x1

    return v6

    :cond_69d
    const/16 v97, 0x0

    goto :goto_67e

    :cond_6a0
    const/16 v109, 0x0

    goto :goto_68e

    :sswitch_6a3
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d6

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    :goto_6bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d9

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/content/res/CompatibilityInfo;

    :goto_6cb
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    move-object/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_6d6
    const/16 v97, 0x0

    goto :goto_6bb

    :cond_6d9
    const/16 v109, 0x0

    goto :goto_6cb

    :sswitch_6dc
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_701

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v111

    check-cast v111, Landroid/os/Bundle;

    :goto_6f8
    move-object/from16 v0, p0

    move-object/from16 v1, v111

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v6, 0x1

    return v6

    :cond_701
    const/16 v111, 0x0

    goto :goto_6f8

    :sswitch_704
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    const/4 v6, 0x1

    return v6

    :sswitch_711
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v114

    move-object/from16 v0, p0

    move/from16 v1, v96

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_72c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_741
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_780

    const/16 v76, 0x1

    :goto_751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_783

    const/4 v8, 0x1

    :goto_758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_785

    const/4 v9, 0x1

    :goto_75f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_787

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/os/ParcelFileDescriptor;

    :goto_773
    move-object/from16 v75, p0

    move/from16 v77, v8

    move/from16 v78, v9

    move-object/from16 v79, v63

    invoke-virtual/range {v75 .. v80}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    const/4 v6, 0x1

    return v6

    :cond_780
    const/16 v76, 0x0

    goto :goto_751

    :cond_783
    const/4 v8, 0x0

    goto :goto_758

    :cond_785
    const/4 v9, 0x0

    goto :goto_75f

    :cond_787
    const/16 v80, 0x0

    goto :goto_773

    :sswitch_78a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7bb

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    :goto_7a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v120

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v116

    move-object/from16 v3, v120

    invoke-virtual {v0, v1, v14, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_7bb
    const/16 v82, 0x0

    goto :goto_7a2

    :sswitch_7be
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    const/4 v6, 0x1

    return v6

    :sswitch_7cb
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v113

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v116

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7fe

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Landroid/net/Uri;

    :goto_7ef
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v113

    move-object/from16 v3, v116

    move-object/from16 v4, v118

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IApplicationThread$Stub;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v6, 0x1

    return v6

    :cond_7fe
    const/16 v118, 0x0

    goto :goto_7ef

    :sswitch_801
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_822

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v102

    check-cast v102, Landroid/os/Bundle;

    :goto_819
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    const/4 v6, 0x1

    return v6

    :cond_822
    const/16 v102, 0x0

    goto :goto_819

    :sswitch_825
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_84c

    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v109

    check-cast v109, Landroid/content/res/CompatibilityInfo;

    :goto_841
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-object/from16 v2, v109

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_84c
    const/16 v109, 0x0

    goto :goto_841

    :sswitch_84f
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_864
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8c5

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    :goto_87c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8c8

    sget-object v6, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Landroid/os/Debug$MemoryInfo;

    :goto_88c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8cb

    const/4 v9, 0x1

    :goto_893
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8cd

    const/16 v85, 0x1

    :goto_89b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d0

    const/4 v11, 0x1

    :goto_8a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d2

    const/16 v65, 0x1

    :goto_8aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d5

    const/16 v37, 0x1

    :goto_8b2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v89

    move-object/from16 v81, p0

    move/from16 v84, v9

    move/from16 v86, v11

    move/from16 v87, v65

    move/from16 v88, v37

    invoke-virtual/range {v81 .. v89}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_8c5
    const/16 v82, 0x0

    goto :goto_87c

    :cond_8c8
    const/16 v83, 0x0

    goto :goto_88c

    :cond_8cb
    const/4 v9, 0x0

    goto :goto_893

    :cond_8cd
    const/16 v85, 0x0

    goto :goto_89b

    :cond_8d0
    const/4 v11, 0x0

    goto :goto_8a2

    :cond_8d2
    const/16 v65, 0x0

    goto :goto_8aa

    :cond_8d5
    const/16 v37, 0x0

    goto :goto_8b2

    :sswitch_8d8
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8ff

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    :goto_8f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v114

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_8ff
    const/16 v82, 0x0

    goto :goto_8f0

    :sswitch_902
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_92d

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    :goto_91a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v117

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v117

    invoke-virtual {v0, v1, v14, v2}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_92d
    const/16 v82, 0x0

    goto :goto_91a

    :sswitch_930
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_957

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    :goto_948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v114

    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v114

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :cond_957
    const/16 v82, 0x0

    goto :goto_948

    :sswitch_95a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_96d
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v95

    move-object/from16 v90, p0

    move-object/from16 v91, v7

    move-object/from16 v92, v14

    move/from16 v93, v15

    move/from16 v94, v10

    invoke-virtual/range {v90 .. v95}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    const/4 v6, 0x1

    return v6

    :sswitch_998
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9b2

    const/4 v8, 0x1

    :goto_9ab
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    const/4 v6, 0x1

    return v6

    :cond_9b2
    const/4 v8, 0x0

    goto :goto_9ab

    :sswitch_9b4
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_9c9
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9ea

    sget-object v6, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v100

    check-cast v100, Landroid/content/pm/ProviderInfo;

    :goto_9e1
    move-object/from16 v0, p0

    move-object/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_9ea
    const/16 v100, 0x0

    goto :goto_9e1

    :sswitch_9ed
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v96

    move-object/from16 v0, p0

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    const/4 v6, 0x1

    return v6

    :sswitch_a02
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    const/4 v6, 0x1

    return v6

    :sswitch_a15
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v104

    move-object/from16 v0, p0

    move-object/from16 v1, v104

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    const/4 v6, 0x1

    return v6

    :sswitch_a2a
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    const/4 v6, 0x1

    return v6

    :sswitch_a37
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a58

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/ParcelFileDescriptor;

    :goto_a4f
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    const/4 v6, 0x1

    return v6

    :cond_a58
    const/16 v82, 0x0

    goto :goto_a4f

    :sswitch_a5b
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a87

    const/4 v8, 0x1

    :goto_a6e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a89

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/content/res/Configuration;

    :goto_a7e
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/IApplicationThread$Stub;->scheduleMultiWindowModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_a87
    const/4 v8, 0x0

    goto :goto_a6e

    :cond_a89
    const/16 v115, 0x0

    goto :goto_a7e

    :sswitch_a8c
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ab8

    const/4 v8, 0x1

    :goto_a9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_aba

    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v115

    check-cast v115, Landroid/content/res/Configuration;

    :goto_aaf
    move-object/from16 v0, p0

    move-object/from16 v1, v115

    invoke-virtual {v0, v7, v8, v1}, Landroid/app/IApplicationThread$Stub;->schedulePictureInPictureModeChanged(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V

    const/4 v6, 0x1

    return v6

    :cond_ab8
    const/4 v8, 0x0

    goto :goto_a9f

    :cond_aba
    const/16 v115, 0x0

    goto :goto_aaf

    :sswitch_abd
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v112

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    invoke-virtual {v0, v7, v1}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    const/4 v6, 0x1

    return v6

    :sswitch_ada
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    const/4 v6, 0x1

    return v6

    :sswitch_ae7
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :sswitch_afc
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b1d

    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v97

    check-cast v97, Landroid/content/pm/ApplicationInfo;

    :goto_b14
    move-object/from16 v0, p0

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    const/4 v6, 0x1

    return v6

    :cond_b1d
    const/16 v97, 0x0

    goto :goto_b14

    :sswitch_b20
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v98

    move-object/from16 v0, p0

    move-wide/from16 v1, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    const/4 v6, 0x1

    return v6

    :sswitch_b35
    const-string/jumbo v6, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->notifyPackageForeground()V

    const/4 v6, 0x1

    return v6

    :sswitch_data_b42
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_44
        0x3 -> :sswitch_64
        0x4 -> :sswitch_80
        0x5 -> :sswitch_b7
        0x6 -> :sswitch_d4
        0x7 -> :sswitch_1bc
        0x8 -> :sswitch_1e2
        0x9 -> :sswitch_202
        0xa -> :sswitch_27b
        0xb -> :sswitch_2bc
        0xc -> :sswitch_2cf
        0xd -> :sswitch_3cb
        0xe -> :sswitch_3d8
        0xf -> :sswitch_3fc
        0x10 -> :sswitch_424
        0x11 -> :sswitch_431
        0x12 -> :sswitch_43e
        0x13 -> :sswitch_473
        0x14 -> :sswitch_49b
        0x15 -> :sswitch_4c9
        0x16 -> :sswitch_534
        0x17 -> :sswitch_541
        0x18 -> :sswitch_569
        0x19 -> :sswitch_597
        0x1a -> :sswitch_600
        0x1b -> :sswitch_61c
        0x1c -> :sswitch_651
        0x1d -> :sswitch_666
        0x1e -> :sswitch_6a3
        0x1f -> :sswitch_6dc
        0x20 -> :sswitch_704
        0x21 -> :sswitch_711
        0x22 -> :sswitch_72c
        0x23 -> :sswitch_741
        0x24 -> :sswitch_78a
        0x25 -> :sswitch_7be
        0x26 -> :sswitch_7cb
        0x27 -> :sswitch_801
        0x28 -> :sswitch_825
        0x29 -> :sswitch_84f
        0x2a -> :sswitch_864
        0x2b -> :sswitch_8d8
        0x2c -> :sswitch_902
        0x2d -> :sswitch_930
        0x2e -> :sswitch_95a
        0x2f -> :sswitch_96d
        0x30 -> :sswitch_998
        0x31 -> :sswitch_9b4
        0x32 -> :sswitch_9c9
        0x33 -> :sswitch_9ed
        0x34 -> :sswitch_a02
        0x35 -> :sswitch_a15
        0x36 -> :sswitch_a2a
        0x37 -> :sswitch_a37
        0x38 -> :sswitch_a5b
        0x39 -> :sswitch_a8c
        0x3a -> :sswitch_abd
        0x3b -> :sswitch_ada
        0x3c -> :sswitch_ae7
        0x3d -> :sswitch_afc
        0x3e -> :sswitch_b20
        0x3f -> :sswitch_b35
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
