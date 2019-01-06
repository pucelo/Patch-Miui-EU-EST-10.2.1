.class public abstract Landroid/media/session/ISession$Stub;
.super Landroid/os/Binder;
.source "ISession.java"

# interfaces
.implements Landroid/media/session/ISession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/ISession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/session/ISession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.session.ISession"

.field static final TRANSACTION_destroy:I = 0x7

.field static final TRANSACTION_getCallingPackage:I = 0x11

.field static final TRANSACTION_getController:I = 0x2

.field static final TRANSACTION_sendEvent:I = 0x1

.field static final TRANSACTION_setActive:I = 0x4

.field static final TRANSACTION_setCurrentVolume:I = 0x10

.field static final TRANSACTION_setExtras:I = 0xc

.field static final TRANSACTION_setFlags:I = 0x3

.field static final TRANSACTION_setLaunchPendingIntent:I = 0x6

.field static final TRANSACTION_setMediaButtonReceiver:I = 0x5

.field static final TRANSACTION_setMetadata:I = 0x8

.field static final TRANSACTION_setPlaybackState:I = 0x9

.field static final TRANSACTION_setPlaybackToLocal:I = 0xe

.field static final TRANSACTION_setPlaybackToRemote:I = 0xf

.field static final TRANSACTION_setQueue:I = 0xa

.field static final TRANSACTION_setQueueTitle:I = 0xb

.field static final TRANSACTION_setRatingType:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.session.ISession"

    invoke-virtual {p0, p0, v0}, Landroid/media/session/ISession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/session/ISession;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.session.ISession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/session/ISession;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/session/ISession;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/session/ISession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/session/ISession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_216

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    :sswitch_8
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    :sswitch_12
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_38

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    :goto_2e
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Landroid/media/session/ISession$Stub;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_38
    const/4 v12, 0x0

    goto :goto_2e

    :sswitch_3a
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->getController()Landroid/media/session/ISessionController;

    move-result-object v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_56

    invoke-interface {v13}, Landroid/media/session/ISessionController;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v15, 0x1

    return v15

    :cond_56
    const/4 v15, 0x0

    goto :goto_4f

    :sswitch_58
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setFlags(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_6e
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_87

    const/4 v10, 0x1

    :goto_7d
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/session/ISession$Stub;->setActive(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_87
    const/4 v10, 0x0

    goto :goto_7d

    :sswitch_89
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_ab

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_a1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/session/ISession$Stub;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_ab
    const/4 v2, 0x0

    goto :goto_a1

    :sswitch_ad
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_cf

    sget-object v15, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    :goto_c5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/session/ISession$Stub;->setLaunchPendingIntent(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_cf
    const/4 v2, 0x0

    goto :goto_c5

    :sswitch_d1
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->destroy()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_e1
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_103

    sget-object v15, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaMetadata;

    :goto_f9
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/media/session/ISession$Stub;->setMetadata(Landroid/media/MediaMetadata;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_103
    const/4 v5, 0x0

    goto :goto_f9

    :sswitch_105
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_127

    sget-object v15, Landroid/media/session/PlaybackState;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/PlaybackState;

    :goto_11d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/session/ISession$Stub;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_127
    const/4 v6, 0x0

    goto :goto_11d

    :sswitch_129
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_14b

    sget-object v15, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;

    :goto_141
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/media/session/ISession$Stub;->setQueue(Landroid/content/pm/ParceledListSlice;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_14b
    const/4 v3, 0x0

    goto :goto_141

    :sswitch_14d
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_16f

    sget-object v15, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    :goto_165
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/session/ISession$Stub;->setQueueTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_16f
    const/4 v8, 0x0

    goto :goto_165

    :sswitch_171
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_193

    sget-object v15, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Bundle;

    :goto_189
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/session/ISession$Stub;->setExtras(Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_193
    const/4 v7, 0x0

    goto :goto_189

    :sswitch_195
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setRatingType(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_1ab
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1cd

    sget-object v15, Landroid/media/AudioAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioAttributes;

    :goto_1c3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/session/ISession$Stub;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :cond_1cd
    const/4 v4, 0x0

    goto :goto_1c3

    :sswitch_1cf
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v11}, Landroid/media/session/ISession$Stub;->setPlaybackToRemote(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_1e9
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/media/session/ISession$Stub;->setCurrentVolume(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v15, 0x1

    return v15

    :sswitch_1ff
    const-string/jumbo v15, "android.media.session.ISession"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/session/ISession$Stub;->getCallingPackage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v15, 0x1

    return v15

    nop

    :sswitch_data_216
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_3a
        0x3 -> :sswitch_58
        0x4 -> :sswitch_6e
        0x5 -> :sswitch_89
        0x6 -> :sswitch_ad
        0x7 -> :sswitch_d1
        0x8 -> :sswitch_e1
        0x9 -> :sswitch_105
        0xa -> :sswitch_129
        0xb -> :sswitch_14d
        0xc -> :sswitch_171
        0xd -> :sswitch_195
        0xe -> :sswitch_1ab
        0xf -> :sswitch_1cf
        0x10 -> :sswitch_1e9
        0x11 -> :sswitch_1ff
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
