.class public Lcom/android/systemui/statusbar/phone/NotificationPanelView;
.super Lcom/android/systemui/statusbar/phone/PanelView;
.source "NotificationPanelView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;
.implements Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/qs/QS$HeightListener;
.implements Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field private static final mDummyDirtyRect:Landroid/graphics/Rect;

.field public static sQsExpanded:Z


# instance fields
.field contentObserver:Landroid/database/ContentObserver;

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextTopPaddingChange:Z

.field private mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

.field private mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

.field private mBlockTouches:Z

.field private mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

.field private mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

.field private mClockAnimationTarget:I

.field private mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mCloseHandleUnderlapSize:F

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private mConflictingQsExpansionGesture:Z

.field private mDarkAmount:F

.field private mDarkAnimator:Landroid/animation/ValueAnimator;

.field protected mDismissView:Lcom/android/systemui/statusbar/DismissView;

.field private mDismissViewAnimator:Landroid/animation/Animator;

.field private mDismissViewBottomMargin:I

.field private mDismissViewSize:I

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private mEmptyDragAmount:F

.field private mExpandableUnderKeyguard:Z

.field private mExpandingFromHeadsUp:Z

.field private final mExtremePowerSaveModeChangeCallback:Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;

.field private mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mFlingAfterTracking:Z

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mForceBlack:Z

.field private final mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHasWindowFocus:Z

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private mIndicationBottomPadding:I

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mIntercepting:Z

.field private mIsExpanding:Z

.field private mIsExpansionFromHeadsUp:Z

.field private mIsFullWidth:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

.field private mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

.field private mKeyguardOccluded:Z

.field private mKeyguardRightView:Landroid/view/View;

.field private mKeyguardShowing:Z

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private mKeyguardStatusViewAnimating:Z

.field private mKeyguardTouchDownX:F

.field private mKeyguardTouchDownY:F

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

.field private mLastAnnouncementWasQuickSettings:Z

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastDensityDpi:I

.field private mLastDismissViewFraction:F

.field private mLastLiveLockPath:Ljava/lang/String;

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchPkg:Ljava/lang/String;

.field private mLaunchingAffordance:Z

.field private mLeftViewBg:Landroid/view/View;

.field private mListenForHeadsUp:Z

.field private mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

.field private mLiveLockWallpaperView:Landroid/view/TextureView;

.field private mLiveReady:Z

.field private mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

.field private mLockScreenMagazinePreView:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMoveListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationBarBottomHeight:I

.field private mNoVisibleNotifications:Z

.field private mNotchCorner:Landroid/view/View;

.field protected mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field protected mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private mOnlyAffordanceInThisMotion:Z

.field private mPanelExpanded:Z

.field private mPanelGravity:I

.field private mPanelWidth:I

.field private mPerf:Lcom/android/systemui/util/QcomBoostFramework;

.field private mPositionMinSideMargin:I

.field private mPreLeftScreenDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreTransToLeftScreenDrawable:Landroid/graphics/drawable/Drawable;

.field private mPreviousConfig:Landroid/content/res/Configuration;

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

.field private mQSCustomizerPaddingBottom:I

.field private mQSCustomizerPaddingTop:I

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field private mQSDetailMarginBottom:I

.field private mQSDetailMarginTop:I

.field private mQs:Lcom/android/systemui/plugins/qs/QS;

.field private mQsAnimatorExpand:Z

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field protected mQsExpansionEnabled:Z

.field private mQsExpansionFromOverscroll:Z

.field protected mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFrame:Landroid/widget/FrameLayout;

.field private mQsFullyExpanded:Z

.field protected mQsMaxExpansionHeight:I

.field protected mQsMinExpansionHeight:I

.field private mQsOverscrollExpansionEnabled:Z

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsVelocityTracker:Landroid/view/VelocityTracker;

.field private mSCEventStatus:I

.field private mSCStatus:I

.field private mSCStatusProviderObserver:Landroid/database/ContentObserver;

.field private mScreenOn:Z

.field mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

.field private mShowEmptyShadeView:Z

.field private mShowIconsWhenExpanded:Z

.field private mSlideChoice:I

.field private mStackScrollerOverscrolling:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarMinHeight:I

.field protected mStatusBarState:I

.field private mSwitchSystemUser:Landroid/view/View;

.field private mThemeBackgroundView:Landroid/view/View;

.field private mTopPaddingAdjustment:I

.field private mTopPaddingWhenQsBeingCovered:I

.field private mTouchAtKeyguardBottomArea:Z

.field private mTouchSlop:I

.field private mTrackingPointer:I

.field private mTwoFingerQsExpandPossible:Z

.field private mUnlockMoveDistance:I

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

.field private mWallpaperType:I

