.class public abstract Landroid/media/session/ISessionController$Stub;
.super Landroid/os/Binder;
.source "ISessionController.java"

# interfaces
.implements Landroid/media/session/ISessionController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISessionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISessionController$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISessionController"

.field static final TRANSACTION_adjustVolume:I = 0xb

.field static final TRANSACTION_fastForward:I = 0x1a

.field static final TRANSACTION_getExtras:I = 0x23

.field static final TRANSACTION_getFlags:I = 0x9

.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8

.field static final TRANSACTION_getMetadata:I = 0x1f

.field static final TRANSACTION_getPackageName:I = 0x6

.field static final TRANSACTION_getPlaybackState:I = 0x20

.field static final TRANSACTION_getQueue:I = 0x21

.field static final TRANSACTION_getQueueTitle:I = 0x22

.field static final TRANSACTION_getRatingType:I = 0x24

.field static final TRANSACTION_getTag:I = 0x7

.field static final TRANSACTION_getVolumeAttributes:I = 0xa

.field static final TRANSACTION_isTransportControlEnabled:I = 0x5

.field static final TRANSACTION_next:I = 0x18

.field static final TRANSACTION_pause:I = 0x16

.field static final TRANSACTION_play:I = 0x11

.field static final TRANSACTION_playFromMediaId:I = 0x12

.field static final TRANSACTION_playFromSearch:I = 0x13

.field static final TRANSACTION_playFromUri:I = 0x14

.field static final TRANSACTION_prepare:I = 0xd

.field static final TRANSACTION_prepareFromMediaId:I = 0xe

.field static final TRANSACTION_prepareFromSearch:I = 0xf

.field static final TRANSACTION_prepareFromUri:I = 0x10

.field static final TRANSACTION_previous:I = 0x19

.field static final TRANSACTION_rate:I = 0x1d

.field static final TRANSACTION_registerCallbackListener:I = 0x3

.field static final TRANSACTION_rewind:I = 0x1b

.field static final TRANSACTION_seekTo:I = 0x1c

.field static final TRANSACTION_sendCommand:I = 0x1

.field static final TRANSACTION_sendCustomAction:I = 0x1e

.field static final TRANSACTION_sendMediaButton:I = 0x2

.field static final TRANSACTION_setVolumeTo:I = 0xc

.field static final TRANSACTION_skipToQueueItem:I = 0x15

.field static final TRANSACTION_stop:I = 0x17

