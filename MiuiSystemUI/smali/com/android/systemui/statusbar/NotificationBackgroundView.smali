.class public Lcom/android/systemui/statusbar/NotificationBackgroundView;
.super Landroid/view/View;
.source "NotificationBackgroundView.java"


# instance fields
.field private mActualHeight:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private mClipBottomAmount:I

.field private mClipTopAmount:I

.field private mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private final mCoverPaint:Landroid/graphics/Paint;

.field private mDrawBottomDivider:Z

.field private mDrawTopDivider:Z

.field private final mExpandedDividerPaint:Landroid/graphics/Paint;

.field private final mTransparentPaint:Landroid/graphics/Paint;

.field private mVisibleRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCoverPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandedDividerPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mVisibleRows:Ljava/util/List;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->updateResource()V

    return-void
.end method

.method private drawDividerLine(Landroid/graphics/Canvas;II)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0702ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawTopDivider:Z

    if-eqz v0, :cond_0

    int-to-float v2, p2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-int v0, p2, v6

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandedDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawBottomDivider:Z

    if-eqz v0, :cond_1

    sub-int v0, p3, v6

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    int-to-float v4, p3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandedDividerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawTransparentArea(Landroid/graphics/Canvas;II)V
    .locals 18

    invoke-static {}, Lcom/android/systemui/Util;->isDefaultTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDismissAllInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isFoldAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedButtonHeight()I

    move-result v1

    sub-int v1, p3, v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getExpandedBottomMargin()I

    move-result v2

    sub-int v2, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasExtraBottomPadding()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingBottom()I

    move-result v1

    :goto_0
    sub-int p3, v2, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasExtraTopPadding()Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPaddingTop()I

    move-result v15

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v9

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->showGoogleStyle()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v1

    add-int p2, p2, v1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mVisibleRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_3
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v1

    move/from16 v0, p3

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mVisibleRows:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v15, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mVisibleRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_7
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mVisibleRows:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    add-int/lit8 v1, v10, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mVisibleRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mVisibleRows:Ljava/util/List;

    add-int/lit8 v2, v10, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableView;

    :goto_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->isAnimating()Z

    move-result v13

    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpansionChanging()Z

    move-result v11

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasExtraTopPadding()Z

    move-result v1

    if-eqz v1, :cond_d

    if-nez v10, :cond_d

    const/4 v1, 0x0

    :goto_6
    int-to-float v1, v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    add-float v3, v1, v2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasExtraTopPadding()Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v10, :cond_e

    move v1, v15

    :goto_7
    int-to-float v1, v1

    add-float v2, v1, v3

    if-eqz v13, :cond_f

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    :goto_8
    int-to-float v1, v1

    add-float v5, v2, v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_10

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v1, v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_8
    :goto_9
    if-eqz v14, :cond_9

    int-to-float v1, v15

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v3, v1, v2

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v5

    if-nez v12, :cond_9

    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_9

    xor-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_9

    cmpg-float v1, v3, v5

    if-gez v1, :cond_9

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_9
    if-nez v10, :cond_a

    move/from16 v0, p2

    int-to-float v3, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v5

    if-nez v12, :cond_a

    cmpg-float v1, v3, v5

    if-gez v1, :cond_a

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mVisibleRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v10, v1, :cond_7

    int-to-float v1, v15

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    add-float v3, v1, v2

    move/from16 v0, p3

    int-to-float v5, v0

    if-nez v12, :cond_7

    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_7

    xor-int/lit8 v1, v11, 0x1

    if-eqz v1, :cond_7

    cmpg-float v1, v3, v5

    if-gez v1, :cond_7

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_4

    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_d
    move v1, v15

    goto/16 :goto_6

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_7

    :cond_f
    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    goto/16 :goto_8

    :cond_10
    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_11
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mTransparentPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCoverPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    int-to-float v1, v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/SwipeHelper;->getAlphaForOffset(F)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v7, v1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v4

    add-float/2addr v4, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    :cond_12
    return-void
.end method

.method private drawableStateChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawableStateChanged(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getWidth()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawDividerLine(Landroid/graphics/Canvas;II)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->drawTransparentArea(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public setActualHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipBottomAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mClipTopAmount:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setContainingRow(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContainingRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-void
.end method

.method public setCustomBackground(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(IZZ)V

    return-void
.end method

.method public setCustomBackground(IZZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawTopDivider:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mDrawBottomDivider:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->setCustomBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCustomBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->invalidate()V

    return-void
.end method

.method public setDrawableAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setRippleColor(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setState([I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method public setTint(I)V
    .locals 0

    return-void
.end method

.method public updateResource()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mExpandedDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationBackgroundView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationBackgroundView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
