.class public Lcom/android/systemui/statusbar/phone/NavStubView;
.super Landroid/view/View;
.source "NavStubView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavStubView$1;,
        Lcom/android/systemui/statusbar/phone/NavStubView$2;,
        Lcom/android/systemui/statusbar/phone/NavStubView$BerylliumConfig;,
        Lcom/android/systemui/statusbar/phone/NavStubView$CubicEaseOutInterpolator;,
        Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;,
        Lcom/android/systemui/statusbar/phone/NavStubView$H;,
        Lcom/android/systemui/statusbar/phone/NavStubView$QuartEaseOutInterpolator;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DEFAULT_ANIM_TIME:I

.field public static final IS_E10:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final RADIUS_SIZE:I

.field jobExecutor:Ljava/util/concurrent/ExecutorService;

.field private mAm:Landroid/app/ActivityManager;

.field private mAppEnterRecentsAnim:Landroid/animation/ValueAnimator;

.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mBitmapShown:Z

.field private mCancelActionToStartApp:Z

.field private mCloseScreenshotIntent:Landroid/content/Intent;

.field private mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

.field private mCurAlpha:F

.field private mCurScale:F

.field private mCurTask:Landroid/app/ActivityManager$RecentTaskInfo;

.field private mCurrAction:I

.field private mCurrX:F

.field private mCurrY:F

.field private mCurrentY:F

.field private mDelta:F

.field private mDest:Landroid/graphics/Rect;

.field private mDestRectF:Landroid/graphics/RectF;

.field private mDestRectHeightScale:F

.field private mDestTopOffset:F

.field private mDisableTouch:Z

.field private final mDividerSize:I

.field private mDownEvent:Landroid/view/MotionEvent;

.field private mDownNo:I

.field private mDownTime:J

.field private mDownX:F

.field private mFollowTailX:F

.field private mFollowTailY:F

.field private mFrameHandler:Landroid/os/Handler;

.field private mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

.field private mHomeCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

.field private mHomeFadeInAnim:Landroid/animation/ValueAnimator;

.field private mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

.field private final mHomeIntent:Landroid/content/Intent;

.field private mIam:Landroid/app/IActivityManager;

.field private mInitX:F

.field private mInitY:F

.field private mIsAlreadyCropStatusBar:Z

.field private mIsAppToHome:Z

.field private mIsAppToRecents:Z

.field private mIsBgIconVisible:Z

.field private mIsEnterRecents:Z

.field private mIsFullScreenMode:Z

.field private mIsFullScreenModeCurTime:Z

.field private mIsGestureStarted:Z

.field private mIsInFsMode:Z

.field private mIsMultiWindow:Z

.field private mKeepHidden:Z

.field private mLastConfiguration:Landroid/content/res/Configuration;

.field private mLastDownNo:I

.field private mLastTouchTime:J

