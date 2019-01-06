.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_addQsTile:I = 0x20

.field static final TRANSACTION_animateCollapsePanels:I = 0x7

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x5

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x6

.field static final TRANSACTION_appTransitionCancelled:I = 0x17

.field static final TRANSACTION_appTransitionFinished:I = 0x19

.field static final TRANSACTION_appTransitionPending:I = 0x16

.field static final TRANSACTION_appTransitionStarting:I = 0x18

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_clickQsTile:I = 0x22

.field static final TRANSACTION_disable:I = 0x4

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x14

.field static final TRANSACTION_handleSystemKey:I = 0x23

.field static final TRANSACTION_hideRecentApps:I = 0xe

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1c

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_remQsTile:I = 0x21

.field static final TRANSACTION_removeIcon:I = 0x3

.field static final TRANSACTION_setIcon:I = 0x2

.field static final TRANSACTION_setImeWindowStatus:I = 0xb

.field static final TRANSACTION_setStatus:I = 0x1

.field static final TRANSACTION_setSystemUiVisibility:I = 0x9

.field static final TRANSACTION_setTopAppHidesStatusBar:I = 0x1f

.field static final TRANSACTION_setWindowState:I = 0xc

.field static final TRANSACTION_showAssistDisclosure:I = 0x1a

.field static final TRANSACTION_showGlobalActionsMenu:I = 0x1e

.field static final TRANSACTION_showPictureInPictureMenu:I = 0x1d

.field static final TRANSACTION_showRecentApps:I = 0xd

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_showShutdownUi:I = 0x24

.field static final TRANSACTION_startAssist:I = 0x1b

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x15

.field static final TRANSACTION_togglePanel:I = 0x8

.field static final TRANSACTION_toggleRecentApps:I = 0xf

