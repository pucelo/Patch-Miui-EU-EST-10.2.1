.class public Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# instance fields
.field private final mBackgroundColor:I

.field private final mCornerRadius:I

.field private final mCustomViewMarginEnd:I

.field private final mCustomViewMarginStart:I

.field private final mGreyPaint:Landroid/graphics/Paint;

.field private final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mIsLegacy:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    new-instance v1, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v1, p2, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCustomViewMarginStart:I

    const v1, 0x7f0702a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCustomViewMarginEnd:I

    const v1, 0x7f0702a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCornerRadius:I

    const v1, 0x7f0600d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->handleViewMargin()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->updateRoundCorner()V

    return-void
.end method

.method private handleViewMargin()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCustomViewMarginStart:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCustomViewMarginEnd:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "NotiCustomViewWrapper"

    const-string/jumbo v3, "handleViewMargin(): view not attached to a FrameLayout"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateRoundCorner()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mCornerRadius:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/systemui/Util;->setViewRoundCorner(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method protected fadeGrayscale(ZJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;)V

    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$2;-><init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;Z)V

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mBackgroundColor:I

    return v0
.end method

.method public onReinflated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->updateGrayscale(Z)V

    goto :goto_0
.end method

.method public setLegacy(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateGrayscale(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscaleMatrix(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->getGrayscaleColorMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
