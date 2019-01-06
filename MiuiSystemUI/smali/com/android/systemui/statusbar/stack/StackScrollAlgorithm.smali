.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;,
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mCollapsedSize:I

.field private mHeadsUpMarginTop:I

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mIsExpandedBecauseOfHeadsUp:Z

.field private mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

.field private mPaddingBetweenElements:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private applyCommonHeadsUpChildState(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    return-void
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .locals 3

    const/4 v2, 0x0

    instance-of v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    return v2

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v1

    return v1
.end method

.method private clampPositionToShelf(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    iput-boolean v3, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    iput-boolean v3, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    :cond_1
    return-void
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 13

    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/ExpandableView;

    instance-of v0, v12, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    move-object v11, v12

    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v11}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v10

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areChildrenExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    if-ge v9, v0, :cond_0

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move-object v1, v6

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    add-int v2, v8, v9

    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    iget v0, v10, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v4

    sub-float/2addr v0, v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v4

    sub-float v5, v0, v4

    move-object v0, p0

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotificationFullyShown(Lcom/android/systemui/statusbar/ExpandableView;ILcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;F)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getPaddingForValue(Ljava/lang/Float;)F
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float v1, v1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    iput-boolean v8, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_0

    :cond_2
    return-void
.end method

.method private initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 23

    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v4

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v19

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v21, v21, v4

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->ensureCapacity(I)V

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    const/4 v15, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v5, :cond_8

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I

    move-result v15

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v12

    const/16 v21, 0x0

    cmpl-float v21, v12, v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Float;

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v14

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v16

    const/16 v21, 0x0

    cmpl-float v21, v12, v21

    if-lez v21, :cond_5

    move/from16 v0, v16

    invoke-static {v0, v14, v12}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    :cond_2
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v21, v0

    if-eqz v21, :cond_7

    move-object/from16 v18, v20

    check-cast v18, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v9

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v21

    if-eqz v21, :cond_7

    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v8

    iput v15, v8, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v21

    move/from16 v0, v16

    move/from16 v1, v21

    invoke-static {v14, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v14

    goto :goto_2

    :cond_6
    if-eqz v13, :cond_3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Float;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v14

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    move-object/from16 v13, v20

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07042f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getHeadsUpTopMargin(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mHeadsUpMarginTop:I

    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 16

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v14

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v15

    add-float v3, v14, v15

    :goto_0
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_8

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v13

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v14

    if-nez v14, :cond_0

    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-static {v3, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    :cond_0
    iget v9, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v14, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v7, v14

    add-float v8, v9, v7

    instance-of v14, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_5

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v5

    :goto_2
    instance-of v14, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v14, :cond_6

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v6

    :goto_3
    iget-boolean v14, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    if-nez v14, :cond_7

    cmpg-float v14, v9, v11

    if-gez v14, :cond_7

    if-nez v5, :cond_1

    xor-int/lit8 v14, v6, 0x1

    if-nez v14, :cond_2

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_2
    sub-float v10, v11, v9

    float-to-int v14, v10

    iput v14, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    :goto_4
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v14

    if-nez v14, :cond_3

    move v11, v8

    move v12, v9

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    const/4 v14, 0x0

    iput v14, v13, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_4

    :cond_8
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 14

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v3, :cond_4

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    instance-of v11, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v11, :cond_0

    move-object v11, v2

    check-cast v11, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v11

    iget-boolean v8, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->hideSensitiveByAppLock:Z

    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v4

    iput-boolean v6, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    iput-boolean v5, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    if-nez v7, :cond_2

    move v11, v8

    :goto_1
    iput-boolean v11, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    if-ne v1, v2, :cond_3

    const/4 v10, 0x1

    :goto_2
    if-eqz v6, :cond_1

    if-eqz v10, :cond_1

    iget v11, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    iput v11, v4, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v6, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    iget-object v6, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    instance-of v6, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_2
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v2

    if-nez v5, :cond_3

    move-object v5, v4

    const/4 v6, 0x1

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    :cond_3
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->applyCommonHeadsUpChildState(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    if-ne v4, v5, :cond_4

    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    neg-int v6, v6

    int-to-float v6, v6

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iput v7, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-direct {p0, v2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->applyCommonHeadsUpChildState(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget v6, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mHeadsUpMarginTop:I

    int-to-float v6, v6

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iput v7, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_1

    :cond_6
    return-void
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2

    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    iput p3, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    return p3
.end method

.method private updateNotificationFullyShown(Lcom/android/systemui/statusbar/ExpandableView;ILcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;F)V
    .locals 15

    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_2

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isFirstRow()Z

    move-result v6

    :goto_0
    move-object/from16 v0, p1

    instance-of v13, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->areChildrenExpanded()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->isChildInGroup()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v13

    xor-int/lit8 v11, v13, 0x1

    :goto_1
    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v9, v13

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    add-float v12, p5, v13

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->isExpansionChanging()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v13

    int-to-float v4, v13

    :goto_2
    if-eqz v11, :cond_0

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v13

    int-to-float v9, v13

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v8}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v9, v13

    :cond_0
    if-eqz p2, :cond_5

    xor-int/lit8 v3, v6, 0x1

    :goto_3
    if-eqz v3, :cond_6

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v13

    int-to-float v13, v13

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_6

    const/4 v2, 0x1

    :goto_4
    add-float v13, v12, v9

    cmpg-float v13, v13, v4

    if-gtz v13, :cond_7

    const/4 v7, 0x1

    :goto_5
    if-eqz v3, :cond_8

    xor-int/lit8 v10, v7, 0x1

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v13

    if-nez v13, :cond_9

    xor-int/lit8 v1, v11, 0x1

    :goto_7
    if-eqz v10, :cond_a

    const/4 v13, 0x0

    :goto_8
    move-object/from16 v0, p3

    iput v13, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    if-eqz v1, :cond_b

    if-eqz v10, :cond_b

    const v13, 0x3f6b851f    # 0.92f

    :goto_9
    move-object/from16 v0, p3

    iput v13, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->scaleX:F

    if-eqz v1, :cond_c

    if-eqz v10, :cond_c

    const v13, 0x3f6b851f    # 0.92f

    :goto_a
    move-object/from16 v0, p3

    iput v13, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->scaleY:F

    if-eqz v2, :cond_1

    move-object/from16 v0, p3

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->fullyShown:Z

    if-eq v13, v7, :cond_1

    iget-object v13, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    if-eqz v13, :cond_1

    if-eqz v7, :cond_d

    iget-object v13, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;->onPopupAnimationRequested(Lcom/android/systemui/statusbar/ExpandableView;)V

    :cond_1
    :goto_b
    move-object/from16 v0, p3

    iput-boolean v7, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->fullyShown:Z

    return-void

    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxLayoutHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual/range {p4 .. p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v14

    sub-float v4, v13, v14

    goto/16 :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    const/4 v1, 0x0

    goto :goto_7

    :cond_a
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_b
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_c
    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_d
    iget-object v13, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;->onDismissAnimationRequested(Lcom/android/systemui/statusbar/ExpandableView;)V

    goto :goto_b
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7

    iget v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v5, v0

    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v6, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 6

    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    if-lt v4, v0, :cond_0

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7

    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v2, 0x0

    add-int/lit8 v1, v6, -0x1

    :goto_0
    if-ltz v1, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F

    move-result v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 2

    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method protected getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getPaddingAfterChild(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    return-void
.end method

.method public setExpandedBecauseOfHeadsUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpandedBecauseOfHeadsUp:Z

    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    return-void
.end method

.method public setOnAnimationRequestedListener(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mOnAnimationRequestedListener:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$OnAnimationRequestedListener;

    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F
    .locals 10

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    iput v2, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    invoke-virtual {p0, p3, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v6

    iput p5, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    const/4 v0, 0x4

    iput v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->getViewType()I

    move-result v8

    if-ne v8, v9, :cond_5

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v0

    sub-int/2addr v0, v6

    int-to-float v0, v0

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v2

    const/high16 v4, 0x3e800000    # 0.25f

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpandedBecauseOfHeadsUp:Z

    if-nez v0, :cond_2

    if-eqz v8, :cond_1

    const/16 v0, 0xd

    if-ne v8, v0, :cond_2

    :cond_1
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    move v2, p1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotificationFullyShown(Lcom/android/systemui/statusbar/ExpandableView;ILcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;F)V

    :cond_2
    iget v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v6

    add-float/2addr v0, v2

    int-to-float v2, v7

    add-float p5, v0, v2

    cmpg-float v0, p5, v5

    if-gtz v0, :cond_3

    iput v9, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    :cond_3
    iget v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    if-nez v0, :cond_4

    const-string/jumbo v0, "StackScrollAlgorithm"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to assign location for child "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v2

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v4

    add-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    return p5

    :cond_5
    if-eqz v8, :cond_6

    const/4 v0, 0x1

    if-ne v8, v0, :cond_0

    :cond_6
    invoke-direct {p0, v3, p4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToShelf(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    goto :goto_0
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F
    .locals 13

    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v9

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v10

    int-to-float v1, v10

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v10

    if-eqz v10, :cond_1

    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v11

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v12

    add-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    const/4 v10, 0x0

    cmpl-float v10, p2, v10

    if-eqz v10, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr p2, v10

    :goto_0
    int-to-float v10, v9

    mul-float/2addr v10, p2

    add-float/2addr v10, v1

    iput v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    :goto_1
    return p2

    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v10

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v11

    add-float/2addr v10, v11

    iget v11, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    sub-float v6, v10, v11

    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    div-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-float/2addr p2, v10

    goto :goto_0

    :cond_1
    if-nez p1, :cond_4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->isAboveShelf()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v10

    sub-int/2addr v10, v7

    int-to-float v10, v10

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v11

    add-float/2addr v10, v11

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v11

    add-float v8, v10, v11

    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v11, v11

    add-float v5, v10, v11

    cmpl-float v10, v8, v5

    if-lez v10, :cond_2

    iput v1, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1

    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v7, :cond_3

    sub-float v10, v5, v8

    int-to-float v11, v7

    div-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_3
    int-to-float v10, v9

    mul-float/2addr v10, v4

    add-float/2addr v10, v1

    iput v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1

    :cond_4
    iput v1, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1
.end method
