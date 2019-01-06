.class public final Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "NavigationBarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;
    }
.end annotation


# instance fields
.field private final mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mLightsOut:Z

.field private final mLightsOutListener:Landroid/view/View$OnTouchListener;

.field private final mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 2

    const v0, 0x7f0802af

    const v1, 0x7f060199

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;II)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-void
.end method

.method private applyLightsOut(ZZZ)V
    .locals 10

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-nez p3, :cond_0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    if-ne p1, v7, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOut:Z

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a01c2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f0a017e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    :goto_0
    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_1
    if-nez p2, :cond_4

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    return-void

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_6

    const/16 v0, 0x2ee

    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->mLightsOutListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_5

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v6, v7}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    if-eqz p1, :cond_7

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_6
    const/16 v0, 0xfa

    goto :goto_4

    :cond_7
    new-instance v5, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;

    invoke-direct {v5, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;Landroid/view/View;)V

    goto :goto_5
.end method

.method private applyMode(IZZ)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->isLightsOut(I)Z

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyLightsOut(ZZZ)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyModeBackground(IIZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    return-void
.end method

.method protected onTransition(IIZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->applyMode(IZZ)V

    return-void
.end method
