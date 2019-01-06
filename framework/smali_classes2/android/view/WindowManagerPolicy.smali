.class public interface abstract Landroid/view/WindowManagerPolicy;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerPolicy$InputConsumer;,
        Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;,
        Landroid/view/WindowManagerPolicy$PointerEventListener;,
        Landroid/view/WindowManagerPolicy$ScreenOffListener;,
        Landroid/view/WindowManagerPolicy$ScreenOnListener;,
        Landroid/view/WindowManagerPolicy$StartingSurface;,
        Landroid/view/WindowManagerPolicy$WindowManagerFuncs;,
        Landroid/view/WindowManagerPolicy$WindowState;
    }
.end annotation


# static fields
.field public static final ACTION_HDMI_PLUGGED:Ljava/lang/String; = "android.intent.action.HDMI_PLUGGED"

.field public static final ACTION_PASS_TO_USER:I = 0x1

.field public static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field public static final APPLICATION_LAYER:I = 0x2

.field public static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field public static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field public static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field public static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field public static final EXTRA_FROM_HOME_KEY:Ljava/lang/String; = "android.intent.extra.FROM_HOME_KEY"

.field public static final EXTRA_HDMI_PLUGGED_STATE:Ljava/lang/String; = "state"

.field public static final FINISH_LAYOUT_REDO_ANIM:I = 0x8

.field public static final FINISH_LAYOUT_REDO_CONFIG:I = 0x2

.field public static final FINISH_LAYOUT_REDO_LAYOUT:I = 0x1

.field public static final FINISH_LAYOUT_REDO_WALLPAPER:I = 0x4

.field public static final FLAG_DISABLE_KEY_REPEAT:I = 0x8000000

.field public static final FLAG_FILTERED:I = 0x4000000

.field public static final FLAG_INJECTED:I = 0x1000000

.field public static final FLAG_INTERACTIVE:I = 0x20000000

.field public static final FLAG_PASS_TO_USER:I = 0x40000000

.field public static final FLAG_TRUSTED:I = 0x2000000

.field public static final FLAG_VIRTUAL:I = 0x2

.field public static final FLAG_WAKE:I = 0x1

.field public static final KEYGUARD_GOING_AWAY_FLAG_NO_WINDOW_ANIMATIONS:I = 0x2

.field public static final KEYGUARD_GOING_AWAY_FLAG_TO_SHADE:I = 0x1

.field public static final KEYGUARD_GOING_AWAY_FLAG_WITH_WALLPAPER:I = 0x4

.field public static final NAV_BAR_BOTTOM:I = 0x4

.field public static final NAV_BAR_LEFT:I = 0x1

.field public static final NAV_BAR_RIGHT:I = 0x2

.field public static final OFF_BECAUSE_OF_ADMIN:I = 0x1

.field public static final OFF_BECAUSE_OF_TIMEOUT:I = 0x3

.field public static final OFF_BECAUSE_OF_USER:I = 0x2

.field public static final PRESENCE_EXTERNAL:I = 0x2

.field public static final PRESENCE_INTERNAL:I = 0x1

.field public static final TRANSIT_ENTER:I = 0x1

.field public static final TRANSIT_EXIT:I = 0x2

.field public static final TRANSIT_HIDE:I = 0x4

.field public static final TRANSIT_PREVIEW_DONE:I = 0x5

.field public static final TRANSIT_SHOW:I = 0x3

.field public static final USER_ROTATION_FREE:I = 0x0

.field public static final USER_ROTATION_LOCKED:I = 0x1

.field public static final WATCH_POINTER:Z


# virtual methods
.method public abstract addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Landroid/view/WindowManagerPolicy$StartingSurface;
.end method

.method public abstract adjustConfigurationLw(Landroid/content/res/Configuration;II)V
.end method

.method public abstract adjustSystemUiVisibilityLw(I)I
.end method

.method public abstract adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
.end method

.method public abstract allowAppAnimationsLw()Z
.end method

.method public abstract applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract beginLayoutLw(ZIIII)V
.end method

.method public abstract beginPostLayoutPolicyLw(II)V
.end method

.method public abstract canBeHiddenByKeyguardLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract canDismissBootAnimation()Z
.end method

.method public abstract canMagnifyWindow(I)Z
.end method

.method public abstract checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
.end method

.method public abstract checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
.end method

.method public abstract createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
.end method

.method public abstract dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
.end method

.method public abstract dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract enableKeyguard(Z)V
.end method

.method public abstract enableScreenAfterBoot()V
.end method

.method public abstract exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
.end method

.method public abstract finishLayoutLw()V
.end method

.method public abstract finishPostLayoutPolicyLw()I
.end method

.method public abstract finishedGoingToSleep(I)V
.end method

