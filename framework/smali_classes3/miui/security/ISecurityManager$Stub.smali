.class public abstract Lmiui/security/ISecurityManager$Stub;
.super Landroid/os/Binder;
.source "ISecurityManager.java"

# interfaces
.implements Lmiui/security/ISecurityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/security/ISecurityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/security/ISecurityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.security.ISecurityManager"

.field static final TRANSACTION_activityResume:I = 0x1b

.field static final TRANSACTION_addAccessControlPass:I = 0x6

.field static final TRANSACTION_addAccessControlPassForUser:I = 0x26

.field static final TRANSACTION_addMiuiFirewallSharedUid:I = 0x2b

.field static final TRANSACTION_areNotificationsEnabledForPackage:I = 0x35

.field static final TRANSACTION_checkAccessControlPass:I = 0x8

.field static final TRANSACTION_checkAccessControlPassAsUser:I = 0x1f

.field static final TRANSACTION_checkAccessControlPassword:I = 0x3f

.field static final TRANSACTION_checkAllowStartActivity:I = 0x22

.field static final TRANSACTION_checkGameBoosterAntimsgPassAsUser:I = 0x3b

.field static final TRANSACTION_checkSmsBlocked:I = 0x3

.field static final TRANSACTION_finishAccessControl:I = 0x1a

.field static final TRANSACTION_getAccessControlPasswordType:I = 0x41

.field static final TRANSACTION_getAllPrivacyApps:I = 0x4e

.field static final TRANSACTION_getAppPermissionControlOpen:I = 0x15

.field static final TRANSACTION_getAppRunningControlIBinder:I = 0x46

.field static final TRANSACTION_getApplicationAccessControlEnabled:I = 0x9

.field static final TRANSACTION_getApplicationAccessControlEnabledAsUser:I = 0x20

.field static final TRANSACTION_getApplicationChildrenControlEnabled:I = 0xb

.field static final TRANSACTION_getApplicationMaskNotificationEnabledAsUser:I = 0x33

.field static final TRANSACTION_getCurrentUserId:I = 0x1e

.field static final TRANSACTION_getGameMode:I = 0x3d

.field static final TRANSACTION_getIncompatibleAppList:I = 0x2f

.field static final TRANSACTION_getPackageNameByPid:I = 0x2

.field static final TRANSACTION_getSecondSpaceId:I = 0x48

.field static final TRANSACTION_getSysAppCracked:I = 0x23

.field static final TRANSACTION_getTopActivity:I = 0x45

.field static final TRANSACTION_getWakePathCallListLog:I = 0x14

.field static final TRANSACTION_getWakePathComponents:I = 0x30

.field static final TRANSACTION_getWakeUpTime:I = 0xe

.field static final TRANSACTION_grantInstallPermission:I = 0x24

.field static final TRANSACTION_grantRuntimePermission:I = 0x1d

.field static final TRANSACTION_haveAccessControlPassword:I = 0x40

.field static final TRANSACTION_isAllowStartService:I = 0x44

.field static final TRANSACTION_isAppHide:I = 0x37

.field static final TRANSACTION_isAppPrivacyEnabled:I = 0x43

.field static final TRANSACTION_isFunctionOpen:I = 0x38

.field static final TRANSACTION_isPrivacyApp:I = 0x4d

.field static final TRANSACTION_isRestrictedAppNet:I = 0x28

.field static final TRANSACTION_isValidDevice:I = 0x3a

.field static final TRANSACTION_killNativePackageProcesses:I = 0x1

.field static final TRANSACTION_moveTaskToStack:I = 0x49

.field static final TRANSACTION_needFinishAccessControl:I = 0x19

.field static final TRANSACTION_notifyAppsPreInstalled:I = 0x32

.field static final TRANSACTION_offerGoogleBaseCallBack:I = 0x31

.field static final TRANSACTION_pushUpdatePkgsData:I = 0x4b

.field static final TRANSACTION_pushWakePathConfirmDialogWhiteList:I = 0x25

.field static final TRANSACTION_pushWakePathData:I = 0x11

