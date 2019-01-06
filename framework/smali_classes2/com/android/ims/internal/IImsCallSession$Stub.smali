.class public abstract Lcom/android/ims/internal/IImsCallSession$Stub;
.super Landroid/os/Binder;
.source "IImsCallSession.java"

# interfaces
.implements Lcom/android/ims/internal/IImsCallSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsCallSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsCallSession"

.field static final TRANSACTION_accept:I = 0xd

.field static final TRANSACTION_close:I = 0x1

.field static final TRANSACTION_extendToConference:I = 0x14

.field static final TRANSACTION_getCallId:I = 0x2

.field static final TRANSACTION_getCallProfile:I = 0x3

.field static final TRANSACTION_getLocalCallProfile:I = 0x4

.field static final TRANSACTION_getProperty:I = 0x6

.field static final TRANSACTION_getRemoteCallProfile:I = 0x5

.field static final TRANSACTION_getState:I = 0x7

.field static final TRANSACTION_getVideoCallProvider:I = 0x1b

.field static final TRANSACTION_hold:I = 0x10

.field static final TRANSACTION_inviteParticipants:I = 0x15

.field static final TRANSACTION_isInCall:I = 0x8

.field static final TRANSACTION_isMultiparty:I = 0x1c

.field static final TRANSACTION_merge:I = 0x12

.field static final TRANSACTION_reject:I = 0xe

.field static final TRANSACTION_removeParticipants:I = 0x16

.field static final TRANSACTION_resume:I = 0x11

.field static final TRANSACTION_sendDtmf:I = 0x17

.field static final TRANSACTION_sendRttMessage:I = 0x1f

.field static final TRANSACTION_sendRttModifyRequest:I = 0x1d

.field static final TRANSACTION_sendRttModifyResponse:I = 0x1e

.field static final TRANSACTION_sendUssd:I = 0x1a

.field static final TRANSACTION_setListener:I = 0x9

.field static final TRANSACTION_setMute:I = 0xa

.field static final TRANSACTION_start:I = 0xb

.field static final TRANSACTION_startConference:I = 0xc

.field static final TRANSACTION_startDtmf:I = 0x18

.field static final TRANSACTION_stopDtmf:I = 0x19

.field static final TRANSACTION_terminate:I = 0xf

