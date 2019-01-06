.class public Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;
    }
.end annotation


# static fields
.field private static final ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;


# instance fields
.field private mActualHeight:I

.field private mChildTopMargin:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenExpanded:Z

.field private mClipBottomAmount:I

.field private mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mCollapsedBottomMargin:F

.field private mCollapsedButton:Landroid/widget/TextView;

.field private mCollapsedButtonPadding:I

.field private mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mContentMarginStart:I

.field private mCurrentHeader:Landroid/view/ViewGroup;

.field private mDividerHeight:I

.field private mExpandedBottomMargin:I

.field private mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderHeight:I

.field private mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

.field private mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mIsLowPriority:Z

.field private mMaxNotificationHeight:I

.field private mNeverAppliedGroupState:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderAmbient:Landroid/view/ViewGroup;

.field private mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderMargin:I

.field private mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationTopPadding:I

.field private mOverflowNumber:Landroid/widget/TextView;

.field private mOverflowNumberBottomPadding:I

.field private mOverflowNumberTopMargin:I

.field private mOverflowNumberTopPadding:I

.field private mRealHeight:I

.field private mUserLocked:Z


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;-><init>()V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;->setDuration(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    return-void
.end method

.method private calculateDesiredHeader()Landroid/view/ViewGroup;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    goto :goto_0
.end method

.method private getIntrinsicHeight(F)I
    .locals 12

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v8

    return v8

    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v3

    :cond_1
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v2

    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_6

    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    int-to-float v9, v9

    invoke-static {v9, v11, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    :cond_2
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v1, :cond_3

    int-to-float v8, v7

    cmpl-float v8, v8, p1

    if-ltz v8, :cond_7

    :cond_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_d

    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottomMargin:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    int-to-float v10, v10

    invoke-static {v9, v10, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    :goto_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_f

    int-to-float v8, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedButtonHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-static {v11, v9, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    :cond_4
    :goto_4
    return v6

    :cond_5
    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    if-nez v2, :cond_2

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int/2addr v6, v8

    goto :goto_1

    :cond_7
    if-nez v4, :cond_a

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_8

    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    invoke-static {v9, v10, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    :goto_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v8

    add-int/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    :goto_6
    add-int/2addr v6, v8

    goto :goto_5

    :cond_9
    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    goto :goto_6

    :cond_a
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_b

    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v9, v9

    invoke-static {v11, v9, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v6, v8

    :goto_7
    const/4 v4, 0x0

    goto :goto_5

    :cond_b
    if-eqz v2, :cond_c

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    :goto_8
    add-int/2addr v6, v8

    goto :goto_7

    :cond_c
    const/4 v8, 0x0

    goto :goto_8

    :cond_d
    if-eqz v2, :cond_e

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    add-int/2addr v6, v8

    goto :goto_3

    :cond_e
    int-to-float v8, v6

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottomMargin:F

    add-float/2addr v8, v9

    float-to-int v6, v8

    goto :goto_3

    :cond_f
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedButtonHeight()I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_4
.end method

.method private getMaxAllowedVisibleChildren()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    return v0
.end method

.method private getMaxAllowedVisibleChildren(Z)I
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0x8

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x5

    return v0

    :cond_4
    return v1
.end method

.method private getMinHeight(IZ)I
    .locals 8

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v6}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v6

    return v6

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    if-lt v5, p1, :cond_2

    :cond_1
    int-to-float v6, v4

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottomMargin:F

    add-float/2addr v6, v7

    float-to-int v4, v6

    return v4

    :cond_2
    if-nez v2, :cond_3

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    add-int/2addr v4, v6

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getVisibleChildrenExpandHeight()I
    .locals 10

    const/4 v9, 0x1

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int v4, v7, v8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    if-lt v6, v5, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    :goto_1
    int-to-float v2, v7

    int-to-float v7, v4

    add-float/2addr v7, v2

    float-to-int v4, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_1
.end method

.method private getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    return-object v0
.end method

.method private initDimens()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07029b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottomMargin:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07029f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButtonPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContentMarginStart:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberBottomPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopMargin:I

    return-void

    :cond_0
    iput v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105011a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    goto :goto_0
.end method

.method private recreateAmbientHeader(Landroid/app/Notification$Builder;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    :cond_0
    const/4 v2, 0x1

    invoke-static {p1, v2}, Landroid/app/NotificationCompat;->makeNotificationHeader(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperAmbient:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method private recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object p1

    :cond_0
    const/4 v3, 0x1

    invoke-static {p1, v3}, Landroid/app/NotificationCompat;->makeLowPriorityContentView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/NotificationHeaderView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findExpandButtonView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    goto :goto_1
.end method

.method private resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_2

    if-eq p1, p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    if-ne p1, p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private startChildAlphaAnimations(Z)V
    .locals 10

    if-eqz p1, :cond_1

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_0
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v3, v6, v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_0

    const/4 v6, 0x5

    if-lt v2, v6, :cond_2

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setAlpha(F)V

    new-instance v5, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    iput v4, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    sget-object v6, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    mul-int/lit8 v7, v2, 0x32

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/statusbar/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/stack/AnimationProperties;

    sget-object v6, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->ALPHA_FADE_IN:Lcom/android/systemui/statusbar/stack/AnimationProperties;

    invoke-virtual {v5, v0, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private updateChildrenClipping()V
    .locals 12

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v9

    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    sub-int v7, v9, v11

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_7

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_0

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v9

    int-to-float v9, v9

    add-float v1, v3, v9

    const/4 v8, 0x1

    const/4 v4, 0x0

    int-to-float v9, v7

    cmpl-float v9, v3, v9

    if-lez v9, :cond_3

    const/4 v8, 0x0

    :cond_1
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v9

    if-nez v9, :cond_4

    const/4 v6, 0x1

    :goto_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v9

    if-ge v5, v9, :cond_5

    const/4 v9, 0x1

    :goto_4
    and-int/2addr v8, v9

    if-eq v8, v6, :cond_2

    if-eqz v8, :cond_6

    move v9, v10

    :goto_5
    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClipBottomAmount(I)V

    goto :goto_1

    :cond_3
    int-to-float v9, v7

    cmpl-float v9, v1, v9

    if-lez v9, :cond_1

    int-to-float v9, v7

    sub-float v9, v1, v9

    float-to-int v4, v9

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    move v9, v10

    goto :goto_4

    :cond_6
    const/4 v9, 0x4

    goto :goto_5

    :cond_7
    return-void
.end method

.method private updateExpansionStates()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_2

    if-ne v2, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateHeaderTransformation()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;F)V

    :cond_0
    return-void
.end method

.method private updateHeaderVisibility(Z)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showMiuiStyle()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->calculateDesiredHeader()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eq v1, v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-ne v0, v5, :cond_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    if-eqz p1, :cond_4

    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformFrom(Lcom/android/systemui/statusbar/TransformableView;)V

    new-instance v5, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$3;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)V

    invoke-virtual {v2, v3, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->transformTo(Lcom/android/systemui/statusbar/TransformableView;Ljava/lang/Runnable;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-ne v1, v5, :cond_8

    move v5, v6

    :goto_0
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->startChildAlphaAnimations(Z)V

    :cond_4
    :goto_1
    if-nez p1, :cond_7

    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_5
    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWrapperForView(Landroid/view/View;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    :cond_6
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->resetHeaderVisibilityIfNeeded(Landroid/view/View;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-void

    :cond_8
    move v5, v7

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 3

    const/4 v2, 0x0

    if-gez p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setContentTransformationAmount(FZ)V

    return-void

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public applyChildOrder(Ljava/util/List;Lcom/android/systemui/statusbar/notification/VisualStabilityManager;Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager;",
            "Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eq v0, v1, :cond_1

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->canReorderNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/VisualStabilityManager;->addReorderingAllowedCallback(Lcom/android/systemui/statusbar/notification/VisualStabilityManager$Callback;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    return v3
.end method

.method public applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->applyToView(Landroid/view/View;)V

    invoke-virtual {v0, v6, v6, v7, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public getCollapsedButton()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getCollapsedButtonHeight()I
    .locals 1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getCollapsedHeight()I
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentHeaderView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCurrentHeader:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getExpandedBottomMargin()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mExpandedBottomMargin:I

    return v0
.end method

.method public getGroupExpandFraction()F
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    sub-int v4, v2, v1

    int-to-float v4, v4

    div-float v0, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    move-result v2

    goto :goto_0
.end method

.method public getHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v0

    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight(F)I

    move-result v1

    return v1
.end method

.method public getLowPriorityHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getMaxContentHeight()I
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    invoke-direct {p0, v6, v8}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v6

    return v6

    :cond_0
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int v4, v6, v7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    const/16 v6, 0x8

    if-lt v5, v6, :cond_3

    :cond_1
    if-lez v5, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    :cond_2
    return v4

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v6

    :goto_1
    int-to-float v2, v6

    int-to-float v6, v4

    add-float/2addr v6, v2

    float-to-int v4, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v6

    goto :goto_1
.end method

.method public getMinHeight()I
    .locals 2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v0

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(IZ)I

    move-result v0

    return v0
.end method

.method public getNotificationChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 6

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    add-int v3, v4, v5

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v3, v4

    :cond_0
    if-ne v0, p1, :cond_2

    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v3, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    return v4
.end method

.method public getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v20, v0

    move/from16 v11, v20

    const/4 v10, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v16

    add-int/lit8 v15, v16, -0x1

    add-int/lit8 v12, v15, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v21

    xor-int/lit8 v9, v21, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v8

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v12

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v21

    xor-int/lit8 v7, v21, 0x1

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v10, :cond_6

    if-eqz v9, :cond_4

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v22

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v14

    iput v14, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v21

    :goto_4
    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    if-ge v13, v12, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v21

    if-eqz v21, :cond_a

    move/from16 v21, v8

    :goto_5
    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    :goto_6
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    move/from16 v21, v0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    add-int v20, v20, v14

    if-ge v13, v12, :cond_1

    move/from16 v11, v20

    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v21, v0

    :goto_7
    add-int v20, v20, v21

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildTopMargin:I

    move/from16 v21, v0

    goto :goto_7

    :cond_6
    if-eqz v9, :cond_7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v1, v8}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v22

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v20, v0

    :goto_8
    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v21, v0

    :goto_9
    add-int v20, v20, v21

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationTopPadding:I

    move/from16 v21, v0

    goto :goto_9

    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_4

    :cond_a
    const/high16 v21, 0x3f800000    # 1.0f

    goto/16 :goto_5

    :cond_b
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, v8, v21

    if-nez v21, :cond_c

    if-gt v13, v15, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    move/from16 v22, v0

    sub-float v21, v21, v22

    iget v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    iget v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    move/from16 v21, v0

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    const/16 v22, 0x0

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v21

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto/16 :goto_6

    :cond_c
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v22

    move/from16 v0, v22

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/stack/ViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->paddingTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberBottomPadding:I

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->paddingBottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v18

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v22, v0

    sub-int v23, v3, v18

    div-int/lit8 v23, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopMargin:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v21

    if-nez v21, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_18

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShowingAmbient()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getAmbientSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v2

    :cond_f
    :goto_a
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v17

    :cond_10
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_11

    move-object/from16 v17, v2

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->getRelativeYOffset(Landroid/view/View;Landroid/view/View;)F

    move-result v23

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getAlpha()F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    :cond_12
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    if-nez v21, :cond_13

    new-instance v21, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v22, v0

    if-eqz v7, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v21

    :goto_c
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    if-nez v21, :cond_15

    new-instance v21, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v21 .. v21}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1a

    const/16 v21, 0x1

    :goto_d
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    :cond_16
    return-void

    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v2

    goto/16 :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    goto/16 :goto_b

    :cond_19
    const/16 v21, 0x0

    goto/16 :goto_c

    :cond_1a
    const/16 v21, 0x0

    goto :goto_d
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 7

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v6

    int-to-float v6, v6

    add-float v5, v2, v6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v2, v6

    cmpl-float v6, p1, v5

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v0

    if-gtz v6, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method public getVisibleHeader()Landroid/view/NotificationHeaderView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    :cond_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isUserLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    return v0
.end method

.method public notifyShowAmbientChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method public onExpansionChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->getOverflowNumberPadding()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getLayoutDirection()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_7

    move v4, v5

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v7

    add-int v6, v4, v7

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9, v6, v8}, Landroid/widget/TextView;->layout(IIII)V

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v9}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {v9}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    :cond_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContentMarginStart:I

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButtonPadding:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v9

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContentMarginStart:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButtonPadding:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11, v9, v10}, Landroid/widget/TextView;->layout(IIII)V

    :cond_5
    return-void

    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v7, v8

    sub-int v4, v7, v5

    goto/16 :goto_2
.end method

.method protected onMeasure(II)V
    .locals 17

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    const/high16 v15, 0x40000000    # 2.0f

    if-ne v7, v15, :cond_4

    const/4 v4, 0x1

    :goto_0
    const/high16 v15, -0x80000000

    if-ne v7, v15, :cond_5

    const/4 v9, 0x1

    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    move/from16 v11, p2

    if-nez v4, :cond_0

    if-eqz v9, :cond_1

    :cond_0
    const/high16 v15, -0x80000000

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/widget/TextView;->measure(II)V

    :cond_2
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x8

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v3

    if-le v2, v3, :cond_6

    add-int/lit8 v12, v3, -0x1

    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-ne v8, v12, :cond_7

    const/4 v10, 0x1

    :goto_4
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->getOverflowNumberPadding()I

    move-result v16

    add-int v15, v15, v16

    :goto_5
    invoke-virtual {v1, v15}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSingleLineWidthIndention(I)V

    move/from16 v0, p1

    invoke-virtual {v1, v0, v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->measure(II)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v15

    add-int/2addr v6, v15

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v12, -0x1

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    :cond_8
    const/4 v15, 0x0

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_a
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move/from16 v0, p1

    invoke-virtual {v15, v0, v5}, Landroid/view/NotificationHeaderView;->measure(II)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    move/from16 v0, p1

    invoke-virtual {v15, v0, v5}, Landroid/view/NotificationHeaderView;->measure(II)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v15, :cond_d

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    const/high16 v16, 0x40000000    # 2.0f

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    move/from16 v0, p1

    invoke-virtual {v15, v0, v5}, Landroid/view/ViewGroup;->measure(II)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    const/high16 v16, -0x80000000

    move/from16 v0, v16

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v15, v0, v11}, Landroid/widget/TextView;->measure(II)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v6, v15

    :cond_e
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNotificationUpdated()V
    .locals 5

    const v4, 0x7f0600dd

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberColor(Landroid/widget/TextView;II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 0

    return-void
.end method

.method public reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderLowPriority:Landroid/view/NotificationHeaderView;

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderAmbient:Landroid/view/ViewGroup;

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method public rebuildCollapseButton()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d0095

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public recreateNotificationHeader(Landroid/view/View$OnClickListener;)V
    .locals 8

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/app/NotificationCompat;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/app/NotificationCompat;->makeNotificationHeader(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/NotificationHeaderView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapperCompat;->findExpandButtonView(Landroid/view/View;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v4, v5, v6}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v4, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->onContentUpdated(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateAmbientHeader(Landroid/app/Notification$Builder;)V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v8, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderTransformation()V

    invoke-direct {p0, v10}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v2, v8

    :goto_1
    if-ge v4, v5, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v7, v8

    invoke-static {v7, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v8

    int-to-float v2, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v8

    int-to-float v2, v8

    goto :goto_1

    :cond_3
    float-to-int v8, v2

    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public setChildrenExpanded(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, p1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mClipBottomAmount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberDark(Landroid/widget/TextView;ZZJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    return-void
.end method

.method public setIconsVisible(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Landroid/view/NotificationHeaderViewCompat;->setIconForceHidden(Landroid/view/NotificationHeaderView;Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapperLowPriority:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Landroid/view/NotificationHeaderViewCompat;->setIconForceHidden(Landroid/view/NotificationHeaderView;Z)V

    :cond_1
    return-void
.end method

.method public setIsLowPriority(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateLowPriorityHeader(Landroid/app/Notification$Builder;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    :cond_1
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 5

    const/4 v4, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    return-void
.end method

.method public showingAsLowPriority()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mIsLowPriority:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    new-instance v6, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->showingAsLowPriority()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_1

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v3

    :goto_0
    add-int/lit8 v5, v2, -0x1

    :goto_1
    if-ltz v5, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v7

    invoke-virtual {v7, v1, p2}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    invoke-virtual {v1, v9, v9, v10, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget v0, v8, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v9, v8, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput v0, v8, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8, v9, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/stack/ViewState;->applyToView(Landroid/view/View;)V

    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedButton:Landroid/widget/TextView;

    invoke-virtual {v8, v9, p2}, Lcom/android/systemui/statusbar/stack/ViewState;->animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/stack/AnimationProperties;)V

    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenClipping()V

    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateChildrenHeaderAppearance()V

    return-void
.end method

.method public updateGroupOverflow()V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v1

    if-le v0, v1, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    sub-int v5, v0, v1

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContainingNotification:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getExpandClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getTransientViewCount()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addTransientView(Landroid/view/View;I)V

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    goto :goto_0
.end method
