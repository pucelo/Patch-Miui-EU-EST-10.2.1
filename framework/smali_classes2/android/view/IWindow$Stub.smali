.class public abstract Landroid/view/IWindow$Stub;
.super Landroid/os/Binder;
.source "IWindow.java"

# interfaces
.implements Landroid/view/IWindow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindow$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindow"

.field static final TRANSACTION_closeSystemDialogs:I = 0x7

.field static final TRANSACTION_dispatchAppVisibility:I = 0x4

.field static final TRANSACTION_dispatchDragEvent:I = 0xa

.field static final TRANSACTION_dispatchGetNewSurface:I = 0x5

.field static final TRANSACTION_dispatchPointerCaptureChanged:I = 0xf

.field static final TRANSACTION_dispatchSystemUiVisibilityChanged:I = 0xc

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x9

.field static final TRANSACTION_dispatchWallpaperOffsets:I = 0x8

.field static final TRANSACTION_dispatchWindowShown:I = 0xd

.field static final TRANSACTION_executeCommand:I = 0x1

.field static final TRANSACTION_moved:I = 0x3

.field static final TRANSACTION_notifyDrawRoundRect:I = 0x10

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0xe

.field static final TRANSACTION_resized:I = 0x2

.field static final TRANSACTION_updatePointerIcon:I = 0xb

.field static final TRANSACTION_windowFocusChanged:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.view.IWindow"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindow$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "android.view.IWindow"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindow;

    if-eqz v1, :cond_14

    check-cast v0, Landroid/view/IWindow;

    return-object v0

    :cond_14
    new-instance v1, Landroid/view/IWindow$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_2ca

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    :sswitch_8
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :sswitch_12
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/os/ParcelFileDescriptor;

    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    move-object/from16 v3, v37

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindow$Stub;->executeCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    const/4 v5, 0x1

    return v5

    :cond_3f
    const/16 v37, 0x0

    goto :goto_32

    :sswitch_42
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_eb

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    :goto_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ee

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    :goto_6a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f1

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    :goto_7a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f3

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    :goto_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f5

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    :goto_9a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f7

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/Rect;

    :goto_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f9

    const/4 v12, 0x1

    :goto_b1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_fb

    sget-object v5, Landroid/util/MergedConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/MergedConfiguration;

    :goto_c1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_fd

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    :goto_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_ff

    const/4 v15, 0x1

    :goto_d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_101

    const/16 v16, 0x1

    :goto_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v17}, Landroid/view/IWindow$Stub;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZI)V

    const/4 v5, 0x1

    return v5

    :cond_eb
    const/4 v6, 0x0

    goto/16 :goto_5a

    :cond_ee
    const/4 v7, 0x0

    goto/16 :goto_6a

    :cond_f1
    const/4 v8, 0x0

    goto :goto_7a

    :cond_f3
    const/4 v9, 0x0

    goto :goto_8a

    :cond_f5
    const/4 v10, 0x0

    goto :goto_9a

    :cond_f7
    const/4 v11, 0x0

    goto :goto_aa

    :cond_f9
    const/4 v12, 0x0

    goto :goto_b1

    :cond_fb
    const/4 v13, 0x0

    goto :goto_c1

    :cond_fd
    const/4 v14, 0x0

    goto :goto_d1

    :cond_ff
    const/4 v15, 0x0

    goto :goto_d8

    :cond_101
    const/16 v16, 0x0

    goto :goto_e0

    :sswitch_104
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->moved(II)V

    const/4 v5, 0x1

    return v5

    :sswitch_11f
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_138

    const/16 v34, 0x1

    :goto_12f
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchAppVisibility(Z)V

    const/4 v5, 0x1

    return v5

    :cond_138
    const/16 v34, 0x0

    goto :goto_12f

    :sswitch_13b
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchGetNewSurface()V

    const/4 v5, 0x1

    return v5

    :sswitch_148
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16b

    const/16 v34, 0x1

    :goto_158
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16e

    const/16 v36, 0x1

    :goto_160
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->windowFocusChanged(ZZ)V

    const/4 v5, 0x1

    return v5

    :cond_16b
    const/16 v34, 0x0

    goto :goto_158

    :cond_16e
    const/16 v36, 0x0

    goto :goto_160

    :sswitch_171
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :sswitch_186
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1ad

    const/16 v23, 0x1

    :goto_1a6
    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v23}, Landroid/view/IWindow$Stub;->dispatchWallpaperOffsets(FFFFZ)V

    const/4 v5, 0x1

    return v5

    :cond_1ad
    const/16 v23, 0x0

    goto :goto_1a6

    :sswitch_1b0
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e7

    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/os/Bundle;

    :goto_1d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1ea

    const/16 v30, 0x1

    :goto_1e0
    move-object/from16 v24, p0

    invoke-virtual/range {v24 .. v30}, Landroid/view/IWindow$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    const/4 v5, 0x1

    return v5

    :cond_1e7
    const/16 v29, 0x0

    goto :goto_1d8

    :cond_1ea
    const/16 v30, 0x0

    goto :goto_1e0

    :sswitch_1ed
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20e

    sget-object v5, Landroid/view/DragEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/view/DragEvent;

    :goto_205
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchDragEvent(Landroid/view/DragEvent;)V

    const/4 v5, 0x1

    return v5

    :cond_20e
    const/16 v32, 0x0

    goto :goto_205

    :sswitch_211
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->updatePointerIcon(FF)V

    const/4 v5, 0x1

    return v5

    :sswitch_22c
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v31

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v28

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindow$Stub;->dispatchSystemUiVisibilityChanged(IIII)V

    const/4 v5, 0x1

    return v5

    :sswitch_253
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindow$Stub;->dispatchWindowShown()V

    const/4 v5, 0x1

    return v5

    :sswitch_260
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v33

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindow$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    const/4 v5, 0x1

    return v5

    :sswitch_27f
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_298

    const/16 v34, 0x1

    :goto_28f
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/IWindow$Stub;->dispatchPointerCaptureChanged(Z)V

    const/4 v5, 0x1

    return v5

    :cond_298
    const/16 v34, 0x0

    goto :goto_28f

    :sswitch_29b
    const-string/jumbo v5, "android.view.IWindow"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c4

    const/16 v34, 0x1

    :goto_2ab
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c7

    sget-object v5, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    :goto_2bb
    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1, v7}, Landroid/view/IWindow$Stub;->notifyDrawRoundRect(ZLandroid/graphics/Rect;)V

    const/4 v5, 0x1

    return v5

    :cond_2c4
    const/16 v34, 0x0

    goto :goto_2ab

    :cond_2c7
    const/4 v7, 0x0

    goto :goto_2bb

    nop

    :sswitch_data_2ca
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_42
        0x3 -> :sswitch_104
        0x4 -> :sswitch_11f
        0x5 -> :sswitch_13b
        0x6 -> :sswitch_148
        0x7 -> :sswitch_171
        0x8 -> :sswitch_186
        0x9 -> :sswitch_1b0
        0xa -> :sswitch_1ed
        0xb -> :sswitch_211
        0xc -> :sswitch_22c
        0xd -> :sswitch_253
        0xe -> :sswitch_260
        0xf -> :sswitch_27f
        0x10 -> :sswitch_29b
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
