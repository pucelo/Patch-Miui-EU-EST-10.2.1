.class public abstract Lcom/android/internal/telephony/IPhoneStateListener$Stub;
.super Landroid/os/Binder;
.source "IPhoneStateListener.java"

# interfaces
.implements Lcom/android/internal/telephony/IPhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IPhoneStateListener"

.field static final TRANSACTION_onCallForwardingIndicatorChanged:I = 0x4

.field static final TRANSACTION_onCallStateChanged:I = 0x6

.field static final TRANSACTION_onCarrierNetworkChange:I = 0x13

.field static final TRANSACTION_onCellInfoChanged:I = 0xb

.field static final TRANSACTION_onCellLocationChanged:I = 0x5

.field static final TRANSACTION_onDataActivationStateChanged:I = 0x11

.field static final TRANSACTION_onDataActivity:I = 0x8

.field static final TRANSACTION_onDataConnectionRealTimeInfoChanged:I = 0xe

.field static final TRANSACTION_onDataConnectionStateChanged:I = 0x7

.field static final TRANSACTION_onMessageWaitingIndicatorChanged:I = 0x3

.field static final TRANSACTION_onOemHookRawEvent:I = 0x12

.field static final TRANSACTION_onOtaspChanged:I = 0xa

.field static final TRANSACTION_onPreciseCallStateChanged:I = 0xc

.field static final TRANSACTION_onPreciseDataConnectionStateChanged:I = 0xd

.field static final TRANSACTION_onServiceStateChanged:I = 0x1

.field static final TRANSACTION_onSignalStrengthChanged:I = 0x2

.field static final TRANSACTION_onSignalStrengthsChanged:I = 0x9

.field static final TRANSACTION_onVoLteServiceStateChanged:I = 0xf

.field static final TRANSACTION_onVoiceActivationStateChanged:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telephony.IPhoneStateListener"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneStateListener;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.telephony.IPhoneStateListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/IPhoneStateListener;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/telephony/IPhoneStateListener;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/IPhoneStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_1d2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_8
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_12
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_2f

    sget-object v14, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/ServiceState;

    :goto_2a
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    const/4 v14, 0x1

    return v14

    :cond_2f
    const/4 v6, 0x0

    goto :goto_2a

    :sswitch_31
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthChanged(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_42
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_56

    const/4 v10, 0x1

    :goto_51
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onMessageWaitingIndicatorChanged(Z)V

    const/4 v14, 0x1

    return v14

    :cond_56
    const/4 v10, 0x0

    goto :goto_51

    :sswitch_58
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_6c

    const/4 v10, 0x1

    :goto_67
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallForwardingIndicatorChanged(Z)V

    const/4 v14, 0x1

    return v14

    :cond_6c
    const/4 v10, 0x0

    goto :goto_67

    :sswitch_6e
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8b

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :goto_86
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellLocationChanged(Landroid/os/Bundle;)V

    const/4 v14, 0x1

    return v14

    :cond_8b
    const/4 v2, 0x0

    goto :goto_86

    :sswitch_8d
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v1, v13}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCallStateChanged(ILjava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_a2
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {p0, v1, v12}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionStateChanged(II)V

    const/4 v14, 0x1

    return v14

    :sswitch_b7
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivity(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_c8
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_e5

    sget-object v14, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SignalStrength;

    :goto_e0
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    const/4 v14, 0x1

    return v14

    :cond_e5
    const/4 v7, 0x0

    goto :goto_e0

    :sswitch_e7
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOtaspChanged(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_f8
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v14, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCellInfoChanged(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    :sswitch_10d
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_12a

    sget-object v14, Landroid/telephony/PreciseCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/PreciseCallState;

    :goto_125
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V

    const/4 v14, 0x1

    return v14

    :cond_12a
    const/4 v4, 0x0

    goto :goto_125

    :sswitch_12c
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_149

    sget-object v14, Landroid/telephony/PreciseDataConnectionState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/PreciseDataConnectionState;

    :goto_144
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V

    const/4 v14, 0x1

    return v14

    :cond_149
    const/4 v5, 0x0

    goto :goto_144

    :sswitch_14b
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_168

    sget-object v14, Landroid/telephony/DataConnectionRealTimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/DataConnectionRealTimeInfo;

    :goto_163
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V

    const/4 v14, 0x1

    return v14

    :cond_168
    const/4 v3, 0x0

    goto :goto_163

    :sswitch_16a
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_187

    sget-object v14, Landroid/telephony/VoLteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/VoLteServiceState;

    :goto_182
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V

    const/4 v14, 0x1

    return v14

    :cond_187
    const/4 v8, 0x0

    goto :goto_182

    :sswitch_189
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onVoiceActivationStateChanged(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_19a
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onDataActivationStateChanged(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_1ab
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onOemHookRawEvent([B)V

    const/4 v14, 0x1

    return v14

    :sswitch_1bc
    const-string/jumbo v14, "com.android.internal.telephony.IPhoneStateListener"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1d0

    const/4 v10, 0x1

    :goto_1cb
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/IPhoneStateListener$Stub;->onCarrierNetworkChange(Z)V

    const/4 v14, 0x1

    return v14

    :cond_1d0
    const/4 v10, 0x0

    goto :goto_1cb

    :sswitch_data_1d2
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_31
        0x3 -> :sswitch_42
        0x4 -> :sswitch_58
        0x5 -> :sswitch_6e
        0x6 -> :sswitch_8d
        0x7 -> :sswitch_a2
        0x8 -> :sswitch_b7
        0x9 -> :sswitch_c8
        0xa -> :sswitch_e7
        0xb -> :sswitch_f8
        0xc -> :sswitch_10d
        0xd -> :sswitch_12c
        0xe -> :sswitch_14b
        0xf -> :sswitch_16a
        0x10 -> :sswitch_189
        0x11 -> :sswitch_19a
        0x12 -> :sswitch_1ab
        0x13 -> :sswitch_1bc
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
