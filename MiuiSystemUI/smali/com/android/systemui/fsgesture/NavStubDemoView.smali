.class public Lcom/android/systemui/fsgesture/NavStubDemoView;
.super Landroid/view/View;
.source "NavStubDemoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/NavStubDemoView$1;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private curActivity:Landroid/app/Activity;

.field private demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private demoType:Ljava/lang/String;

.field private fullyShowStep:I

.field private isFromPro:Z

.field private mAppBgView:Landroid/view/View;

.field private mAppCalculatorImg:Landroid/widget/ImageView;

.field private mAppIcon:Landroid/graphics/Bitmap;

.field private mAppNoteIconImg:Landroid/view/View;

.field private mAppNoteImg:Landroid/widget/ImageView;

.field private mBgView:Landroid/view/View;

.field private mBottomDec:I

.field private mCurAlpha:F

.field private mCurScale:F

.field private mCurrentY:F

.field private mDelta:F

.field private mDestPivotX:I

.field private mDestPivotY:I

.field private mDownNo:I

.field private mDownX:F

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDrawBmp:Landroid/graphics/Bitmap;

.field private mFakeBitmap:Landroid/graphics/Bitmap;

.field private mFollowTailX:F

.field private mFollowTailY:F

.field private mFrameHandler:Landroid/os/Handler;

.field private mHomeIconImg:Landroid/widget/LinearLayout;

.field private mIsAppToHome:Z

.field private mIsAppToRecents:Z

.field private mIsInFsgAnim:Z

.field private mLastDownNo:I

.field private mModeSrcIn:Landroid/graphics/Xfermode;

.field private mPaint:Landroid/graphics/Paint;

.field private mPivotLocX:I

.field private mPivotLocY:I

.field private mRecentsAnimator:Landroid/animation/ValueAnimator;

.field private mRecentsBgView:Landroid/view/View;

.field private mRecentsClearImg:Landroid/view/View;

.field private mShowHeight:I

.field mShowRect:Landroid/graphics/Rect;

.field private mShowWidth:I

.field private mStateMode:I

.field private mTailCatcherTask:Ljava/lang/Runnable;

.field private mXScale:F

.field private mYScale:F

.field private swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    return v0
.end method

