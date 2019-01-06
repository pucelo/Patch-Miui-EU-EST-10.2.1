.class public abstract Lcom/android/ims/internal/IImsServiceController$Stub;
.super Landroid/os/Binder;
.source "IImsServiceController.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.ims.internal.IImsServiceController"

.field static final TRANSACTION_addRegistrationListener:I = 0x8

.field static final TRANSACTION_createCallProfile:I = 0xa

.field static final TRANSACTION_createCallSession:I = 0xb

.field static final TRANSACTION_createImsFeature:I = 0x1

.field static final TRANSACTION_endSession:I = 0x4

.field static final TRANSACTION_getConfigInterface:I = 0xe

.field static final TRANSACTION_getEcbmInterface:I = 0x11

.field static final TRANSACTION_getFeatureStatus:I = 0x7

.field static final TRANSACTION_getMultiEndpointInterface:I = 0x13

.field static final TRANSACTION_getPendingCallSession:I = 0xc

.field static final TRANSACTION_getUtInterface:I = 0xd

.field static final TRANSACTION_isConnected:I = 0x5

.field static final TRANSACTION_isOpened:I = 0x6

.field static final TRANSACTION_removeImsFeature:I = 0x2

.field static final TRANSACTION_removeRegistrationListener:I = 0x9

.field static final TRANSACTION_setUiTTYMode:I = 0x12

.field static final TRANSACTION_startSession:I = 0x3

.field static final TRANSACTION_turnOffIms:I = 0x10

.field static final TRANSACTION_turnOnIms:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {p0, p0, v0}, Lcom/android/ims/internal/IImsServiceController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceController;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.ims.internal.IImsServiceController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/ims/internal/IImsServiceController;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/ims/internal/IImsServiceController;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_32e

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    :sswitch_8
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    return v2

    :sswitch_12
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lcom/android/ims/internal/IImsServiceController$Stub;->createImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_34
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsFeatureStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsFeatureStatusCallback;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v15}, Lcom/android/ims/internal/IImsServiceController$Stub;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_56
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_92

    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v4, v14, v1}, Lcom/android/ims/internal/IImsServiceController$Stub;->startSession(IILandroid/app/PendingIntent;Lcom/android/ims/internal/IImsRegistrationListener;)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_92
    const/4 v14, 0x0

    goto :goto_76

    :sswitch_94
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/ims/internal/IImsServiceController$Stub;->endSession(III)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_b2
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/android/ims/internal/IImsServiceController$Stub;->isConnected(IIII)Z

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_dd

    const/4 v2, 0x1

    :goto_d6
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_dd
    const/4 v2, 0x0

    goto :goto_d6

    :sswitch_df
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->isOpened(II)Z

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_102

    const/4 v2, 0x1

    :goto_fb
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :cond_102
    const/4 v2, 0x0

    goto :goto_fb

    :sswitch_104
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->getFeatureStatus(II)I

    move-result v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    return v2

    :sswitch_126
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/ims/internal/IImsServiceController$Stub;->addRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_14a
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v4, v1}, Lcom/android/ims/internal/IImsServiceController$Stub;->removeRegistrationListener(IILcom/android/ims/internal/IImsRegistrationListener;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_16e
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/ims/internal/IImsServiceController$Stub;->createCallProfile(IIIII)Lcom/android/ims/ImsCallProfile;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_1a5

    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1a3
    const/4 v2, 0x1

    return v2

    :cond_1a5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a3

    :sswitch_1ac
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1f1

    sget-object v2, Lcom/android/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/ims/ImsCallProfile;

    :goto_1d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/internal/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v13

    move-object/from16 v8, p0

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-virtual/range {v8 .. v13}, Lcom/android/ims/internal/IImsServiceController$Stub;->createCallSession(IIILcom/android/ims/ImsCallProfile;Lcom/android/ims/internal/IImsCallSessionListener;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_1f3

    invoke-interface/range {v22 .. v22}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_1ea
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    :cond_1f1
    const/4 v12, 0x0

    goto :goto_1d0

    :cond_1f3
    const/4 v2, 0x0

    goto :goto_1ea

    :sswitch_1f5
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/ims/internal/IImsServiceController$Stub;->getPendingCallSession(IIILjava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_225

    invoke-interface/range {v22 .. v22}, Lcom/android/ims/internal/IImsCallSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_21e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    :cond_225
    const/4 v2, 0x0

    goto :goto_21e

    :sswitch_227
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->getUtInterface(II)Lcom/android/ims/internal/IImsUt;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v26, :cond_24d

    invoke-interface/range {v26 .. v26}, Lcom/android/ims/internal/IImsUt;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_246
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    :cond_24d
    const/4 v2, 0x0

    goto :goto_246

    :sswitch_24f
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->getConfigInterface(II)Lcom/android/ims/internal/IImsConfig;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_275

    invoke-interface/range {v23 .. v23}, Lcom/android/ims/internal/IImsConfig;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_26e
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    :cond_275
    const/4 v2, 0x0

    goto :goto_26e

    :sswitch_277
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->turnOnIms(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_291
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->turnOffIms(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :sswitch_2ab
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->getEcbmInterface(II)Lcom/android/ims/internal/IImsEcbm;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_2d1

    invoke-interface/range {v24 .. v24}, Lcom/android/ims/internal/IImsEcbm;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_2ca
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    :cond_2d1
    const/4 v2, 0x0

    goto :goto_2ca

    :sswitch_2d3
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_303

    sget-object v2, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Message;

    :goto_2f7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/ims/internal/IImsServiceController$Stub;->setUiTTYMode(IIILandroid/os/Message;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v2, 0x1

    return v2

    :cond_303
    const/16 v17, 0x0

    goto :goto_2f7

    :sswitch_306
    const-string/jumbo v2, "com.android.ims.internal.IImsServiceController"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/ims/internal/IImsServiceController$Stub;->getMultiEndpointInterface(II)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_32c

    invoke-interface/range {v25 .. v25}, Lcom/android/ims/internal/IImsMultiEndpoint;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_325
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x1

    return v2

    :cond_32c
    const/4 v2, 0x0

    goto :goto_325

    :sswitch_data_32e
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_34
        0x3 -> :sswitch_56
        0x4 -> :sswitch_94
        0x5 -> :sswitch_b2
        0x6 -> :sswitch_df
        0x7 -> :sswitch_104
        0x8 -> :sswitch_126
        0x9 -> :sswitch_14a
        0xa -> :sswitch_16e
        0xb -> :sswitch_1ac
        0xc -> :sswitch_1f5
        0xd -> :sswitch_227
        0xe -> :sswitch_24f
        0xf -> :sswitch_277
        0x10 -> :sswitch_291
        0x11 -> :sswitch_2ab
        0x12 -> :sswitch_2d3
        0x13 -> :sswitch_306
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
