.class public Landroid/view/NotificationHeaderView;
.super Landroid/view/ViewGroup;
.source "NotificationHeaderView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/NotificationHeaderView$1;,
        Landroid/view/NotificationHeaderView$HeaderTouchListener;
    }
.end annotation


# static fields
.field public static final NO_COLOR:I = 0x1


# instance fields
.field private mAcceptAllTouches:Z

.field private mAppName:Landroid/view/View;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private final mChildMinWidth:I

.field private final mContentEndMargin:I

.field private mEntireHeaderClickable:Z

.field private mExpandButton:Landroid/widget/ImageView;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandOnlyOnButton:Z

.field private mExpanded:Z

.field private mHeaderBackgroundHeight:I

.field private mHeaderText:Landroid/view/View;

.field private mIcon:Lcom/android/internal/widget/CachingIconView;

.field private mIconColor:I

.field private mInfo:Landroid/view/View;

.field private mOriginalNotificationColor:I

.field private mProfileBadge:Landroid/view/View;

.field mProvider:Landroid/view/ViewOutlineProvider;

.field private mShowExpandButtonAtEnd:Z

.field private mShowWorkBadgeAtEnd:Z

.field private mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;


# direct methods
.method static synthetic -get0(Landroid/view/NotificationHeaderView;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return v0
.end method

.method static synthetic -get1(Landroid/view/NotificationHeaderView;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/NotificationHeaderView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/NotificationHeaderView;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return v0
.end method

.method static synthetic -get4(Landroid/view/NotificationHeaderView;)I
    .registers 2

    iget v0, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    return v0
.end method

.method static synthetic -get5(Landroid/view/NotificationHeaderView;)Lcom/android/internal/widget/CachingIconView;
    .registers 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/NotificationHeaderView;)Landroid/view/View;
    .registers 2

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->getFirstChildNotGone()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/NotificationHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-direct {v1, p0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v1, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    new-instance v1, Landroid/view/NotificationHeaderView$1;

    invoke-direct {v1, p0}, Landroid/view/NotificationHeaderView$1;-><init>(Landroid/view/NotificationHeaderView;)V

    iput-object v1, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    const v1, 0x1050117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    const v1, 0x1050124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    const v1, 0x1120083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    return-void
.end method

.method private getFirstChildNotGone()Landroid/view/View;
    .registers 5

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_17

    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    return-object v0

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_17
    return-object p0
.end method

.method private updateExpandButton()V
    .registers 5

    iget-boolean v2, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    if-eqz v2, :cond_2a

    const v1, 0x108032b

    const v0, 0x10401ea

    :goto_a
    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget v3, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/view/NotificationHeaderView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_2a
    const v1, 0x1080363

    const v0, 0x10401e9

    goto :goto_a
.end method

.method private updateTouchListener()V
    .registers 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-virtual {v0}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->bindTouchRects()V

    :cond_9
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_15
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getExpandButton()Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getIcon()Lcom/android/internal/widget/CachingIconView;
    .registers 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    return-object v0
.end method

.method public getOriginalIconColor()I
    .registers 2

    iget v0, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return v0
.end method

.method public getOriginalNotificationColor()I
    .registers 2

    iget v0, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return v0
.end method

.method public getWorkProfileIcon()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isInTouchRect(FF)Z
    .registers 4

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    invoke-static {v0, p1, p2}, Landroid/view/NotificationHeaderView$HeaderTouchListener;->-wrap0(Landroid/view/NotificationHeaderView$HeaderTouchListener;FF)Z

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/view/NotificationHeaderView;->mHeaderBackgroundHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_15
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x10201af

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    const v0, 0x1020286

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    const v0, 0x102023c

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/CachingIconView;

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mIcon:Lcom/android/internal/widget/CachingIconView;

    const v0, 0x1020395

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 26

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingBottom()I

    move-result v18

    sub-int v12, v17, v18

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v4, :cond_d3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_34

    :goto_31
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_34
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v17

    add-int v10, v10, v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    add-int v15, v10, v17

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingTop()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-int v18, v12, v5

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v2, v16, v5

    move v8, v10

    move v9, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_8a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    move/from16 v17, v0

    sub-int v9, v6, v17

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v8, v9, v17

    move v6, v8

    :cond_8a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/NotificationHeaderView;->mProfileBadge:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-ne v3, v0, :cond_ad

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/NotificationHeaderView;->mContentEndMargin:I

    :cond_a4
    sub-int v9, v6, v13

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v8, v9, v17

    move v6, v8

    :cond_ad
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getLayoutDirection()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c6

    move v11, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v17

    sub-int v8, v17, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getWidth()I

    move-result v17

    sub-int v9, v17, v11

    :cond_c6
    move/from16 v0, v16

    invoke-virtual {v3, v8, v0, v9, v2}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v14}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v17

    add-int v10, v15, v17

    goto/16 :goto_31

    :cond_d3
    invoke-direct/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    const/high16 v15, -0x80000000

    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 v15, -0x80000000

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingStart()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getPaddingEnd()I

    move-result v16

    add-int v12, v15, v16

    const/4 v7, 0x0

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/NotificationHeaderView;->getChildCount()I

    move-result v15

    if-ge v7, v15, :cond_73

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/NotificationHeaderView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_38

    :goto_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f

    :cond_38
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v4

    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/view/NotificationHeaderView;->getChildMeasureSpec(III)I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/view/View;->measure(II)V

    iget v15, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    add-int v15, v15, v16

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v15, v15, v16

    add-int/2addr v12, v15

    goto :goto_35

    :cond_73
    if-le v12, v6, :cond_e0

    sub-int v10, v12, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-lez v10, :cond_b1

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_b1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    if-le v1, v15, :cond_b1

    move-object/from16 v0, p0

    iget v15, v0, Landroid/view/NotificationHeaderView;->mChildMinWidth:I

    sub-int v15, v1, v15

    invoke-static {v15, v10}, Ljava/lang/Math;->min(II)I

    move-result v15

    sub-int v9, v1, v15

    const/high16 v15, -0x80000000

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mAppName:Landroid/view/View;

    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    sub-int v15, v1, v9

    sub-int/2addr v10, v15

    :cond_b1
    if-lez v10, :cond_e0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-eq v15, v0, :cond_e0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int v15, v11, v10

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/high16 v15, -0x80000000

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/NotificationHeaderView;->mHeaderText:Landroid/view/View;

    invoke-virtual {v15, v4, v13}, Landroid/view/View;->measure(II)V

    :cond_e0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Landroid/view/NotificationHeaderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setAcceptAllTouches(Z)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mEntireHeaderClickable:Z

    if-nez v0, :cond_7

    :goto_4
    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mAcceptAllTouches:Z

    return-void

    :cond_7
    const/4 p1, 0x1

    goto :goto_4
.end method

.method public setExpandOnlyOnButton(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpandOnlyOnButton:Z

    return-void
.end method

.method public setExpanded(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mExpanded:Z

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateExpandButton()V

    return-void
.end method

.method public setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_13
    invoke-virtual {p0}, Landroid/view/NotificationHeaderView;->invalidate()V

    return-void

    :cond_17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setWillNotDraw(Z)V

    iput-object v1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Landroid/view/NotificationHeaderView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto :goto_13
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_9

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mTouchListener:Landroid/view/NotificationHeaderView$HeaderTouchListener;

    :cond_9
    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/view/NotificationHeaderView;->mExpandButton:Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/view/NotificationHeaderView;->updateTouchListener()V

    return-void
.end method

.method public setOriginalIconColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/view/NotificationHeaderView;->mIconColor:I

    return-void
.end method

.method public setOriginalNotificationColor(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/view/NotificationHeaderView;->mOriginalNotificationColor:I

    return-void
.end method

.method public setShowExpandButtonAtEnd(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    if-eq p1, v0, :cond_b

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowExpandButtonAtEnd:Z

    :cond_b
    return-void
.end method

.method public setShowWorkBadgeAtEnd(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    if-eq p1, v0, :cond_b

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/view/NotificationHeaderView;->setClipToPadding(Z)V

    iput-boolean p1, p0, Landroid/view/NotificationHeaderView;->mShowWorkBadgeAtEnd:Z

    :cond_b
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 4

    const/4 v0, 0x1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/view/NotificationHeaderView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_c

    :cond_b
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