.method static synthetic -get15(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    return v0
.end method

.method static synthetic -get16(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -get17(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsClearImg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get19(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/NavStubDemoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/systemui/fsgesture/NavStubDemoView;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    return v0
.end method

.method static synthetic -get22(Lcom/android/systemui/fsgesture/NavStubDemoView;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/NavStubDemoView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->isFromPro:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppCalculatorImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteIconImg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/fsgesture/NavStubDemoView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBgView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/fsgesture/NavStubDemoView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBottomDec:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    return p1
.end method

.method static synthetic -set5(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/systemui/fsgesture/NavStubDemoView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mXScale:F

    return p1
.end method

.method static synthetic -set9(Lcom/android/systemui/fsgesture/NavStubDemoView;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mYScale:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fsgesture/NavStubDemoView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$1;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mTailCatcherTask:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->initInternal()V

    return-void
.end method

.method private createRoundCornerBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    const/high16 v7, 0x42480000    # 50.0f

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

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v7, v7, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-object v2
.end method

.method private finalization()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setClickable(Z)V

    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    const v2, 0x10001

    iput v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x41a00000    # 20.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->invalidate()V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private initInternal()V
    .locals 9

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    const v4, 0x10001

    iput v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string/jumbo v4, "scale"

    new-array v5, v7, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string/jumbo v4, "alpha"

    const/16 v5, 0xff

    filled-new-array {v8, v5}, [I

    move-result-object v5

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v8

    aput-object v0, v4, v6

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/fsgesture/NavStubDemoView$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$2;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08005c

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFakeBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lcom/android/systemui/fsgesture/NavStubDemoView;->createRoundCornerBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v8}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->prepareToDraw()V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0802b7

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    return-void

    :array_0
    .array-data 4
        0x3f8ccccd    # 1.1f
        0x3f866666    # 1.05f
    .end array-data
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

.method private startCancelAnim()V
    .locals 6

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v4, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$8;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView$8;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;II)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/android/systemui/fsgesture/NavStubDemoView$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView$9;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startRecentTaskAnim()V
    .locals 18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    sget-boolean v2, Lmiui/util/CustomizeUtil;->HAS_NOTCH:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v16, 0x7f07042f

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_0
    sub-int v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700fc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ff

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v2, v12

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    int-to-float v3, v3

    div-float v13, v2, v3

    const-string/jumbo v2, "scale"

    const/4 v3, 0x2

    new-array v3, v3, [F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    aput v16, v3, v17

    const/16 v16, 0x1

    aput v13, v3, v16

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    const-string/jumbo v2, "bottomDec"

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x0

    aput v16, v3, v17

    int-to-float v0, v11

    move/from16 v16, v0

    div-float v16, v16, v13

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    aput v16, v3, v17

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v10

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    const/4 v3, 0x0

    aput-object v15, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v9

    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$10;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$10;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    div-int/lit8 v2, v12, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v16, 0x7f0700fd

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    mul-int/2addr v2, v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v16, 0x7f0700fe

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v7, v2

    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$11;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/fsgesture/NavStubDemoView$11;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;IFIF)V

    invoke-virtual {v9, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v14

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/systemui/fsgesture/NavStubDemoView$12;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView$12;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    invoke-virtual {v14, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v14, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v14, v2, v3

    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x3f866666    # 1.05f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startToHomeAnim()V
    .locals 20

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v10, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    mul-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v9, v16, v17

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v8

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v7, v0

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v16, Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$3;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-string/jumbo v16, "xScale"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v9, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    const-string/jumbo v16, "xPivot"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v6, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotX:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aput v18, v17, v19

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v13, v16, v17

    const/16 v17, 0x1

    aput-object v12, v16, v17

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x3fc00000    # 1.5f

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v16, Lcom/android/systemui/fsgesture/NavStubDemoView$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$4;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-string/jumbo v16, "yScale"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [F

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x1

    aput v10, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    const-string/jumbo v16, "yPivot"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput v7, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotY:I

    move/from16 v18, v0

    const/16 v19, 0x1

    aput v18, v17, v19

    invoke-static/range {v16 .. v17}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v15, v16, v17

    const/16 v17, 0x1

    aput-object v14, v16, v17

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x40000000    # 2.0f

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v16, Lcom/android/systemui/fsgesture/NavStubDemoView$5;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$5;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    aput v17, v16, v18

    const/16 v17, 0x0

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x3f800000    # 1.0f

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v16, Lcom/android/systemui/fsgesture/NavStubDemoView$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$6;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v16, 0xd2

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v16, 0x28

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    aput v17, v16, v18

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x1

    aput v17, v16, v18

    invoke-static/range {v16 .. v16}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v16, Lcom/android/systemui/fsgesture/NavStubDemoView$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView$7;-><init>(Lcom/android/systemui/fsgesture/NavStubDemoView;)V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v16, 0x12c

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v3, v16, v17

    const/16 v17, 0x1

    aput-object v11, v16, v17

    const/16 v17, 0x2

    aput-object v5, v16, v17

    const/16 v17, 0x3

    aput-object v2, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v8, v0

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToRecents:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBottomDec:I

    add-int v8, v0, v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    int-to-float v4, v8

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    move-result v9

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    int-to-float v4, v8

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v6, 0x42480000    # 50.0f

    iget-object v7, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mModeSrcIn:Landroid/graphics/Xfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mXScale:F

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mYScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppIcon:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/high16 v9, 0x40400000    # 3.0f

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    if-eqz v3, :cond_0

    return v6

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    :cond_1
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mLastDownNo:I

    if-ne v3, v4, :cond_2

    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v5, v3, :cond_3

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownNo:I

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mLastDownNo:I

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    :pswitch_0
    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {v3}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDelta:F

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDragBitmap:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDrawBmp:Landroid/graphics/Bitmap;

    iput-boolean v6, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsAppToHome:Z

    const v3, 0x10001

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDownX:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDelta:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    iget v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v5, v5

    invoke-direct {p0, v4, v5, v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->linearToCubic(FFFF)F

    move-result v4

    const/high16 v5, 0x43de0000    # 444.0f

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    const v4, 0x10001

    if-ne v3, v4, :cond_4

    const v3, 0x10002

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mTailCatcherTask:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppCalculatorImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteIconImg:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsClearImg:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v4, v8, v9}, Lcom/android/systemui/fsgesture/NavStubDemoView;->linearToCubic(FFFF)F

    move-result v3

    const v4, 0x3ec51eb8    # 0.385f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v3, v4, v3

    iput v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->invalidate()V

    goto/16 :goto_0

    :pswitch_2
    iput-boolean v5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mIsInFsgAnim:Z

    invoke-virtual {p0, v6}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setClickable(Z)V

    iget-object v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    const v4, 0x10002

    if-ne v3, v4, :cond_6

    const/4 v0, 0x1

    :goto_1
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    const v4, 0x10003

    if-ne v3, v4, :cond_7

    const/4 v1, 0x1

    :goto_2
    if-nez v0, :cond_5

    if-eqz v1, :cond_f

    :cond_5
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x41a00000    # 20.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    invoke-virtual {p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    sub-float/2addr v3, v4

    const/high16 v4, -0x3e600000    # -20.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_b

    const-string/jumbo v3, "DEMO_FULLY_SHOW"

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    if-ne v3, v5, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v3, "DEMO_TO_HOME"

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startToHomeAnim()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_0

    :cond_b
    if-eqz v0, :cond_c

    invoke-virtual {p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v3, "DEMO_FULLY_SHOW"

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_d

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v3, "DEMO_TO_RECENTTASK"

    iget-object v4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startRecentTaskAnim()V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p0, v5}, Lcom/android/systemui/fsgesture/NavStubDemoView;->performHapticFeedback(I)Z

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->startCancelAnim()V

    goto/16 :goto_0

    :cond_f
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->finalization()V

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

.method public setAppBgView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppBgView:Landroid/view/View;

    return-void
.end method

.method public setAppCalculatorImg(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppCalculatorImg:Landroid/widget/ImageView;

    return-void
.end method

.method public setAppNoteIconImg(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteIconImg:Landroid/view/View;

    return-void
.end method

.method public setAppNoteImg(Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mAppNoteImg:Landroid/widget/ImageView;

    return-void
.end method

.method public setBgView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBgView:Landroid/view/View;

    return-void
.end method

.method public setCurActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->curActivity:Landroid/app/Activity;

    return-void
.end method

.method public setDemoTitleView(Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    return-void
.end method

.method public setDemoType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->demoType:Ljava/lang/String;

    return-void
.end method

.method public setDestPivot(II)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotX:I

    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mDestPivotY:I

    return-void
.end method

.method public setFullyShowStep(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->fullyShowStep:I

    return-void
.end method

.method public setHomeIconImg(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mHomeIconImg:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setIsFromPro(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->isFromPro:Z

    return-void
.end method

.method public setRecentsBgView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsBgView:Landroid/view/View;

    return-void
.end method

.method public setRecentsClearImg(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsClearImg:Landroid/view/View;

    return-void
.end method

.method public setSwipeView(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-void
.end method