.field static final TRANSACTION_pushWakePathWhiteList:I = 0x12

.field static final TRANSACTION_putSystemDataStringFile:I = 0xf

.field static final TRANSACTION_readSystemDataStringFile:I = 0x10

.field static final TRANSACTION_registerWakePathCallback:I = 0x17

.field static final TRANSACTION_removeAccessControlPass:I = 0x7

.field static final TRANSACTION_removeAccessControlPassAsUser:I = 0x18

.field static final TRANSACTION_removeWakePathData:I = 0x21

.field static final TRANSACTION_resizeTask:I = 0x4a

.field static final TRANSACTION_saveIcon:I = 0x2a

.field static final TRANSACTION_setAccessControlPassword:I = 0x3e

.field static final TRANSACTION_setAppHide:I = 0x39

.field static final TRANSACTION_setAppPermissionControlOpen:I = 0x16

.field static final TRANSACTION_setAppPrivacyStatus:I = 0x42

.field static final TRANSACTION_setApplicationAccessControlEnabled:I = 0xa

.field static final TRANSACTION_setApplicationAccessControlEnabledForUser:I = 0x27

.field static final TRANSACTION_setApplicationChildrenControlEnabled:I = 0xc

.field static final TRANSACTION_setApplicationMaskNotificationEnabledForUser:I = 0x34

.field static final TRANSACTION_setCoreRuntimePermissionEnabled:I = 0x1c

.field static final TRANSACTION_setCurrentNetworkState:I = 0x2d

.field static final TRANSACTION_setGameBoosterIBinder:I = 0x3c

.field static final TRANSACTION_setIncompatibleAppList:I = 0x2e

.field static final TRANSACTION_setMiuiFirewallRule:I = 0x2c

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x36

.field static final TRANSACTION_setPrivacyApp:I = 0x4c

.field static final TRANSACTION_setTrackWakePathCallListLogEnabled:I = 0x13

.field static final TRANSACTION_setWakeUpTime:I = 0xd

.field static final TRANSACTION_startInterceptSmsBySender:I = 0x4

.field static final TRANSACTION_stopInterceptSmsBySender:I = 0x5

.field static final TRANSACTION_watchGreenGuardProcess:I = 0x47