.field private mWallpaperView:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardClockContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardOccluded:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardRightView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeftViewBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/charge/ChargeHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/LockScreenMagazineController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/util/QcomBoostFramework;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPreLeftScreenDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPreTransToLeftScreenDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get26(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/plugins/qs/QS;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCEventStatus:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatus:I

    return v0
.end method

.method static synthetic -get30(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatusProviderObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSlideChoice:I

    return v0
.end method

.method static synthetic -get32(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method static synthetic -get8()Landroid/graphics/Rect;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    return-object v0
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/plugins/qs/QS;)Lcom/android/systemui/plugins/qs/QS;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCEventStatus:I

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatus:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSlideChoice:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandableUnderKeyguard:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPreLeftScreenDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPreTransToLeftScreenDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenPause()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDarkAmount(F)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/NotificationPanelView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startLiveLockWallpaper()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissViewState()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateWallpaper(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDummyDirtyRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;

    const-string/jumbo v1, "mDarkAmount"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastLiveLockPath:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchAtKeyguardBottomArea:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockAnimationTarget:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsScrimEnabled:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDensityDpi:I

    const-string/jumbo v1, "lockscreen_affordance"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatus:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCEventStatus:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSlideChoice:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->contentObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtremePowerSaveModeChangeCallback:Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSCStatusProviderObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setWillNotDraw(Z)V

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {p1}, Lcom/android/keyguard/faceunlock/FaceUnlockManager;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFaceUnlockManager:Lcom/android/keyguard/faceunlock/FaceUnlockManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    new-instance v1, Lcom/android/systemui/util/QcomBoostFramework;

    invoke-direct {v1}, Lcom/android/systemui/util/QcomBoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPreviousConfig:Landroid/content/res/Configuration;

    invoke-static {p1}, Lcom/android/keyguard/charge/ChargeHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/charge/ChargeHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExtremePowerSaveModeChangeCallback:Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/charge/ChargeHelper;->registerWallpaperChangeCallback(Lcom/android/keyguard/charge/ChargeHelper$ExtremePowerSaveModeChangeCallback;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {p1}, Landroid/app/MiuiStatusBarManager;->isExpandableUnderKeyguard(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandableUnderKeyguard:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->loadDimens(Landroid/content/res/Resources;)V

    return-void
.end method

.method private addAwesomeLockScreenIfNeed()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAwesomeLockScreenIfNeed(Z)V

    return-void
.end method

.method private addAwesomeLockScreenIfNeed(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    :cond_1
    new-instance v0, Lcom/android/keyguard/AwesomeLockScreen;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/keyguard/AwesomeLockScreen;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/PanelBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 6

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$28;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x168

    goto :goto_1
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 7

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getContentHeight()I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPadding()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyShadeViewHeight()I

    move-result v4

    int-to-float v2, v4

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int/2addr v4, v5

    :goto_0
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v5

    add-float v3, v4, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v4

    add-int/2addr v4, v1

    int-to-float v0, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    :cond_2
    float-to-int v4, v3

    return v4

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method private calculatePanelHeightShade()I
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getEmptyBottomMargin()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    sub-int v1, v2, v3

    int-to-float v2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getTopPaddingOverflow()F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v1, v2

    return v1
.end method

.method private calculateQsTopPadding()F
    .locals 6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    sub-int v1, v3, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v4, v4

    int-to-float v5, v0

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    return v3

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    return v3

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v5, v5

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->interpolate(FFF)F

    move-result v3

    return v3

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getQsHeaderHeight()I

    move-result v3

    int-to-float v3, v3

    return v3

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsBeingCovered()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingWhenQsBeingCovered:I

    int-to-float v3, v3

    return v3

    :cond_6
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    return v3
.end method

.method private cancelQsAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private createDismissViewAnimator(Z)Landroid/animation/Animator;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->getAlpha()F

    move-result v3

    aput v3, v7, v4

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DismissView;->getTranslationY()F

    move-result v3

    aput v3, v7, v4

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/DismissView;->getTop()I

    move-result v8

    sub-int/2addr v3, v8

    :goto_1
    int-to-float v3, v3

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_2

    const/16 v3, 0x96

    :goto_2
    int-to-long v6, v3

    invoke-virtual {v1, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_3

    sget-object v3, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    :goto_3
    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v3, v10, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v2, v3, v9

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$29;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    const/16 v3, 0x12c

    goto :goto_2

    :cond_3
    sget-object v3, Lcom/android/systemui/Interpolators;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    goto :goto_3
.end method

.method private flingExpandsQs(F)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFalseTouch()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingExpandsQs(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->logQsSwipeDown(F)V

    :cond_0
    if-eqz v0, :cond_1

    xor-int/lit8 v2, p2, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getAppearFraction()F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getCurrentQSVelocity()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    return v0
.end method

.method private getFadeoutAlpha()F
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstItemMinHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    div-float v0, v1, v2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    return v0
.end method

.method private getFalsingThreshold()I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    return v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getKeyguardContentsAlpha()F
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    :goto_0
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getNotificationsTopY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method private getKeyguardOrLockScreenString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110060

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110062

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotificationsTopY()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotificationsTopY()F

    move-result v0

    return v0
.end method

.method private getTempQsMaxExpansion()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    return v0
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onQsDown()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyExpandingFinished()V

    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedFraction()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eq v1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsDown(Landroid/view/MotionEvent;)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsTouch(Landroid/view/MotionEvent;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v1, :cond_3

    return v3

    :cond_3
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    if-ne v0, v3, :cond_5

    :cond_4
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    :cond_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "panel_open_qs"

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    :cond_7
    return v4
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDozing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    :cond_1
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private static interpolate(FFF)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    mul-float/2addr v0, p1

    mul-float v1, p0, p2

    add-float/2addr v0, v1

    return v0
.end method

.method public static isDefaultLockScreenTheme()Z
    .locals 2

    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v0

    const-string/jumbo v1, "manifest.xml"

    invoke-virtual {v0, v1}, Lmiui/content/res/ThemeResourcesSystem;->containsAwesomeLockscreenEntry(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isFalseTouch()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->needsAntiFalsing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isClassiferEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->isFalseTouch()Z

    move-result v0

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isForegroundApp(Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/ActivityManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :cond_0
    return v2
.end method

.method private isInQsArea(FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isXWithinQsFrame(F)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottomMostNotificationBottom()F

    move-result v2

    cmpg-float v2, p2, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private isInQuickQsArea(FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isXWithinQsFrame(F)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isXWithinQsFrame(F)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_3

    :goto_1
    return v0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private isOnKeyguard()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_1

    if-ne v2, v6, :cond_0

    const/4 v4, 0x1

    :goto_0
    if-nez v0, :cond_3

    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x40

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v3

    :goto_1
    if-nez v0, :cond_5

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x4

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v1

    :goto_2
    if-nez v4, :cond_6

    if-nez v3, :cond_6

    :goto_3
    return v1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    goto :goto_3
.end method

.method private isXWithinQsFrame(F)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getX()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private logQsSwipeDown(F)V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentQSVelocity()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v0, 0xc1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v4, p1, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v5

    div-float v5, v1, v5

    float-to-int v5, v5

    invoke-virtual {v2, v3, v0, v4, v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    return-void

    :cond_0
    const/16 v0, 0xc2

    goto :goto_0
.end method

.method private onAwesomeLockScreenPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/keyguard/AwesomeLockScreen;->onPause()V

    :cond_0
    return-void
.end method

.method private onAwesomeLockScreenResume()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/AwesomeLockScreen;->onResume(Z)V

    :cond_0
    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted(I)V

    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return v7

    :pswitch_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    const/4 v10, 0x0

    invoke-direct {p0, v8, v9, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v8, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v6, v3, :cond_1

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    if-eq v6, v3, :cond_3

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :pswitch_3
    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v0, v5, v8

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_4

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v8, v0

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    return v6

    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    sub-float v9, v4, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-direct {p0, v8, v9, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldQuickSettingsIntercept(FFF)Z

    move-result v8

    if-eqz v8, :cond_1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->notifyExpandingFinished()V

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->removeLongPressCallback()V

    return v6

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    if-eqz v8, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_6

    :goto_2
    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    :cond_5
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    if-gez v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    sub-float v1, v8, v11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initVelocityTracker()V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    if-ne v9, v6, :cond_1

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    if-eq v9, v6, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :pswitch_3
    iget v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialHeightOnTouch:F

    add-float/2addr v10, v1

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFalsingThreshold()I

    move-result v10

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-ltz v10, :cond_3

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTouchAboveFalsingThreshold:Z

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_4
    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    const/4 v11, -0x1

    iput v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTrackingPointer:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->trackMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v0

    const/4 v11, 0x0

    cmpl-float v11, v0, v11

    if-nez v11, :cond_4

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    cmpl-float v11, v8, v11

    if-ltz v11, :cond_6

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    :goto_2
    invoke-direct {p0, v8, v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingQsWithCurrentVelocity(FZ)V

    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    :cond_5
    move v9, v10

    goto :goto_2

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshNotificationStackScrollerVisible()V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private positionClockAndNotifications()V
    .locals 14

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isAddOrRemoveAnimationPending()Z

    move-result v12

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsBeingCovered()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    const/4 v13, 0x0

    :goto_0
    iput v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIntrinsicPadding(I)V

    invoke-virtual {p0, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsHeaderHeight()I

    move-result v13

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v0

    :goto_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    add-int v13, v0, v1

    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getMaxKeyguardNotifications()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardClockContainer;->getClockHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardClockContainer;->getClockVisibleHeight()F

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardClockContainer;->getTopMargin()F

    move-result v11

    invoke-virtual/range {v0 .. v11}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIFIIIFIFFF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v13, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingAdjustment:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingAdjustment:I

    goto :goto_1
.end method

.method private reInflateKeyguardMoveLeftView()V
    .locals 5

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0077

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v3}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private reInflateThemeBackgroundView()V
    .locals 5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0099

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;I)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateThemeBackgroundVisibility(I)V

    return-void
.end method

.method private refreshNotificationStackScrollerVisible()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseLiveWallpaper()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/media/MediaPlayer;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastLiveLockPath:Ljava/lang/String;

    return-void
.end method

.method private removeAwesomeLockScreen()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    invoke-virtual {v0}, Lcom/android/keyguard/AwesomeLockScreen;->onPause()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreen:Lcom/android/keyguard/AwesomeLockScreen;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private resetVerticalPanelPosition()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setVerticalPanelTranslation(F)V

    return-void
.end method

.method private saveValueToTunerService(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$34;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setCameraImage()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$26;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->forceNoOverlappingRendering(Z)V

    return-void
.end method

.method private setDarkAmount(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    return-void
.end method

.method private setIsFullWidth(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setIsFullWidth(Z)V

    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    goto :goto_0
.end method

.method private setKeyguardOtherViewVisibility(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateThemeBackgroundVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    if-eqz v0, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/TextureView;->setVisibility(I)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v5, v5}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    if-eqz v0, :cond_6

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardRightView:Landroid/view/View;

    if-eqz v0, :cond_2

    move v3, v2

    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->shouldShowSwitchSystemUser()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshNotificationStackScrollerVisible()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_3

    :cond_7
    const/16 v2, 0x8

    goto :goto_4
.end method

.method private setKeyguardStatusViewVisibility(IZZ)V
    .locals 7

    const/4 v6, 0x0

    const/16 v1, 0x8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v4, 0x1

    if-nez p2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v2, v4, :cond_2

    if-eq p1, v4, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getKeyguardFadingAwayDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-ne p1, v4, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardClockContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardClockContainer;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAwesomeLockScreenIfNeed()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardClockContainer;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateKeyguardStatusViewVisibleEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    if-ne p1, v4, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardClockContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v3, :cond_5

    :goto_2
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardClockContainer;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAwesomeLockScreenIfNeed()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardClockContainer;->setAlpha(F)V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardClockContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusViewAnimating:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardClockContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardClockContainer;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeAwesomeLockScreen()V

    goto/16 :goto_0
.end method

.method private setLaunchingAffordance(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    return-void
.end method

.method private setListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    :cond_0
    return-void
.end method

.method private setLockScreenMagazineLeftPreImage()V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$27;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setOverScrolling(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    return-void
.end method

.method private setQsExpanded(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eq v1, p1, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->sQsExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/FalsingManager;->setQsExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->isSwitchAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->reset()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshNotificationStackScrollerVisible()V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->resetNotificationContainerParent()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setQsExpansion(F)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setQsExpansion height="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v2, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eqz v0, :cond_9

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_a

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissViewState()V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v4, :cond_5

    :cond_3
    cmpg-float v0, p1, v6

    if-gtz v0, :cond_b

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    :cond_5
    cmpl-float v0, p1, v6

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f110065

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->shouldEnforceBouncer()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move-object v2, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    :cond_7
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->invalidate()V

    :cond_8
    return-void

    :cond_9
    move v0, v3

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpanded(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isCollapsing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_2
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCollapsedOnDown:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isXWithinQsFrame(F)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQuickQsArea(FF)Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_5

    if-nez v0, :cond_3

    const/4 v1, 0x0

    cmpg-float v1, p3, v1

    if-gez v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInQsArea(FF)Z

    move-result v1

    :cond_3
    :goto_0
    return v1

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    return v0
.end method

.method private shouldShowSwitchSystemUser()Z
    .locals 5

    const/4 v2, 0x0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isOwnerUser()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSecondUser()I

    move-result v1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private showMiLiveLockWallpaper(Ljava/io/File;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->releaseLiveWallpaper()V

    new-instance v2, Landroid/view/TextureView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperView:Landroid/view/TextureView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/view/TextureView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method

.method private startLiveLockWallpaper()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveReady:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargeHelper:Lcom/android/keyguard/charge/ChargeHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/charge/ChargeHelper;->isExtremePowerModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLiveLockWallpaperPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastTouchY:F

    return-void
.end method

.method private updateDismissViewState()V
    .locals 7

    const/4 v4, 0x0

    const v6, 0x3f4ccccd    # 0.8f

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAppearFraction()F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_2

    sub-float v2, v0, v6

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    sub-float/2addr v3, v6

    mul-float/2addr v2, v3

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    :cond_0
    cmpg-float v2, v0, v6

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->createDismissViewAnimator(Z)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewAnimator:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDismissViewFraction:F

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDozingVisibilities(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x2bc

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    goto :goto_0
.end method

.method private updateEmptyShadeView()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateEmptyShadeView(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateFullyVisibleState(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setParentNotFullyVisible(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private updateHeader()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeaderKeyguardAlpha()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsExpansion()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDismissViewState()V

    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v1, v4, v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBarAnimateAlpha:F

    mul-float v0, v2, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->getAlpha()F

    move-result v2

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->setWallPaperViewsAlpha(F)V

    return-void

    :cond_0
    const/4 v2, 0x4

    goto :goto_0
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->invalidate()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpBoundaries(II)V

    return-void
.end method

.method private updateNotchCornerVisibility()V
    .locals 2

    sget-boolean v0, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotchCorner:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateNotificationTranslucency()V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClosingWithAlphaFadeOut:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private updatePanelExpanded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    :cond_0
    return-void
.end method

.method private updateQsState()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setQsExpanded(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScrollingEnabled(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStackScrollerOverscrolling:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;->hideIfNotSimple(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_3

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    return-void
.end method

.method private updateStatusBarIcons()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOpeningHeight()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->recomputeDisableFlags(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateStatusBarWindowBlur()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    mul-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getPeekHeight()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAfterTracking:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v2

    :goto_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/systemui/Interpolators;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    :goto_1
    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBlurRatio(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    const-class v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->setBlurRatio(F)V

    goto :goto_2
.end method

.method private updateThemeBackgroundVisibility(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    if-nez p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateWallpaper(Z)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isSystemLiveWallpaper(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    if-eq v3, v6, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->releaseLiveWallpaper()V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeftViewBg:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperBlurColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperBottom()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDarkMode(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightClock()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/KeyguardClockContainer;->setDarkMode(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperStatusBar()Z

    move-result v3

    :goto_1
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setDarkMode(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazinePreView:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightLockScreenMagazinePreSettings()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setSettingButtonDarkMode(Z)V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$Wallpaper;->getLockWallpaper(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastLiveLockPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->showMiLiveLockWallpaper(Ljava/io/File;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastLiveLockPath:Ljava/lang/String;

    :cond_4
    iput v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperType:I

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public animateCloseQs()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZ)V

    return-void
.end method

.method public animateToFullShade(J)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->goToFullShade(J)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestLayout()V

    return-void
.end method

.method public canCameraGestureBeLaunched(Z)Z
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isForegroundApp(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isSwipingInProgress()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    :goto_1
    return v2

    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public closeQs()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void
.end method

.method public closeQsDetail()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    return-void
.end method

.method public computeMaxKeyguardNotifications(I)I
    .locals 13

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v10

    int-to-float v5, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0702a8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const/4 v11, 0x1

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v10

    if-eqz v10, :cond_1

    sub-float v0, v12, v5

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v10

    if-ge v4, v10, :cond_4

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    instance-of v10, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v10, :cond_3

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->isShown()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    invoke-virtual {v10}, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;->getHeight()I

    move-result v10

    iget v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int v1, v10, v11

    :cond_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getHeight()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v10, v5

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    int-to-float v11, v1

    sub-float v0, v10, v11

    goto :goto_0

    :cond_3
    move-object v8, v2

    check-cast v8, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight()I

    move-result v10

    add-int/2addr v10, v6

    int-to-float v10, v10

    sub-float/2addr v0, v10

    cmpl-float v10, v0, v12

    if-ltz v10, :cond_4

    if-ge v3, p1, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardOrLockScreenString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastAnnouncementWasQuickSettings:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 9

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getKeyguardContentsAlpha()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v2

    sub-float v2, v3, v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v6, v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getWallpaperBlurColor()I

    move-result v7

    cmpl-float v0, v6, v1

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, v6

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMaskPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    const-string/jumbo v1, "      [NotificationPanelView: mQsExpansionHeight=%f mQsMinExpansionHeight=%d mQsMaxExpansionHeight=%d mIntercepting=%s mPanelExpanded=%s mQsExpanded=%s mQsFullyExpanded=%s mKeyguardShowing=%s mIsExpansionFromHeadsUp=%s mClockPositionAlgorithm=%s]"

    const/16 v0, 0xa

    new-array v2, v0, [Ljava/lang/Object;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIntercepting:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "T"

    :goto_0
    const/4 v3, 0x3

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelExpanded:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "T"

    :goto_1
    const/4 v3, 0x4

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "T"

    :goto_2
    const/4 v3, 0x5

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "T"

    :goto_3
    const/4 v3, 0x6

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "T"

    :goto_4
    const/4 v3, 0x7

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "T"

    :goto_5
    const/16 v3, 0x8

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v0, "f"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "f"

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "f"

    goto :goto_2

    :cond_3
    const-string/jumbo v0, "f"

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "f"

    goto :goto_4

    :cond_5
    const-string/jumbo v0, "f"

    goto :goto_5
.end method

.method public expand(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->expand(Z)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenResume()V

    :cond_0
    return-void
.end method

.method public expandWithQs()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->expand(Z)V

    return-void
.end method

.method public fling(FZ)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const-string/jumbo v1, "open"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifications,v="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/GestureRecorder;->tag(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    return-void

    :cond_1
    const-string/jumbo v1, "closed"

    goto :goto_0
.end method

.method protected flingExpands(FFFF)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelView;->flingExpands(FFFF)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public flingSettings(FZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    return-void
.end method

.method protected flingSettings(FZLjava/lang/Runnable;Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p2, :cond_1

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPerf:Lcom/android/systemui/util/QcomBoostFramework;

    const/16 v5, 0x1080

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v1, v6, v8}, Lcom/android/systemui/util/QcomBoostFramework;->perfHint(ILjava/lang/String;II)I

    :cond_3
    const/4 v2, 0x0

    cmpl-float v4, p1, v7

    if-lez v4, :cond_4

    xor-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_5

    :cond_4
    cmpg-float v4, p1, v7

    if-gez v4, :cond_6

    if-eqz p2, :cond_6

    :cond_5
    const/4 p1, 0x0

    const/4 v2, 0x1

    :cond_6
    const/4 v4, 0x2

    new-array v4, v4, [F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    const/4 v6, 0x0

    aput v5, v4, v6

    aput v3, v4, v8

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p4, :cond_8

    sget-object v4, Lcom/android/systemui/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0x170

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_1
    if-eqz v2, :cond_7

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_7
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$30;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$30;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;

    invoke-direct {v4, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$31;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsAnimatorExpand:Z

    return-void

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {v4, v0, v5, v3, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    goto :goto_1
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAfterTracking:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    if-nez p2, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getFadeoutAlpha()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAfterTracking:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "up_swipe"

    invoke-static {v0}, Lcom/android/systemui/AnalyticsHelper;->trackStatusBarCollapse(Ljava/lang/String;)V

    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->flingToHeight(FZFFZ)V

    return-void
.end method

.method public flingTopOverscroll(FZ)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_2

    if-eqz p2, :cond_2

    move p1, v0

    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    :goto_0
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$25;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected getHeaderTranslation()F
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v4

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getAppearFraction(F)F

    move-result v2

    invoke-static {v1, v4, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    return v1
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getLeftView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLeftView()Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    move-result-object v0

    return-object v0
.end method

.method public getLeftView()Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    return-object v0
.end method

.method public getLeftViewBg()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeftViewBg:Landroid/view/View;

    return-object v0
.end method

.method public getLockScreenView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    return-object v0
.end method

.method protected getMaxPanelHeight()I
    .locals 5

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getOverExpansionAmount()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightShade()I

    move-result v0

    goto :goto_0
.end method

.method public getMaxTranslationDistance()F
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected getOpeningHeight()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getOpeningHeight()F

    move-result v0

    return v0
.end method

.method protected getOverExpansionAmount()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrollAmount(Z)F

    move-result v0

    return v0
.end method

.method protected getOverExpansionPixels()F
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getCurrentOverScrolledPixels(Z)F

    move-result v0

    return v0
.end method

.method protected getPeekHeight()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getPeekHeight()I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    return v0
.end method

.method protected getQsExpansionFraction()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    goto :goto_0
.end method

.method public getRightView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardRightView:Landroid/view/View;

    return-object v0
.end method

.method protected hasConflictingGestures()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullWidth()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowIconsWhenExpanded:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v2, :cond_3

    :goto_1
    xor-int/lit8 v1, v0, 0x1

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public inflateLeftView()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->inflateLeftView()V

    :cond_0
    return-void
.end method

.method public isDozing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    return v0
.end method

.method public isExpanding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    return v0
.end method

.method public isFullWidth()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullWidth:Z

    return v0
.end method

.method public isInCenterScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isInCenterScreen()Z

    move-result v0

    return v0
.end method

.method protected isInContentBounds(FF)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    sub-float v3, p1, v0

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBelowLastNotification(FF)Z

    move-result v2

    if-nez v2, :cond_0

    cmpg-float v2, v0, p1

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isInSettings()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method protected isInUnderlapBounds(FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCloseHandleUnderlapSize:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    return v0
.end method

.method public isKeyguardWallpaperCarouselSwitchAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->isSwitchAnimating()Z

    move-result v0

    return v0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    return v0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    return v0
.end method

.method public isNoVisibleNotifications()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    return v0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isQSFullyCollapsed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isQSFullyCollapsed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    return v0
.end method

.method public isQsDetailShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->isCustomizing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isQsExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    return v0
.end method

.method protected isScrolledToBottom()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isInSettings()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isScrolledToBottom()Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchCamera(ZI)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const-string/jumbo v2, "power_double_tap"

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_2
    invoke-virtual {v2, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->launchAffordance(ZZ)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo v2, "wiggle_gesture"

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "lockscreen_affordance"

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method protected loadDimens(Landroid/content/res/Resources;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens(Landroid/content/res/Resources;)V

    new-instance v0, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const v0, 0x105018e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarMinHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070367

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPeekHeight:I

    const v0, 0x7f07012e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationsHeaderCollideDistance:I

    const v0, 0x7f07047b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUnlockMoveDistance:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    const v0, 0x7f070355

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFalsingThreshold:I

    const v0, 0x7f0702dc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPositionMinSideMargin:I

    const v0, 0x7f070187

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIndicationBottomPadding:I

    const v0, 0x7f07008b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCloseHandleUnderlapSize:F

    const v0, 0x7f07029e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewSize:I

    const v0, 0x7f07029c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewBottomMargin:I

    const v0, 0x7f0702df

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    const v0, 0x7f0b0031

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    const v0, 0x7f07032c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingTop:I

    const v0, 0x7f07032b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingBottom:I

    const v0, 0x7f07034c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginTop:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingBottom:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginBottom:I

    return-void
.end method

.method public needsAntiFalsing()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyBarPanelExpansionChanged()V
    .locals 0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->notifyBarPanelExpansionChanged()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->refreshNotificationStackScrollerVisible()V

    return-void
.end method

.method public notifyStartFading()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    return-void
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLaunchingAffordance(Z)V

    return-void
.end method

.method public onAnimationToSideEnded()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->readyForKeyguardDone()V

    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getLayoutDirection()I

    move-result v4

    if-ne v4, v7, :cond_0

    move v2, p1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v0

    div-float v4, p2, v0

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    div-float v4, p3, v0

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xbe

    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/FalsingManager;->onLeftAffordanceOn()V

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->startLaunchTransitionTimeout()V

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    return-void

    :cond_0
    xor-int/lit8 v2, p1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v4, "lockscreen_affordance"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xbd

    invoke-virtual {v4, v5, v6, v1, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v4}, Lcom/android/systemui/classifier/FalsingManager;->onCameraOn()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNavigationBarBottomHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onAttachedToWindow()V

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "QS"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->addTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Lcom/android/systemui/fragments/FragmentHostManager;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_expandable_under_keyguard"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->contentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00d2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v5, v3, v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xc3

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    invoke-virtual {p0, v5, v4, v6, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingSettings(FZLjava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method protected onClosingFinished()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onClosingFinished()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClosingWithAlphaFadeout(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onDetachedFromWindow()V

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v0

    const-string/jumbo v1, "QS"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->removeTagListener(Ljava/lang/String;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterWallpaperChangeCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$WallpaperChangeCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->contentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onEmptySpaceClicked(FF)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onEmptySpaceClick(F)Z

    return-void
.end method

.method protected onExpandingFinished()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingFinished()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStopped()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->onExpandingFinished()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$32;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$33;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTwoFingerQsExpandPossible:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelScrimMinFraction(F)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setListening(Z)V

    goto :goto_0
.end method

.method protected onExpandingStarted()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onExpandingStarted()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onExpansionStarted()V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsExpansionStarted()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeaderListening(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBrightnessListening(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onFinishInflate()V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setClipChildren(Z)V

    const v0, 0x7f0a0150

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazinePreView:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    const v0, 0x7f0a014e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardClockContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    const v0, 0x7f0a004c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mChargingView:Lcom/android/keyguard/charge/MiuiKeyguardChargingView;

    const v0, 0x7f0a032d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mWallpaperView:Landroid/view/View;

    const v0, 0x7f0a02c8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mThemeBackgroundView:Landroid/view/View;

    const v0, 0x7f0a01d2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotchCorner:Landroid/view/View;

    const v0, 0x7f0a017b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLeftViewBg:Landroid/view/View;

    const v0, 0x7f0a0041

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAwesomeLockScreenContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f0a01e0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    const v0, 0x7f0a01f0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnTopPaddingUpdateListener(Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$OnTopPaddingUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setFlingAnimationUtils(Lcom/android/systemui/statusbar/FlingAnimationUtils;)V

    const v0, 0x7f0a013e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper$Callback;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardVerticalMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSwitchSystemUser:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0221

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    const v0, 0x7f0a0159

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    const v0, 0x7f0a0163

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardRightView:Landroid/view/View;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDefaultLockScreenTheme()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    const v0, 0x7f0a021c

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSDetail;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    const v0, 0x7f0a021b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/QSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateWallpaper(Z)V

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/fod/MiuiGxzwManager;->setNotificationPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateResources(Z)V

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setInHeadsUpPinnedMode(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setHeadsUpAnimatingAway(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V

    return-void
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getFirstChildNotGone()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    instance-of v2, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    :goto_0
    if-eqz v1, :cond_2

    if-eq p1, v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v2

    if-ne v2, v1, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onHeightUpdated(F)V
    .locals 6

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onHeightUpdated expandedHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getMaxPanelHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, p1, v3

    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getTempQsMaxExpansion()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotificationTranslucency()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updatePanelExpanded()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStatusBarWindowBlur()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarView()Landroid/view/View;

    move-result-object v4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandedHeight:F

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    const/4 v3, 0x4

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setShadeExpanded(Z)V

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->DEBUG:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->invalidate()V

    :cond_5
    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getIntrinsicPadding()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutMinHeight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v0, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculatePanelHeightQsExpanded()I

    move-result v3

    int-to-float v1, v3

    sub-float v3, p1, v0

    sub-float v4, v1, v0

    div-float v2, v3, v4

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "panel_open"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "panel_open_peek"

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v3, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getTop()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getAlpha()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchAtKeyguardBottomArea:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardTouchDownX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardTouchDownY:F

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchAtKeyguardBottomArea:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardTouchDownX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-gez v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardTouchDownY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTouchSlop:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_7

    :cond_6
    return v2

    :cond_7
    return v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardOccluded:Z

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelView;->onLayout(ZIIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setIsFullWidth(Z)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    if-eq v1, v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startQsSizeChangeAnimation(II)V

    :cond_1
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getExpandedHeight()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateExpandedHeight(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateHeader()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/qs/QS;->setHeightOverride(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateMaxHeadsUpTranslation()V

    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    goto :goto_1

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    add-float/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    goto :goto_2
.end method

.method protected onMiddleClicked()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozingOnDown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xbc

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(Landroid/content/Context;III)V

    :cond_0
    return v4

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->goToKeyguard()V

    :cond_1
    return v4

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v0, "click_black_area"

    invoke-static {v0}, Lcom/android/systemui/AnalyticsHelper;->trackStatusBarCollapse(Ljava/lang/String;)V

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOverscrollTopChanged(FZ)V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    if-nez v2, :cond_2

    const/4 p1, 0x0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    move v0, p1

    :goto_0
    cmpl-float v2, v0, v3

    if-eqz v2, :cond_5

    :goto_1
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setOverScrolling(Z)V

    cmpl-float v2, v0, v3

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionFromOverscroll:Z

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOverscroll:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move p2, v1

    goto :goto_1
.end method

.method protected onQsExpansionStarted(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelQsAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->cancelHeightAnimator()V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    int-to-float v2, p1

    sub-float v0, v1, v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setQsExpansion(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->checkSnoozeLeavebehind()V

    return-void
.end method

.method public onQsHeightChanged()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionHeight:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestScrollerTopPaddingUpdate(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestPanelHeightUpdate()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->onRtlPropertiesChanged()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOldLayoutDirection:I

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenOn:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenPause()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->unregisterSeneorsForKeyguard()V

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenOn:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardClockView:Lcom/android/keyguard/KeyguardClockContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardClockContainer;->updateTimeAndBatteryInfo()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->resetImmediately()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenResume()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->registerSeneorsForKeyguard()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->startLiveLockWallpaper()V

    :cond_0
    return-void
.end method

.method public onScrollerTopPaddingUpdate(I)V
    .locals 6

    const v5, 0x3dccccd0    # 0.100000024f

    const/high16 v4, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTopPaddingWhenQsBeingCovered:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    sub-int/2addr v1, p1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v3}, Lcom/android/systemui/plugins/qs/QS;->getQsHeaderHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v1

    mul-float v2, v5, v0

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v1

    mul-float v2, v5, v0

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsContent()Landroid/view/View;

    move-result-object v1

    mul-float v2, v4, v0

    sub-float v2, v4, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onSwipingAborted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onAffordanceSwipingAborted()V

    return-void
.end method

.method public onSwipingStarted()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->requestDisallowInterceptTouchEvent(Z)V

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsTracking:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->initDownStates(Landroid/view/MotionEvent;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mListenForHeadsUp:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpansionFromHeadsUp:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "panel_open_peek"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mOnlyAffordanceInThisMotion:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isInLeftView()Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    return v1

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsOverscrollExpansionEnabled:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->isTrackingHeadsUp()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isFullyCollapsed()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "panel_open"

    invoke-static {v2, v3, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    const/4 v0, 0x1

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mInitialTouchY:F

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->onTouchEvent(Landroid/view/MotionEvent;IFF)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-eqz v2, :cond_a

    :goto_0
    return v0

    :cond_a
    move v0, v1

    goto :goto_0
.end method

.method protected onTrackingStarted()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onTrackingStarted()V

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStarted()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->animateHideLeftRightIcon()V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPanelTrackingStarted()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingManager;->onTrackingStopped()V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onTrackingStopped(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->onPanelTrackingStopped()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHintAnimationRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->animateShowLeftRightIcon()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(Z)V

    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasWindowFocus:Z

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateGxzwState()V

    :cond_0
    return-void
.end method

.method public registerSeneorsForKeyguard()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSensorsChangeCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerSeneorsForKeyguard(Lcom/android/keyguard/KeyguardUpdateMonitor$SensorsChangeCallback;)V

    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->calculateQsTopPadding()F

    move-result v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    if-nez v4, :cond_1

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v4, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandedWhenExpandingStarted:Z

    :cond_0
    :goto_1
    invoke-virtual {v2, v3, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateTopPadding(FZZ)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mAnimateNextTopPaddingChange:Z

    return-void

    :cond_1
    move p1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public resetViews()V
    .locals 7

    const/4 v0, 0x0

    const/4 v4, -0x1

    const/4 v1, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionFinished:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBlockTouches:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchingAffordance:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->resetImmediately()V

    const-string/jumbo v0, "lockscreen_affordance"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->closeQs()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    move v2, v1

    move v3, v1

    move v5, v4

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->closeAndSaveGuts(ZZZIIZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetViews()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->reset()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardVerticalMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardVerticalMoveHelper;->reset()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->reset()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    return-void
.end method

.method public setBarState(IZZ)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne p1, v7, :cond_5

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardStatusViewVisibility(IZZ)V

    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardBottomAreaVisibility(IZ)V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setKeyguardOtherViewVisibility(I)V

    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateWallpaper(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setCameraImage()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setLockScreenMagazineLeftPreImage()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->resetIsQsCovered(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardShowing:Z

    invoke-interface {v4, v6}, Lcom/android/systemui/plugins/qs/QS;->setKeyguardShowing(Z)V

    :cond_1
    if-ne v3, v7, :cond_7

    if-nez p3, :cond_2

    if-ne p1, v8, :cond_7

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarOut()V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-ne v4, v8, :cond_6

    const-wide/16 v0, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4, v0, v1}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingIn(J)V

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotchCornerVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQsState()V

    return-void

    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->calculateGoingToFullShadeDelay()J

    move-result-wide v0

    goto :goto_1

    :cond_7
    if-ne v3, v8, :cond_8

    if-ne p1, v7, :cond_8

    const-wide/16 v6, 0x168

    invoke-direct {p0, v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->animateKeyguardStatusBarIn(J)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v2, :cond_9

    move v4, v5

    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    if-eqz v2, :cond_3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eq v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onKeyguardShowingChanged()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->hideImmediately()V

    goto :goto_2

    :cond_9
    const/4 v4, 0x4

    goto :goto_3
.end method

.method public setBrightnessListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setBrightnessListening(Z)V

    :cond_0
    return-void
.end method

.method public setDark(ZZ)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    int-to-float v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAmount:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    if-eqz p2, :cond_3

    sget-object v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->SET_DARK_AMOUNT_PROPERTY:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    aput v0, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDarkAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDarkAmount(F)V

    goto :goto_1
.end method

.method public setDismissView(Lcom/android/systemui/statusbar/DismissView;)V
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public setDozing(ZZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateDozingVisibilities(Z)V

    :cond_1
    return-void
.end method

.method public setEmptyDragAmount(F)V
    .locals 2

    const v0, 0x3f4ccccd    # 0.8f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const v0, 0x3ecccccd    # 0.4f

    :cond_0
    :goto_0
    mul-float v1, p1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mEmptyDragAmount:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->positionClockAndNotifications()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->hasActiveNotifications()Z

    move-result v1

    if-nez v1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public setForceBlack(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateNotchCornerVisibility()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mForceBlack:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLightWallpaperStatusBar()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setDarkMode(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method public setHeaderListening(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    :cond_0
    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpAnimatingAway:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setHeadsUpAnimatingAway(Z)V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method

.method public setKeyguardUserSwitcher(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardUserSwitcher:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcher;

    return-void
.end method

.method public setKeyguardWallpaperCarouselController(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoveListViews:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLockScreenMagazineController:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->getWallPaperDes()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLaunchTransitionEndRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setNoVisibleNotifications(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNoVisibleNotifications:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    xor-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/qs/QS;->setHasNotifications(Z)V

    :cond_0
    return-void
.end method

.method protected setOverExpansion(FZ)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mConflictingQsExpansionGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isQsCovered()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrolledPixels(FZZ)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setOverScrollAmount(FZZ)V

    goto :goto_0
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    return-void
.end method

.method public setQsExpansionEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpansionEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardLeftView:Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/negative/MiuiKeyguardMoveLeftViewContainer;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public setTouchDisabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setTouchDisabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsLaunchTransitionRunning:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->resetImmediately()V

    :cond_0
    return-void
.end method

.method public setTrackingHeadsUp(Z)V
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTrackingHeadsUp(Z)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mExpandingFromHeadsUp:Z

    :cond_0
    return-void
.end method

.method protected setVerticalPanelTranslation(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateFullyVisibleState(Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->isOnAffordanceIcon(FF)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardCurrentlySecure()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isTracking()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showEmptyShadeView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mShowEmptyShadeView:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateEmptyShadeView()V

    return-void
.end method

.method public startFaceUnlockByMove()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startFaceUnlockByMove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->startFaceUnlock()V

    return-void
.end method

.method public stopFaceUnlockByMove()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopFaceUnlock()V

    return-void
.end method

.method public triggerAction(ZFF)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSupportLockScreenMagazineLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLockScreenMagazine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateDismissView(Z)V
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/DismissView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_0
    if-eq v2, p1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissView:Lcom/android/systemui/statusbar/DismissView;

    if-eqz p1, :cond_4

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/DismissView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    const/4 v1, 0x1

    :goto_2
    if-eqz p1, :cond_6

    xor-int/lit8 v0, v1, 0x1

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_7

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewBottomMargin:I

    :goto_4
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDismissViewBottomMargin:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    :cond_2
    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExtraBottomRange(II)V

    return-void

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    move v2, v3

    goto :goto_4
.end method

.method protected updateExpandedHeight(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandingVelocity(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setExpandedHeight(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateKeyguardBottomAreaAlpha()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateStatusBarIcons()V

    return-void
.end method

.method public updateGxzwState()V
    .locals 8

    invoke-static {}, Lcom/android/keyguard/MiuiKeyguardUtils;->isGxzwSensor()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/systemui/Dependency;->getHost()Lcom/android/systemui/doze/DozeHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/doze/DozeHost;->isDozing()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isShouldShowGxzwIconInKeyguard()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateGxzwState: dozing"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/keyguard/fod/MiuiGxzwManager;->dismissGxzwIconView(Z)V

    :goto_0
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->canShowGxzw()Z

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->canShowGxzw()Z

    move-result v0

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isBouncer()Z

    move-result v1

    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isIgnoreFocusChange()Z

    move-result v3

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardOccluded:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    move v2, v0

    :goto_1
    if-eqz v2, :cond_6

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasWindowFocus:Z

    if-nez v5, :cond_5

    move v2, v3

    :goto_2
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/fod/MiuiGxzwManager;->isShouldShowGxzwIconInKeyguard()Z

    move-result v5

    if-eq v5, v2, :cond_3

    sget-object v5, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateGxzwState: mQsExpanded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mKeyguardOccluded = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardOccluded:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", moveHelperCanShow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bottomAreaCanShow = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", bouncer = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mHasWindowFocus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasWindowFocus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", ignoreFocusChange = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/android/keyguard/fod/MiuiGxzwManager;->getInstance()Lcom/android/keyguard/fod/MiuiGxzwManager;

    move-result-object v5

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Lcom/android/keyguard/fod/MiuiGxzwManager;->dismissGxzwIconView(Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected updateLayout()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    if-eq v1, v2, :cond_3

    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    if-ne v1, v2, :cond_4

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    if-eq v1, v2, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingTop:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizerPaddingBottom:I

    invoke-virtual {v1, v4, v2, v4, v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->setPadding(IIII)V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSDetail;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    if-ne v1, v2, :cond_6

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    if-eq v1, v2, :cond_8

    :cond_6
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelWidth:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mPanelGravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginTop:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginBottom:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSDetail;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    return-void

    :cond_8
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginTop:I

    if-ne v1, v2, :cond_6

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetailMarginBottom:I

    if-eq v1, v2, :cond_7

    goto :goto_0
.end method

.method protected updateQsExpansion()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getQsExpansionFraction()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeaderTranslation()F

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getAppearFraction()F

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FFF)V

    return-void
.end method

.method public updateResources(Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v4}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->loadDimens(Landroid/content/res/Resources;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateLayout()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSCustomizer:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->updateResources(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/QSDetail;->updateResources(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->updateResources(Z)V

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    if-eq v4, v5, :cond_2

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastOrientation:I

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v8, :cond_1

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->saveValueToTunerService(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetVerticalPanelPosition()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v4, v8}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(Z)V

    :cond_2
    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->reInflateThemeBackgroundView()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isDefaultLockScreenTheme()Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eq v0, v4, :cond_3

    sget-object v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "default theme change: mIsDefaultTheme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isDefaultTheme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isDefaultTheme = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/PanelBar;->LOG(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isKeyguardShowing()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsDefaultTheme:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->removeAwesomeLockScreen()V

    :cond_4
    :goto_0
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateWallpaper(Z)V

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I

    invoke-virtual {p0, v4, v7, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBarState(IZZ)V

    :cond_5
    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v6, v7, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$21;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->recordThemeType(Landroid/content/Context;Z)V

    :cond_6
    iget v4, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDensityDpi:I

    if-eq v4, v5, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->reInflateKeyguardMoveLeftView()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->reset(Z)V

    :cond_7
    iget v4, v1, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mLastDensityDpi:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardMoveHelper:Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardMoveHelper;->onConfigurationChanged()V

    return-void

    :cond_8
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->addAwesomeLockScreenIfNeed(Z)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mScreenOn:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mDozing:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onAwesomeLockScreenResume()V

    goto :goto_0
.end method
