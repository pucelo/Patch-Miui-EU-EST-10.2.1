.class public Lcom/android/systemui/statusbar/NotificationShelf;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationShelf.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;
    }
.end annotation


# static fields
.field private static final ICON_ANMATIONS_WHILE_SCROLLING:Z

.field private static final USE_ANIMATIONS_WHEN_OPENING:Z


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mAnimationsEnabled:Z

.field private mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mDark:Z

.field private mHasItemsInStableShelf:Z

.field private mHideBackground:Z

.field private mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

.field private mIconAppearTopPadding:I

.field private mInteractive:Z

.field private mMaxLayoutHeight:I

.field private mMaxShelfEnd:F

.field private mNoAnimationsInThisFrame:Z

.field private mNotGoneIndex:I

.field private mOpenedAmount:F

.field private mPaddingBetweenElements:I

.field private mRelativeOffset:I

.field private mScrollFastThreshold:I

.field private mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

.field private mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

.field private mStatusBarHeight:I

.field private mStatusBarPaddingStart:I

.field private mStatusBarState:I

.field private mTmp:[I

.field private mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/NotificationShelf;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/NotificationShelf;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setHasItemsInStableShelf(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/NotificationShelf;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOpenedAmount(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "debug.icon_opening_animations"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    const-string/jumbo v0, "debug.icon_scroll_animations"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    return-void
.end method

.method private getFullyClosedTranslation()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method private getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07042f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070438

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarPaddingStart:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070404

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2, v1, v4, v1, v4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0703fa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    return-void
.end method

.method private setHasItemsInStableShelf(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_0
    return-void
.end method

.method private setHideBackground(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateBackground()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateOutline()V

    :cond_0
    return-void
.end method

.method private setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V
    .locals 12

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v10

    iget-object v1, v10, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationIcon()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v10

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContentTranslation()F

    move-result v11

    add-float v6, v10, v11

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isTransformingIntoShelf()Z

    move-result v10

    xor-int/lit8 v9, v10, 0x1

    :goto_0
    if-eqz p4, :cond_0

    xor-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v10

    sub-float v6, v10, p3

    :cond_0
    if-eqz v7, :cond_8

    invoke-virtual {p1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getRelativeTopPadding(Landroid/view/View;)I

    move-result v3

    :goto_1
    int-to-float v10, v3

    add-float/2addr v6, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v10

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v11

    int-to-float v11, v11

    add-float v8, v10, v11

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIconScale()F

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v10, v11, v10

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    add-float/2addr v8, v10

    sub-float v10, v6, v8

    const/4 v11, 0x0

    invoke-static {v10, v11, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingIcon()Z

    move-result v10

    xor-int/lit8 v5, v10, 0x1

    if-eqz v5, :cond_1

    move v0, p2

    :cond_1
    if-eqz v2, :cond_6

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    iget v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    iput v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    const/4 v10, 0x0

    cmpl-float v10, p2, v10

    if-nez v10, :cond_9

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->isAnimating(Landroid/view/View;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    :goto_2
    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    iput v0, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    iput v4, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->yTranslation:F

    if-eqz v9, :cond_2

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->alpha:F

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleX:F

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->scaleY:F

    const/4 v10, 0x0

    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v10

    if-nez v10, :cond_5

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_5

    :cond_4
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->hidden:Z

    :cond_5
    const/4 v10, 0x0

    iput v10, v2, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconColor:I

    :cond_6
    return-void

    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_8
    iget v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mIconAppearTopPadding:I

    goto/16 :goto_1

    :cond_9
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private setOpenedAmount(F)V
    .locals 10

    const/4 v6, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v7, p1, v9

    if-nez v7, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_0

    const/4 v6, 0x1

    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mOpenedAmount:F

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelFullWidth()Z

    move-result v6

    if-nez v6, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    sub-int v4, v6, v7

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v6

    float-to-int v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualLayoutWidth(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->hasOverflow()Z

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v0

    if-nez v1, :cond_3

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getIconSize()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    float-to-int v0, v6

    :cond_3
    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingEnd()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingEnd(F)V

    int-to-float v6, v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getPaddingStart()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v6, v7, p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v3

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setActualPaddingStart(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setOpenedAmount(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getVisualOverflowAdaption()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setVisualOverflowAdaption(F)V

    return-void
.end method

.method private updateExpandableViewClipHeight(Lcom/android/systemui/statusbar/ExpandableView;F)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    int-to-float v3, v3

    add-float v1, v2, v3

    cmpl-float v2, v1, p2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    sub-float v2, v1, p2

    float-to-int v0, v2

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBottomAmount(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBottomAmount(I)V

    goto :goto_0
.end method

.method private updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F
    .locals 16

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    add-int v11, v1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v5, v1, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3fc00000    # 1.5f

    move/from16 v0, p2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    mul-float/2addr v5, v1

    if-eqz p6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    :cond_0
    int-to-float v1, v11

    add-float v14, v15, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v13

    cmpl-float v1, v14, v13

    if-ltz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isUnlockHintRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isInShelf()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4

    :cond_2
    cmpg-float v1, v15, v13

    if-gez v1, :cond_3

    sub-float v1, v13, v15

    int-to-float v2, v11

    div-float v10, v1, v2

    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE_DECELERATE:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    move/from16 v0, p2

    invoke-static {v12, v10, v0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v12

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v4, v1, v12

    sub-float v1, v13, v15

    div-float v3, v1, v5

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v1, v3

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V

    return v4

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private updateIconPositioning(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFFZZZZ)V
    .locals 11

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    iget-object v9, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->expandedIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/NotificationShelf;->getIconState(Lcom/android/systemui/statusbar/StatusBarIconView;)Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;

    move-result-object v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_7

    const/high16 v7, 0x3f800000    # 1.0f

    :goto_0
    cmpl-float v1, v7, p3

    if-nez v1, :cond_1

    if-nez p6, :cond_8

    move/from16 v1, p7

    :goto_1
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    if-nez v1, :cond_9

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_a

    :goto_2
    move/from16 v0, p5

    iput-boolean v0, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->ICON_ANMATIONS_WHILE_SCROLLING:Z

    if-nez v1, :cond_b

    const/4 v1, 0x0

    cmpl-float v1, p3, v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_3
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_c

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    :cond_1
    if-nez p6, :cond_2

    if-eqz p7, :cond_3

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_3

    invoke-static {v9}, Lcom/android/systemui/statusbar/stack/ViewState;->isAnimatingY(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v10, v9}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->cancelAnimations(Landroid/view/View;)V

    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->noAnimations:Z

    :cond_3
    if-nez p8, :cond_4

    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-nez v1, :cond_4

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useLinearTransitionAmount:Z

    if-eqz v1, :cond_d

    :cond_4
    move v3, p2

    :goto_5
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationShelf;->USE_ANIMATIONS_WHEN_OPENING:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->useFullTransitionAmount:Z

    if-eqz v1, :cond_f

    :cond_5
    :goto_6
    iput p3, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->iconAppearAmount:F

    iput v7, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v1

    if-nez v1, :cond_10

    if-nez p8, :cond_6

    iget-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->translateContent:Z

    if-eqz v1, :cond_10

    :cond_6
    move v8, p2

    :goto_7
    move/from16 v0, p8

    invoke-virtual {p1, v8, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    cmpl-float v1, v7, v3

    if-eqz v1, :cond_11

    const/4 v5, 0x1

    :goto_8
    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationShelf;->setIconTransformationAmount(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FFZZ)V

    return-void

    :cond_7
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_9
    const/16 p5, 0x1

    goto/16 :goto_2

    :cond_a
    const/16 p5, 0x0

    goto/16 :goto_2

    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    :cond_c
    const/4 v1, 0x0

    goto :goto_4

    :cond_d
    move v3, v7

    iget v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->clampedAppearAmount:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_e

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNoAnimationsInThisFrame:Z

    xor-int/lit8 v1, v1, 0x1

    :goto_9
    iput-boolean v1, v10, Lcom/android/systemui/statusbar/phone/NotificationIconContainer$IconState;->needsCannedAnimation:Z

    goto :goto_5

    :cond_e
    const/4 v1, 0x0

    goto :goto_9

    :cond_f
    move p3, v3

    goto :goto_6

    :cond_10
    const/4 v8, 0x0

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    goto :goto_8
.end method

.method private updateInteractiveness()V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setClickable(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setFocusable(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->setImportantForAccessibility(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method private updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v4

    int-to-float v4, v4

    add-float v2, v3, v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v1

    :goto_0
    cmpl-float v3, v2, p2

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_3

    :cond_0
    sub-float v3, v2, p2

    float-to-int v0, v3

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    goto :goto_1
.end method

.method private updateRelativeOffset()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v0, v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->getLocationOnScreen([I)V

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mTmp:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mRelativeOffset:I

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    return-void
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    return-object v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public getNotGoneIndex()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    return v0
.end method

.method public getNotificationMergeSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShelfIcons()Lcom/android/systemui/statusbar/phone/NotificationIconContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    return-object v0
.end method

.method public hasItemsInStableShelf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHasItemsInStableShelf:Z

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isInteractive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    return v0
.end method

.method protected needsOutline()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->needsOutline()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    const v0, 0x7f0a0096

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShelf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipChildren(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setClipToPadding(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToActualHeight(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setClipToPadding(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setShowAllIcons(Z)V

    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;-><init>(Lcom/android/systemui/statusbar/NotificationShelf;Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->initDimens()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mInteractive:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_EXPAND:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateRelativeOffset()V

    return-void
.end method

.method public setAnimationsEnabled(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAnimationsEnabled:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setAnimationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCollapsedIcons(Lcom/android/systemui/statusbar/phone/NotificationIconContainer;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mCollapsedIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mDark:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setDark(ZZJ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    return-void
.end method

.method public setMaxLayoutHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    return-void
.end method

.method public setMaxShelfEnd(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxShelfEnd:F

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mStatusBarState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->updateInteractiveness()V

    :cond_0
    return-void
.end method

.method protected shouldHideBackground()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateAppearance()V
    .locals 34

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->resetViewStates()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationY()F

    move-result v30

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v21

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mMaxLayoutHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v33

    mul-int/lit8 v33, v33, 0x2

    sub-int v2, v2, v33

    int-to-float v0, v2

    move/from16 v20, v0

    const/4 v4, 0x0

    cmpl-float v2, v30, v20

    if-ltz v2, :cond_0

    sub-float v2, v30, v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    div-float v4, v2, v33

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_0
    const/16 v24, 0x0

    const/16 v22, 0x0

    const/4 v13, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHideBackground:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-get0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    const/4 v10, 0x1

    :cond_1
    const/4 v14, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getCurrentScrollVelocity()F

    move-result v15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    int-to-float v2, v2

    cmpl-float v2, v15, v2

    if-gtz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getExpandingVelocity()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mScrollFastThreshold:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    cmpl-float v2, v2, v33

    if-lez v2, :cond_3

    const/4 v6, 0x1

    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v15, v2

    if-lez v2, :cond_5

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isPanelTracking()Z

    move-result v2

    xor-int/lit8 v7, v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v11

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildCount()I

    move-result v2

    move/from16 v0, v24

    if-ge v0, v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    add-int/lit8 v25, v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v2

    const/16 v33, 0x8

    move/from16 v0, v33

    if-ne v2, v0, :cond_7

    move/from16 v24, v25

    goto :goto_3

    :cond_2
    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v32

    const/16 v2, 0xb

    move/from16 v0, v32

    if-eq v0, v2, :cond_8

    const/16 v2, 0xc

    move/from16 v0, v32

    if-ne v0, v2, :cond_9

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v16, v30, v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateExpandableViewClipHeight(Lcom/android/systemui/statusbar/ExpandableView;F)V

    add-int/lit8 v22, v22, 0x1

    move/from16 v24, v25

    goto :goto_3

    :cond_9
    const/16 v2, 0xd

    move/from16 v0, v32

    if-eq v0, v2, :cond_8

    if-eqz v32, :cond_a

    move/from16 v24, v25

    goto :goto_3

    :cond_a
    move-object v3, v12

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3}, Lcom/android/systemui/statusbar/stack/ViewState;->getFinalTranslationZ(Landroid/view/View;)F

    move-result v2

    int-to-float v0, v11

    move/from16 v33, v0

    cmpl-float v2, v2, v33

    if-lez v2, :cond_11

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v0, v21

    if-ne v12, v0, :cond_12

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v29

    if-nez v8, :cond_b

    if-nez v9, :cond_b

    if-eqz v10, :cond_13

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v23, v30, v2

    :cond_c
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->updateNotificationClipHeight(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/NotificationShelf;->updateIconAppearance(Lcom/android/systemui/statusbar/ExpandableNotificationRow;FZZZZ)F

    move-result v19

    add-float v26, v26, v19

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getBackgroundColorWithoutTint()I

    move-result v27

    cmpl-float v2, v29, v30

    if-ltz v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v2, v0, :cond_14

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setTintColor(I)V

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v14, v1}, Lcom/android/systemui/statusbar/NotificationShelf;->setOverrideTintColor(IF)V

    :cond_d
    :goto_7
    if-eqz v8, :cond_15

    if-nez v13, :cond_e

    move/from16 v13, v27

    :cond_e
    move/from16 v0, v19

    invoke-virtual {v3, v13, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    :goto_8
    if-nez v22, :cond_f

    xor-int/lit8 v2, v9, 0x1

    if-eqz v2, :cond_10

    :cond_f
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAboveShelf(Z)V

    :cond_10
    add-int/lit8 v22, v22, 0x1

    move/from16 v28, v27

    move/from16 v24, v25

    goto/16 :goto_3

    :cond_11
    const/4 v9, 0x0

    goto :goto_4

    :cond_12
    const/4 v8, 0x0

    goto :goto_5

    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mPaddingBetweenElements:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    sub-float v23, v2, v33

    sub-float v17, v23, v29

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBelowSpeedBump()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v17, v2

    if-gtz v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getNotificationMergeSize()I

    move-result v2

    int-to-float v2, v2

    add-float v2, v2, v29

    move/from16 v0, v30

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v23

    goto/16 :goto_6

    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v2, v0, :cond_d

    move/from16 v14, v28

    move/from16 v31, v19

    goto :goto_7

    :cond_15
    move/from16 v13, v27

    const/4 v2, 0x0

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOverrideTintColor(IF)V

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v33

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->setSpeedBumpIndex(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->calculateIconTranslations()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfIcons:Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;->applyIconStates()V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v26, v2

    if-gez v2, :cond_18

    const/16 v18, 0x1

    :goto_9
    if-nez v18, :cond_19

    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/systemui/statusbar/NotificationShelf;->setHideBackground(Z)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v2, v0, :cond_17

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    :cond_17
    return-void

    :cond_18
    const/16 v18, 0x0

    goto :goto_9

    :cond_19
    const/4 v10, 0x1

    goto :goto_a
.end method

.method public updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/ExpandableView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v8

    add-float/2addr v5, v8

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v8

    add-float v2, v5, v8

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v1

    iget v5, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v8, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v8, v8

    add-float v4, v5, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v9, v9, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->height:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v8

    int-to-float v8, v8

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->zTranslation:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v5, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->yTranslation:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getFullyClosedTranslation()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    div-float v3, v5, v8

    invoke-static {v10, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set2(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->clipTopAmount:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    int-to-float v5, v5

    iput v5, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->alpha:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v7

    :goto_1
    iput-boolean v5, v8, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->belowSpeedBump:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput v10, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->shadowAlpha:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hideSensitive:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelf;->getTranslationX()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->xTranslation:F

    iget v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget v6, v6, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    iget v8, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mNotGoneIndex:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->notGoneIndex:I

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-boolean v6, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    iput-boolean v6, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set1(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;F)F

    :goto_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    return-void

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    move v5, v6

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    iput-boolean v7, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->hidden:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    const/16 v8, 0x40

    iput v8, v5, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->location:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationShelf;->mShelfState:Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;->-set0(Lcom/android/systemui/statusbar/NotificationShelf$ShelfState;Z)Z

    goto :goto_2
.end method
