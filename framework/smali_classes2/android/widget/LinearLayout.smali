.class public Landroid/widget/LinearLayout;
.super Landroid/view/ViewGroup;
.source "LinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/LinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field private static final INDEX_BOTTOM:I = 0x2

.field private static final INDEX_CENTER_VERTICAL:I = 0x0

.field private static final INDEX_FILL:I = 0x3

.field private static final INDEX_TOP:I = 0x1

.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field public static final SHOW_DIVIDER_END:I = 0x4

.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field public static final SHOW_DIVIDER_NONE:I = 0x0

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4


# instance fields
.field private final mAllowInconsistentMeasurement:Z

.field private mBaselineAligned:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineAlignedChildIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mBaselineChildTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
        flagMapping = {
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = -0x1
                mask = -0x1
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x0
                mask = 0x0
                name = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x30
                mask = 0x30
                name = "TOP"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x50
                mask = 0x50
                name = "BOTTOM"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x3
                mask = 0x3
                name = "LEFT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x5
                mask = 0x5
                name = "RIGHT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800003
                mask = 0x800003
                name = "START"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800005
                mask = 0x800005
                name = "END"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x10
                mask = 0x10
                name = "CENTER_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x70
                mask = 0x70
                name = "FILL_VERTICAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x1
                mask = 0x1
                name = "CENTER_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x7
                mask = 0x7
                name = "FILL_HORIZONTAL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x11
                mask = 0x11
                name = "CENTER"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x77
                mask = 0x77
                name = "FILL"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$FlagToString;
                equals = 0x800000
                mask = 0x800000
                name = "RELATIVE"
            .end subannotation
        }
        formatToHexString = true
    .end annotation
.end field

.field private mLayoutDirection:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mShowDividers:I

