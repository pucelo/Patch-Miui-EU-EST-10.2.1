.class public Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "FoldHeaderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;
    }
.end annotation


# static fields
.field private static ALPHA_PRESSED:F


# instance fields
.field private mClickListener:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

.field private mDividerView:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mClickListener:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setDividerWidth()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->ALPHA_PRESSED:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setInShelf(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setClipToPadding(Z)V

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->update()V

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mOrientation:I

    return-void
.end method

.method private setDividerWidth()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private update()V
    .locals 1

    new-instance v0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$2;-><init>(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public isInShelf()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->update()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mOrientation:I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    const v1, 0x7f0a00b6

    invoke-virtual {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mDividerView:Landroid/view/View;

    const v1, 0x7f0a02d5

    invoke-virtual {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/Constants;->ENABLE_USER_FOLD:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$1;-><init>(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0a00b6

    if-eq v4, v5, :cond_0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->ALPHA_PRESSED:F

    goto :goto_1

    :cond_4
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method public performAddAnimation(JJLandroid/animation/AnimatorListenerAdapter;)V
    .locals 5

    sget-object v1, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public performRemoveAnimation(JFLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setClickListener(Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->mClickListener:Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView$ClickListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldHeaderView;->setClickable(Z)V

    return-void
.end method
