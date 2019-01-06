.class public abstract Lcom/android/internal/telecom/IInCallAdapter$Stub;
.super Landroid/os/Binder;
.source "IInCallAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IInCallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IInCallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInCallAdapter"

.field static final TRANSACTION_answerCall:I = 0x1

.field static final TRANSACTION_conference:I = 0xc

.field static final TRANSACTION_disconnectCall:I = 0x3

.field static final TRANSACTION_holdCall:I = 0x4

.field static final TRANSACTION_mergeConference:I = 0xe

.field static final TRANSACTION_mute:I = 0x6

.field static final TRANSACTION_phoneAccountSelected:I = 0xb

.field static final TRANSACTION_playDtmfTone:I = 0x8

.field static final TRANSACTION_postDialContinue:I = 0xa

.field static final TRANSACTION_pullExternalCall:I = 0x12

.field static final TRANSACTION_putExtras:I = 0x14

.field static final TRANSACTION_rejectCall:I = 0x2

.field static final TRANSACTION_removeExtras:I = 0x15

.field static final TRANSACTION_respondToRttRequest:I = 0x17

.field static final TRANSACTION_sendCallEvent:I = 0x13

.field static final TRANSACTION_sendRttRequest:I = 0x16

.field static final TRANSACTION_setAudioRoute:I = 0x7

.field static final TRANSACTION_setRttMode:I = 0x19

.field static final TRANSACTION_splitFromConference:I = 0xd

.field static final TRANSACTION_stopDtmfTone:I = 0x9

.field static final TRANSACTION_stopRtt:I = 0x18

.field static final TRANSACTION_swapConference:I = 0xf

.field static final TRANSACTION_turnOffProximitySensor:I = 0x11

.field static final TRANSACTION_turnOnProximitySensor:I = 0x10

.field static final TRANSACTION_unholdCall:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.telecom.IInCallAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/IInCallAdapter;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.telecom.IInCallAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telecom/IInCallAdapter;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/telecom/IInCallAdapter;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_23c

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_8
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_12
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->answerCall(Ljava/lang/String;I)V

    const/4 v14, 0x1

    return v14

    :sswitch_27
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_43

    const/4 v10, 0x1

    :goto_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v2, v10, v12}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :cond_43
    const/4 v10, 0x0

    goto :goto_3a

    :sswitch_45
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->disconnectCall(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_56
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->holdCall(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_67
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->unholdCall(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_78
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_8c

    const/4 v3, 0x1

    :goto_87
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mute(Z)V

    const/4 v14, 0x1

    return v14

    :cond_8c
    const/4 v3, 0x0

    goto :goto_87

    :sswitch_8e
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setAudioRoute(I)V

    const/4 v14, 0x1

    return v14

    :sswitch_9f
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    int-to-char v4, v14

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->playDtmfTone(Ljava/lang/String;C)V

    const/4 v14, 0x1

    return v14

    :sswitch_b5
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopDtmfTone(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_c6
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_de

    const/4 v10, 0x1

    :goto_d9
    invoke-virtual {p0, v2, v10}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->postDialContinue(Ljava/lang/String;Z)V

    const/4 v14, 0x1

    return v14

    :cond_de
    const/4 v10, 0x0

    goto :goto_d9

    :sswitch_e0
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_108

    sget-object v14, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    :goto_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_10a

    const/4 v13, 0x1

    :goto_103
    invoke-virtual {p0, v2, v7, v13}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    const/4 v14, 0x1

    return v14

    :cond_108
    const/4 v7, 0x0

    goto :goto_fc

    :cond_10a
    const/4 v13, 0x0

    goto :goto_103

    :sswitch_10c
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v2, v8}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->conference(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_121
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->splitFromConference(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_132
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->mergeConference(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_143
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->swapConference(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_154
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOnProximitySensor()V

    const/4 v14, 0x1

    return v14

    :sswitch_161
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_175

    const/4 v3, 0x1

    :goto_170
    invoke-virtual {p0, v3}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->turnOffProximitySensor(Z)V

    const/4 v14, 0x1

    return v14

    :cond_175
    const/4 v3, 0x0

    goto :goto_170

    :sswitch_177
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->pullExternalCall(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_188
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1ad

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    :goto_1a8
    invoke-virtual {p0, v2, v8, v11}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v14, 0x1

    return v14

    :cond_1ad
    const/4 v11, 0x0

    goto :goto_1a8

    :sswitch_1af
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1d0

    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v14, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    :goto_1cb
    invoke-virtual {p0, v2, v6}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->putExtras(Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v14, 0x1

    return v14

    :cond_1d0
    const/4 v6, 0x0

    goto :goto_1cb

    :sswitch_1d2
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {p0, v2, v9}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->removeExtras(Ljava/lang/String;Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1e7
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->sendRttRequest(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1f8
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_214

    const/4 v13, 0x1

    :goto_20f
    invoke-virtual {p0, v2, v5, v13}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->respondToRttRequest(Ljava/lang/String;IZ)V

    const/4 v14, 0x1

    return v14

    :cond_214
    const/4 v13, 0x0

    goto :goto_20f

    :sswitch_216
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->stopRtt(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_227
    const-string/jumbo v14, "com.android.internal.telecom.IInCallAdapter"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telecom/IInCallAdapter$Stub;->setRttMode(Ljava/lang/String;I)V

    const/4 v14, 0x1

    return v14

    :sswitch_data_23c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_27
        0x3 -> :sswitch_45
        0x4 -> :sswitch_56
        0x5 -> :sswitch_67
        0x6 -> :sswitch_78
        0x7 -> :sswitch_8e
        0x8 -> :sswitch_9f
        0x9 -> :sswitch_b5
        0xa -> :sswitch_c6
        0xb -> :sswitch_e0
        0xc -> :sswitch_10c
        0xd -> :sswitch_121
        0xe -> :sswitch_132
        0xf -> :sswitch_143
        0x10 -> :sswitch_154
        0x11 -> :sswitch_161
        0x12 -> :sswitch_177
        0x13 -> :sswitch_188
        0x14 -> :sswitch_1af
        0x15 -> :sswitch_1d2
        0x16 -> :sswitch_1e7
        0x17 -> :sswitch_1f8
        0x18 -> :sswitch_216
        0x19 -> :sswitch_227
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
