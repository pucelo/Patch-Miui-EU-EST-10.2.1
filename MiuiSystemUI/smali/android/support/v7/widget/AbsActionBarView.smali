.class abstract Landroid/support/v7/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# instance fields
.field protected mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    iput-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0
.end method

.method protected static next(IIZ)I
    .locals 1

    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    add-int v0, p0, p1

    goto :goto_0
.end method


# virtual methods
.method protected measureChildView(Landroid/view/View;III)I
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p4

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AbsActionBarView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v5, :cond_0

    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v0, v5, :cond_1

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_0
    iget-boolean v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v0, :cond_1

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_1

    iput-boolean v4, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_1
    if-eq v0, v4, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_3
    return v4
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    if-eqz p5, :cond_1

    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_0

    neg-int v2, v2

    :cond_0
    return v2

    :cond_1
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method