.method public abstract finishedWakingUp()V
.end method

.method public abstract focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
.end method

.method public abstract getConfigDisplayHeight(IIIII)I
.end method

.method public abstract getConfigDisplayWidth(IIIII)I
.end method

.method public abstract getContentRectLw(Landroid/graphics/Rect;)V
.end method

.method public abstract getInputMethodWindowVisibleHeightLw()I
.end method

.method public abstract getInsetHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract getMaxWallpaperLayer()I
.end method

.method public abstract getNavBarPosition()I
.end method

.method public abstract getNonDecorDisplayHeight(IIIII)I
.end method

.method public abstract getNonDecorDisplayWidth(IIIII)I
.end method

.method public abstract getNonDecorInsetsLw(IIILandroid/graphics/Rect;)V
.end method

.method public abstract getStableInsetsLw(IIILandroid/graphics/Rect;)V
.end method

.method public getSubWindowLayerFromTypeLw(I)I
    .registers 5

    packed-switch p1, :pswitch_data_2a

    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :pswitch_1f
    const/4 v0, 0x1

    return v0

    :pswitch_21
    const/4 v0, -0x2

    return v0

    :pswitch_23
    const/4 v0, -0x1

    return v0

    :pswitch_25
    const/4 v0, 0x2

    return v0

    :pswitch_27
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_2a
    .packed-switch 0x3e8
        :pswitch_1f
        :pswitch_21
        :pswitch_25
        :pswitch_1f
        :pswitch_23
        :pswitch_27
    .end packed-switch
.end method

.method public abstract getSystemDecorLayerLw()I
.end method

.method public abstract getUserRotationMode()I
.end method

.method public getWindowLayerFromTypeLw(I)I
    .registers 4

    invoke-static {p1}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Use getWindowLayerFromTypeLw() or getWindowLayerLw() for alert window types"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public getWindowLayerFromTypeLw(IZ)I
    .registers 8

    const/16 v0, 0xb

    const/16 v1, 0xa

    const/4 v4, 0x1

    const/4 v3, 0x2

    if-lt p1, v4, :cond_d

    const/16 v2, 0x63

    if-gt p1, v2, :cond_d

    return v3

    :cond_d
    packed-switch p1, :pswitch_data_88

    :pswitch_10
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_2b
    return v4

    :pswitch_2c
    return v3

    :pswitch_2d
    return v3

    :pswitch_2e
    return v3

    :pswitch_2f
    const/4 v0, 0x3

    return v0

    :pswitch_31
    const/4 v0, 0x4

    return v0

    :pswitch_33
    const/4 v0, 0x5

    return v0

    :pswitch_35
    const/4 v0, 0x6

    return v0

    :pswitch_37
    const/4 v0, 0x7

    return v0

    :pswitch_39
    const/16 v0, 0x8

    return v0

    :pswitch_3c
    const/16 v0, 0x9

    return v0

    :pswitch_3f
    if-eqz p2, :cond_42

    :goto_41
    return v0

    :cond_42
    move v0, v1

    goto :goto_41

    :pswitch_44
    const/16 v0, 0xc

    return v0

    :pswitch_47
    const/16 v0, 0xd

    return v0

    :pswitch_4a
    const/16 v0, 0xe

    return v0

    :pswitch_4d
    const/16 v0, 0xf

    return v0

    :pswitch_50
    const/16 v0, 0x11

    return v0

    :pswitch_53
    const/16 v0, 0x12

    return v0

    :pswitch_56
    const/16 v0, 0x13

    return v0

    :pswitch_59
    const/16 v0, 0x14

    return v0

    :pswitch_5c
    const/16 v0, 0x15

    return v0

    :pswitch_5f
    if-eqz p2, :cond_63

    const/16 v0, 0x16

    :cond_63
    return v0

    :pswitch_64
    const/16 v0, 0x17

    return v0

    :pswitch_67
    const/16 v0, 0x18

    return v0

    :pswitch_6a
    const/16 v0, 0x19

    return v0

    :pswitch_6d
    if-eqz p2, :cond_71

    const/16 v1, 0x1a

    :cond_71
    return v1

    :pswitch_72
    const/16 v0, 0x1b

    return v0

    :pswitch_75
    const/16 v0, 0x1c

    return v0

    :pswitch_78
    const/16 v0, 0x1d

    return v0

    :pswitch_7b
    const/16 v0, 0x1e

    return v0

    :pswitch_7e
    const/16 v0, 0x1f

    return v0

    :pswitch_81
    const/16 v0, 0x20

    return v0

    :pswitch_84
    const/16 v0, 0x21

    return v0

    nop

    :pswitch_data_88
    .packed-switch 0x7d0
        :pswitch_53
        :pswitch_31
        :pswitch_2f
        :pswitch_3f
        :pswitch_10
        :pswitch_39
        :pswitch_5f
        :pswitch_3c
        :pswitch_37
        :pswitch_59
        :pswitch_6d
        :pswitch_4a
        :pswitch_4d
        :pswitch_2b
        :pswitch_56
        :pswitch_7e
        :pswitch_78
        :pswitch_50
        :pswitch_84
        :pswitch_64
        :pswitch_5c
        :pswitch_81
        :pswitch_35
        :pswitch_47
        :pswitch_67
        :pswitch_10
        :pswitch_75
        :pswitch_72
        :pswitch_10
        :pswitch_10
        :pswitch_2c
        :pswitch_33
        :pswitch_7b
        :pswitch_31
        :pswitch_2d
        :pswitch_2e
        :pswitch_6a
        :pswitch_2c
        :pswitch_44
    .end packed-switch