.field static final TRANSACTION_toggleSplitScreen:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .registers 3

    const/4 v1, 0x0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    return-object v0

    :cond_14
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_378

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    :sswitch_8
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_12
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Bundle;

    :goto_32
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setStatus(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v4, 0x1

    return v4

    :cond_3d
    const/16 v23, 0x0

    goto :goto_32

    :sswitch_40
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_67

    sget-object v4, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/statusbar/StatusBarIcon;

    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    const/4 v4, 0x1

    return v4

    :cond_67
    const/16 v20, 0x0

    goto :goto_5c

    :sswitch_6a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_7f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    const/4 v4, 0x1

    return v4

    :sswitch_96
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    const/4 v4, 0x1

    return v4

    :sswitch_a3
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :sswitch_b8
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    const/4 v4, 0x1

    return v4

    :sswitch_c5
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->togglePanel()V

    const/4 v4, 0x1

    return v4

    :sswitch_d2
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_111

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    :goto_fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_113

    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    :goto_10a
    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    return v4

    :cond_111
    const/4 v9, 0x0

    goto :goto_fa

    :cond_113
    const/4 v10, 0x0

    goto :goto_10a

    :sswitch_115
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12e

    const/16 v17, 0x1

    :goto_125
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    const/4 v4, 0x1

    return v4

    :cond_12e
    const/16 v17, 0x0

    goto :goto_125

    :sswitch_131
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_156

    const/16 v24, 0x1

    :goto_14d
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v15, v6, v7, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    const/4 v4, 0x1

    return v4

    :cond_156
    const/16 v24, 0x0

    goto :goto_14d

    :sswitch_159
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    const/4 v4, 0x1

    return v4

    :sswitch_170
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_193

    const/16 v17, 0x1

    :goto_180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_196

    const/16 v22, 0x1

    :goto_188
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(ZZ)V

    const/4 v4, 0x1

    return v4

    :cond_193
    const/16 v17, 0x0

    goto :goto_180

    :cond_196
    const/16 v22, 0x0

    goto :goto_188

    :sswitch_199
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1bc

    const/16 v17, 0x1

    :goto_1a9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1bf

    const/16 v22, 0x1

    :goto_1b1
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    const/4 v4, 0x1

    return v4

    :cond_1bc
    const/16 v17, 0x0

    goto :goto_1a9

    :cond_1bf
    const/16 v22, 0x0

    goto :goto_1b1

    :sswitch_1c2
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    const/4 v4, 0x1

    return v4

    :sswitch_1cf
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    const/4 v4, 0x1

    return v4

    :sswitch_1dc
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    const/4 v4, 0x1

    return v4

    :sswitch_1e9
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    const/4 v4, 0x1

    return v4

    :sswitch_1f6
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_209
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    const/4 v4, 0x1

    return v4

    :sswitch_216
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_229
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    const/4 v4, 0x1

    return v4

    :sswitch_236
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    const/4 v4, 0x1

    return v4

    :sswitch_243
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    const/4 v4, 0x1

    return v4

    :sswitch_25c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished()V

    const/4 v4, 0x1

    return v4

    :sswitch_269
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    const/4 v4, 0x1

    return v4

    :sswitch_276
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_295

    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    :goto_28e
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    return v4

    :cond_295
    const/4 v14, 0x0

    goto :goto_28e

    :sswitch_297
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_2aa
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showPictureInPictureMenu()V

    const/4 v4, 0x1

    return v4

    :sswitch_2b7
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showGlobalActionsMenu()V

    const/4 v4, 0x1

    return v4

    :sswitch_2c4
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2dd

    const/16 v17, 0x1

    :goto_2d4
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setTopAppHidesStatusBar(Z)V

    const/4 v4, 0x1

    return v4

    :cond_2dd
    const/16 v17, 0x0

    goto :goto_2d4

    :sswitch_2e0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2ff

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_2f8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    const/4 v4, 0x1

    return v4

    :cond_2ff
    const/4 v11, 0x0

    goto :goto_2f8

    :sswitch_301
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_320

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_319
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    const/4 v4, 0x1

    return v4

    :cond_320
    const/4 v11, 0x0

    goto :goto_319

    :sswitch_322
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_341

    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :goto_33a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    const/4 v4, 0x1

    return v4

    :cond_341
    const/4 v11, 0x0

    goto :goto_33a

    :sswitch_343
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemKey(I)V

    const/4 v4, 0x1

    return v4

    :sswitch_356
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_375

    const/16 v17, 0x1

    :goto_366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showShutdownUi(ZLjava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :cond_375
    const/16 v17, 0x0

    goto :goto_366

    :sswitch_data_378
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_40
        0x3 -> :sswitch_6a
        0x4 -> :sswitch_7f
        0x5 -> :sswitch_96
        0x6 -> :sswitch_a3
        0x7 -> :sswitch_b8
        0x8 -> :sswitch_c5
        0x9 -> :sswitch_d2
        0xa -> :sswitch_115
        0xb -> :sswitch_131
        0xc -> :sswitch_159
        0xd -> :sswitch_170
        0xe -> :sswitch_199
        0xf -> :sswitch_1c2
        0x10 -> :sswitch_1cf
        0x11 -> :sswitch_1dc
        0x12 -> :sswitch_1e9
        0x13 -> :sswitch_1f6
        0x14 -> :sswitch_209
        0x15 -> :sswitch_216
        0x16 -> :sswitch_229
        0x17 -> :sswitch_236
        0x18 -> :sswitch_243
        0x19 -> :sswitch_25c
        0x1a -> :sswitch_269
        0x1b -> :sswitch_276
        0x1c -> :sswitch_297
        0x1d -> :sswitch_2aa
        0x1e -> :sswitch_2b7
        0x1f -> :sswitch_2c4
        0x20 -> :sswitch_2e0
        0x21 -> :sswitch_301
        0x22 -> :sswitch_322
        0x23 -> :sswitch_343
        0x24 -> :sswitch_356
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
