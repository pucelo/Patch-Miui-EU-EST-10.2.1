.class public Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;
.super Lcom/android/systemui/statusbar/ExpandableView;
.source "FoldFooterView.java"


# instance fields
.field private mDividerView:Landroid/view/View;

.field private mOrientation:I


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setDividerWidth()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setInShelf(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setClipToPadding(Z)V

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->update()V

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mOrientation:I

    return-void
.end method

.method private setDividerWidth()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700f0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private update()V
    .locals 1

    new-instance v0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView$1;-><init>(Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getActualHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->getMeasuredHeight()I

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

    iget v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->update()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mOrientation:I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ExpandableView;->onFinishInflate()V

    const v0, 0x7f0a00b6

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->mDividerView:Landroid/view/View;

    return-void
.end method

.method public performAddAnimation(JJLandroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    return-void
.end method

.method public performRemoveAnimation(JFLandroid/animation/AnimatorListenerAdapter;Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/notification/FoldFooterView;->setClickable(Z)V

    return-void
.end method