.end method

.method public getWindowLayerLw(Landroid/view/WindowManagerPolicy$WindowState;)I
    .registers 4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->canAddInternalSystemWindow()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Landroid/view/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    return v0
.end method

.method public abstract hasNavigationBar()Z
.end method

.method public abstract hideBootMessages()V
.end method

.method public abstract inKeyguardRestrictedKeyInputMode()Z
.end method

.method public abstract init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end method

.method public abstract interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
.end method

.method public abstract interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
.end method

.method public abstract interceptMotionBeforeQueueingNonInteractive(JI)I
.end method

.method public abstract isDefaultOrientationForced()Z
.end method

.method public abstract isDockSideAllowed(I)Z
.end method

.method public abstract isKeyguardDrawnLw()Z
.end method

.method public abstract isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract isKeyguardOccluded()Z
.end method

.method public abstract isKeyguardSecure(I)Z
.end method

.method public abstract isKeyguardShowingAndNotOccluded()Z
.end method

.method public abstract isKeyguardTrustedLw()Z
.end method

.method public abstract isNavBarForcedShownLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
.end method

.method public abstract isScreenOn()Z
.end method

.method public abstract isShowingDreamLw()Z
.end method

.method public abstract isTopLevelWindow(I)Z
.end method

.method public abstract keepScreenOnStartedLw()V
.end method

.method public abstract keepScreenOnStoppedLw()V
.end method

.method public abstract layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract lockNow(Landroid/os/Bundle;)V
.end method

.method public abstract notifyBackLidSwitchChanged(JZ)V
.end method

.method public abstract notifyCameraLensCoverSwitchChanged(JZ)V
.end method

.method public abstract notifyLidSwitchChanged(JZ)V
.end method

.method public abstract okToAnimate()Z
.end method

.method public abstract onConfigurationChanged()V
.end method

.method public abstract onKeyguardOccludedChangedLw(Z)V
.end method

.method public abstract onSystemUiStarted()V
.end method

.method public abstract performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
.end method

.method public abstract prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
.end method

.method public abstract registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract rotationForOrientationLw(II)I
.end method

.method public abstract rotationHasCompatibleMetricsLw(II)Z
.end method

.method public abstract screenTurnedOff()V
.end method

.method public abstract screenTurnedOn()V
.end method

.method public abstract screenTurningOff(Landroid/view/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
.end method

.method public abstract selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
.end method

.method public abstract selectRotationAnimationLw([I)V
.end method

.method public abstract setCurrentOrientationLw(I)V
.end method

.method public abstract setCurrentUserLw(I)V
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .registers 2

    return-void
.end method

.method public abstract setDisplayOverscan(Landroid/view/Display;IIII)V
.end method

.method public abstract setInitialDisplaySize(Landroid/view/Display;III)V
.end method

.method public abstract setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end method

.method public abstract setPipVisibilityLw(Z)V
.end method

.method public abstract setRecentsVisibilityLw(Z)V
.end method

.method public abstract setRotationLw(I)V
.end method

.method public abstract setSafeMode(Z)V
.end method

.method public abstract setSwitchingUser(Z)V
.end method

.method public abstract setUserRotationMode(II)V
.end method

.method public abstract shouldRotateSeamlessly(II)Z
.end method

.method public abstract showBootMessage(Ljava/lang/CharSequence;Z)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showRecentApps(Z)V
.end method

.method public abstract startKeyguardExitAnimation(JJ)V
.end method

.method public abstract startedGoingToSleep(I)V
.end method

.method public abstract startedWakingUp()V
.end method

.method public abstract systemBooted()V
.end method

.method public abstract systemReady()V
.end method

.method public abstract userActivity()V
.end method

.method public abstract validateRotationAnimationLw(IIZ)Z
.end method