.field private mLocation:[I

.field private mModeOverlay:Landroid/graphics/Xfermode;

.field private mModeSrcIn:Landroid/graphics/Xfermode;

.field private mMultiDelta:I

.field private mNeedRender:Z

.field mOrientationChangedAfterDown:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPendingResetStatus:Z

.field private mPivotLocX:I

.field private mPivotLocY:I

.field private mQuartEaseOutInterpolator:Lcom/android/systemui/statusbar/phone/NavStubView$QuartEaseOutInterpolator;

.field private mRecentsBg:Landroid/view/View;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenBmpHeight:I

.field private mScreenBmpScale:F

.field private mScreenBmpWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowRect:Landroid/graphics/Rect;

.field private mSrc:Landroid/graphics/Rect;

.field private mStateMode:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarDec:I

.field private mStatusBarHeight:I

.field private final mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTailCatcherTask:Ljava/lang/Runnable;

.field private mTouchSlop:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowMode:I

.field private mWindowSize:I

.field private mXScale:F

.field private mYScale:F

.field public targetBgAlpha:I


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAppEnterRecentsAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/phone/NavStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectHeightScale:F

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/phone/NavStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailX:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/systemui/statusbar/phone/NavStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailY:F

    return v0
.end method

.method static synthetic -get14(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFrameHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/statusbar/phone/NavStubView$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/statusbar/phone/NavStubView;)Lcom/android/systemui/fsgesture/IFsGestureCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/app/IActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIam:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/systemui/statusbar/phone/NavStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAlreadyCropStatusBar:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/systemui/statusbar/phone/NavStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsBgIconVisible:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/systemui/statusbar/phone/NavStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsEnterRecents:Z

    return v0
.end method

.method static synthetic -get25(Lcom/android/systemui/statusbar/phone/NavStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsFullScreenModeCurTime:Z

    return v0
.end method

.method static synthetic -get26(Lcom/android/systemui/statusbar/phone/NavStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    return v0
.end method

.method static synthetic -get27(Lcom/android/systemui/statusbar/phone/NavStubView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsMultiWindow:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mMultiDelta:I

    return v0
.end method

.method static synthetic -get29(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/NavStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    return v0
.end method

.method static synthetic -get30(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    return v0
.end method

.method static synthetic -get31(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    return v0
.end method

.method static synthetic -get35(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpWidth:I

    return v0
.end method

.method static synthetic -get36(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    return v0
.end method

.method static synthetic -get37(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    return v0
.end method

.method static synthetic -get38(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    return v0
.end method

.method static synthetic -get39(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/app/ActivityManager$RecentTaskInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurTask:Landroid/app/ActivityManager$RecentTaskInfo;

    return-object v0
.end method

.method static synthetic -get40(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    return v0
.end method

.method static synthetic -get41(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowSize:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/NavStubView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrAction:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/NavStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrX:F

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/NavStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrY:F

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/NavStubView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/NavStubView;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCancelActionToStartApp:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/NavStubView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurAlpha:F

    return p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPendingResetStatus:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/phone/NavStubView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    return p1
.end method

.method static synthetic -set12(Lcom/android/systemui/statusbar/phone/NavStubView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/systemui/statusbar/phone/NavStubView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpScale:F

    return p1
.end method

.method static synthetic -set14(Lcom/android/systemui/statusbar/phone/NavStubView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    return p1
.end method

.method static synthetic -set15(Lcom/android/systemui/statusbar/phone/NavStubView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarDec:I

    return p1
.end method

.method static synthetic -set17(Lcom/android/systemui/statusbar/phone/NavStubView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mXScale:F

    return p1
.end method

.method static synthetic -set18(Lcom/android/systemui/statusbar/phone/NavStubView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mYScale:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/NavStubView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/NavStubView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestTopOffset:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/NavStubView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/phone/NavStubView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailX:F

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/phone/NavStubView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailY:F

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsBgIconVisible:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsEnterRecents:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/phone/NavStubView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsFullScreenMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavStubView;FFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavStubView;->controlRecentTaskView(FFF)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/NavStubView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->disableTouch(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/NavStubView;ZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/NavStubView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->injectMotionEvent(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/NavStubView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->updateRecentsBlurRatio(F)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/phone/NavStubView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->updateViewLayout(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/NavStubView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "beryllium"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavStubView;->IS_E10:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavStubView;->IS_E10:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x90

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/phone/NavStubView;->DEFAULT_ANIM_TIME:I

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    return-void

    :cond_0
    const/16 v0, 0x12c

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFrameHandler:Landroid/os/Handler;

    const/16 v5, 0x88

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->targetBgAlpha:I

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mModeSrcIn:Landroid/graphics/Xfermode;

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->OVERLAY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mModeOverlay:Landroid/graphics/Xfermode;

    new-instance v5, Landroid/content/res/Configuration;

    invoke-direct {v5}, Landroid/content/res/Configuration;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mOrientationChangedAfterDown:Z

    const/4 v5, -0x1

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrAction:I

    new-array v5, v11, [I

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLocation:[I

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsEnterRecents:Z

    new-instance v5, Lcom/android/systemui/statusbar/phone/NavStubView$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectHeightScale:F

    iput v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurAlpha:F

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mSrc:Landroid/graphics/Rect;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDest:Landroid/graphics/Rect;

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLastDownNo:I

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownNo:I

    invoke-static {v10}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->jobExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/systemui/statusbar/phone/NavStubView$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v5, Lcom/android/systemui/statusbar/phone/NavStubView;->IS_E10:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/systemui/statusbar/phone/NavStubView$BerylliumConfig;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_0
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    new-instance v5, Lcom/android/systemui/statusbar/phone/NavStubView$QuartEaseOutInterpolator;

    invoke-direct {v5, v9}, Lcom/android/systemui/statusbar/phone/NavStubView$QuartEaseOutInterpolator;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView$QuartEaseOutInterpolator;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mQuartEaseOutInterpolator:Lcom/android/systemui/statusbar/phone/NavStubView$QuartEaseOutInterpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->RADIUS_SIZE:I

    const v5, 0x10001

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "statusbar"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v4, 0xd

    const-string/jumbo v5, "lithium"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xe

    :cond_0
    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowSize:I

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.category.HOME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const/high16 v6, 0x10200000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIam:Landroid/app/IActivityManager;

    const-string/jumbo v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700a0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    sub-int v5, v1, v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDividerSize:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "status_bar_height"

    const-string/jumbo v7, "dimen"

    const-string/jumbo v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarHeight:I

    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    const-string/jumbo v6, "reason"

    const-string/jumbo v7, "fs_gesture"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    new-instance v5, Lcom/android/systemui/statusbar/phone/NavStubView$H;

    invoke-direct {v5, p0, v9}, Lcom/android/systemui/statusbar/phone/NavStubView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;Lcom/android/systemui/statusbar/phone/NavStubView$H;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mTouchSlop:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->initValueAnimator()V

    return-void

    :cond_2
    new-instance v5, Lcom/android/systemui/statusbar/phone/NavStubView$CubicEaseOutInterpolator;

    invoke-direct {v5, v9}, Lcom/android/systemui/statusbar/phone/NavStubView$CubicEaseOutInterpolator;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView$CubicEaseOutInterpolator;)V

    goto/16 :goto_0
.end method

.method private actionMoveResolution(Landroid/view/MotionEvent;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownX:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDelta:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    int-to-float v3, v3

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v2, v3, v5, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->linearToCubic(FFFF)F

    move-result v2

    const/high16 v3, 0x43de0000    # 444.0f

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    const v2, 0x10001

    if-ne v1, v2, :cond_5

    const v1, 0x10002

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "current state mode: StateMode.STATE_ON_DRAG"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFrameHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->updateViewLayout(I)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v1, v7, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->targetBgAlpha:I

    invoke-static {v1, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView;->setBackgroundColor(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsBg:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsBg:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v1, v7, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->skipAppTransition()V

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/FsGesturePreloadRecentsEvent;

    invoke-direct {v2}, Lcom/android/systemui/recents/events/activity/FsGesturePreloadRecentsEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_5
    return-void
.end method

.method private actionUpResolution()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFrameHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    const v3, 0x10002

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    const v3, 0x10003

    if-ne v2, v3, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_10

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailY:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x42200000    # 40.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v2, v5, :cond_4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V

    :goto_2
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v2, v4, :cond_5

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->startHomeAnimation(I)V

    goto :goto_2

    :cond_5
    const-string/jumbo v2, "actionUpResolution-1"

    invoke-direct {p0, v6, v4, v4, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_2

    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailY:F

    sub-float/2addr v2, v3

    const/high16 v3, -0x3de00000    # -40.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_a

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;

    invoke-direct {v3}, Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v2, v5, :cond_8

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v2, v4, :cond_9

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->startHomeAnimation(I)V

    goto :goto_2

    :cond_9
    const-string/jumbo v2, "actionUpResolution-2"

    invoke-direct {p0, v6, v4, v4, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz v0, :cond_d

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v2, v5, :cond_b

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V

    goto :goto_2

    :cond_b
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v2, v4, :cond_c

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->startHomeAnimation(I)V

    goto :goto_2

    :cond_c
    const-string/jumbo v2, "actionUpResolution-3"

    invoke-direct {p0, v6, v4, v4, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_2

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v2, v5, :cond_e

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V

    goto :goto_2

    :cond_e
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    if-ne v2, v4, :cond_f

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NavStubView;->startHomeAnimation(I)V

    goto :goto_2

    :cond_f
    const-string/jumbo v2, "actionUpResolution-4"

    invoke-direct {p0, v6, v4, v4, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    const-string/jumbo v2, "actionUpResolution-5"

    invoke-direct {p0, v6, v4, v4, v2}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto/16 :goto_2
.end method

.method private appTouchResolution(Landroid/view/MotionEvent;)V
    .locals 14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget-object v9, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "======>>>>down: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    const/16 v2, 0x7f

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAm:Landroid/app/ActivityManager;

    const/4 v10, 0x1

    const/4 v11, -0x2

    invoke-static {v9, v10, v2, v11}, Landroid/app/ActivityManagerCompat;->getRecentTasksForUser(Landroid/app/ActivityManager;III)Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RecentTaskInfo;

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurTask:Landroid/app/ActivityManager$RecentTaskInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->jobExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/android/systemui/statusbar/phone/NavStubView$6;

    invoke-direct {v10, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$6;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    const/16 v10, 0x7d1

    invoke-static {v9, v10}, Landroid/view/MiuiWindowManager;->getLayer(Landroid/content/Context;I)I

    move-result v9

    add-int/lit8 v4, v9, -0x1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    invoke-static {v9, v10, v5, v4, v11}, Lmiui/util/ScreenshotUtils;->getScreenshot(Landroid/content/Context;FIIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_1

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    const-string/jumbo v10, "#00000000"

    invoke-static {v10}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_1
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsMultiWindow:Z

    if-eqz v9, :cond_3

    const/4 v9, 0x3

    const/4 v10, 0x3

    const/4 v11, 0x0

    :try_start_2
    invoke-static {v9, v10, v11}, Landroid/app/ActivityManagerCompat;->getStackInfo(III)Landroid/app/ActivityManager$StackInfo;

    move-result-object v7

    const/4 v0, 0x0

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    if-le v9, v10, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v10, v7, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDividerSize:I

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iget-object v13, v7, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v12, v13

    iget v13, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDividerSize:I

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v9, v13, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    if-ge v9, v10, :cond_2

    iget-object v9, v7, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDividerSize:I

    add-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mMultiDelta:I

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDelta:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mMultiDelta:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDelta:F

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->targetBgAlpha:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "force_black"

    invoke-static {v9, v10}, Landroid/provider/MiuiSettings$Global;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsMultiWindow:Z

    if-nez v9, :cond_4

    sget-boolean v9, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v9, :cond_4

    if-eqz v3, :cond_4

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    if-le v9, v10, :cond_4

    :try_start_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarHeight:I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iget v13, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarHeight:I

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    invoke-static {v9, v13, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAlreadyCropStatusBar:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_4
    :goto_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/NavStubView;->createRoundCornerBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    iput-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpWidth:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->prepareToDraw()V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sget-object v9, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "Failed to get recent tasks"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_5
    :try_start_4
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v10, v7, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDividerSize:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    iget-object v12, v7, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDividerSize:I

    sub-int/2addr v11, v12

    iget v12, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    const/4 v13, 0x0

    invoke-static {v9, v10, v13, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto/16 :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->actionMoveResolution(Landroid/view/MotionEvent;)V

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    int-to-float v10, v10

    const/4 v11, 0x0

    const/high16 v12, 0x40400000    # 3.0f

    invoke-direct {p0, v9, v10, v11, v12}, Lcom/android/systemui/statusbar/phone/NavStubView;->linearToCubic(FFFF)F

    move-result v9

    const v10, 0x3ec51eb8    # 0.385f

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v9, v10, v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->invalidate()V

    sget-object v9, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "=======>>>>>move: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->actionUpResolution()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->onGestureFinish(Z)V

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mOrientationChangedAfterDown:Z

    if-eqz v9, :cond_6

    const/4 v9, 0x3

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/phone/NavStubView;->startAppAnimation(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v9, "appTouchResolution"

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v10, v11, v12, v9}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private appTouchResolutionForVersionTwo(Landroid/view/MotionEvent;)V
    .locals 4

    const v3, 0x10001

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    if-ne v0, v3, :cond_1

    const v0, 0x10002

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGesturePreloadRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/FsGesturePreloadRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsInFsMode:Z

    return-void
.end method

.method private clearMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->removeMessages(I)V

    return-void
.end method

.method private controlRecentTaskView(FFF)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    sub-float v2, v3, p3

    mul-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationY(F)V

    sub-float v1, p2, v3

    sub-float v2, v3, p3

    mul-float/2addr v1, v2

    add-float v0, v3, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p3}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private createRoundCornerBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v6, v6, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->RADIUS_SIZE:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->RADIUS_SIZE:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mModeSrcIn:Landroid/graphics/Xfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v2
.end method

.method private disableTouch(Z)V
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "distouch : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDisableTouch:Z

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mKeepHidden:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private exitFreeFormWindowIfNeeded()V
    .locals 0

    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->exitFreeFormWindowIfNeeded()V

    return-void
.end method

.method private finalization(ZZZLjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "===>>>finalization executed from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsFullScreenModeCurTime:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAlreadyCropStatusBar:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsBgIconVisible:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsEnterRecents:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToRecents:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToHome:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCancelActionToStartApp:Z

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurAlpha:F

    const/16 v1, 0x88

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->targetBgAlpha:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v2, "ignore_bring_to_front"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v2, "filter_flag"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const v1, 0x10001

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "current state mode: StateMode.STATE_INIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mBitmapShown:Z

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/NavStubView$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$19;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFrameHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFrameHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    :cond_2
    if-eqz p2, :cond_3

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavStubView$20;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$20;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavStubView$21;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$21;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsInFsMode:Z

    return-void

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v5}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getRecentBlurRatio()F
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getHeight()I

    move-result v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    int-to-float v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    sub-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private homeTouchResolution(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->actionMoveResolution(Landroid/view/MotionEvent;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->linearToCubic(FFFF)F

    move-result v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    const v2, 0x10003

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->actionUpResolution()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initValue(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownX:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToHome:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownX:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDelta:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailY:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurTask:Landroid/app/ActivityManager$RecentTaskInfo;

    const v0, 0x10001

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "current state mode: StateMode.STATE_INIT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private initValueAnimator()V
    .locals 8

    const-wide/16 v6, 0xc8

    const/4 v4, 0x2

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeOutAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavStubView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavStubView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$4;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAppEnterRecentsAnim:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAppEnterRecentsAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAppEnterRecentsAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAppEnterRecentsAnim:Landroid/animation/ValueAnimator;

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAppEnterRecentsAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavStubView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavStubView$5;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private injectMotionEvent(I)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "injectMotionEvent action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " downX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " downY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v8

    const/4 v2, 0x0

    aget-object v2, v8, v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    const/4 v2, 0x0

    aget-object v2, v9, v2

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getSource()I

    move-result v16

    invoke-virtual/range {v18 .. v18}, Landroid/view/MotionEvent;->getFlags()I

    move-result v17

    const/4 v7, 0x1

    move/from16 v6, p1

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v19

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private isMistakeTouch()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "show_mistake_touch_toast"

    invoke-static {v3, v4, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    return v8

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLastTouchTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_1

    return v8

    :cond_1
    new-instance v1, Lcom/android/systemui/recents/model/MutableBoolean;

    invoke-direct {v1, v8}, Lcom/android/systemui/recents/model/MutableBoolean;-><init>(Z)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v8

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "gb_notification"

    const/4 v5, -0x2

    invoke-static {v3, v4, v8, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v9, :cond_3

    return v9

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsFullScreenMode:Z

    if-eqz v3, :cond_4

    return v9

    :cond_4
    return v8
.end method

.method private linearToCubic(FFFF)F
    .locals 6

    cmpl-float v2, p4, p2

    if-nez v2, :cond_0

    return p1

    :cond_0
    const/4 v1, 0x0

    const/4 v0, 0x0

    sub-float v2, p1, p2

    sub-float v3, p4, p2

    div-float v1, v2, v3

    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    float-to-double v2, v2

    float-to-double v4, p4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    double-to-float v0, v2

    :cond_1
    return v0
.end method

.method private simpleTouchResolution(Landroid/view/MotionEvent;)V
    .locals 6

    const v5, 0x10002

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->initValue(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownX:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDelta:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrentY:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/high16 v4, 0x40400000    # 3.0f

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->linearToCubic(FFFF)F

    move-result v1

    const/high16 v2, 0x43de0000    # 444.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    const v1, 0x10001

    if-ne v0, v1, :cond_0

    iput v5, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "current state mode: StateMode.STATE_ON_DRAG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFrameHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mTailCatcherTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->updateViewLayout(I)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    if-ne v0, v5, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFollowTailY:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x3de00000    # -40.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCloseScreenshotIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2, v2, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->sendEvent(III)V

    invoke-virtual {p0, v3, v2, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->sendEvent(III)V

    :cond_1
    :goto_1
    const-string/jumbo v0, "simpleTouchResolution"

    invoke-direct {p0, v2, v2, v2, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    invoke-direct {v1, v2, v3, v2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startAppAnimation(I)V
    .locals 41

    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    sget-boolean v4, Lcom/android/systemui/Constants;->IS_TABLET:Z

    if-nez v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToHome:Z

    const/4 v14, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mIFsGestureCallbackMap:Ljava/util/HashMap;

    sget-object v5, Lcom/android/systemui/Constants;->HOME_LAUCNHER_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/fsgesture/IFsGestureCallback;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeCallback:Lcom/android/systemui/fsgesture/IFsGestureCallback;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurTask:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurTask:Landroid/app/ActivityManager$RecentTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    invoke-interface {v4, v5, v6}, Lcom/android/systemui/fsgesture/IFsGestureCallback;->getSpec(Ljava/lang/String;I)Lcom/android/systemui/fsgesture/TransitionAnimationSpec;

    move-result-object v14

    :goto_0
    if-eqz v14, :cond_2

    iget-object v4, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_2

    iget-object v4, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-eqz v4, :cond_2

    iget-object v4, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    if-eqz v4, :cond_2

    iget-object v4, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToHome:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToHome:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->skipAppTransition()V

    iget-object v4, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    div-int/lit8 v25, v4, 0x2

    iget-object v4, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    div-int/lit8 v24, v4, 0x2

    const v28, 0x3cf5c28f    # 0.03f

    const v27, 0x3cf5c28f    # 0.03f

    iget-object v4, v14, Lcom/android/systemui/fsgesture/TransitionAnimationSpec;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAppIcon:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    int-to-float v5, v5

    mul-float v5, v5, v21

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v20, v0

    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView$11;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/NavStubView$11;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string/jumbo v4, "homeScale"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const v6, 0x3f4ccccd    # 0.8f

    const/16 v39, 0x0

    aput v6, v5, v39

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v39, 0x1

    aput v6, v5, v39

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v31

    const-string/jumbo v4, "homeAlpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/16 v39, 0x0

    aput v6, v5, v39

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v39, 0x1

    aput v6, v5, v39

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v30

    const-string/jumbo v4, "xScale"

    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    const/16 v39, 0x0

    aput v6, v5, v39

    const v6, 0x3cf5c28f    # 0.03f

    const/16 v39, 0x1

    aput v6, v5, v39

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v36

    const-string/jumbo v4, "yScale"

    const/4 v5, 0x2

    new-array v5, v5, [F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    const/16 v39, 0x0

    aput v6, v5, v39

    const v6, 0x3cf5c28f    # 0.03f

    const/16 v39, 0x1

    aput v6, v5, v39

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v38

    const-string/jumbo v4, "xPivot"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v19, v5, v6

    const/4 v6, 0x1

    aput v24, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v35

    const-string/jumbo v4, "yPivot"

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v20, v5, v6

    const/4 v6, 0x1

    aput v25, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v37

    const/4 v4, 0x6

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v38, v4, v5

    const/4 v5, 0x1

    aput-object v37, v4, v5

    const/4 v5, 0x2

    aput-object v36, v4, v5

    const/4 v5, 0x3

    aput-object v35, v4, v5

    const/4 v5, 0x4

    aput-object v30, v4, v5

    const/4 v5, 0x5

    aput-object v31, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mQuartEaseOutInterpolator:Lcom/android/systemui/statusbar/phone/NavStubView$QuartEaseOutInterpolator;

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView$12;

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v4, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavStubView$12;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;II)V

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget v4, Lcom/android/systemui/statusbar/phone/NavStubView;->DEFAULT_ANIM_TIME:I

    int-to-long v4, v4

    move-object/from16 v0, v33

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v13, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView$13;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/NavStubView$13;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    invoke-virtual {v13, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget v4, Lcom/android/systemui/statusbar/phone/NavStubView;->DEFAULT_ANIM_TIME:I

    div-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    invoke-virtual {v13, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget v4, Lcom/android/systemui/statusbar/phone/NavStubView;->DEFAULT_ANIM_TIME:I

    div-int/lit8 v4, v4, 0x3

    int-to-long v4, v4

    invoke-virtual {v13, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->targetBgAlpha:I

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView$14;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/NavStubView$14;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/NavStubView$15;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget v4, Lcom/android/systemui/statusbar/phone/NavStubView;->DEFAULT_ANIM_TIME:I

    int-to-long v4, v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string/jumbo v4, "home"

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->resetAnimationFrameIntervalParams(Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v33, v4, v5

    const/4 v5, 0x1

    aput-object v17, v4, v5

    const/4 v5, 0x2

    aput-object v13, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual/range {v16 .. v16}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_1
    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    :catch_0
    move-exception v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->skipAppTransition()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    const/16 v39, 0x0

    const/16 v40, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v6, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    sget-object v39, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v39

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const-string/jumbo v4, "startAppAnimation-2"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v39, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-direct {v0, v5, v6, v1, v4}, Lcom/android/systemui/statusbar/phone/NavStubView;->finalization(ZZZLjava/lang/String;)V

    return-void

    :cond_4
    const/16 v22, 0x0

    const/16 v21, 0x0

    const-string/jumbo v34, "none"

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    const/4 v6, 0x0

    aput v5, v4, v6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-string/jumbo v34, "cancel"

    :goto_3
    move-object/from16 v12, v34

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v15, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    move/from16 v9, v22

    move/from16 v10, v21

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getRecentBlurRatio()F

    move-result v32

    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    const/high16 v23, 0x3f800000    # 1.0f

    :goto_4
    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView$16;

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/systemui/statusbar/phone/NavStubView$16;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;IIIFFFLjava/lang/String;)V

    invoke-virtual {v15, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView$17;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v4, v0, v1, v12}, Lcom/android/systemui/statusbar/phone/NavStubView$17;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;ILjava/lang/String;)V

    invoke-virtual {v15, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/NavStubJankyFrameReporter;->resetAnimationFrameIntervalParams(Ljava/lang/String;)V

    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_8

    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    const-string/jumbo v4, "homeScale"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v39, 0x0

    aput v6, v5, v39

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v39, 0x1

    aput v6, v5, v39

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v31

    const-string/jumbo v4, "homeAlpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    const/16 v39, 0x0

    aput v6, v5, v39

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v39, 0x1

    aput v6, v5, v39

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v30

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v30, v4, v5

    const/4 v5, 0x1

    aput-object v31, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCubicEaseOutInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavStubView$18;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/systemui/statusbar/phone/NavStubView$18;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    const/4 v5, 0x1

    aput-object v18, v4, v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v4, 0xc8

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    :goto_5
    return-void

    :pswitch_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToRecents:Z

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpWidth:I

    int-to-float v5, v5

    div-float v26, v4, v5

    :cond_5
    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    const/4 v6, 0x0

    aput v5, v4, v6

    const/4 v5, 0x1

    aput v26, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->getScaleX()F

    move-result v21

    :cond_6
    const-string/jumbo v34, "recents"

    goto/16 :goto_3

    :pswitch_2
    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    const/4 v6, 0x0

    aput v5, v4, v6

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    aput v5, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v15

    const-string/jumbo v34, "home"

    goto/16 :goto_3

    :cond_7
    const/16 v23, 0x0

    goto/16 :goto_4

    :cond_8
    sget v4, Lcom/android/systemui/statusbar/phone/NavStubView;->DEFAULT_ANIM_TIME:I

    int-to-long v4, v4

    invoke-virtual {v15, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private startHomeAnimation(I)V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x2

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStateMode:I

    const v10, 0x10003

    if-ne v9, v10, :cond_1

    if-eq p1, v13, :cond_0

    if-ne p1, v12, :cond_1

    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHomeFadeInAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    new-array v9, v12, [F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    const/4 v11, 0x0

    aput v10, v9, v11

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v9, v13

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v9, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentsView;->getTranslationY()F

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/RecentsView;->getScaleX()F

    move-result v1

    :cond_2
    move v7, v2

    move v6, v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getRecentBlurRatio()F

    move-result v8

    const/4 v9, 0x3

    if-ne p1, v9, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    new-instance v9, Lcom/android/systemui/statusbar/phone/NavStubView$9;

    invoke-direct {v9, p0, p1, v7, v6}, Lcom/android/systemui/statusbar/phone/NavStubView$9;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;IFF)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    sget v9, Lcom/android/systemui/statusbar/phone/NavStubView;->DEFAULT_ANIM_TIME:I

    int-to-long v4, v9

    if-ne p1, v12, :cond_3

    const-wide/16 v4, 0xc8

    :cond_3
    new-instance v9, Lcom/android/systemui/statusbar/phone/NavStubView$10;

    invoke-direct {v9, p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView$10;-><init>(Lcom/android/systemui/statusbar/phone/NavStubView;I)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateRecentsBlurRatio(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateBlurRatio(F)V

    :cond_0
    return-void
.end method

.method private updateViewLayout(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->getWindowParam(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mNeedRender:Z

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "need render:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mNeedRender:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    const/4 v8, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mNeedRender:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getHeight()I

    move-result v6

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "gatherTransparentRegion: need render w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  h:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v7, :cond_1

    if-lez v6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLocation:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getLocationInWindow([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLocation:[I

    aget v1, v0, v8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    add-int v3, v1, v7

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v8

    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v0

    return v0
.end method

.method public getWindowParam(I)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    move v6, p1

    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7eb

    const/16 v4, 0x128

    const/4 v5, -0x3

    move v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x40

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string/jumbo v2, "GestureStub"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/NavStubViewAttachToWindowEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/NavStubViewAttachToWindowEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.android.systemui.fullscreen.statechange"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;)V
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/FsGestureLaunchTargetTaskViewRectEvent;->mRectF:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectHeightScale:F

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mBackGround:Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsBg:Landroid/view/View;

    iget-object v0, p1, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;->mRecentsContainer:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;)V
    .locals 1

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;->inMultiWindow:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsMultiWindow:Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;->visible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCancelActionToStartApp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v6, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mOrientationChangedAfterDown:Z

    if-nez v6, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mOrientationChangedAfterDown:Z

    and-int/lit16 v6, v0, 0x400

    if-eqz v6, :cond_3

    const/4 v3, 0x1

    :goto_2
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_4

    const/4 v4, 0x1

    :goto_3
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowSize:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->updateViewLayout(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mFullScreenModeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToHome:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    div-int/lit8 v1, v1, 0x2

    sub-int v9, v0, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iput v9, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpWidth:I

    add-int/2addr v1, v8

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    add-int/2addr v1, v9

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToHome:Z

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestRectF:Landroid/graphics/RectF;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsAppToRecents:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mSrc:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mSrc:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarDec:I

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mSrc:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mSrc:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpScale:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarDec:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDest:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mSrc:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDest:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDestTopOffset:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarDec:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDest:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDest:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDest:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDest:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->RADIUS_SIZE:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->RADIUS_SIZE:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mModeSrcIn:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mSrc:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDest:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mBitmapShown:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mBitmapShown:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->onGestureStart()V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int v8, v0, v1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    sub-int v9, v0, v1

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v10, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    int-to-float v4, v10

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    int-to-float v4, v10

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->RADIUS_SIZE:I

    int-to-float v5, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->RADIUS_SIZE:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mModeSrcIn:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mXScale:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mYScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPivotLocY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBmpHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mShowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_2
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onPointEvent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsInFsMode:Z

    if-eqz v6, :cond_1

    return v9

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->isMistakeTouch()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1104a3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLastTouchTime:J

    return v9

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownNo:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownNo:I

    :cond_3
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownNo:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLastDownNo:I

    if-ne v6, v7, :cond_4

    return v9

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v10, v6, :cond_5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownNo:I

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mLastDownNo:I

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsFullScreenMode:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsFullScreenModeCurTime:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownTime:J

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mOrientationChangedAfterDown:Z

    new-instance v1, Lcom/android/systemui/recents/model/MutableBoolean;

    invoke-direct {v1, v9}, Lcom/android/systemui/recents/model/MutableBoolean;-><init>(Z)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible(Lcom/android/systemui/recents/model/MutableBoolean;)Z

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/Application;

    invoke-virtual {v6}, Lcom/android/systemui/Application;->getSystemUIApplication()Lcom/android/systemui/SystemUIApplication;

    move-result-object v0

    const-class v6, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v6}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x4

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v6, v6, Lcom/android/systemui/statusbar/phone/StatusBar;->mExpandedVisible:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v6, v9}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    :cond_7
    :goto_1
    sget-object v6, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "current window mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " (1:home, 2:app, 3:recent-task, 4:keyguard)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_8

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v11, :cond_e

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v10, v6, :cond_9

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsInFsMode:Z

    :cond_9
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    packed-switch v6, :pswitch_data_0

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsInFsMode:Z

    :goto_3
    return v9

    :cond_a
    if-eqz v4, :cond_b

    const/4 v6, 0x3

    iput v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    goto :goto_0

    :cond_b
    iget-boolean v6, v1, Lcom/android/systemui/recents/model/MutableBoolean;->value:Z

    if-eqz v6, :cond_c

    iput v10, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    goto :goto_0

    :cond_c
    iput v11, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mWindowMode:I

    goto :goto_0

    :cond_d
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v6}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto :goto_1

    :cond_e
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenHeight:I

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mScreenWidth:I

    goto :goto_2

    :pswitch_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mGestureStubListenerWrapper:Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/NavStubView$GestureStubListenerWrapper;->mListener:Landroid/view/IGestureStubListener;

    if-eqz v6, :cond_f

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->appTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->appTouchResolutionForVersionTwo(Landroid/view/MotionEvent;)V

    goto :goto_3

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->homeTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavStubView;->simpleTouchResolution(Landroid/view/MotionEvent;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onTouchEvent:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrAction:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrAction:I

    packed-switch v7, :pswitch_data_0

    :cond_1
    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPendingResetStatus:Z

    if-nez v7, :cond_a

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    if-nez v7, :cond_2

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrAction:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v8, 0x102

    invoke-virtual {v7, v8, v5}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v7, 0x1

    return v7

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mInitX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mInitY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrY:F

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v8, 0x100

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v9, 0x100

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    const-wide/16 v10, 0x12c

    invoke-virtual {v7, v8, v10, v11}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "onTouch ACTION_DOWN sendMessageDelayed MSG_CHECK_GESTURE_STUB_TOUCHABLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrY:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrY:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mInitY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrX:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mInitX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrX:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mInitX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPendingResetStatus:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "h-slide detected, sendMessage MSG_SET_GESTURE_STUB_UNTOUCHABLE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mPendingResetStatus:Z

    if-nez v7, :cond_1

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mInitY:F

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrY:F

    sub-float/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    if-nez v7, :cond_1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->exitFreeFormWindowIfNeeded()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->clearMessages()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v7, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v7}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v8, 0x102

    invoke-virtual {v7, v8, v5}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-nez v4, :cond_6

    const/4 v7, 0x1

    return v7

    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    iput v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long v8, v0, v8

    const-wide/16 v10, 0x12c

    cmp-long v7, v8, v10

    if-gez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavStubView;->clearMessages()V

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrX:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    sub-float v2, v7, v8

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrY:F

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    sub-float v3, v7, v8

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    if-nez v7, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x41f00000    # 30.0f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mHandler:Lcom/android/systemui/statusbar/phone/NavStubView$H;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/NavStubView$H;->sendMessage(Landroid/os/Message;)Z

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "currTime - mDownTime < MSG_CHECK_GESTURE_STUB_TOUCHABLE_TIMEOUT updateViewLayout UnTouchable, diffX:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " diffY:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/NavStubView;->DEBUG:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/systemui/statusbar/phone/NavStubView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ACTION_UP: mIsGestureStarted: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mIsGestureStarted:Z

    goto/16 :goto_0

    :cond_9
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mCurrAction:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    :cond_a
    const/4 v7, 0x0

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public sendEvent(III)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NavStubView;->sendEvent(IIIJ)V

    return-void
.end method

.method sendEvent(IIIJ)V
    .locals 16

    move/from16 v0, p2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    const/4 v10, 0x1

    :goto_0
    new-instance v3, Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownTime:J

    or-int/lit8 v2, p2, 0x8

    or-int/lit8 v14, v2, 0x40

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v15, 0x101

    move-wide/from16 v6, p4

    move/from16 v8, p1

    move/from16 v9, p3

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mKeepHidden:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mKeepHidden:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mDisableTouch:Z

    if-nez v0, :cond_0

    invoke-super {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public startAppEnterRecentsAnim()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavStubView;->mAppEnterRecentsAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
