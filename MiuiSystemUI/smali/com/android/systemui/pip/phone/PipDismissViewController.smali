.class public Lcom/android/systemui/pip/phone/PipDismissViewController;
.super Ljava/lang/Object;
.source "PipDismissViewController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/pip/phone/PipDismissViewController;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/pip/phone/PipDismissViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public createDismissTarget()V
    .locals 15

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    if-nez v1, :cond_0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    new-instance v14, Landroid/graphics/Point;

    invoke-direct {v14}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070315

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070316

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v1, 0x7f0d009f

    invoke-virtual {v10, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const/16 v4, 0x100

    invoke-virtual {v1, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->forceHasOverlappingRendering(Z)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0802e9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    const/16 v1, 0xd8

    invoke-virtual {v9, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    const v4, 0x7f0a0208

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v8

    iput v1, v13, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, v14, Landroid/graphics/Point;->y:I

    sub-int v4, v1, v2

    const/4 v1, -0x1

    const/16 v5, 0x7e8

    const v6, 0x1000118

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const-string/jumbo v1, "pip-dismiss-overlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-interface {v1, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public destroyDismissTarget()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xe1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/pip/phone/PipDismissViewController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipDismissViewController$1;-><init>(Lcom/android/systemui/pip/phone/PipDismissViewController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public showDismissTarget()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipDismissViewController;->mDismissView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