.field private mTotalLength:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private mUseLargestChild:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mWeightSum:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 14

    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    iput v8, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    iput v5, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    const v6, 0x800033

    iput v6, p0, Landroid/widget/LinearLayout;->mGravity:I

    iput v8, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    sget-object v6, Lcom/android/internal/R$styleable;->LinearLayout:[I

    invoke-virtual {p1, p2, v6, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_22

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_22
    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_2b

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    :cond_2b
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    :cond_35
    const/4 v6, 0x4

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    const/4 v6, 0x6

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    const/4 v6, 0x7

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    const/16 v6, 0x8

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v3, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x17

    if-gt v3, v6, :cond_73

    :goto_6d
    iput-boolean v4, p0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_73
    move v4, v5

    goto :goto_6d
.end method

.method private allViewsAreGoneBefore(I)Z
    .registers 7

    const/4 v4, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_3
    if-ltz v1, :cond_17

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_14

    return v4

    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_17
    const/4 v2, 0x1

    return v2
.end method

.method private forceUniformHeight(II)V
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v6, 0x0

    :goto_c
    if-ge v6, p1, :cond_3a

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_37

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_37

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object v0, p0

    move v2, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_3a
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 12

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v6, 0x0

    :goto_c
    if-ge v6, p1, :cond_3a

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_37

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-eq v0, v4, :cond_37

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_37

    iget v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object v0, p0

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_37
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_3a
    return-void
.end method

.method private getLastNonGoneChild()Landroid/view/View;
    .registers 6

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_7
    if-ltz v1, :cond_1b

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_18

    return-object v0

    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    :cond_1b
    return-object v4
.end method

.method private isShowingDividers()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 8

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    return v0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v3

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v1, :cond_41

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_32

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_35

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    :goto_2f
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_35
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    goto :goto_2f

    :cond_41
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_56

    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_65

    if-eqz v3, :cond_57

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v5

    :goto_53
    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_56
    return-void

    :cond_57
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    goto :goto_53

    :cond_65
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_79

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    sub-int v5, v6, v7

    goto :goto_53

    :cond_79
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v5, v6, v7

    goto :goto_53
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_32

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2f

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v5, v6, v7

    invoke-virtual {p0, p1, v5}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_32
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-direct {p0}, Landroid/widget/LinearLayout;->getLastNonGoneChild()Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_50

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    sub-int v0, v6, v7

    :goto_4c
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_4f
    return-void

    :cond_50
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v6, v7

    goto :goto_4c
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "layout:baselineAligned"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    const-string/jumbo v0, "layout:baselineAlignedChildIndex"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "measurement:baselineChildTop"

    iget v1, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "measurement:orientation"

    iget v1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "measurement:gravity"

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "measurement:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "layout:totalLength"

    iget v1, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string/jumbo v0, "layout:useLargestChild"

    iget-boolean v1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    const/4 v2, -0x2

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_b

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_b
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .registers 3

    sget-boolean v0, Landroid/widget/LinearLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1c

    instance-of v0, p1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    :cond_10
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1c
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 9

    const/4 v7, -0x1

    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gez v5, :cond_a

    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v5

    return v5

    :cond_a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    iget v6, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-gt v5, v6, :cond_1b

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1b
    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    if-ne v1, v7, :cond_35

    iget v5, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    if-nez v5, :cond_2c

    return v7

    :cond_2c
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_35
    iget v2, p0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    iget v5, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_47

    iget v5, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v4, v5, 0x70

    const/16 v5, 0x30

    if-eq v4, v5, :cond_47

    sparse-switch v4, :sswitch_data_72

    :cond_47
    :goto_47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v2

    add-int/2addr v5, v1

    return v5

    :sswitch_52
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v2, v5, v6

    goto :goto_47

    :sswitch_5f
    iget v5, p0, Landroid/widget/LinearLayout;->mBottom:I

    iget v6, p0, Landroid/widget/LinearLayout;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v5

    goto :goto_47

    nop

    :sswitch_data_72
    .sparse-switch
        0x10 -> :sswitch_5f
        0x50 -> :sswitch_52
    .end sparse-switch
.end method

.method public getBaselineAlignedChildIndex()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return v0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerPadding()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    return v0
.end method

.method public getDividerWidth()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    return v0
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    return v0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    return v0
.end method

.method public getShowDividers()I
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    return v0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getVirtualChildCount()I
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getWeightSum()F
    .registers 2

    iget v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v3

    if-ne p1, v3, :cond_11

    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_f

    :goto_e
    return v1

    :cond_f
    move v1, v2

    goto :goto_e

    :cond_11
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;->allViewsAreGoneBefore(I)Z

    move-result v0

    if-eqz v0, :cond_20

    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1e

    :goto_1d
    return v1

    :cond_1e
    move v1, v2

    goto :goto_1d

    :cond_20
    iget v3, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_27

    :goto_26
    return v1

    :cond_27
    move v1, v2

    goto :goto_26
.end method

.method public isBaselineAligned()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return v0
.end method

.method public isMeasureWithLargestChildEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 35

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move/from16 v27, v0

    sub-int v18, p4, p2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v10, v18, v2

    sub-int v2, v18, v27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    sub-int v13, v2, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v23, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v26, v2, 0x70

    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v21

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    sparse-switch v2, :sswitch_data_13c

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    :goto_50
    const/16 v28, 0x0

    const/16 v16, 0x1

    if-eqz v20, :cond_5a

    add-int/lit8 v28, v14, -0x1

    const/16 v16, -0x1

    :cond_5a
    const/16 v19, 0x0

    :goto_5c
    move/from16 v0, v19

    if-ge v0, v14, :cond_13b

    mul-int v2, v16, v19

    add-int v11, v28, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_98

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v2

    add-int/2addr v12, v2

    :cond_73
    :goto_73
    add-int/lit8 v19, v19, 0x1

    goto :goto_5c

    :sswitch_76
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    add-int v2, v2, p3

    sub-int v2, v2, p1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v12, v2, v4

    goto :goto_50

    :sswitch_85
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    sub-int v4, p3, p1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v29, v0

    sub-int v4, v4, v29

    div-int/lit8 v4, v4, 0x2

    add-int v12, v2, v4

    goto :goto_50

    :cond_98
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_73

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    const/4 v9, -0x1

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v8, :cond_bc

    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_bc

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v9

    :cond_bc
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    move/from16 v17, v0

    if-gez v17, :cond_c6

    move/from16 v17, v26

    :cond_c6
    and-int/lit8 v2, v17, 0x70

    sparse-switch v2, :sswitch_data_146

    move/from16 v5, v27

    :cond_cd
    :goto_cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_da

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v12, v2

    :cond_da
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int v4, v12, v2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v12, v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int v19, v19, v2

    goto/16 :goto_73

    :sswitch_103
    move-object/from16 v0, v22

    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v5, v27, v2

    const/4 v2, -0x1

    if-eq v9, v2, :cond_cd

    const/4 v2, 0x1

    aget v2, v24, v2

    sub-int/2addr v2, v9

    add-int/2addr v5, v2

    goto :goto_cd

    :sswitch_112
    sub-int v2, v13, v7

    div-int/lit8 v2, v2, 0x2

    add-int v2, v2, v27

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    goto :goto_cd

    :sswitch_124
    sub-int v2, v10, v7

    move-object/from16 v0, v22

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v2, v4

    const/4 v2, -0x1

    if-eq v9, v2, :cond_cd

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v15, v2, v9

    const/4 v2, 0x2

    aget v2, v25, v2

    sub-int/2addr v2, v15

    sub-int/2addr v5, v2

    goto :goto_cd

    :cond_13b
    return-void

    :sswitch_data_13c
    .sparse-switch
        0x1 -> :sswitch_85
        0x5 -> :sswitch_76
    .end sparse-switch

    :sswitch_data_146
    .sparse-switch
        0x10 -> :sswitch_112
        0x30 -> :sswitch_103
        0x50 -> :sswitch_124
    .end sparse-switch
.end method

.method layoutVertical(IIII)V
    .registers 26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move/from16 v18, v0

    sub-int v19, p3, p1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v8, v19, v1

    sub-int v1, v19, v18

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    sub-int v9, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v11

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v16, v1, 0x70

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mGravity:I

    const v4, 0x800007

    and-int v17, v1, v4

    sparse-switch v16, :sswitch_data_dc

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    :goto_30
    const/4 v13, 0x0

    :goto_31
    if-ge v13, v11, :cond_da

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_67

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v1

    add-int/2addr v10, v1

    :cond_42
    :goto_42
    add-int/lit8 v13, v13, 0x1

    goto :goto_31

    :sswitch_45
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    add-int v1, v1, p4

    sub-int v1, v1, p2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v10, v1, v4

    goto :goto_30

    :sswitch_54
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    sub-int v4, p4, p2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v20, v0

    sub-int v4, v4, v20

    div-int/lit8 v4, v4, 0x2

    add-int v10, v1, v4

    goto :goto_30

    :cond_67
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_42

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    iget v12, v15, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v12, :cond_83

    move/from16 v12, v17

    :cond_83
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v14

    invoke-static {v12, v14}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v7

    and-int/lit8 v1, v7, 0x7

    sparse-switch v1, :sswitch_data_e6

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v18, v1

    :goto_94
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_a1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v10, v1

    :cond_a1
    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v4, v10, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/LinearLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v1, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v10, v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v13}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v13, v1

    goto/16 :goto_42

    :sswitch_c5
    sub-int v1, v9, v5

    div-int/lit8 v1, v1, 0x2

    add-int v1, v1, v18

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    goto :goto_94

    :sswitch_d3
    sub-int v1, v8, v5

    iget v4, v15, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v3, v1, v4

    goto :goto_94

    :cond_da
    return-void

    nop

    :sswitch_data_dc
    .sparse-switch
        0x10 -> :sswitch_54
        0x50 -> :sswitch_45
    .end sparse-switch

    :sswitch_data_e6
    .sparse-switch
        0x1 -> :sswitch_c5
        0x5 -> :sswitch_d3
    .end sparse-switch
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .registers 55

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/16 v37, 0x0

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/16 v48, 0x0

    const/4 v10, 0x1

    const/16 v44, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v22

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v49

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v27

    const/16 v33, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    if-eqz v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    if-nez v3, :cond_39

    :cond_2b
    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    const/4 v3, 0x4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxAscent:[I

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/LinearLayout;->mMaxDescent:[I

    move-object/from16 v36, v0

    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v36, v6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v46, v0

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v49

    if-ne v0, v3, :cond_9c

    const/16 v29, 0x1

    :goto_77
    const/high16 v30, -0x80000000

    const/16 v47, 0x0

    const/16 v38, 0x0

    const/4 v5, 0x0

    :goto_7e
    move/from16 v0, v22

    if-ge v5, v0, :cond_257

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_9f

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_99
    add-int/lit8 v5, v5, 0x1

    goto :goto_7e

    :cond_9c
    const/16 v29, 0x0

    goto :goto_77

    :cond_9f
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_af

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_99

    :cond_af
    add-int/lit8 v38, v38, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_c6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_c6
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v44, v44, v3

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_1a2

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_1a2

    const/16 v45, 0x1

    :goto_e3
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v49

    if-ne v0, v3, :cond_1c7

    if-eqz v45, :cond_1c7

    if-eqz v29, :cond_1a6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_ff
    if-eqz v13, :cond_1c3

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v25

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v24

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    :cond_11a
    :goto_11a
    const/16 v34, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v3, :cond_12d

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_12d

    const/16 v33, 0x1

    const/16 v34, 0x1

    :cond_12d
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v32, v3, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v32

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    if-eqz v13, :cond_174

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    const/4 v3, -0x1

    if-eq v14, v3, :cond_174

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_23d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_15a
    and-int/lit8 v26, v3, 0x70

    shr-int/lit8 v3, v26, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v28, v3, 0x1

    aget v3, v35, v28

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v28

    aget v3, v36, v28

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v36, v28

    :cond_174
    move/from16 v0, v37

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    if-eqz v10, :cond_243

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_243

    const/4 v10, 0x1

    :goto_186
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_24a

    if-eqz v34, :cond_246

    :goto_191
    move/from16 v0, v48

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v48

    :goto_199
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_99

    :cond_1a2
    const/16 v45, 0x0

    goto/16 :goto_e3

    :cond_1a6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v43, v0

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v3, v3, v43

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v43

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_ff

    :cond_1c3
    const/16 v42, 0x1

    goto/16 :goto_11a

    :cond_1c7
    if-eqz v45, :cond_1ce

    const/4 v3, -0x2

    move-object/from16 v0, v31

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_1ce
    const/4 v3, 0x0

    cmpl-float v3, v44, v3

    if-nez v3, :cond_217

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_1d7
    const/4 v9, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    if-eqz v45, :cond_1ee

    const/4 v3, 0x0

    move-object/from16 v0, v31

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    add-int v47, v47, v20

    :cond_1ee
    if-eqz v29, :cond_219

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v20

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_20b
    if-eqz v46, :cond_11a

    move/from16 v0, v20

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v30

    goto/16 :goto_11a

    :cond_217
    const/4 v7, 0x0

    goto :goto_1d7

    :cond_219
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v43, v0

    add-int v3, v43, v20

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v43

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_20b

    :cond_23d
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto/16 :goto_15a

    :cond_243
    const/4 v10, 0x0

    goto/16 :goto_186

    :cond_246
    move/from16 v32, v16

    goto/16 :goto_191

    :cond_24a
    if-eqz v34, :cond_254

    :goto_24c
    move/from16 v0, v32

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto/16 :goto_199

    :cond_254
    move/from16 v32, v16

    goto :goto_24c

    :cond_257
    if-lez v38, :cond_270

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_270

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_270
    const/4 v3, 0x1

    aget v3, v35, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_27c

    const/4 v3, 0x0

    aget v3, v35, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2e2

    :cond_27c
    :goto_27c
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, 0x0

    aget v6, v35, v6

    const/4 v8, 0x1

    aget v8, v35, v8

    const/4 v9, 0x2

    aget v9, v35, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v3, 0x3

    aget v3, v36, v3

    const/4 v6, 0x0

    aget v6, v36, v6

    const/4 v8, 0x1

    aget v8, v36, v8

    const/4 v9, 0x2

    aget v9, v36, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v3, v12, v23

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v37

    :cond_2b4
    if-eqz v46, :cond_347

    const/high16 v3, -0x80000000

    move/from16 v0, v49

    if-eq v0, v3, :cond_2be

    if-nez v49, :cond_347

    :cond_2be
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v5, 0x0

    :goto_2c4
    move/from16 v0, v22

    if-ge v5, v0, :cond_347

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_2ef

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_2df
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c4

    :cond_2e2
    const/4 v3, 0x2

    aget v3, v35, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_27c

    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_2b4

    goto :goto_27c

    :cond_2ef
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_2ff

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_2df

    :cond_2ff
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v29, :cond_323

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v6, v6, v30

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2df

    :cond_323
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v43, v0

    add-int v3, v43, v30

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v43

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_2df

    :cond_347
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v50, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v50

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v50

    const/4 v3, 0x0

    move/from16 v0, v50

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v51

    const v3, 0xffffff

    and-int v50, v51, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v3, v50, v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v6, :cond_385

    const/16 v47, 0x0

    :cond_385
    add-int v39, v3, v47

    if-nez v42, :cond_390

    if-eqz v39, :cond_5d3

    const/4 v3, 0x0

    cmpl-float v3, v44, v3

    if-lez v3, :cond_5d3

    :cond_390
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3de

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v40, v0

    :goto_39f
    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v35, v6

    const/4 v3, -0x1

    const/4 v6, 0x3

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x2

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x1

    aput v3, v36, v6

    const/4 v3, -0x1

    const/4 v6, 0x0

    aput v3, v36, v6

    const/16 v37, -0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v5, 0x0

    :goto_3c7
    move/from16 v0, v22

    if-ge v5, v0, :cond_52f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3db

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3e1

    :cond_3db
    :goto_3db
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c7

    :cond_3de
    move/from16 v40, v44

    goto :goto_39f

    :cond_3e1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v31

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v19, v0

    const/4 v3, 0x0

    cmpl-float v3, v19, v3

    if-lez v3, :cond_44c

    move/from16 v0, v39

    int-to-float v3, v0

    mul-float v3, v3, v19

    div-float v3, v3, v40

    float-to-int v0, v3

    move/from16 v41, v0

    sub-int v39, v39, v41

    sub-float v40, v40, v19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v3, :cond_4d4

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v49

    if-eq v0, v3, :cond_4d4

    move/from16 v20, v30

    :goto_40e
    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v21

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    const/high16 v6, -0x1000000

    and-int/2addr v3, v6

    move/from16 v0, v18

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v18

    :cond_44c
    if-eqz v29, :cond_4f2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v8

    move-object/from16 v0, v31

    iget v8, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v8

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_46c
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v3, :cond_51f

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_51b

    const/16 v34, 0x1

    :goto_47b
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v32, v3, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v16, v3, v32

    move/from16 v0, v37

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    if-eqz v34, :cond_523

    :goto_495
    move/from16 v0, v32

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eqz v10, :cond_527

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_527

    const/4 v10, 0x1

    :goto_4a5
    if-eqz v13, :cond_3db

    invoke-virtual {v4}, Landroid/view/View;->getBaseline()I

    move-result v14

    const/4 v3, -0x1

    if-eq v14, v3, :cond_3db

    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_52a

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mGravity:I

    :goto_4b8
    and-int/lit8 v26, v3, 0x70

    shr-int/lit8 v3, v26, 0x4

    and-int/lit8 v3, v3, -0x2

    shr-int/lit8 v28, v3, 0x1

    aget v3, v35, v28

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v35, v28

    aget v3, v36, v28

    sub-int v6, v16, v14

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v36, v28

    goto/16 :goto_3db

    :cond_4d4
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-nez v3, :cond_4ea

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_4e6

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v49

    if-ne v0, v3, :cond_4ea

    :cond_4e6
    move/from16 v20, v41

    goto/16 :goto_40e

    :cond_4ea
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v20, v3, v41

    goto/16 :goto_40e

    :cond_4f2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v43, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v43

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v31

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v43

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_46c

    :cond_51b
    const/16 v34, 0x0

    goto/16 :goto_47b

    :cond_51f
    const/16 v34, 0x0

    goto/16 :goto_47b

    :cond_523
    move/from16 v32, v16

    goto/16 :goto_495

    :cond_527
    const/4 v10, 0x0

    goto/16 :goto_4a5

    :cond_52a
    move-object/from16 v0, v31

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_4b8

    :cond_52f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v3, 0x1

    aget v3, v35, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_54d

    const/4 v3, 0x0

    aget v3, v35, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_5c5

    :cond_54d
    :goto_54d
    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, 0x0

    aget v6, v35, v6

    const/4 v8, 0x1

    aget v8, v35, v8

    const/4 v9, 0x2

    aget v9, v35, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    const/4 v3, 0x3

    aget v3, v36, v3

    const/4 v6, 0x0

    aget v6, v36, v6

    const/4 v8, 0x1

    aget v8, v36, v8

    const/4 v9, 0x2

    aget v9, v36, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    add-int v3, v12, v23

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v37

    :cond_585
    if-nez v10, :cond_58f

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v27

    if-eq v0, v3, :cond_58f

    move/from16 v37, v11

    :cond_58f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v3, v6

    add-int v37, v37, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v37

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v37

    const/high16 v3, -0x1000000

    and-int v3, v3, v18

    or-int v3, v3, v51

    shl-int/lit8 v6, v18, 0x10

    move/from16 v0, v37

    move/from16 v1, p2

    invoke-static {v0, v1, v6}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v33, :cond_5c4

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformHeight(II)V

    :cond_5c4
    return-void

    :cond_5c5
    const/4 v3, 0x2

    aget v3, v35, v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_54d

    const/4 v3, 0x3

    aget v3, v35, v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_585

    goto/16 :goto_54d

    :cond_5d3
    move/from16 v0, v48

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eqz v46, :cond_585

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v49

    if-eq v0, v3, :cond_585

    const/4 v5, 0x0

    :goto_5e2
    move/from16 v0, v22

    if-ge v5, v0, :cond_585

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5f6

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5f9

    :cond_5f6
    :goto_5f6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e2

    :cond_5f9
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    check-cast v31, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v31

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_5f6

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v30

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_5f6
.end method

.method measureNullChild(I)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method measureVertical(II)V
    .registers 45

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/16 v29, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/16 v40, 0x0

    const/4 v10, 0x1

    const/16 v37, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getVirtualChildCount()I

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v41

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    const/16 v27, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    move/from16 v39, v0

    const/high16 v24, -0x80000000

    const/16 v19, 0x0

    const/16 v31, 0x0

    const/4 v5, 0x0

    :goto_30
    move/from16 v0, v20

    if-ge v5, v0, :cond_199

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_4e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_4e
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_5e

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_4b

    :cond_5e
    add-int/lit8 v31, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_75

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_75
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v37, v37, v3

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_d9

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_d9

    const/16 v38, 0x1

    :goto_92
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-ne v0, v3, :cond_dc

    if-eqz v38, :cond_dc

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v36, v0

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v3, v3, v36

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/16 v35, 0x1

    :cond_b7
    :goto_b7
    if-ltz v12, :cond_c5

    add-int/lit8 v3, v5, 0x1

    if-ne v12, v3, :cond_c5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mBaselineChildTop:I

    :cond_c5
    if-ge v5, v12, :cond_131

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_131

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_d9
    const/16 v38, 0x0

    goto :goto_92

    :cond_dc
    if-eqz v38, :cond_e3

    const/4 v3, -0x2

    move-object/from16 v0, v25

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_e3
    const/4 v3, 0x0

    cmpl-float v3, v37, v3

    if-nez v3, :cond_12f

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_ec
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    if-eqz v38, :cond_103

    const/4 v3, 0x0

    move-object/from16 v0, v25

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    add-int v19, v19, v14

    :cond_103
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v36, v0

    add-int v3, v36, v14

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    if-eqz v39, :cond_b7

    move/from16 v0, v24

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v24

    goto :goto_b7

    :cond_12f
    const/4 v9, 0x0

    goto :goto_ec

    :cond_131
    const/16 v28, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v41

    if-eq v0, v3, :cond_144

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_144

    const/16 v27, 0x1

    const/16 v28, 0x1

    :cond_144
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v26, v3, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v30, v3, v26

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v16

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v16

    if-eqz v10, :cond_188

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_188

    const/4 v10, 0x1

    :goto_16c
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_18d

    if-eqz v28, :cond_18a

    :goto_177
    move/from16 v0, v40

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    :goto_17f
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto/16 :goto_4b

    :cond_188
    const/4 v10, 0x0

    goto :goto_16c

    :cond_18a
    move/from16 v26, v30

    goto :goto_177

    :cond_18d
    if-eqz v28, :cond_196

    :goto_18f
    move/from16 v0, v26

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_17f

    :cond_196
    move/from16 v26, v30

    goto :goto_18f

    :cond_199
    if-lez v31, :cond_1b2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1b2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mDividerHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_1b2
    if-eqz v39, :cond_21a

    const/high16 v3, -0x80000000

    move/from16 v0, v21

    if-eq v0, v3, :cond_1bc

    if-nez v21, :cond_21a

    :cond_1bc
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v5, 0x0

    :goto_1c2
    move/from16 v0, v20

    if-ge v5, v0, :cond_21a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1e0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->measureNullChild(I)I

    move-result v6

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :goto_1dd
    add-int/lit8 v5, v5, 0x1

    goto :goto_1c2

    :cond_1e0
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_1f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v3

    add-int/2addr v5, v3

    goto :goto_1dd

    :cond_1f0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v36, v0

    add-int v3, v36, v24

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto :goto_1dd

    :cond_21a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v22

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v22

    const/4 v3, 0x0

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v23

    const v3, 0xffffff

    and-int v22, v23, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    sub-int v3, v22, v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v6, :cond_258

    const/16 v19, 0x0

    :cond_258
    add-int v32, v3, v19

    if-nez v35, :cond_263

    if-eqz v32, :cond_3cd

    const/4 v3, 0x0

    cmpl-float v3, v37, v3

    if-lez v3, :cond_3cd

    :cond_263
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_28f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mWeightSum:F

    move/from16 v33, v0

    :goto_272
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    const/4 v5, 0x0

    :goto_278
    move/from16 v0, v20

    if-ge v5, v0, :cond_37f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_28c

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_292

    :cond_28c
    :goto_28c
    add-int/lit8 v5, v5, 0x1

    goto :goto_278

    :cond_28f
    move/from16 v33, v37

    goto :goto_272

    :cond_292
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v17, v0

    const/4 v3, 0x0

    cmpl-float v3, v17, v3

    if-lez v3, :cond_2f8

    move/from16 v0, v32

    int-to-float v3, v0

    mul-float v3, v3, v17

    div-float v3, v3, v33

    float-to-int v0, v3

    move/from16 v34, v0

    sub-int v32, v32, v34

    sub-float v33, v33, v17

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    if-eqz v3, :cond_356

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v0, v3, :cond_356

    move/from16 v14, v24

    :goto_2bf
    const/4 v3, 0x0

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v3, v6}, Landroid/widget/LinearLayout;->getChildMeasureSpec(III)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0, v15}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    and-int/lit16 v3, v3, -0x100

    move/from16 v0, v16

    invoke-static {v0, v3}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v16

    :cond_2f8
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int v26, v3, v6

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v30, v3, v26

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->max(II)I

    move-result v29

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v41

    if-eq v0, v3, :cond_377

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_374

    const/16 v28, 0x1

    :goto_31b
    if-eqz v28, :cond_37a

    :goto_31d
    move/from16 v0, v26

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eqz v10, :cond_37d

    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_37d

    const/4 v10, 0x1

    :goto_32d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move/from16 v36, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v3, v3, v36

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, v25

    iget v6, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int/2addr v3, v6

    move/from16 v0, v36

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    goto/16 :goto_28c

    :cond_356
    move-object/from16 v0, v25

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-nez v3, :cond_36c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/LinearLayout;->mAllowInconsistentMeasurement:Z

    if-eqz v3, :cond_368

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-ne v0, v3, :cond_36c

    :cond_368
    move/from16 v14, v34

    goto/16 :goto_2bf

    :cond_36c
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int v14, v3, v34

    goto/16 :goto_2bf

    :cond_374
    const/16 v28, 0x0

    goto :goto_31b

    :cond_377
    const/16 v28, 0x0

    goto :goto_31b

    :cond_37a
    move/from16 v26, v30

    goto :goto_31d

    :cond_37d
    const/4 v10, 0x0

    goto :goto_32d

    :cond_37f
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Landroid/widget/LinearLayout;->mTotalLength:I

    :cond_391
    if-nez v10, :cond_39b

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v41

    if-eq v0, v3, :cond_39b

    move/from16 v29, v11

    :cond_39b
    move-object/from16 v0, p0

    iget v3, v0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v3, v6

    add-int v29, v29, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v29

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    move/from16 v1, p1

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    if-eqz v27, :cond_3cc

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout;->forceUniformWidth(II)V

    :cond_3cc
    return-void

    :cond_3cd
    move/from16 v0, v40

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v11

    if-eqz v39, :cond_391

    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v0, v21

    if-eq v0, v3, :cond_391

    const/4 v5, 0x0

    :goto_3dc
    move/from16 v0, v20

    if-ge v5, v0, :cond_391

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3f0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v6, 0x8

    if-ne v3, v6, :cond_3f3

    :cond_3f0
    :goto_3f0
    add-int/lit8 v5, v5, 0x1

    goto :goto_3dc

    :cond_3f3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v25

    iget v13, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_3f0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, v24

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V

    goto :goto_3f0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersVertical(Landroid/graphics/Canvas;)V

    :goto_d
    return-void

    :cond_e
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_d
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutVertical(IIII)V

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/widget/LinearLayout;->layoutHorizontal(IIII)V

    goto :goto_8
.end method

.method protected onMeasure(II)V
    .registers 5

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureVertical(II)V

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    goto :goto_8
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    iget v0, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    if-eq p1, v0, :cond_10

    iput p1, p0, Landroid/widget/LinearLayout;->mLayoutDirection:I

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_10
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mBaselineAligned:Z

    return-void
.end method

.method public setBaselineAlignedChildIndex(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    if-ltz p1, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_2d

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "base aligned child index out of range (0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    iput p1, p0, Landroid/widget/LinearLayout;->mBaselineAlignedChildIndex:I

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_6

    return-void

    :cond_6
    iput-object p1, p0, Landroid/widget/LinearLayout;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    :goto_16
    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    :cond_23
    iput v1, p0, Landroid/widget/LinearLayout;->mDividerWidth:I

    iput v1, p0, Landroid/widget/LinearLayout;->mDividerHeight:I

    goto :goto_16
.end method

.method public setDividerPadding(I)V
    .registers 3

    iget v0, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mDividerPadding:I

    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_13
    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/LinearLayout;->mGravity:I

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    :cond_14
    iput p1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v2, 0x800007

    and-int v0, p1, v2

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_16

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_16
    return-void
.end method

.method public setMeasureWithLargestChildEnabled(Z)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-boolean p1, p0, Landroid/widget/LinearLayout;->mUseLargestChild:Z

    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    iget v0, p0, Landroid/widget/LinearLayout;->mOrientation:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Landroid/widget/LinearLayout;->mOrientation:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_9
    return-void
.end method

.method public setShowDividers(I)V
    .registers 3

    iget v0, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iput p1, p0, Landroid/widget/LinearLayout;->mShowDividers:I

    invoke-direct {p0}, Landroid/widget/LinearLayout;->isShowingDividers()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    iget v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/LinearLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_12
    return-void
.end method

.method public setWeightSum(F)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/widget/LinearLayout;->mWeightSum:F

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
