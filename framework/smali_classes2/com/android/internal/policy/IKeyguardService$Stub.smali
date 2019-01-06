.class public abstract Lcom/android/internal/policy/IKeyguardService$Stub;
.super Landroid/os/Binder;
.source "IKeyguardService.java"

# interfaces
.implements Lcom/android/internal/policy/IKeyguardService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/IKeyguardService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardService"

.field static final TRANSACTION_OnDoubleClickHome:I = 0x15

.field static final TRANSACTION_addStateMonitorCallback:I = 0x2

.field static final TRANSACTION_dismiss:I = 0x4

.field static final TRANSACTION_doKeyguardTimeout:I = 0x11

.field static final TRANSACTION_onBootCompleted:I = 0x14

.field static final TRANSACTION_onDreamingStarted:I = 0x5

.field static final TRANSACTION_onDreamingStopped:I = 0x6

.field static final TRANSACTION_onFinishedGoingToSleep:I = 0x8

.field static final TRANSACTION_onFinishedWakingUp:I = 0xa

.field static final TRANSACTION_onScreenTurnedOff:I = 0xe

.field static final TRANSACTION_onScreenTurnedOn:I = 0xc

.field static final TRANSACTION_onScreenTurningOff:I = 0xd

.field static final TRANSACTION_onScreenTurningOn:I = 0xb

.field static final TRANSACTION_onShortPowerPressedGoHome:I = 0x17

.field static final TRANSACTION_onStartedGoingToSleep:I = 0x7

.field static final TRANSACTION_onStartedWakingUp:I = 0x9

.field static final TRANSACTION_onSystemReady:I = 0x10

.field static final TRANSACTION_setCurrentUser:I = 0x13

.field static final TRANSACTION_setKeyguardEnabled:I = 0xf

.field static final TRANSACTION_setOccluded:I = 0x1

.field static final TRANSACTION_setSwitchingUser:I = 0x12

.field static final TRANSACTION_startKeyguardExitAnimation:I = 0x16

.field static final TRANSACTION_verifyUnlock:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.policy.IKeyguardService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/policy/IKeyguardService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.policy.IKeyguardService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/policy/IKeyguardService;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/policy/IKeyguardService;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/IKeyguardService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_1b0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_8
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_12
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2d

    const/4 v10, 0x1

    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2f

    const/4 v11, 0x1

    :goto_28
    invoke-virtual {p0, v10, v11}, Lcom/android/internal/policy/IKeyguardService$Stub;->setOccluded(ZZ)V

    const/4 v14, 0x1

    return v14

    :cond_2d
    const/4 v10, 0x0

    goto :goto_21

    :cond_2f
    const/4 v11, 0x0

    goto :goto_28

    :sswitch_31
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/IKeyguardStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardStateCallback;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/IKeyguardService$Stub;->addStateMonitorCallback(Lcom/android/internal/policy/IKeyguardStateCallback;)V

    const/4 v14, 0x1

    return v14

    :sswitch_46
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/IKeyguardExitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardExitCallback;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/IKeyguardService$Stub;->verifyUnlock(Lcom/android/internal/policy/IKeyguardExitCallback;)V

    const/4 v14, 0x1

    return v14

    :sswitch_5b
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/IKeyguardService$Stub;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    const/4 v14, 0x1

    return v14

    :sswitch_70
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStarted()V

    const/4 v14, 0x1

    return v14

    :sswitch_7d
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onDreamingStopped()V

    const/4 v14, 0x1

    return v14

    :sswitch_8a
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedGoingToSleep(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_9b
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_b3

    const/4 v11, 0x1

    :goto_ae
    invoke-virtual {p0, v2, v11}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedGoingToSleep(IZ)V

    const/4 v14, 0x1

    return v14

    :cond_b3
    const/4 v11, 0x0

    goto :goto_ae

    :sswitch_b5
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onStartedWakingUp()V

    const/4 v14, 0x1

    return v14

    :sswitch_c2
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onFinishedWakingUp()V

    const/4 v14, 0x1

    return v14

    :sswitch_cf
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDrawnCallback;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOn(Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    const/4 v14, 0x1

    return v14

    :sswitch_e4
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOn()V

    const/4 v14, 0x1

    return v14

    :sswitch_f1
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurningOff()V

    const/4 v14, 0x1

    return v14

    :sswitch_fe
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onScreenTurnedOff()V

    const/4 v14, 0x1

    return v14

    :sswitch_10b
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_11f

    const/4 v10, 0x1

    :goto_11a
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->setKeyguardEnabled(Z)V

    const/4 v14, 0x1

    return v14

    :cond_11f
    const/4 v10, 0x0

    goto :goto_11a

    :sswitch_121
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onSystemReady()V

    const/4 v14, 0x1

    return v14

    :sswitch_12e
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_14b

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    :goto_146
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/IKeyguardService$Stub;->doKeyguardTimeout(Landroid/os/Bundle;)V

    const/4 v14, 0x1

    return v14

    :cond_14b
    const/4 v3, 0x0

    goto :goto_146

    :sswitch_14d
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_161

    const/4 v10, 0x1

    :goto_15c
    invoke-virtual {p0, v10}, Lcom/android/internal/policy/IKeyguardService$Stub;->setSwitchingUser(Z)V

    const/4 v14, 0x1

    return v14

    :cond_161
    const/4 v10, 0x0

    goto :goto_15c

    :sswitch_163
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/IKeyguardService$Stub;->setCurrentUser(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_174
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onBootCompleted()V

    const/4 v14, 0x1

    return v14

    :sswitch_181
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->OnDoubleClickHome()V

    const/4 v14, 0x1

    return v14

    :sswitch_18e
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual {p0, v4, v5, v12, v13}, Lcom/android/internal/policy/IKeyguardService$Stub;->startKeyguardExitAnimation(JJ)V

    const/4 v14, 0x1

    return v14

    :sswitch_1a3
    const-string/jumbo v14, "com.android.internal.policy.IKeyguardService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/IKeyguardService$Stub;->onShortPowerPressedGoHome()V

    const/4 v14, 0x1

    return v14

    :sswitch_data_1b0
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_31
        0x3 -> :sswitch_46
        0x4 -> :sswitch_5b
        0x5 -> :sswitch_70
        0x6 -> :sswitch_7d
        0x7 -> :sswitch_8a
        0x8 -> :sswitch_9b
        0x9 -> :sswitch_b5
        0xa -> :sswitch_c2
        0xb -> :sswitch_cf
        0xc -> :sswitch_e4
        0xd -> :sswitch_f1
        0xe -> :sswitch_fe
        0xf -> :sswitch_10b
        0x10 -> :sswitch_121
        0x11 -> :sswitch_12e
        0x12 -> :sswitch_14d
        0x13 -> :sswitch_163
        0x14 -> :sswitch_174
        0x15 -> :sswitch_181
        0x16 -> :sswitch_18e
        0x17 -> :sswitch_1a3
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
