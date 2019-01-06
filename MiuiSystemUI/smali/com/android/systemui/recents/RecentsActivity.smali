.class public Lcom/android/systemui/recents/RecentsActivity;
.super Landroid/app/Activity;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsActivity$1;,
        Lcom/android/systemui/recents/RecentsActivity$2;,
        Lcom/android/systemui/recents/RecentsActivity$3;,
        Lcom/android/systemui/recents/RecentsActivity$4;,
        Lcom/android/systemui/recents/RecentsActivity$5;,
        Lcom/android/systemui/recents/RecentsActivity$6;,
        Lcom/android/systemui/recents/RecentsActivity$7;,
        Lcom/android/systemui/recents/RecentsActivity$8;,
        Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;,
        Lcom/android/systemui/recents/RecentsActivity$RecentsHandler;
    }
.end annotation


# static fields
.field public static mFreeBeforeClean:J

.field private static sForceBlack:Z


# instance fields
.field private mAccessControlLockModeObserver:Landroid/database/ContentObserver;

.field private mBackGround:Landroid/view/View;

.field private mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

.field public final mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mDismissAllTaskViewEventTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDockBtn:Landroid/widget/TextView;

.field private mExitMultiModeBtn:Landroid/widget/Button;

.field private mFinishedOnStartup:Z

.field private mFocusTimerDuration:I

.field private mForceBlackObserver:Landroid/database/ContentObserver;

.field private mFreeAtFirst:J

.field private mHandler:Landroid/os/Handler;

.field private mHomeIntent:Landroid/content/Intent;

.field private mIgnoreAltTabRelease:Z

.field private mIncompatibleAppOverlay:Landroid/view/View;

.field private mIsAddExitMultiModeBtn:Z

.field private mIsRecommendVisible:Z

.field private mIsShowRecommend:Z

.field private mIsVisible:Z

.field private mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

.field private mLastDeviceOrientation:I

.field private mLastDisplayDensity:I

.field private mLastTabKeyEventTime:J

.field private mMemoryAndClearContainer:Landroid/view/ViewGroup;

.field private mNeedMoveRecentsToFrontOfFsGesture:Z

.field private mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

.field private mReceivedNewIntent:Z

.field private mRecentsContainer:Landroid/widget/FrameLayout;

.field private final mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

.field private mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

.field private mRotation:I

.field private final mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

.field private mSeparatorForMemoryInfo:Landroid/view/View;

.field private mSetDummyTranslucentMethod:Ljava/lang/reflect/Method;

.field private mShowRecommendObserver:Landroid/database/ContentObserver;

.field private mSlideCoverObserver:Landroid/database/ContentObserver;

.field final mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTipView:Landroid/widget/TextView;

.field private mTotalMemory:J

.field private mTxtMemoryContainer:Landroid/view/ViewGroup;

.field private mTxtMemoryInfo1:Landroid/widget/TextView;

.field private mTxtMemoryInfo2:Landroid/widget/TextView;

.field private final mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissAllTaskViewEventTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/RecentsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFreeAtFirst:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/RecentsActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/recents/RecentsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/recents/RecentsActivity;)Lcom/android/systemui/recents/views/RecentsView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/recents/RecentsActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/recents/RecentsActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTotalMemory:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;)Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissAllTaskViewEventTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/recents/RecentsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsShowRecommend:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/recents/RecentsActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    return p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/systemui/recents/RecentsActivity;->sForceBlack:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->cleanInRecents()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->doClearAnim()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->endForClear()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/recents/RecentsActivity;->sForceBlack:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$RecentsHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$RecentsHandler;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mNeedMoveRecentsToFrontOfFsGesture:Z

    new-instance v0, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/UserInteractionEvent;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$1;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$2;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$3;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$4;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$4;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceBlackObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$5;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlideCoverObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$6;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAccessControlLockModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$7;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/RecentsActivity$7;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mShowRecommendObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$8;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    return-void
.end method