.field static final TRANSACTION_update:I = 0x13


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.IImsCallSession"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsCallSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.ims.internal.IImsCallSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsCallSession;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/ims/internal/IImsCallSession;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsCallSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_424

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v18

    return v18

    :sswitch_8
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_15
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->close()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_28
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_43
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_6b

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_68
    const/16 v18, 0x1

    return v18

    :cond_6b
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_68

    :sswitch_75
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getLocalCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_9d

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_9a
    const/16 v18, 0x1

    return v18

    :cond_9d
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9a

    :sswitch_a7
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getRemoteCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v14, :cond_cf

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v14, v0, v1}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_cc
    const/16 v18, 0x1

    return v18

    :cond_cf
    const/16 v18, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_cc

    :sswitch_d9
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/ims/internal/IImsCallSession$Stub;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_fa
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getState()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    return v18

    :sswitch_113
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isInCall()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_132

    const/16 v18, 0x1

    :goto_128
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    return v18

    :cond_132
    const/16 v18, 0x0

    goto :goto_128

    :sswitch_135
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/ims/internal/IImsCallSession$Stub;->setListener(Lcom/android/ims/internal/IImsCallSessionListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_152
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_16e

    const/4 v8, 0x1

    :goto_163
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/ims/internal/IImsCallSession$Stub;->setMute(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_16e
    const/4 v8, 0x0

    goto :goto_163

    :sswitch_170
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_19b

    sget-object v18, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ims/ImsCallProfile;

    :goto_190
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Lcom/android/ims/internal/IImsCallSession$Stub;->start(Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_19b
    const/4 v11, 0x0

    goto :goto_190

    :sswitch_19d
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1c8

    sget-object v18, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/ims/ImsCallProfile;

    :goto_1bd
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v11}, Lcom/android/ims/internal/IImsCallSession$Stub;->startConference([Ljava/lang/String;Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_1c8
    const/4 v11, 0x0

    goto :goto_1bd

    :sswitch_1ca
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1f5

    sget-object v18, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/ims/ImsStreamMediaProfile;

    :goto_1ea
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/ims/internal/IImsCallSession$Stub;->accept(ILcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_1f5
    const/4 v12, 0x0

    goto :goto_1ea

    :sswitch_1f7
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->reject(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_210
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->terminate(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_229
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_250

    sget-object v18, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/ImsStreamMediaProfile;

    :goto_245
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->hold(Lcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_250
    const/4 v5, 0x0

    goto :goto_245

    :sswitch_252
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_279

    sget-object v18, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ims/ImsStreamMediaProfile;

    :goto_26e
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/ims/internal/IImsCallSession$Stub;->resume(Lcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_279
    const/4 v5, 0x0

    goto :goto_26e

    :sswitch_27b
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->merge()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_28e
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_2b9

    sget-object v18, Lcom/android/ims/ImsStreamMediaProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/ims/ImsStreamMediaProfile;

    :goto_2ae
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lcom/android/ims/internal/IImsCallSession$Stub;->update(ILcom/android/ims/ImsStreamMediaProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_2b9
    const/4 v12, 0x0

    goto :goto_2ae

    :sswitch_2bb
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/ims/internal/IImsCallSession$Stub;->extendToConference([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_2d4
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/ims/internal/IImsCallSession$Stub;->inviteParticipants([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_2ed
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/ims/internal/IImsCallSession$Stub;->removeParticipants([Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_306
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v0, v18

    int-to-char v2, v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_334

    sget-object v18, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    :goto_329
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendDtmf(CLandroid/os/Message;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_334
    const/4 v10, 0x0

    goto :goto_329

    :sswitch_336
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    move/from16 v0, v18

    int-to-char v2, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/ims/internal/IImsCallSession$Stub;->startDtmf(C)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_352
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->stopDtmf()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_365
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendUssd(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_37e
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;

    move-result-object v15

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v15, :cond_39f

    invoke-interface {v15}, Lcom/android/ims/internal/IImsVideoCallProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    :goto_395
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/16 v18, 0x1

    return v18

    :cond_39f
    const/16 v18, 0x0

    goto :goto_395

    :sswitch_3a2
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/ims/internal/IImsCallSession$Stub;->isMultiparty()Z

    move-result v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_3c1

    const/16 v18, 0x1

    :goto_3b7
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v18, 0x1

    return v18

    :cond_3c1
    const/16 v18, 0x0

    goto :goto_3b7

    :sswitch_3c4
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_3eb

    sget-object v18, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/ims/ImsCallProfile;

    :goto_3e0
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyRequest(Lcom/android/ims/ImsCallProfile;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_3eb
    const/4 v4, 0x0

    goto :goto_3e0

    :sswitch_3ed
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_409

    const/4 v8, 0x1

    :goto_3fe
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttModifyResponse(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :cond_409
    const/4 v8, 0x0

    goto :goto_3fe

    :sswitch_40b
    const-string/jumbo v18, "com.android.ims.internal.IImsCallSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/ims/internal/IImsCallSession$Stub;->sendRttMessage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v18, 0x1

    return v18

    :sswitch_data_424
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_28
        0x3 -> :sswitch_43
        0x4 -> :sswitch_75
        0x5 -> :sswitch_a7
        0x6 -> :sswitch_d9
        0x7 -> :sswitch_fa
        0x8 -> :sswitch_113
        0x9 -> :sswitch_135
        0xa -> :sswitch_152
        0xb -> :sswitch_170
        0xc -> :sswitch_19d
        0xd -> :sswitch_1ca
        0xe -> :sswitch_1f7
        0xf -> :sswitch_210
        0x10 -> :sswitch_229
        0x11 -> :sswitch_252
        0x12 -> :sswitch_27b
        0x13 -> :sswitch_28e
        0x14 -> :sswitch_2bb
        0x15 -> :sswitch_2d4
        0x16 -> :sswitch_2ed
        0x17 -> :sswitch_306
        0x18 -> :sswitch_336
        0x19 -> :sswitch_352
        0x1a -> :sswitch_365
        0x1b -> :sswitch_37e
        0x1c -> :sswitch_3a2
        0x1d -> :sswitch_3c4
        0x1e -> :sswitch_3ed
        0x1f -> :sswitch_40b
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
