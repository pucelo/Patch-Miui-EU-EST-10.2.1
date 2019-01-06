.class public Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;
.super Landroid/app/Activity;
.source "FsGestureBackDemoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;
    }
.end annotation


# static fields
.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private demoType:Ljava/lang/String;

.field private isFromPro:Z

.field private mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

.field private mBgView:Landroid/view/View;

.field private mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

.field private mDemoActivityView:Landroid/widget/ImageView;

.field private mDemoActivityViewMatrix:Landroid/graphics/Matrix;

.field private mDisplayHeight:I

.field private mDisplayWidth:I

.field private mDownX:F

.field private mDownY:F

.field private mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private mGestureStatus:I

.field private mOffsetX:F

.field private mStatus:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->isFromPro:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mOffsetX:F

    return v0
.end method

.method static synthetic -get12(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/GestureBackArrowView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownY:F

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownY:F

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;F)F
    .locals 0

    iput p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mOffsetX:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGesture(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->onGestureFinish()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->showBackAnimation()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private finishGesture(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private finishGestureBack()V
    .locals 4

    sget-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$7;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initView()V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v4, 0x7f0a0247

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    const v4, 0x7f0a0055

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    const v4, 0x7f0a00aa

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v4, 0x7f0a00f3

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v4

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setRTLParams()V

    :cond_0
    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v7, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$2;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v4, v7}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    sget-boolean v4, Lcom/android/systemui/Constants;->IS_NOTCH:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f07042f

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const v4, 0x7f0a00f2

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v6, :cond_3

    invoke-direct {p0, v5}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    :goto_1
    new-instance v7, Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v6, :cond_4

    move v4, v5

    :goto_2
    invoke-direct {v7, p0, v4}, Lcom/android/systemui/fsgesture/GestureBackArrowView;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setDisplayWidth(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    iget v5, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    invoke-direct {v0, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    if-ne v4, v6, :cond_5

    const/16 v4, 0x9

    :goto_3
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v6}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->startSwipeViewAnimation(I)V

    goto :goto_1

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    const/16 v4, 0xb

    goto :goto_3
.end method

.method private onGestureFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->notifyFinish()V

    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->finishGestureBack()V

    return-void
.end method

.method private showBackAnimation()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f01000a

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const v2, 0x7f01000b

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$6;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBgView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startSwipeViewAnimation(I)V
    .locals 4

    sget-object v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$3;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;I)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v4, 0x7f0d003d

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/Util;->hideSystemBars(Landroid/view/View;)V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v4, "window"

    invoke-virtual {p0, v4}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "DEMO_TYPE"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string/jumbo v4, "DEMO_FULLY_SHOW"

    :goto_0
    iput-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    const-string/jumbo v4, "DEMO_STEP"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    const-string/jumbo v4, "IS_FROM_PROVISION"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->isFromPro:Z

    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->initView()V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->demoType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {}, Lcom/android/systemui/recents/events/RecentsEventBus;->getDefault()Lcom/android/systemui/recents/events/RecentsEventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/recents/events/activity/FsGestureShowStateEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/RecentsEventBus;->send(Lcom/android/systemui/recents/events/RecentsEventBus$Event;)V

    return-void
.end method