.field static final TRANSACTION_unregisterCallbackListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.session.ISessionController"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISessionController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionController;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.session.ISessionController"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISessionController;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/session/ISessionController;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/session/ISessionController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISessionController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_552

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v28

    return v28

    :sswitch_8
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p3

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    :sswitch_15
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_52

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_54

    sget-object v28, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/ResultReceiver;

    :goto_47
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13, v14}, Landroid/media/session/ISessionController$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_52
    const/4 v13, 0x0

    goto :goto_35

    :cond_54
    const/4 v14, 0x0

    goto :goto_47

    :sswitch_56
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_89

    sget-object v28, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/KeyEvent;

    :goto_72
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/session/ISessionController$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_8b

    const/16 v28, 0x1

    :goto_7f
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    return v28

    :cond_89
    const/4 v10, 0x0

    goto :goto_72

    :cond_8b
    const/16 v28, 0x0

    goto :goto_7f

    :sswitch_8e
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/session/ISessionController$Stub;->registerCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_ab
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/media/session/ISessionControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/session/ISessionControllerCallback;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/session/ISessionController$Stub;->unregisterCallbackListener(Landroid/media/session/ISessionControllerCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_c8
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->isTransportControlEnabled()Z

    move-result v27

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v27, :cond_e7

    const/16 v28, 0x1

    :goto_dd
    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    return v28

    :cond_e7
    const/16 v28, 0x0

    goto :goto_dd

    :sswitch_ea
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getPackageName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    :sswitch_105
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getTag()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v28, 0x1

    return v28

    :sswitch_120
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;

    move-result-object v17

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v17, :cond_14a

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_147
    const/16 v28, 0x1

    return v28

    :cond_14a
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_147

    :sswitch_154
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getFlags()J

    move-result-wide v18

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/16 v28, 0x1

    return v28

    :sswitch_16f
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getVolumeAttributes()Landroid/media/session/ParcelableVolumeInfo;

    move-result-object v22

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v22, :cond_199

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_196
    const/16 v28, 0x1

    return v28

    :cond_199
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_196

    :sswitch_1a3
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v15}, Landroid/media/session/ISessionController$Stub;->adjustVolume(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_1c4
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v12, v15}, Landroid/media/session/ISessionController$Stub;->setVolumeTo(IILjava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_1e5
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->prepare()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_1f8
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_223

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_218
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_223
    const/4 v13, 0x0

    goto :goto_218

    :sswitch_225
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_250

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_245
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_250
    const/4 v13, 0x0

    goto :goto_245

    :sswitch_252
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_28b

    sget-object v28, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    :goto_26e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_28d

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_280
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Landroid/media/session/ISessionController$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_28b
    const/4 v9, 0x0

    goto :goto_26e

    :cond_28d
    const/4 v13, 0x0

    goto :goto_280

    :sswitch_28f
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->play()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_2a2
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_2cd

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_2c2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_2cd
    const/4 v13, 0x0

    goto :goto_2c2

    :sswitch_2cf
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_2fa

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_2ef
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_2fa
    const/4 v13, 0x0

    goto :goto_2ef

    :sswitch_2fc
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_335

    sget-object v28, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    :goto_318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_337

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_32a
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v13}, Landroid/media/session/ISessionController$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_335
    const/4 v9, 0x0

    goto :goto_318

    :cond_337
    const/4 v13, 0x0

    goto :goto_32a

    :sswitch_339
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/media/session/ISessionController$Stub;->skipToQueueItem(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_352
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->pause()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_365
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->stop()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_378
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->next()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_38b
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->previous()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_39e
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->fastForward()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_3b1
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->rewind()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_3c4
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Landroid/media/session/ISessionController$Stub;->seekTo(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :sswitch_3dd
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_404

    sget-object v28, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/Rating;

    :goto_3f9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/session/ISessionController$Stub;->rate(Landroid/media/Rating;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_404
    const/4 v5, 0x0

    goto :goto_3f9

    :sswitch_406
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    if-eqz v28, :cond_431

    sget-object v28, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Bundle;

    :goto_426
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, Landroid/media/session/ISessionController$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/16 v28, 0x1

    return v28

    :cond_431
    const/4 v13, 0x0

    goto :goto_426

    :sswitch_433
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v21

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v21, :cond_45d

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMetadata;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_45a
    const/16 v28, 0x1

    return v28

    :cond_45d
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_45a

    :sswitch_467
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v23

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v23, :cond_491

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/media/session/PlaybackState;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_48e
    const/16 v28, 0x1

    return v28

    :cond_491
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_48e

    :sswitch_49b
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getQueue()Landroid/content/pm/ParceledListSlice;

    move-result-object v20

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v20, :cond_4c5

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_4c2
    const/16 v28, 0x1

    return v28

    :cond_4c5
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4c2

    :sswitch_4cf
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v25

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v25, :cond_4f9

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    :goto_4f6
    const/16 v28, 0x1

    return v28

    :cond_4f9
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4f6

    :sswitch_503
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getExtras()Landroid/os/Bundle;

    move-result-object v24

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v24, :cond_52d

    const/16 v28, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_52a
    const/16 v28, 0x1

    return v28

    :cond_52d
    const/16 v28, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_52a

    :sswitch_537
    const-string/jumbo v28, "android.media.session.ISessionController"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISessionController$Stub;->getRatingType()I

    move-result v16

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v28, 0x1

    return v28

    :sswitch_data_552
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_56
        0x3 -> :sswitch_8e
        0x4 -> :sswitch_ab
        0x5 -> :sswitch_c8
        0x6 -> :sswitch_ea
        0x7 -> :sswitch_105
        0x8 -> :sswitch_120
        0x9 -> :sswitch_154
        0xa -> :sswitch_16f
        0xb -> :sswitch_1a3
        0xc -> :sswitch_1c4
        0xd -> :sswitch_1e5
        0xe -> :sswitch_1f8
        0xf -> :sswitch_225
        0x10 -> :sswitch_252
        0x11 -> :sswitch_28f
        0x12 -> :sswitch_2a2
        0x13 -> :sswitch_2cf
        0x14 -> :sswitch_2fc
        0x15 -> :sswitch_339
        0x16 -> :sswitch_352
        0x17 -> :sswitch_365
        0x18 -> :sswitch_378
        0x19 -> :sswitch_38b
        0x1a -> :sswitch_39e
        0x1b -> :sswitch_3b1
        0x1c -> :sswitch_3c4
        0x1d -> :sswitch_3dd
        0x1e -> :sswitch_406
        0x1f -> :sswitch_433
        0x20 -> :sswitch_467
        0x21 -> :sswitch_49b
        0x22 -> :sswitch_4cf
        0x23 -> :sswitch_503
        0x24 -> :sswitch_537
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
