.class public abstract Landroid/service/trust/ITrustAgentService$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentService.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentService"

.field static final TRANSACTION_onConfigure:I = 0x6

.field static final TRANSACTION_onDeviceLocked:I = 0x4

.field static final TRANSACTION_onDeviceUnlocked:I = 0x5

.field static final TRANSACTION_onEscrowTokenAdded:I = 0x8

.field static final TRANSACTION_onEscrowTokenRemoved:I = 0xa

.field static final TRANSACTION_onTokenStateReceived:I = 0x9

.field static final TRANSACTION_onTrustTimeout:I = 0x3

.field static final TRANSACTION_onUnlockAttempt:I = 0x1

.field static final TRANSACTION_onUnlockLockout:I = 0x2

.field static final TRANSACTION_setCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.service.trust.ITrustAgentService"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.service.trust.ITrustAgentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/service/trust/ITrustAgentService;

    return-object v0

    :cond_14
    new-instance v1, Landroid/service/trust/ITrustAgentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_f2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    :sswitch_8
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :sswitch_12
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_28

    const/4 v7, 0x1

    :goto_21
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockAttempt(Z)V

    const/4 v15, 0x1

    return v15

    :cond_28
    const/4 v7, 0x0

    goto :goto_21

    :sswitch_2a
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockLockout(I)V

    const/4 v15, 0x1

    return v15

    :sswitch_3d
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/service/trust/ITrustAgentService$Stub;->onTrustTimeout()V

    const/4 v15, 0x1

    return v15

    :sswitch_4a
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceLocked()V

    const/4 v15, 0x1

    return v15

    :sswitch_57
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceUnlocked()V

    const/4 v15, 0x1

    return v15

    :sswitch_64
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v15, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Landroid/service/trust/ITrustAgentService$Stub;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    const/4 v15, 0x1

    return v15

    :sswitch_7f
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/service/trust/ITrustAgentService$Stub;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    const/4 v15, 0x1

    return v15

    :sswitch_96
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_bd

    sget-object v15, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserHandle;

    :goto_b6
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v11, v14}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    const/4 v15, 0x1

    return v15

    :cond_bd
    const/4 v14, 0x0

    goto :goto_b6

    :sswitch_bf
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v9}, Landroid/service/trust/ITrustAgentService$Stub;->onTokenStateReceived(JI)V

    const/4 v15, 0x1

    return v15

    :sswitch_d6
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_f0

    const/4 v13, 0x1

    :goto_e9
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v13}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenRemoved(JZ)V

    const/4 v15, 0x1

    return v15

    :cond_f0
    const/4 v13, 0x0

    goto :goto_e9

    :sswitch_data_f2
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_3d
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_57
        0x6 -> :sswitch_64
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_96
        0x9 -> :sswitch_bf
        0xa -> :sswitch_d6
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