.field static final TRANSACTION_writeAppHideConfig:I = 0x29


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "miui.security.ISecurityManager"

    invoke-virtual {p0, p0, v0}, Lmiui/security/ISecurityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityManager;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "miui.security.ISecurityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lmiui/security/ISecurityManager;

    if-eqz v1, :cond_14

    check-cast v0, Lmiui/security/ISecurityManager;

    return-object v0

    :cond_14
    new-instance v1, Lmiui/security/ISecurityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/security/ISecurityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_c0c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v34

    return v34

    :sswitch_8
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p3

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v34, 0x1

    return v34

    :sswitch_15
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lmiui/security/ISecurityManager$Stub;->killNativePackageProcesses(ILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_34
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v34, 0x1

    return v34

    :sswitch_55
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_9c

    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    :goto_71
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/security/ISecurityManager$Stub;->checkSmsBlocked(Landroid/content/Intent;)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_9e

    const/16 v34, 0x1

    :goto_7e
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz v5, :cond_a1

    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_99
    const/16 v34, 0x1

    return v34

    :cond_9c
    const/4 v5, 0x0

    goto :goto_71

    :cond_9e
    const/16 v34, 0x0

    goto :goto_7e

    :cond_a1
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_99

    :sswitch_ab
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_dc

    const/16 v34, 0x1

    :goto_d2
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_dc
    const/16 v34, 0x0

    goto :goto_d2

    :sswitch_df
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->stopInterceptSmsBySender()Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_fe

    const/16 v34, 0x1

    :goto_f4
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_fe
    const/16 v34, 0x0

    goto :goto_f4

    :sswitch_101
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPass(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_11a
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPass(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_133
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_16a

    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    :goto_153
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_16c

    const/16 v34, 0x1

    :goto_160
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_16a
    const/4 v13, 0x0

    goto :goto_153

    :cond_16c
    const/16 v34, 0x0

    goto :goto_160

    :sswitch_16f
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_194

    const/16 v34, 0x1

    :goto_18a
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_194
    const/16 v34, 0x0

    goto :goto_18a

    :sswitch_197
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_1ba

    const/16 v21, 0x1

    :goto_1ad
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_1ba
    const/16 v21, 0x0

    goto :goto_1ad

    :sswitch_1bd
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_1e2

    const/16 v34, 0x1

    :goto_1d8
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_1e2
    const/16 v34, 0x0

    goto :goto_1d8

    :sswitch_1e5
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_208

    const/16 v21, 0x1

    :goto_1fb
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_208
    const/16 v21, 0x0

    goto :goto_1fb

    :sswitch_20b
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14, v15}, Lmiui/security/ISecurityManager$Stub;->setWakeUpTime(Ljava/lang/String;J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_228
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->getWakeUpTime(Ljava/lang/String;)J

    move-result-wide v28

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v34, 0x1

    return v34

    :sswitch_249
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_274

    const/16 v34, 0x1

    :goto_26a
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_274
    const/16 v34, 0x0

    goto :goto_26a

    :sswitch_277
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v34, 0x1

    return v34

    :sswitch_298
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_2cb

    sget-object v34, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ParceledListSlice;

    :goto_2b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lmiui/security/ISecurityManager$Stub;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_2cb
    const/16 v16, 0x0

    goto :goto_2b8

    :sswitch_2ce
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lmiui/security/ISecurityManager$Stub;->pushWakePathWhiteList(Ljava/util/List;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_2eb
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_307

    const/4 v11, 0x1

    :goto_2fc
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/security/ISecurityManager$Stub;->setTrackWakePathCallListLogEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_307
    const/4 v11, 0x0

    goto :goto_2fc

    :sswitch_309
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;

    move-result-object v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_333

    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_330
    const/16 v34, 0x1

    return v34

    :cond_333
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_330

    :sswitch_33d
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getAppPermissionControlOpen(I)I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :sswitch_35e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->setAppPermissionControlOpen(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_377
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/internal/app/IWakePathCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IWakePathCallback;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmiui/security/ISecurityManager$Stub;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_394
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->removeAccessControlPassAsUser(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_3b1
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmiui/security/ISecurityManager$Stub;->needFinishAccessControl(Landroid/os/IBinder;)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_3d6

    const/16 v34, 0x1

    :goto_3cc
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_3d6
    const/16 v34, 0x0

    goto :goto_3cc

    :sswitch_3d9
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->finishAccessControl(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_3f6
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_425

    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    :goto_412
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lmiui/security/ISecurityManager$Stub;->activityResume(Landroid/content/Intent;)I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_425
    const/4 v5, 0x0

    goto :goto_412

    :sswitch_427
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_447

    const/4 v11, 0x1

    :goto_438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Lmiui/security/ISecurityManager$Stub;->setCoreRuntimePermissionEnabled(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_447
    const/4 v11, 0x0

    goto :goto_438

    :sswitch_449
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->grantRuntimePermission(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_462
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getCurrentUserId()I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :sswitch_47d
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_4ba

    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    :goto_49d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v8, v13, v1}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_4bc

    const/16 v34, 0x1

    :goto_4b0
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_4ba
    const/4 v13, 0x0

    goto :goto_49d

    :cond_4bc
    const/16 v34, 0x0

    goto :goto_4b0

    :sswitch_4bf
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_4e8

    const/16 v34, 0x1

    :goto_4de
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_4e8
    const/16 v34, 0x0

    goto :goto_4de

    :sswitch_4eb
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->removeWakePathData(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_504
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_549

    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Intent;

    :goto_528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move/from16 v3, v25

    invoke-virtual {v0, v8, v1, v2, v3}, Lmiui/security/ISecurityManager$Stub;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_54c

    const/16 v34, 0x1

    :goto_53f
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_549
    const/16 v23, 0x0

    goto :goto_528

    :cond_54c
    const/16 v34, 0x0

    goto :goto_53f

    :sswitch_54f
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getSysAppCracked()I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :sswitch_56a
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_589
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v4, v1}, Lmiui/security/ISecurityManager$Stub;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_5a8
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->addAccessControlPassForUser(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_5c5
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_5ee

    const/16 v21, 0x1

    :goto_5db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_5ee
    const/16 v21, 0x0

    goto :goto_5db

    :sswitch_5f1
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->isRestrictedAppNet(Ljava/lang/String;)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_616

    const/16 v34, 0x1

    :goto_60c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_616
    const/16 v34, 0x0

    goto :goto_60c

    :sswitch_619
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_641

    const/4 v11, 0x1

    :goto_62a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/security/ISecurityManager$Stub;->writeAppHideConfig(Z)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_643

    const/16 v34, 0x1

    :goto_637
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_641
    const/4 v11, 0x0

    goto :goto_62a

    :cond_643
    const/16 v34, 0x0

    goto :goto_637

    :sswitch_646
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_673

    sget-object v34, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    :goto_666
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->saveIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_673
    const/16 v17, 0x0

    goto :goto_666

    :sswitch_676
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->addMiuiFirewallSharedUid(I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_69b

    const/16 v34, 0x1

    :goto_691
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_69b
    const/16 v34, 0x0

    goto :goto_691

    :sswitch_69e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v25

    invoke-virtual {v0, v8, v12, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setMiuiFirewallRule(Ljava/lang/String;III)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_6d3

    const/16 v34, 0x1

    :goto_6c9
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_6d3
    const/16 v34, 0x0

    goto :goto_6c9

    :sswitch_6d6
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->setCurrentNetworkState(I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_6fb

    const/16 v34, 0x1

    :goto_6f1
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_6fb
    const/16 v34, 0x0

    goto :goto_6f1

    :sswitch_6fe
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lmiui/security/ISecurityManager$Stub;->setIncompatibleAppList(Ljava/util/List;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_717
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getIncompatibleAppList()Ljava/util/List;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/16 v34, 0x1

    return v34

    :sswitch_732
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->getWakePathComponents(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_762

    const/16 v34, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_75f
    const/16 v34, 0x1

    return v34

    :cond_762
    const/16 v34, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_75f

    :sswitch_76c
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lmiui/security/ISecurityCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ISecurityCallback;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lmiui/security/ISecurityManager$Stub;->offerGoogleBaseCallBack(Lmiui/security/ISecurityCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_789
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->notifyAppsPreInstalled()V

    const/16 v34, 0x1

    return v34

    :sswitch_799
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->getApplicationMaskNotificationEnabledAsUser(Ljava/lang/String;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_7c2

    const/16 v34, 0x1

    :goto_7b8
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_7c2
    const/16 v34, 0x0

    goto :goto_7b8

    :sswitch_7c5
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_7ee

    const/16 v21, 0x1

    :goto_7db
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setApplicationMaskNotificationEnabledForUser(Ljava/lang/String;ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_7ee
    const/16 v21, 0x0

    goto :goto_7db

    :sswitch_7f1
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_81a

    const/16 v34, 0x1

    :goto_810
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_81a
    const/16 v34, 0x0

    goto :goto_810

    :sswitch_81d
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_844

    const/16 v24, 0x1

    :goto_837
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v8, v12, v1}, Lmiui/security/ISecurityManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_844
    const/16 v24, 0x0

    goto :goto_837

    :sswitch_847
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isAppHide()Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_866

    const/16 v34, 0x1

    :goto_85c
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_866
    const/16 v34, 0x0

    goto :goto_85c

    :sswitch_869
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isFunctionOpen()Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_888

    const/16 v34, 0x1

    :goto_87e
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_888
    const/16 v34, 0x0

    goto :goto_87e

    :sswitch_88b
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_8b3

    const/4 v11, 0x1

    :goto_89c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lmiui/security/ISecurityManager$Stub;->setAppHide(Z)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_8b5

    const/16 v34, 0x1

    :goto_8a9
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_8b3
    const/4 v11, 0x0

    goto :goto_89c

    :cond_8b5
    const/16 v34, 0x0

    goto :goto_8a9

    :sswitch_8b8
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->isValidDevice()Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_8d7

    const/16 v34, 0x1

    :goto_8cd
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_8d7
    const/16 v34, 0x0

    goto :goto_8cd

    :sswitch_8da
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_917

    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/Intent;

    :goto_8fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v8, v13, v1}, Lmiui/security/ISecurityManager$Stub;->checkGameBoosterAntimsgPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_919

    const/16 v34, 0x1

    :goto_90d
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_917
    const/4 v13, 0x0

    goto :goto_8fa

    :cond_919
    const/16 v34, 0x0

    goto :goto_90d

    :sswitch_91c
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_943

    const/16 v24, 0x1

    :goto_936
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v6, v12, v1}, Lmiui/security/ISecurityManager$Stub;->setGameBoosterIBinder(Landroid/os/IBinder;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_943
    const/16 v24, 0x0

    goto :goto_936

    :sswitch_946
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getGameMode(I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_96b

    const/16 v34, 0x1

    :goto_961
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_96b
    const/16 v34, 0x0

    goto :goto_961

    :sswitch_96e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->setAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_993
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v8, v1, v2}, Lmiui/security/ISecurityManager$Stub;->checkAccessControlPassword(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_9c4

    const/16 v34, 0x1

    :goto_9ba
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_9c4
    const/16 v34, 0x0

    goto :goto_9ba

    :sswitch_9c7
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->haveAccessControlPassword(I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_9ec

    const/16 v34, 0x1

    :goto_9e2
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_9ec
    const/16 v34, 0x0

    goto :goto_9e2

    :sswitch_9ef
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getAccessControlPasswordType(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v34, 0x1

    return v34

    :sswitch_a10
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_a33

    const/16 v21, 0x1

    :goto_a26
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lmiui/security/ISecurityManager$Stub;->setAppPrivacyStatus(Ljava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_a33
    const/16 v21, 0x0

    goto :goto_a26

    :sswitch_a36
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmiui/security/ISecurityManager$Stub;->isAppPrivacyEnabled(Ljava/lang/String;)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_a5b

    const/16 v34, 0x1

    :goto_a51
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_a5b
    const/16 v34, 0x0

    goto :goto_a51

    :sswitch_a5e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_a95

    sget-object v34, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    :goto_a7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Lmiui/security/ISecurityManager$Stub;->isAllowStartService(Landroid/content/Intent;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_a97

    const/16 v34, 0x1

    :goto_a8b
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_a95
    const/4 v5, 0x0

    goto :goto_a7a

    :cond_a97
    const/16 v34, 0x0

    goto :goto_a8b

    :sswitch_a9a
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getTopActivity()Landroid/os/IBinder;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v34, 0x1

    return v34

    :sswitch_ab5
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getAppRunningControlIBinder()Landroid/os/IBinder;

    move-result-object v30

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v34, 0x1

    return v34

    :sswitch_ad0
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->watchGreenGuardProcess()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :sswitch_ae3
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lmiui/security/ISecurityManager$Stub;->getSecondSpaceId()I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :sswitch_afe
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_b2d

    const/16 v24, 0x1

    :goto_b18
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v4, v12, v1}, Lmiui/security/ISecurityManager$Stub;->moveTaskToStack(IIZ)I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_b2d
    const/16 v24, 0x0

    goto :goto_b18

    :sswitch_b30
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_b6b

    sget-object v34, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v34

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    :goto_b50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v4, v1, v2}, Lmiui/security/ISecurityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)I

    move-result v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_b6b
    const/16 v18, 0x0

    goto :goto_b50

    :sswitch_b6e
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_b91

    const/16 v21, 0x1

    :goto_b84
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v9, v1}, Lmiui/security/ISecurityManager$Stub;->pushUpdatePkgsData(Ljava/util/List;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_b91
    const/16 v21, 0x0

    goto :goto_b84

    :sswitch_b94
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    if-eqz v34, :cond_bbb

    const/16 v24, 0x1

    :goto_bae
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v8, v12, v1}, Lmiui/security/ISecurityManager$Stub;->setPrivacyApp(Ljava/lang/String;IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v34, 0x1

    return v34

    :cond_bbb
    const/16 v24, 0x0

    goto :goto_bae

    :sswitch_bbe
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v12}, Lmiui/security/ISecurityManager$Stub;->isPrivacyApp(Ljava/lang/String;I)Z

    move-result v33

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v33, :cond_be7

    const/16 v34, 0x1

    :goto_bdd
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v34, 0x1

    return v34

    :cond_be7
    const/16 v34, 0x0

    goto :goto_bdd

    :sswitch_bea
    const-string/jumbo v34, "miui.security.ISecurityManager"

    move-object/from16 v0, p2

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmiui/security/ISecurityManager$Stub;->getAllPrivacyApps(I)Ljava/util/List;

    move-result-object v32

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    const/16 v34, 0x1

    return v34

    nop

    :sswitch_data_c0c
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_34
        0x3 -> :sswitch_55
        0x4 -> :sswitch_ab
        0x5 -> :sswitch_df
        0x6 -> :sswitch_101
        0x7 -> :sswitch_11a
        0x8 -> :sswitch_133
        0x9 -> :sswitch_16f
        0xa -> :sswitch_197
        0xb -> :sswitch_1bd
        0xc -> :sswitch_1e5
        0xd -> :sswitch_20b
        0xe -> :sswitch_228
        0xf -> :sswitch_249
        0x10 -> :sswitch_277
        0x11 -> :sswitch_298
        0x12 -> :sswitch_2ce
        0x13 -> :sswitch_2eb
        0x14 -> :sswitch_309
        0x15 -> :sswitch_33d
        0x16 -> :sswitch_35e
        0x17 -> :sswitch_377
        0x18 -> :sswitch_394
        0x19 -> :sswitch_3b1
        0x1a -> :sswitch_3d9
        0x1b -> :sswitch_3f6
        0x1c -> :sswitch_427
        0x1d -> :sswitch_449
        0x1e -> :sswitch_462
        0x1f -> :sswitch_47d
        0x20 -> :sswitch_4bf
        0x21 -> :sswitch_4eb
        0x22 -> :sswitch_504
        0x23 -> :sswitch_54f
        0x24 -> :sswitch_56a
        0x25 -> :sswitch_589
        0x26 -> :sswitch_5a8
        0x27 -> :sswitch_5c5
        0x28 -> :sswitch_5f1
        0x29 -> :sswitch_619
        0x2a -> :sswitch_646
        0x2b -> :sswitch_676
        0x2c -> :sswitch_69e
        0x2d -> :sswitch_6d6
        0x2e -> :sswitch_6fe
        0x2f -> :sswitch_717
        0x30 -> :sswitch_732
        0x31 -> :sswitch_76c
        0x32 -> :sswitch_789
        0x33 -> :sswitch_799
        0x34 -> :sswitch_7c5
        0x35 -> :sswitch_7f1
        0x36 -> :sswitch_81d
        0x37 -> :sswitch_847
        0x38 -> :sswitch_869
        0x39 -> :sswitch_88b
        0x3a -> :sswitch_8b8
        0x3b -> :sswitch_8da
        0x3c -> :sswitch_91c
        0x3d -> :sswitch_946
        0x3e -> :sswitch_96e
        0x3f -> :sswitch_993
        0x40 -> :sswitch_9c7
        0x41 -> :sswitch_9ef
        0x42 -> :sswitch_a10
        0x43 -> :sswitch_a36
        0x44 -> :sswitch_a5e
        0x45 -> :sswitch_a9a
        0x46 -> :sswitch_ab5
        0x47 -> :sswitch_ad0
        0x48 -> :sswitch_ae3
        0x49 -> :sswitch_afe
        0x4a -> :sswitch_b30
        0x4b -> :sswitch_b6e
        0x4c -> :sswitch_b94
        0x4d -> :sswitch_bbe
        0x4e -> :sswitch_bea
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
