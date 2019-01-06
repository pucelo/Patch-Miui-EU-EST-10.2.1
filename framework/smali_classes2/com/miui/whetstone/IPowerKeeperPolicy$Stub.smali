.class public abstract Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;
.super Landroid/os/Binder;
.source "IPowerKeeperPolicy.java"

# interfaces
.implements Lcom/miui/whetstone/IPowerKeeperPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IPowerKeeperPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IPowerKeeperPolicy"

.field static final TRANSACTION_enableATrace:I = 0x12

.field static final TRANSACTION_getAlarmPolicies:I = 0x4

.field static final TRANSACTION_getAppBroadcastControlStat:I = 0xe

.field static final TRANSACTION_getBroadcastPolicies:I = 0x2

.field static final TRANSACTION_isLeScanAllowed:I = 0xa

.field static final TRANSACTION_offerPowerKeeperIBinder:I = 0x6

.field static final TRANSACTION_setAlarmPolicy:I = 0x3

.field static final TRANSACTION_setAppBGIdleFeatureEnable:I = 0x10

.field static final TRANSACTION_setAppBGIdleLevel:I = 0x11

.field static final TRANSACTION_setAppBroadcastControlStat:I = 0xd

.field static final TRANSACTION_setAppPushAlarmLeader:I = 0x8

.field static final TRANSACTION_setAppPushAlarmProperty:I = 0x7

.field static final TRANSACTION_setBroadcastPolicy:I = 0x1

.field static final TRANSACTION_setLeScanFeature:I = 0x9

.field static final TRANSACTION_setLeScanParam:I = 0xf

.field static final TRANSACTION_startLeScan:I = 0xb

.field static final TRANSACTION_stopLeScan:I = 0xc

.field static final TRANSACTION_updateWakelockBlockedUid:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IPowerKeeperPolicy;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.miui.whetstone.IPowerKeeperPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/miui/whetstone/IPowerKeeperPolicy;

    return-object v0

    :cond_14
    new-instance v1, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_252

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    :sswitch_8
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :sswitch_12
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v15, Lcom/miui/whetstone/BroadcastPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/miui/whetstone/BroadcastPolicy;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_35

    const/4 v10, 0x1

    :goto_2b
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v10}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setBroadcastPolicy([Lcom/miui/whetstone/BroadcastPolicy;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_35
    const/4 v10, 0x0

    goto :goto_2b

    :sswitch_37
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getBroadcastPolicies()[Lcom/miui/whetstone/BroadcastPolicy;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v15, 0x1

    return v15

    :sswitch_4e
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v15, Lcom/miui/whetstone/AlarmPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/miui/whetstone/AlarmPolicy;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_71

    const/4 v10, 0x1

    :goto_67
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAlarmPolicy([Lcom/miui/whetstone/AlarmPolicy;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_71
    const/4 v10, 0x0

    goto :goto_67

    :sswitch_73
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAlarmPolicies()[Lcom/miui/whetstone/AlarmPolicy;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v15}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    const/4 v15, 0x1

    return v15

    :sswitch_8a
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_ab

    const/4 v11, 0x1

    :goto_a1
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v9, v11}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->updateWakelockBlockedUid(ILjava/lang/String;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_ab
    const/4 v11, 0x0

    goto :goto_a1

    :sswitch_ad
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->offerPowerKeeperIBinder(Landroid/os/IBinder;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_c3
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_f0

    sget-object v15, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    :goto_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_f2

    const/4 v11, 0x1

    :goto_e6
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8, v11}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmProperty(ILandroid/content/Intent;Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_f0
    const/4 v8, 0x0

    goto :goto_df

    :cond_f2
    const/4 v11, 0x0

    goto :goto_e6

    :sswitch_f4
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_11a

    sget-object v15, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    :goto_110
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v8}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppPushAlarmLeader(ILandroid/content/Intent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_11a
    const/4 v8, 0x0

    goto :goto_110

    :sswitch_11c
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_135

    const/4 v4, 0x1

    :goto_12b
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanFeature(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_135
    const/4 v4, 0x0

    goto :goto_12b

    :sswitch_137
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->isLeScanAllowed(I)Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_156

    const/4 v15, 0x1

    :goto_14f
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    return v15

    :cond_156
    const/4 v15, 0x0

    goto :goto_14f

    :sswitch_158
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_177

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_170
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->startLeScan(Landroid/os/Bundle;)V

    const/4 v15, 0x1

    return v15

    :cond_177
    const/4 v2, 0x0

    goto :goto_170

    :sswitch_179
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_198

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_191
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->stopLeScan(Landroid/os/Bundle;)V

    const/4 v15, 0x1

    return v15

    :cond_198
    const/4 v2, 0x0

    goto :goto_191

    :sswitch_19a
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1b7

    const/4 v10, 0x1

    :goto_1ad
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v10}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBroadcastControlStat(IZ)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_1b7
    const/4 v10, 0x0

    goto :goto_1ad

    :sswitch_1b9
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->getAppBroadcastControlStat(I)Z

    move-result v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v12, :cond_1d8

    const/4 v15, 0x1

    :goto_1d1
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v15, 0x1

    return v15

    :cond_1d8
    const/4 v15, 0x0

    goto :goto_1d1

    :sswitch_1da
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1fc

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_1f2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setLeScanParam(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_1fc
    const/4 v2, 0x0

    goto :goto_1f2

    :sswitch_1fe
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_217

    const/4 v4, 0x1

    :goto_20d
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleFeatureEnable(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_217
    const/4 v4, 0x0

    goto :goto_20d

    :sswitch_219
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v7}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->setAppBGIdleLevel(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_233
    const-string/jumbo v15, "com.miui.whetstone.IPowerKeeperPolicy"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_250

    const/4 v4, 0x1

    :goto_242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lcom/miui/whetstone/IPowerKeeperPolicy$Stub;->enableATrace(ZLjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_250
    const/4 v4, 0x0

    goto :goto_242

    :sswitch_data_252
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_37
        0x3 -> :sswitch_4e
        0x4 -> :sswitch_73
        0x5 -> :sswitch_8a
        0x6 -> :sswitch_ad
        0x7 -> :sswitch_c3
        0x8 -> :sswitch_f4
        0x9 -> :sswitch_11c
        0xa -> :sswitch_137
        0xb -> :sswitch_158
        0xc -> :sswitch_179
        0xd -> :sswitch_19a
        0xe -> :sswitch_1b9
        0xf -> :sswitch_1da
        0x10 -> :sswitch_1fe
        0x11 -> :sswitch_219
        0x12 -> :sswitch_233
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
