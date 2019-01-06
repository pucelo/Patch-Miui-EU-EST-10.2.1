.class public Lcom/android/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# instance fields
.field private mClockView:Landroid/view/View;

.field private mEnoughSpace:Z

.field private mForceShowingMore:Z

.field private mIconWidth:I

.field private mIcons:Landroid/view/View;

.field private mMoreView:Landroid/view/View;

.field private mStatusBar:Landroid/view/View;

.field private mStatusIcons:Landroid/view/View;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070435

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070433

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconWidth:I

    return-void
.end method

.method private checkOverflow()V
    .locals 7

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mForceShowingMore:Z

    if-nez v5, :cond_3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconWidth:I

    mul-int/2addr v5, v3

    iget v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mWidth:I

    if-le v5, v6, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mEnoughSpace:Z

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eq v2, v4, :cond_5

    new-instance v4, Lcom/android/systemui/statusbar/phone/IconMerger$2;

    invoke-direct {v4, p0, v2}, Lcom/android/systemui/statusbar/phone/IconMerger$2;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;Z)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mStatusBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mStatusBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mStatusBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mStatusIcons:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mClockView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIcons:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingStart()I

    move-result v3

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIcons:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    sub-int v0, v1, v3

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    mul-int/2addr v1, v3

    if-le v0, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconWidth:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    mul-int/2addr v1, v3

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mWidth:I

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mEnoughSpace:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mWidth:I

    if-gez v1, :cond_2

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconWidth:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mWidth:I

    goto :goto_2
.end method