.method private addRecentsRecommendViewIfNeeded()V
    .locals 8

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isShowRecentsRecommend()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d00d7

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/RecentsRecommendView;

    iput-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    const-string/jumbo v5, "window"

    invoke-virtual {p0, v5}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v6

    mul-float/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703d0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v4, v5

    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    div-int/lit8 v2, v5, 0x3

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x42700000    # 60.0f

    invoke-static {v5, v6}, Lcom/android/systemui/recents/misc/Utilities;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v5

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v5, v2, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    invoke-virtual {v5, v6, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private cleanInRecents()V
    .locals 6

    const/16 v4, 0x3e8

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFreeMemory()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mFreeAtFirst:J

    sput-wide v2, Lcom/android/systemui/recents/RecentsActivity;->mFreeBeforeClean:J

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->deepClean()V

    new-instance v0, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;

    invoke-direct {v0}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;-><init>()V

    invoke-virtual {v0}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-virtual {v0}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEvent;->getAnimationTrigger()Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDismissAllTaskViewEventTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private deepClean()V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$19;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$19;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doClearAnim()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->refreshMemoryInfo()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$18;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->animatorStart(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private endForClear()V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEndEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/DismissAllTaskViewsEndEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->post(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$17;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private fitsSystemWindowInsets(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/android/systemui/recents/RecentsActivity$13;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/RecentsActivity$13;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private getExitMultiModeBtnParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    const/4 v1, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7eb

    const v4, 0x20028

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v1, 0x7f12000d

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const-string/jumbo v1, "ExitMultiModeBtn"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public static getFormatedMemory(J)Ljava/lang/String;
    .locals 12

    const-wide/16 v6, 0x400

    const-wide/16 v10, 0xa

    div-long v4, p0, v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_0
    long-to-double v6, v4

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    div-long v0, v2, v10

    rem-long v6, v2, v10

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    rem-long v8, v2, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " G"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " G"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getToastMsg(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 13

    sub-long v6, p3, p1

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const/4 v2, 0x0

    const-wide/16 v6, 0x2800

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    const-wide/16 v6, 0x400

    div-long v0, v4, v6

    const-wide/16 v6, 0x400

    cmp-long v3, v0, v6

    if-gez v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f1103eb

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "%.1f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    long-to-float v10, v0

    const/high16 v11, 0x44800000    # 1024.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f1103ea

    invoke-virtual {v3, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x11090084

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static isForceBlack()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsActivity;->sForceBlack:Z

    return v0
.end method

.method private isMemInfoShow()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_recents_show_mem_info"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/MiuiSettings$System;->getBooleanForUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public static queryAppConfigure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v9

    const-string/jumbo v3, "pkgName = ? AND userId = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v4, v1

    const-string/jumbo v6, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.miui.powerkeeper.configure"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v5, "userTable"

    invoke-static {v1, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "bgControl"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v6
.end method

.method private registerContentObservers()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "force_black"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceBlackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceBlackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isSlideCoverDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sc_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlideCoverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_lock_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mAccessControlLockModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mAccessControlLockModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "miui_recents_show_recommend"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mShowRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mShowRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mShowRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method private registerDisplayListener()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayChanged(I)V

    :cond_0
    return-void
.end method

.method private reloadStackView()V
    .locals 15

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/recents/RecentsImpl;->consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual {v6, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v5

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v12

    if-nez v12, :cond_1

    iget v12, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iget-boolean v13, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    xor-int/lit8 v13, v13, 0x1

    invoke-virtual {v6, v5, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    :cond_1
    new-instance v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iget v12, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    iput v12, v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    iget v12, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v12, v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iget v12, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v12, v4, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    invoke-virtual {v6, p0, v5, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-boolean v13, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v14

    if-nez v14, :cond_2

    move v10, v11

    :cond_2
    invoke-virtual {v12, v13, v10}, Lcom/android/systemui/recents/views/RecentsView;->onReload(ZZ)V

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10, v7, v11}, Lcom/android/systemui/recents/views/RecentsView;->updateStack(Lcom/android/systemui/recents/model/TaskStack;Z)V

    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-nez v10, :cond_4

    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    xor-int/lit8 v9, v10, 0x1

    :goto_0
    if-eqz v9, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v10

    new-instance v12, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;

    invoke-direct {v12}, Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;-><init>()V

    invoke-virtual {v10, v12}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_3
    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedWithAltTab:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "overview_trigger_alttab"

    invoke-static {p0, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_1
    iget-boolean v10, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromApp:Z

    if-eqz v10, :cond_7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getLaunchTarget()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v7, v2}, Lcom/android/systemui/recents/model/TaskStack;->indexOfStackTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v3

    :goto_2
    const-string/jumbo v10, "overview_source_app"

    invoke-static {p0, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v10, "overview_source_app_index"

    invoke-static {p0, v10, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_3
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v8

    const-string/jumbo v10, "overview_task_count"

    invoke-static {p0, v10, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v11, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    invoke-static {v7}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendEnterRecentsEvent(Lcom/android/systemui/recents/model/TaskStack;)V

    return-void

    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    :cond_5
    const-string/jumbo v10, "overview_trigger_nav_btn"

    invoke-static {p0, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    const-string/jumbo v10, "overview_source_home"

    invoke-static {p0, v10, v11}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3
.end method

.method private setSystemUiVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/16 v1, 0x304

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setupVisible()V
    .locals 6

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->updateExitMultiModeBtnVisible(Z)V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateDockBtnVisible()V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsRecommendViewVisible()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v2

    xor-int/lit8 v0, v2, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    if-lez v1, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isMemInfoShow()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_3

    if-lez v1, :cond_3

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :cond_3
    move v3, v4

    goto :goto_3
.end method

.method private showHybridApplicationInfo(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    const-string/jumbo v0, "com.miui.hybrid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.miui.hybrid.action.APP_DETAIL_MANAGER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "base_intent"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private unRegisterContentObservers()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mForceBlackObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->isSlideCoverDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mSlideCoverObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mAccessControlLockModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mShowRecommendObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private unRegisterDisplayListener()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "display"

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_0
    return-void
.end method

.method public static updateAppConfigure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$15;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/recents/RecentsActivity$15;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateBlurRatioIfNeed()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->updateBlurRatio(F)V

    :cond_0
    return-void
.end method

.method private updateDockBtnVisible()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    sget-boolean v2, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->supportsMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateExitMultiModeBtnVisible(Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/misc/Utilities;->supportsMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0036

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$14;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$14;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->getExitMultiModeBtnParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsAddExitMultiModeBtn:Z

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsAddExitMultiModeBtn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRecentsRecommendViewVisible()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isInMultiWindowMode()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsShowRecommend:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsRecommendVisible:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    iget-boolean v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsRecommendVisible:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRecommendView;->setVisibility(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method


# virtual methods
.method public final checkFsGestureOnEnterRecents()V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x3f8ccccd    # 1.1f

    const v4, 0x3f666666    # 0.9f

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/Application;

    invoke-virtual {v3}, Lcom/android/systemui/Application;->getSystemUIApplication()Lcom/android/systemui/SystemUIApplication;

    move-result-object v0

    const-class v3, Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0, v3}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/Recents;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/Recents;->getRecentsImpl()Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/systemui/recents/Recents;->getRecentsImpl()Lcom/android/systemui/recents/RecentsImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsImpl;->getIsHideRecentsViewByFsGesture()Z

    move-result v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    invoke-direct {v4, v5, v8}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v7}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    const/4 v5, 0x1

    invoke-direct {v4, v6, v8, v5}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZZ)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/recents/views/RecentsView;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method dismissRecentsToHome(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(ZLandroid/app/ActivityOptions;)V

    return-void
.end method

.method dismissRecentsToHome(ZLandroid/app/ActivityOptions;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/recents/views/RecentMenuView;->removeMenu(Z)Z

    new-instance v0, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;

    invoke-direct {v0, p1}, Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;-><init>(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v2, p0, v3, p2}, Lcom/android/systemui/recents/RecentsActivity$LaunchHomeRunnable;-><init>(Lcom/android/systemui/recents/RecentsActivity;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v1, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mNeedMoveRecentsToFrontOfFsGesture:Z

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    const-string/jumbo v2, "homekey"

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method dismissRecentsToHomeIfVisible(Z)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToLaunchTargetTaskOrHome()Z
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToTargetTask(I)Z
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/recents/views/RecentsView;->launchTargetTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method dismissRecentsToTargetTaskOrHome()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->launchTargetTask(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    return v2

    :cond_1
    return v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/events/RecentsEventBus;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "RecentsActivity"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " visible="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Y"

    :goto_0
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, " [0x"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "]"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, p1, p3}, Lcom/android/systemui/recents/views/RecentsView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-lez v1, :cond_1

    const-string/jumbo v1, "enableDebugRecents"

    aget-object v2, p4, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean v4, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    sput-boolean v4, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v1, "N"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "disableDebugRecents"

    aget-object v2, p4, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sput-boolean v3, Lcom/android/systemui/recents/misc/SystemServicesProxy;->DEBUG:Z

    sput-boolean v3, Lcom/android/systemui/recents/events/RecentsEventBus;->DEBUG_TRACE_ALL:Z

    goto :goto_1
.end method

.method public getFreeMemory()J
    .locals 6

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    const-string/jumbo v1, "RecentsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getFreeMemory:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x400

    div-long v4, v2, v4

    return-wide v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RecentsActivity"

    const-string/jumbo v4, "getFreeMemory"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v2

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateBlurRatioIfNeed()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->updateDockRegions(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentMenuView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getMenuView()Lcom/android/systemui/recents/views/RecentMenuView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentMenuView;->removeMenu(Z)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const-string/jumbo v0, "hideRecents"

    const-string/jumbo v1, "clickBackKey"

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;)V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSetDummyTranslucentMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mSetDummyTranslucentMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-boolean v4, p1, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;->mIsTranslucent:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/systemui/recents/events/activity/CancelEnterRecentsWindowAnimationEvent;->launchTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    iget v3, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedToTaskId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelWindowTransition(I)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getTaskId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->cancelThumbnailTransition(I)V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DismissRecentsToHomeAnimationStarted;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedFirstAnimationFrameEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowAnimationCompletedEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/EnterRecentsWindowLastAnimationFrameEvent;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ExitRecentsWindowFirstAnimationFrameEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->isLastTaskLaunchedFreeform()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/ui/UpdateFreeformTaskViewVisibilityEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->invalidate()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-boolean v1, p1, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsCompleteEvent;->mMoveRecentsToFront:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mNeedMoveRecentsToFrontOfFsGesture:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getTaskId()I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->setScaleX(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/recents/views/RecentsView;->setScaleY(F)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mNeedMoveRecentsToFrontOfFsGesture:Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;)V
    .locals 12

    const-wide/16 v10, 0xc8

    const/high16 v8, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lcom/android/systemui/recents/events/activity/FsGestureEnterRecentsZoomEvent;->mTimeOffset:J

    const-wide/16 v6, 0x11b

    sub-long v4, v6, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lmiui/view/animation/SineEaseInOutInterpolator;

    invoke-direct {v3}, Lmiui/view/animation/SineEaseInOutInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureSlideInEvent;)V
    .locals 8

    const-wide/16 v6, 0xc8

    const v2, 0x3f866666    # 1.05f

    const v1, 0x3f733333    # 0.95f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/FsGestureSlideOutEvent;)V
    .locals 8

    const-wide/16 v6, 0x96

    const-wide/16 v4, 0x0

    const v3, 0x3f8ccccd    # 1.1f

    const v1, 0x3f666666    # 0.9f

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->CUBIC_EASE_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideMemoryAndDockEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setupVisible()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/HideRecentsEvent;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->updateDockRegions(Z)V

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromScroll:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromAltTab:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToTargetTaskOrHome()Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromHomeKey:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromScroll:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p1, Lcom/android/systemui/recents/events/activity/HideRecentsEvent;->triggeredFromFsGesture:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->launchPreviousTask()Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/IterateRecentsEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getDebugFlags()Lcom/android/systemui/recents/RecentsDebugFlags;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsDebugFlags;->isFastToggleRecentsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/recents/misc/DozeTrigger;->setDozeDuration(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->isDozing()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->startDozing()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v3, v1}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const/16 v2, 0x114

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/DozeTrigger;->poke()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskFailedEvent;)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    const-string/jumbo v0, "overview_task_launch_failed"

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "overview_task_launch_index"

    iget v1, p1, Lcom/android/systemui/recents/events/activity/LaunchTaskSucceededEvent;->taskIndexFromStackFront:I

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "hideRecents"

    const-string/jumbo v1, "switchApp"

    invoke-static {v0, v1}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mNeedMoveRecentsToFrontOfFsGesture:Z

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/recents/events/activity/AnimFirstTaskViewAlphaEvent;-><init>(FZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v1}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/NavStubViewAttachToWindowEvent;)V
    .locals 5

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;-><init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ScrollerFlingFinishEvent;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ShowMemoryAndDockEvent;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setupVisible()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsRecommendView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p1, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;->mTranslationY:I

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/RecentsRecommendView;->setTranslationY(F)V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v3

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    iget v4, p1, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;->mTranslationY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/RecentsView;->getTaskViewPaddingView()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p1, Lcom/android/systemui/recents/events/activity/StackScrollChangedEvent;->mTranslationY:I

    add-int/2addr v3, v1

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :cond_2
    int-to-float v3, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/ToggleRecentsEvent;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToLaunchTargetTaskOrHome()Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;)V
    .locals 7

    iget-object v3, p1, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v4, v2, v5}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Enterprise"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is protected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v4, p1, Lcom/android/systemui/recents/events/component/ChangeTaskLockStateEvent;->isLocked:Z

    iput-boolean v4, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    :try_start_0
    iget-object v4, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    iget-boolean v5, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    invoke-static {v2, v4, v5}, Lmiui/process/ProcessManager;->updateApplicationLockedState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v1, "noRestrict"

    iget-boolean v4, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "noRestrict"

    invoke-static {v4, v2, v5}, Lcom/android/systemui/recents/RecentsActivity;->updateAppConfigure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-boolean v4, v3, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "lockTask"

    :goto_2
    iget-object v5, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "RecentsActivity"

    const-string/jumbo v5, "ChangeTaskLockState"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "noRestrict"

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/android/systemui/recents/RecentsActivity;->queryAppConfigure(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "miuiAuto"

    invoke-static {v4, v2, v5}, Lcom/android/systemui/recents/RecentsActivity;->updateAppConfigure(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "unLockTask"

    goto :goto_2
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ExitMultiModeEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsAddExitMultiModeBtn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/component/ScreenPinningRequestEvent;)V
    .locals 2

    const-string/jumbo v0, "overview_screen_pinned"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mEmpty:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->mFromDockGesture:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget v3, p1, Lcom/android/systemui/recents/events/ui/AllTaskViewsDismissedEvent;->msgResId:I

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->showEmptyView(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    const-string/jumbo v2, "overview_task_all_dismissed"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v2, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToTargetTaskOrHome()Z

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/CleanInRecentsEvents;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->cleanInRecents()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;)V
    .locals 5

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {p0, v2, v3}, Lcom/miui/enterprise/ApplicationHelper;->shouldKeeAlive(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    const-string/jumbo v2, "RecentsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-boolean v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->remainProcess:Z

    if-nez v2, :cond_1

    iget-object v2, p1, Lcom/android/systemui/recents/events/ui/DeleteTaskDataEvent;->task:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->killProcess(Lcom/android/systemui/recents/model/Task;)V

    :cond_1
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/HideIncompatibleAppOverlayEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v3, :cond_2

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->showHybridApplicationInfo(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "com.android.settings.applications.InstalledAppDetailsTop"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x14000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v3}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "is_xspace_app"

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v3, "overview_app_info"

    invoke-static {p0, v3, v6}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v3, "showAppInfo"

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v3, "is_xspace_app"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/systemui/recents/RecentsActivity;->showHybridApplicationInfo(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "miui.intent.action.APP_MANAGER_APPLICATION_DETAIL"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    const-string/jumbo v3, "package_name"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.extra.USER_ID"

    iget-object v4, p1, Lcom/android/systemui/recents/events/ui/ShowApplicationInfoEvent;->task:Lcom/android/systemui/recents/model/Task;

    iget-object v4, v4, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v3, 0x10800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "RecentsActivity"

    const-string/jumbo v4, "ShowApplicationInfo"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/ShowIncompatibleAppOverlayEvent;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x7f0a0123

    invoke-static {p0, v0}, Lcom/android/systemui/recents/misc/Utilities;->findViewStubById(Landroid/app/Activity;I)Landroid/view/ViewStub;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIncompatibleAppOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/StackViewScrolledEvent;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/UserInteractionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/RecentsView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v1

    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    iget v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    iget v8, v0, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v8, :cond_2

    move v5, v3

    :goto_1
    if-lez v1, :cond_3

    :goto_2
    invoke-direct {v7, v4, v2, v5, v3}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070391

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->setPadding(IIII)V

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateRecentsRecommendViewVisible()V

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move v5, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/Window;->requestFeature(I)Z

    iput-boolean v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v5

    if-nez v5, :cond_0

    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "launchState"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->copyFrom(Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, p0, v7}, Lcom/android/systemui/recents/events/RecentsEventBus;->register(Ljava/lang/Object;I)V

    new-instance v6, Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v6, p0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;)V

    const v6, 0x7f0d00d2

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->setContentView(I)V

    invoke-virtual {p0, v8}, Lcom/android/systemui/recents/RecentsActivity;->takeKeyEvents(Z)V

    const v6, 0x7f0a022c

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    const v6, 0x7f0a022d

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/RecentsView;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalPhysicalMemory()J

    move-result-wide v6

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTotalMemory:J

    const v6, 0x7f0a018e

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    const v6, 0x7f0a02f4

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    const v6, 0x7f0a02f5

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo1:Landroid/widget/TextView;

    const v6, 0x7f0a02f6

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo2:Landroid/widget/TextView;

    const v6, 0x7f0a0287

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mSeparatorForMemoryInfo:Landroid/view/View;

    const v6, 0x7f0a0083

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    const v6, 0x7f0a005c

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    const v6, 0x7f0a02d4

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTipView:Landroid/widget/TextView;

    const v6, 0x7f0a0047

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->addRecentsRecommendViewIfNeeded()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v7, v7, 0x4000

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {p0}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v0

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDeviceOrientation:I

    iget v6, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastDisplayDensity:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    new-instance v6, Lcom/android/systemui/recents/misc/DozeTrigger;

    iget v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mFocusTimerDuration:I

    new-instance v8, Lcom/android/systemui/recents/RecentsActivity$9;

    invoke-direct {v8, p0}, Lcom/android/systemui/recents/RecentsActivity$9;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/recents/misc/DozeTrigger;-><init>(ILjava/lang/Runnable;)V

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v7}, Lcom/android/systemui/recents/views/RecentsView;->getBackgroundScrim()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MAIN"

    invoke-direct {v6, v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.category.HOME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mHomeIntent:Landroid/content/Intent;

    const/high16 v7, 0x10200000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Lcom/android/systemui/Dependency;->SCREEN_OFF_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Handler;

    invoke-virtual {p0, v7, v2, v10, v6}, Lcom/android/systemui/recents/RecentsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Landroid/view/Window;->addPrivateFlags(I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    const v7, 0x7f0802da

    const v8, 0x7f080078

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setDrawables(II)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    new-instance v7, Lcom/android/systemui/recents/RecentsActivity$10;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/RecentsActivity$10;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    new-instance v7, Lcom/android/systemui/recents/RecentsActivity$11;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/RecentsActivity$11;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    new-instance v7, Lcom/android/systemui/recents/RecentsActivity$12;

    invoke-direct {v7, p0}, Lcom/android/systemui/recents/RecentsActivity$12;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->fitsSystemWindowInsets(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mMemoryAndClearContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->fitsSystemWindowInsets(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v6}, Lcom/android/systemui/recents/RecentsActivity;->fitsSystemWindowInsets(Landroid/view/View;)V

    iget-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;

    iget-object v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    iget-object v9, p0, Lcom/android/systemui/recents/RecentsActivity;->mBackGround:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-direct {v7, v8, v9, v10}, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;-><init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "setDummyTranslucent"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mSetDummyTranslucentMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v6

    iget-boolean v4, v6, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedFromHome:Z

    :goto_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;

    invoke-direct {v7, v4}, Lcom/android/systemui/recents/events/activity/ActivitySetDummyTranslucentEvent;-><init>(Z)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->registerContentObservers()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mFinishedOnStartup:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSystemBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/RecentsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mPackageMonitor:Lcom/android/systemui/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsPackageMonitor;->unregister()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/RecentsEventBus;->unregister(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsAddExitMultiModeBtn:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mExitMultiModeBtn:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsAddExitMultiModeBtn:Z

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;

    invoke-direct {v1, v2, v2, v2}, Lcom/android/systemui/recents/events/activity/FsGestureRecentsViewWrapperEvent;-><init>(Lcom/android/systemui/recents/views/RecentsView;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->unRegisterDisplayListener()V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->unRegisterContentObservers()V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mSendEnterWindowAnimationCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    sub-long/2addr v4, v6

    int-to-long v6, v0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mLastTabKeyEventTime:J

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    :cond_2
    return v9

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    goto :goto_1

    :sswitch_1
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;

    invoke-direct {v4, v8}, Lcom/android/systemui/recents/events/ui/focus/FocusNextTaskViewEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return v9

    :sswitch_2
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/FocusPreviousTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return v9

    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;

    invoke-direct {v4}, Lcom/android/systemui/recents/events/ui/focus/DismissFocusedTaskViewEvent;-><init>()V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const-string/jumbo v3, "overview_task_dismissed_source"

    invoke-static {p0, v3, v8}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x3d -> :sswitch_0
        0x43 -> :sswitch_3
        0x70 -> :sswitch_3
    .end sparse-switch
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v3

    const/4 v8, -0x1

    invoke-virtual {v4, v3, v8, v10}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;IZ)V

    new-instance v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    iget v8, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleTasks:I

    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iget v8, v1, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedNumVisibleThumbnails:I

    iput v8, v2, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    invoke-virtual {v4, p0, v3, v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    invoke-virtual {v3}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/TaskStack;->getStackTaskCount()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v11

    new-instance v12, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;

    if-lez v5, :cond_3

    move v8, v9

    :goto_1
    invoke-direct {v12, v9, v10, v10, v8}, Lcom/android/systemui/recents/events/activity/ConfigurationChangedEvent;-><init>(ZZZZ)V

    invoke-virtual {v11, v12}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v8

    new-instance v9, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;

    invoke-direct {v9, p1, v6, v7}, Lcom/android/systemui/recents/events/activity/MultiWindowStateChangedEvent;-><init>(ZZLcom/android/systemui/recents/model/TaskStack;)V

    invoke-virtual {v8, v9}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    iget-boolean v8, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v8, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setupVisible()V

    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/systemui/recents/RecentsActivity;->updateDockRegions(Z)V

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setSystemUiVisibility()V

    :cond_1
    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    move v8, v10

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string/jumbo v1, "launchState"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->copyFrom(Lcom/android/systemui/recents/RecentsActivityLaunchState;)V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsDrawnEventListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->reloadStackView()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIgnoreAltTabRelease:Z

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIterateTrigger:Lcom/android/systemui/recents/misc/DozeTrigger;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/DozeTrigger;->stopDozing()V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    new-instance v1, Lcom/android/systemui/recents/RecentsActivity$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/RecentsActivity$16;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->stopAnimator()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->refreshMemoryInfo()V

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->isMemInfoShow()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setupVisible()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsRecommendVisible:Z

    invoke-static {v0}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendShowRecommendCardEvent(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->updateBlurRatioIfNeed()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasDockedTask()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->setSystemUiVisibility()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string/jumbo v1, "RecentsActivity"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const/16 v1, 0xe0

    invoke-static {p0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/recents/RecentsActivityLaunchState;->launchedViaFsGesture:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    const-string/jumbo v2, "com.miui.home"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;->registerDisplayListener()V

    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string/jumbo v2, "RecentsActivity"

    const-string/jumbo v3, "onStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    iput-boolean v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mReceivedNewIntent:Z

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/events/component/RecentsVisibilityChangedEvent;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    const/16 v2, 0xe0

    invoke-static {p0, v2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    const-string/jumbo v2, "hideRecents"

    const-string/jumbo v3, "total"

    invoke-static {v2, v3}, Lcom/android/systemui/recents/misc/RecentsPushEventHelper;->sendRecentsEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->getLaunchState()Lcom/android/systemui/recents/RecentsActivityLaunchState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/RecentsActivityLaunchState;->reset()V

    invoke-direct {p0, v4}, Lcom/android/systemui/recents/RecentsActivity;->updateExitMultiModeBtnVisible(Z)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/RecentsActivity;->updateDockRegions(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->resetHomeAlphaScale()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->isChangingConfigurations()Z

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/recents/views/TaskStackView;->setIsChangingConfigurations(Z)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->endProlongedAnimations()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getTaskLoader()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public onUserInteraction()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsActivity;->mUserInteractionEvent:Lcom/android/systemui/recents/events/ui/UserInteractionEvent;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method

.method public refreshMemoryInfo()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    sget-wide v6, Lcom/android/systemui/recents/RecentsActivity;->mFreeBeforeClean:J

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getFreeMemory()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/android/systemui/recents/RecentsActivity;->getFormatedMemory(J)Ljava/lang/String;

    move-result-object v0

    iget-wide v6, p0, Lcom/android/systemui/recents/RecentsActivity;->mTotalMemory:J

    invoke-static {v6, v7}, Lcom/android/systemui/recents/RecentsActivity;->getFormatedMemory(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo1:Landroid/widget/TextView;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object v2, v5, v10

    const v6, 0x7f1105de

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo2:Landroid/widget/TextView;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object v2, v5, v10

    const v6, 0x7f1105df

    invoke-virtual {p0, v6, v5}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo1:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryInfo2:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/recents/RecentsActivity;->mSeparatorForMemoryInfo:Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/recents/RecentsActivity;->mClearAnimView:Lcom/android/systemui/recents/views/CircleAndTickAnimView;

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v0, v5, v4

    aput-object v2, v5, v10

    const v4, 0x7f1100df

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/recents/RecentsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/CircleAndTickAnimView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method public resetHomeAlphaScale()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isFsGestureAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.miui.home"

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->changeAlphaScaleForFsGesture(Ljava/lang/String;FF)V

    :cond_0
    return-void
.end method

.method public setNotchPadding()V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/RecentsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07042f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move v0, v2

    :goto_0
    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move v1, v2

    :goto_1
    iget v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRotation:I

    if-nez v4, :cond_4

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v0, v3, v1, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/RecentsView;->requstLayoutTaskStackView()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public updateDockRegions(Z)V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x32

    const/4 v1, 0x1

    const/4 v2, 0x0

    sput-boolean p1, Lcom/android/systemui/recents/RecentsConfiguration;->sCanMultiWindow:Z

    iget-boolean v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mIsVisible:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mDockBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mTxtMemoryContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_4

    :cond_1
    move v0, v2

    :goto_1
    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsRecommendView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_5

    :goto_2
    int-to-float v1, v2

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRecommendView;->setAllItemClickable(Z)V

    :cond_2
    :goto_3
    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    const v1, 0x7f11006d

    invoke-virtual {p0, v1}, Lcom/android/systemui/recents/RecentsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->showDockRegionsAnim()V

    :goto_4
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    if-eqz p1, :cond_7

    :goto_5
    int-to-float v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRecommendView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsRecommendView:Lcom/android/systemui/recents/views/RecentsRecommendView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/RecentsRecommendView;->setAllItemClickable(Z)V

    goto :goto_3

    :cond_7
    move v2, v1

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/recents/RecentsActivity;->mRecentsView:Lcom/android/systemui/recents/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsView;->hideDockRegionsAnim()V

    goto :goto_4
.end method
