.class public abstract Landroid/media/tv/ITvInputSession$Stub;
.super Landroid/os/Binder;
.source "ITvInputSession.java"

# interfaces
.implements Landroid/media/tv/ITvInputSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSession$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputSession"

.field static final TRANSACTION_appPrivateCommand:I = 0x9

.field static final TRANSACTION_createOverlayView:I = 0xa

.field static final TRANSACTION_dispatchSurfaceChanged:I = 0x4

.field static final TRANSACTION_relayoutOverlayView:I = 0xb

.field static final TRANSACTION_release:I = 0x1

.field static final TRANSACTION_removeOverlayView:I = 0xc

.field static final TRANSACTION_selectTrack:I = 0x8

.field static final TRANSACTION_setCaptionEnabled:I = 0x7

.field static final TRANSACTION_setMain:I = 0x2

.field static final TRANSACTION_setSurface:I = 0x3

.field static final TRANSACTION_setVolume:I = 0x5

.field static final TRANSACTION_startRecording:I = 0x14

.field static final TRANSACTION_stopRecording:I = 0x15

.field static final TRANSACTION_timeShiftEnablePositionTracking:I = 0x13

.field static final TRANSACTION_timeShiftPause:I = 0xf

.field static final TRANSACTION_timeShiftPlay:I = 0xe

.field static final TRANSACTION_timeShiftResume:I = 0x10

.field static final TRANSACTION_timeShiftSeekTo:I = 0x11

.field static final TRANSACTION_timeShiftSetPlaybackParams:I = 0x12

.field static final TRANSACTION_tune:I = 0x6

.field static final TRANSACTION_unblockContent:I = 0xd


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.media.tv.ITvInputSession"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputSession;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.media.tv.ITvInputSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/media/tv/ITvInputSession;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/media/tv/ITvInputSession;

    return-object v0

    :cond_14
    new-instance v1, Landroid/media/tv/ITvInputSession$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_280

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v18

    return v18

    :sswitch_8
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_15
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->release()V

    const/16 v18, 0x1

    return v18

    :sswitch_25
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_3e

    const/4 v12, 0x1

    :goto_36
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->setMain(Z)V

    const/16 v18, 0x1

    return v18

    :cond_3e
    const/4 v12, 0x0

    goto :goto_36

    :sswitch_40
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_64

    sget-object v18, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Surface;

    :goto_5c
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/media/tv/ITvInputSession$Stub;->setSurface(Landroid/view/Surface;)V

    const/16 v18, 0x1

    return v18

    :cond_64
    const/4 v10, 0x0

    goto :goto_5c

    :sswitch_66
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v13, v1}, Landroid/media/tv/ITvInputSession$Stub;->dispatchSurfaceChanged(III)V

    const/16 v18, 0x1

    return v18

    :sswitch_86
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/media/tv/ITvInputSession$Stub;->setVolume(F)V

    const/16 v18, 0x1

    return v18

    :sswitch_9c
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_d2

    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    :goto_b8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_d4

    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    :goto_ca
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v15}, Landroid/media/tv/ITvInputSession$Stub;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/16 v18, 0x1

    return v18

    :cond_d2
    const/4 v8, 0x0

    goto :goto_b8

    :cond_d4
    const/4 v15, 0x0

    goto :goto_ca

    :sswitch_d6
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_ef

    const/4 v12, 0x1

    :goto_e7
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->setCaptionEnabled(Z)V

    const/16 v18, 0x1

    return v18

    :cond_ef
    const/4 v12, 0x0

    goto :goto_e7

    :sswitch_f1
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Landroid/media/tv/ITvInputSession$Stub;->selectTrack(ILjava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_10d
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_135

    sget-object v18, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    :goto_12d
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v15}, Landroid/media/tv/ITvInputSession$Stub;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    const/16 v18, 0x1

    return v18

    :cond_135
    const/4 v15, 0x0

    goto :goto_12d

    :sswitch_137
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_15f

    sget-object v18, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    :goto_157
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Landroid/media/tv/ITvInputSession$Stub;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    const/16 v18, 0x1

    return v18

    :cond_15f
    const/4 v14, 0x0

    goto :goto_157

    :sswitch_161
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_185

    sget-object v18, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_17d
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/media/tv/ITvInputSession$Stub;->relayoutOverlayView(Landroid/graphics/Rect;)V

    const/16 v18, 0x1

    return v18

    :cond_185
    const/4 v6, 0x0

    goto :goto_17d

    :sswitch_187
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->removeOverlayView()V

    const/16 v18, 0x1

    return v18

    :sswitch_197
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/media/tv/ITvInputSession$Stub;->unblockContent(Ljava/lang/String;)V

    const/16 v18, 0x1

    return v18

    :sswitch_1ad
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_1d1

    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    :goto_1c9
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPlay(Landroid/net/Uri;)V

    const/16 v18, 0x1

    return v18

    :cond_1d1
    const/4 v8, 0x0

    goto :goto_1c9

    :sswitch_1d3
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftPause()V

    const/16 v18, 0x1

    return v18

    :sswitch_1e3
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftResume()V

    const/16 v18, 0x1

    return v18

    :sswitch_1f3
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSeekTo(J)V

    const/16 v18, 0x1

    return v18

    :sswitch_209
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_22d

    sget-object v18, Landroid/media/PlaybackParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/PlaybackParams;

    :goto_225
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    const/16 v18, 0x1

    return v18

    :cond_22d
    const/4 v7, 0x0

    goto :goto_225

    :sswitch_22f
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_248

    const/4 v12, 0x1

    :goto_240
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/media/tv/ITvInputSession$Stub;->timeShiftEnablePositionTracking(Z)V

    const/16 v18, 0x1

    return v18

    :cond_248
    const/4 v12, 0x0

    goto :goto_240

    :sswitch_24a
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_26e

    sget-object v18, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    :goto_266
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/media/tv/ITvInputSession$Stub;->startRecording(Landroid/net/Uri;)V

    const/16 v18, 0x1

    return v18

    :cond_26e
    const/4 v8, 0x0

    goto :goto_266

    :sswitch_270
    const-string/jumbo v18, "android.media.tv.ITvInputSession"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/media/tv/ITvInputSession$Stub;->stopRecording()V

    const/16 v18, 0x1

    return v18

    :sswitch_data_280
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_25
        0x3 -> :sswitch_40
        0x4 -> :sswitch_66
        0x5 -> :sswitch_86
        0x6 -> :sswitch_9c
        0x7 -> :sswitch_d6
        0x8 -> :sswitch_f1
        0x9 -> :sswitch_10d
        0xa -> :sswitch_137
        0xb -> :sswitch_161
        0xc -> :sswitch_187
        0xd -> :sswitch_197
        0xe -> :sswitch_1ad
        0xf -> :sswitch_1d3
        0x10 -> :sswitch_1e3
        0x11 -> :sswitch_1f3
        0x12 -> :sswitch_209
        0x13 -> :sswitch_22f
        0x14 -> :sswitch_24a
        0x15 -> :sswitch_270
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
