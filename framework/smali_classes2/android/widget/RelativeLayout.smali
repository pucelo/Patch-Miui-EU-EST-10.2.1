.class public Landroid/widget/RelativeLayout;
.super Landroid/view/ViewGroup;
.source "RelativeLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RelativeLayout$DependencyGraph;,
        Landroid/widget/RelativeLayout$LayoutParams;,
        Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;
    }
.end annotation


# static fields
.field public static final ABOVE:I = 0x2

.field public static final ALIGN_BASELINE:I = 0x4

.field public static final ALIGN_BOTTOM:I = 0x8

.field public static final ALIGN_END:I = 0x13

.field public static final ALIGN_LEFT:I = 0x5

.field public static final ALIGN_PARENT_BOTTOM:I = 0xc

.field public static final ALIGN_PARENT_END:I = 0x15

.field public static final ALIGN_PARENT_LEFT:I = 0x9

.field public static final ALIGN_PARENT_RIGHT:I = 0xb

.field public static final ALIGN_PARENT_START:I = 0x14

.field public static final ALIGN_PARENT_TOP:I = 0xa

.field public static final ALIGN_RIGHT:I = 0x7

.field public static final ALIGN_START:I = 0x12

.field public static final ALIGN_TOP:I = 0x6

.field public static final BELOW:I = 0x3

.field public static final CENTER_HORIZONTAL:I = 0xe

.field public static final CENTER_IN_PARENT:I = 0xd

.field public static final CENTER_VERTICAL:I = 0xf

.field private static final DEFAULT_WIDTH:I = 0x10000

.field public static final END_OF:I = 0x11

.field public static final LEFT_OF:I = 0x0

.field public static final RIGHT_OF:I = 0x1

.field private static final RULES_HORIZONTAL:[I

.field private static final RULES_VERTICAL:[I

.field public static final START_OF:I = 0x10

.field public static final TRUE:I = -0x1

.field private static final VALUE_NOT_SET:I = -0x80000000

.field private static final VERB_COUNT:I = 0x16


# instance fields
.field private mAllowBrokenMeasureSpecs:Z

.field private mBaselineView:Landroid/view/View;

.field private final mContentBounds:Landroid/graphics/Rect;

.field private mDirtyHierarchy:Z

.field private final mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

.field private mGravity:I

.field private mIgnoreGravity:I

.field private mMeasureVerticalWithPaddingMargin:Z

.field private final mSelfBounds:Landroid/graphics/Rect;

.field private mSortedHorizontalChildren:[Landroid/view/View;

.field private mSortedVerticalChildren:[Landroid/view/View;

.field private mTopToBottomLeftToRightSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v4, 0x8

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x6

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    new-array v0, v4, [I

    fill-array-data v0, :array_14

    sput-object v0, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    return-void

    :array_14
    .array-data 4
        0x0
        0x1
        0x5
        0x7
        0x10
        0x11
        0x12
        0x13
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    const v0, 0x800033

    iput v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    new-instance v0, Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$DependencyGraph;-><init>(Landroid/widget/RelativeLayout$DependencyGraph;)V

    iput-object v0, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;->queryCompatibilityModes(Landroid/content/Context;)V

    return-void
.end method

.method private applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V
    .registers 10

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-direct {p0, p3, v2}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_73

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_1e
    :goto_1e
    invoke-direct {p0, p3, v4}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_88

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_31
    :goto_31
    invoke-direct {p0, p3, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_99

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_41
    :goto_41
    const/4 v1, 0x7

    invoke-direct {p0, p3, v1}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_52
    :goto_52
    const/16 v1, 0x9

    aget v1, p3, v1

    if-eqz v1, :cond_60

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_60
    const/16 v1, 0xb

    aget v1, p3, v1

    if-eqz v1, :cond_72

    if-ltz p2, :cond_72

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_72
    return-void

    :cond_73
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_1e

    aget v1, p3, v2

    if-eqz v1, :cond_1e

    if-ltz p2, :cond_1e

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1e

    :cond_88
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_31

    aget v1, p3, v4

    if-eqz v1, :cond_31

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_31

    :cond_99
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_41

    aget v1, p3, v5

    if-eqz v1, :cond_41

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_41

    :cond_aa
    iget-boolean v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v1, :cond_52

    const/4 v1, 0x7

    aget v1, p3, v1

    if-eqz v1, :cond_52

    if-ltz p2, :cond_52

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v1, p2, v1

    iget v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_52
.end method

.method private applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 10

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/high16 v3, -0x80000000

    invoke-virtual {p1}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/RelativeLayout;->getRelatedViewBaselineOffset([I)I

    move-result v1

    if-eq v1, v4, :cond_18

    if-eq p3, v4, :cond_11

    sub-int/2addr v1, p3

    :cond_11
    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    return-void

    :cond_18
    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-direct {p0, v2, v5}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_89

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_31
    :goto_31
    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9e

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_45
    :goto_45
    const/4 v3, 0x6

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_b0

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_56
    :goto_56
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Landroid/widget/RelativeLayout;->getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_c2

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_68
    :goto_68
    const/16 v3, 0xa

    aget v3, v2, v3

    if-eqz v3, :cond_76

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_76
    const/16 v3, 0xc

    aget v3, v2, v3

    if-eqz v3, :cond_88

    if-ltz p2, :cond_88

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_88
    return-void

    :cond_89
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_31

    aget v3, v2, v5

    if-eqz v3, :cond_31

    if-ltz p2, :cond_31

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_31

    :cond_9e
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_45

    const/4 v3, 0x3

    aget v3, v2, v3

    if-eqz v3, :cond_45

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_45

    :cond_b0
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_56

    const/4 v3, 0x6

    aget v3, v2, v3

    if-eqz v3, :cond_56

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_56

    :cond_c2
    iget-boolean v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    if-eqz v3, :cond_68

    const/16 v3, 0x8

    aget v3, v2, v3

    if-eqz v3, :cond_68

    if-ltz p2, :cond_68

    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v3, p2, v3

    iget v4, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_68
.end method

.method private static centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    return-void
.end method

.method private static centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v2, p2, v0

    div-int/lit8 v1, v2, 0x2

    invoke-static {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    add-int v2, v1, v0

    invoke-static {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    return-void
.end method

.method private compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I
    .registers 6

    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int v0, v1, v2

    if-eqz v0, :cond_d

    return v0

    :cond_d
    invoke-static {p1}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private getChildMeasureSpec(IIIIIIII)I
    .registers 17

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-gez p8, :cond_23

    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_2e

    iget-boolean v6, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2e

    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_25

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_25

    sub-int v6, p2, p1

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v0, 0x40000000    # 2.0f

    :goto_1e
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    return v6

    :cond_23
    const/4 v2, 0x0

    goto :goto_5

    :cond_25
    if-ltz p3, :cond_2b

    move v1, p3

    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_1e

    :cond_2b
    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_1e

    :cond_2e
    move v5, p1

    move v4, p2

    const/high16 v6, -0x80000000

    if-ne p1, v6, :cond_36

    add-int v5, p6, p4

    :cond_36
    const/high16 v6, -0x80000000

    if-ne p2, v6, :cond_3e

    sub-int v6, p8, p7

    sub-int v4, v6, p5

    :cond_3e
    sub-int v3, v4, v5

    const/high16 v6, -0x80000000

    if-eq p1, v6, :cond_58

    const/high16 v6, -0x80000000

    if-eq p2, v6, :cond_58

    if-eqz v2, :cond_55

    const/4 v0, 0x0

    :goto_4b
    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_50
    :goto_50
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    return v6

    :cond_55
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_4b

    :cond_58
    if-ltz p3, :cond_65

    const/high16 v0, 0x40000000    # 2.0f

    if-ltz v3, :cond_63

    invoke-static {v3, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_50

    :cond_63
    move v1, p3

    goto :goto_50

    :cond_65
    const/4 v6, -0x1

    if-ne p3, v6, :cond_74

    if-eqz v2, :cond_71

    const/4 v0, 0x0

    :goto_6b
    const/4 v6, 0x0

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_50

    :cond_71
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_6b

    :cond_74
    const/4 v6, -0x2

    if-ne p3, v6, :cond_50

    if-ltz v3, :cond_7d

    const/high16 v0, -0x80000000

    move v1, v3

    goto :goto_50

    :cond_7d
    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_50
.end method

.method private getRelatedView([II)Landroid/view/View;
    .registers 9

    const/4 v5, 0x0

    aget v0, p1, p2

    if-eqz v0, :cond_45

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->-get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-nez v1, :cond_14

    return-object v5

    :cond_14
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    :goto_16
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_44

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object p1

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-static {v3}, Landroid/widget/RelativeLayout$DependencyGraph;->-get0(Landroid/widget/RelativeLayout$DependencyGraph;)Landroid/util/SparseArray;

    move-result-object v3

    aget v4, p1, p2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;

    if-eqz v1, :cond_40

    iget-object v3, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    if-ne v2, v3, :cond_41

    :cond_40
    return-object v5

    :cond_41
    iget-object v2, v1, Landroid/widget/RelativeLayout$DependencyGraph$Node;->view:Landroid/view/View;

    goto :goto_16

    :cond_44
    return-object v2

    :cond_45
    return-object v5
.end method

.method private getRelatedViewBaselineOffset([I)I
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x4

    invoke-direct {p0, p1, v4}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_22

    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v1

    if-eq v1, v5, :cond_22

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v4, v2, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v4, :cond_22

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v1

    return v4

    :cond_22
    return v5
.end method

.method private getRelatedViewParams([II)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;->getRelatedView([II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v2, :cond_16

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    return-object v2

    :cond_16
    return-object v3
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8

    sget-object v1, Lcom/android/internal/R$styleable;->RelativeLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 16

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v0, p0

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v10

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v5, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget v6, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move-object v0, p0

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v9

    invoke-virtual {p1, v10, v9}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V
    .registers 19

    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    move-object/from16 v0, p2

    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v7, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v8, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    move-object v1, p0

    move/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Landroid/widget/RelativeLayout;->getChildMeasureSpec(IIIIIIII)I

    move-result v11

    if-gez p4, :cond_42

    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-ltz v1, :cond_3b

    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    :goto_37
    invoke-virtual {p1, v11, v10}, Landroid/view/View;->measure(II)V

    return-void

    :cond_3b
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_37

    :cond_42
    iget-boolean v1, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    if-eqz v1, :cond_6a

    iget v1, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    sub-int v1, p4, v1

    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p2

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    :goto_5c
    move-object/from16 v0, p2

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_72

    const/high16 v12, 0x40000000    # 2.0f

    :goto_65
    invoke-static {v13, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    goto :goto_37

    :cond_6a
    const/4 v1, 0x0

    move/from16 v0, p4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto :goto_5c

    :cond_72
    const/high16 v12, -0x80000000

    goto :goto_65
.end method

.method private positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v0, p3, v0

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :goto_1c
    return-void

    :cond_1d
    iget v0, p0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_1c
.end method

.method private positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v5, -0x80000000

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v1

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_2b

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-eq v4, v5, :cond_2b

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_24
    :goto_24
    const/16 v4, 0x15

    aget v4, v1, v4

    if-eqz v4, :cond_6a

    :goto_2a
    return v2

    :cond_2b
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-eq v4, v5, :cond_44

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_44

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {p2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_24

    :cond_44
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_24

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-ne v4, v5, :cond_24

    const/16 v4, 0xd

    aget v4, v1, v4

    if-nez v4, :cond_5c

    const/16 v4, 0xe

    aget v4, v1, v4

    if-eqz v4, :cond_66

    :cond_5c
    if-nez p4, :cond_62

    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_61
    return v2

    :cond_62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_61

    :cond_66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->positionAtEdge(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    goto :goto_24

    :cond_6a
    move v2, v3

    goto :goto_2a
.end method

.method private positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, -0x80000000

    invoke-virtual {p2}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_27

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_27

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_20
    :goto_20
    const/16 v3, 0xc

    aget v3, v0, v3

    if-eqz v3, :cond_88

    :goto_26
    return v1

    :cond_27
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-eq v3, v4, :cond_40

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_40

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_20

    :cond_40
    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_20

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    if-ne v3, v4, :cond_20

    const/16 v3, 0xd

    aget v3, v0, v3

    if-nez v3, :cond_58

    const/16 v3, 0xf

    aget v3, v0, v3

    if-eqz v3, :cond_73

    :cond_58
    if-nez p4, :cond_5e

    invoke-static {p1, p2, p3}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :goto_5d
    return v1

    :cond_5e
    iget v2, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v3, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_5d

    :cond_73
    iget v3, p0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    iget v4, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static {p2}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_20

    :cond_88
    move v1, v2

    goto :goto_26
.end method

.method private queryCompatibilityModes(Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-gt v0, v1, :cond_16

    move v1, v2

    :goto_d
    iput-boolean v1, p0, Landroid/widget/RelativeLayout;->mAllowBrokenMeasureSpecs:Z

    const/16 v1, 0x12

    if-lt v0, v1, :cond_18

    :goto_13
    iput-boolean v2, p0, Landroid/widget/RelativeLayout;->mMeasureVerticalWithPaddingMargin:Z

    return-void

    :cond_16
    move v1, v3

    goto :goto_d

    :cond_18
    move v2, v3

    goto :goto_13
.end method

.method private sortChildren()V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    if-eqz v3, :cond_d

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_11

    :cond_d
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    :cond_11
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    if-eqz v3, :cond_1a

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    array-length v3, v3

    if-eq v3, v0, :cond_1e

    :cond_1a
    new-array v3, v0, [Landroid/view/View;

    iput-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    :cond_1e
    iget-object v1, p0, Landroid/widget/RelativeLayout;->mGraph:Landroid/widget/RelativeLayout$DependencyGraph;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout$DependencyGraph;->clear()V

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v0, :cond_30

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$DependencyGraph;->add(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_30
    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_VERTICAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    iget-object v3, p0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    sget-object v4, Landroid/widget/RelativeLayout;->RULES_HORIZONTAL:[I

    invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout$DependencyGraph;->getSortedViews([Landroid/view/View;[I)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 10

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    if-nez v4, :cond_12

    new-instance v4, Ljava/util/TreeSet;

    new-instance v5, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;

    invoke-direct {v5, p0, v7}, Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout$TopToBottomLeftToRightComparator;)V

    invoke-direct {v4, v5}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    :cond_12
    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    :goto_17
    if-ge v1, v0, :cond_25

    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_25
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    const/4 v4, 0x1

    return v4

    :cond_4a
    iget-object v4, p0, Landroid/widget/RelativeLayout;->mTopToBottomLeftToRightSet:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->clear()V

    return v6
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    sget-boolean v0, Landroid/widget/RelativeLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1c

    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_10

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-object v0

    :cond_10
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1c
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 4

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBaseline()I
    .registers 2

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_a
.end method

.method public getGravity()I
    .registers 2

    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_2f

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v5

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v6

    invoke-static {v3}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 49

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    if-eqz v4, :cond_e

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    invoke-direct/range {p0 .. p0}, Landroid/widget/RelativeLayout;->sortChildren()V

    :cond_e
    const/16 v30, -0x1

    const/16 v29, -0x1

    const/16 v42, 0x0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v43

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v44

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v21

    if-eqz v43, :cond_2a

    move/from16 v30, v44

    :cond_2a
    if-eqz v20, :cond_2e

    move/from16 v29, v21

    :cond_2e
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-ne v0, v4, :cond_36

    move/from16 v42, v30

    :cond_36
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-ne v0, v4, :cond_3e

    move/from16 v19, v29

    :cond_3e
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    const v5, 0x800007

    and-int v18, v4, v5

    const v4, 0x800003

    move/from16 v0, v18

    if-eq v0, v4, :cond_fa

    if-eqz v18, :cond_fa

    const/16 v22, 0x1

    :goto_54
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v18, v4, 0x70

    const/16 v4, 0x30

    move/from16 v0, v18

    if-eq v0, v4, :cond_fe

    if-eqz v18, :cond_fe

    const/16 v39, 0x1

    :goto_64
    const v28, 0x7fffffff

    const v38, 0x7fffffff

    const/high16 v35, -0x80000000

    const/high16 v12, -0x80000000

    const/16 v31, 0x0

    const/16 v32, 0x0

    if-nez v22, :cond_76

    if-eqz v39, :cond_87

    :cond_76
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_87

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v25

    :cond_87
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v43

    if-eq v0, v4, :cond_102

    const/16 v27, 0x1

    :goto_8f
    const/high16 v4, 0x40000000    # 2.0f

    move/from16 v0, v20

    if-eq v0, v4, :cond_105

    const/16 v26, 0x1

    :goto_97
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getLayoutDirection()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_a8

    const/4 v4, -0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_a8

    const/high16 v30, 0x10000

    :cond_a8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedHorizontalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    const/16 v24, 0x0

    :goto_b5
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_108

    aget-object v13, v41, v24

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_f7

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move-object/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->applyHorizontalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v27

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_f7

    const/16 v31, 0x1

    :cond_f7
    add-int/lit8 v24, v24, 0x1

    goto :goto_b5

    :cond_fa
    const/16 v22, 0x0

    goto/16 :goto_54

    :cond_fe
    const/16 v39, 0x0

    goto/16 :goto_64

    :cond_102
    const/16 v27, 0x0

    goto :goto_8f

    :cond_105
    const/16 v26, 0x0

    goto :goto_97

    :cond_108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/RelativeLayout;->mSortedVerticalChildren:[Landroid/view/View;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move/from16 v37, v0

    const/16 v24, 0x0

    :goto_121
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_21a

    aget-object v13, v41, v24

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1d1

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getBaseline()I

    move-result v4

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v4}, Landroid/widget/RelativeLayout;->applyVerticalSizeRules(Landroid/widget/RelativeLayout$LayoutParams;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v30

    move/from16 v3, v29

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->measureChild(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move/from16 v2, v29

    move/from16 v3, v26

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/widget/RelativeLayout;->positionChildVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;IZ)Z

    move-result v4

    if-eqz v4, :cond_15f

    const/16 v32, 0x1

    :cond_15f
    if-eqz v27, :cond_179

    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_1e7

    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_1d5

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    :cond_179
    :goto_179
    if-eqz v26, :cond_18b

    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_209

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    :cond_18b
    :goto_18b
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_191

    if-eqz v39, :cond_1af

    :cond_191
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v28

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v28

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    move/from16 v0, v38

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v38

    :cond_1af
    move-object/from16 v0, v25

    if-ne v13, v0, :cond_1b5

    if-eqz v22, :cond_1d1

    :cond_1b5
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v35

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v35

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v12

    :cond_1d1
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_121

    :cond_1d5
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v30, v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto :goto_179

    :cond_1e7
    const/16 v4, 0x13

    move/from16 v0, v37

    if-ge v0, v4, :cond_1f8

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto :goto_179

    :cond_1f8
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    goto/16 :goto_179

    :cond_209
    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    move-object/from16 v0, v34

    iget v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    goto/16 :goto_18b

    :cond_21a
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v24, 0x0

    :goto_21e
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_246

    aget-object v13, v41, v24

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_23a

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v11, :cond_238

    if-nez v10, :cond_23d

    :cond_238
    :goto_238
    move-object v11, v13

    move-object v10, v15

    :cond_23a
    add-int/lit8 v24, v24, 0x1

    goto :goto_21e

    :cond_23d
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Landroid/widget/RelativeLayout;->compareLayoutPosition(Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    if-gez v4, :cond_23a

    goto :goto_238

    :cond_246
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/widget/RelativeLayout;->mBaselineView:Landroid/view/View;

    if-eqz v27, :cond_2d7

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    add-int v42, v42, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_26c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_26c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    :cond_26c
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumWidth()I

    move-result v4

    move/from16 v0, v42

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v42

    move/from16 v0, v42

    move/from16 v1, p1

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v42

    if-eqz v31, :cond_2d7

    const/16 v24, 0x0

    :goto_282
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_2d7

    aget-object v13, v41, v24

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_2b1

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_2aa

    const/16 v4, 0xe

    aget v4, v36, v4

    if-eqz v4, :cond_2b4

    :cond_2aa
    move-object/from16 v0, v34

    move/from16 v1, v42

    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerHorizontal(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_2b1
    :goto_2b1
    add-int/lit8 v24, v24, 0x1

    goto :goto_282

    :cond_2b4
    const/16 v4, 0xb

    aget v4, v36, v4

    if-eqz v4, :cond_2b1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v4, v42, v4

    sub-int v4, v4, v16

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v16

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_2b1

    :cond_2d7
    if-eqz v26, :cond_362

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    add-int v19, v19, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v4, :cond_2f9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_2f9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/RelativeLayout;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    :cond_2f9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v19

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v0, v19

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result v19

    if-eqz v32, :cond_362

    const/16 v24, 0x0

    :goto_30f
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_362

    aget-object v13, v41, v24

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_33e

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->getRules(I)[I

    move-result-object v36

    const/16 v4, 0xd

    aget v4, v36, v4

    if-nez v4, :cond_337

    const/16 v4, 0xf

    aget v4, v36, v4

    if-eqz v4, :cond_341

    :cond_337
    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-static {v13, v0, v1}, Landroid/widget/RelativeLayout;->centerVertical(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    :cond_33e
    :goto_33e
    add-int/lit8 v24, v24, 0x1

    goto :goto_30f

    :cond_341
    const/16 v4, 0xc

    aget v4, v36, v4

    if-eqz v4, :cond_33e

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    sub-int v4, v19, v4

    sub-int/2addr v4, v14

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int/2addr v4, v14

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    goto :goto_33e

    :cond_362
    if-nez v22, :cond_366

    if-eqz v39, :cond_3ef

    :cond_366
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/widget/RelativeLayout;->mSelfBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/RelativeLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/RelativeLayout;->mPaddingRight:I

    sub-int v6, v42, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/RelativeLayout;->mPaddingBottom:I

    move/from16 v45, v0

    sub-int v45, v19, v45

    move/from16 v0, v45

    invoke-virtual {v7, v4, v5, v6, v0}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/widget/RelativeLayout;->mContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/RelativeLayout;->mGravity:I

    sub-int v5, v35, v28

    sub-int v6, v12, v38

    invoke-static/range {v4 .. v9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int v23, v4, v28

    iget v4, v8, Landroid/graphics/Rect;->top:I

    sub-int v40, v4, v38

    if-nez v23, :cond_3a0

    if-eqz v40, :cond_3ef

    :cond_3a0
    const/16 v24, 0x0

    :goto_3a2
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_3ef

    aget-object v13, v41, v24

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3ec

    move-object/from16 v0, v25

    if-eq v13, v0, :cond_3ec

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v22, :cond_3d4

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v23

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v23

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_3d4
    if-eqz v39, :cond_3ec

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get4(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v40

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set3(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get0(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    add-int v4, v4, v40

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set0(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_3ec
    add-int/lit8 v24, v24, 0x1

    goto :goto_3a2

    :cond_3ef
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_428

    sub-int v33, v30, v42

    const/16 v24, 0x0

    :goto_3f9
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_428

    aget-object v13, v41, v24

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_425

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v34

    check-cast v34, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get1(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v4, v33

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set1(Landroid/widget/RelativeLayout$LayoutParams;I)I

    invoke-static/range {v34 .. v34}, Landroid/widget/RelativeLayout$LayoutParams;->-get2(Landroid/widget/RelativeLayout$LayoutParams;)I

    move-result v4

    sub-int v4, v4, v33

    move-object/from16 v0, v34

    invoke-static {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->-set2(Landroid/widget/RelativeLayout$LayoutParams;I)I

    :cond_425
    add-int/lit8 v24, v24, 0x1

    goto :goto_3f9

    :cond_428
    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public requestLayout()V
    .registers 2

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/RelativeLayout;->mDirtyHierarchy:Z

    return-void
.end method

.method public setGravity(I)V
    .registers 3
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Landroid/widget/RelativeLayout;->mGravity:I

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
    iput p1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setHorizontalGravity(I)V
    .registers 5
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    const v2, 0x800007

    and-int v0, p1, v2

    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/2addr v1, v2

    if-eq v1, v0, :cond_16

    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    const v2, -0x800008

    and-int/2addr v1, v2

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_16
    return-void
.end method

.method public setIgnoreGravity(I)V
    .registers 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Landroid/widget/RelativeLayout;->mIgnoreGravity:I

    return-void
.end method

.method public setVerticalGravity(I)V
    .registers 4
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    and-int/lit8 v0, p1, 0x70

    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    if-eq v1, v0, :cond_12

    iget v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    and-int/lit8 v1, v1, -0x71

    or-int/2addr v1, v0

    iput v1, p0, Landroid/widget/RelativeLayout;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_12
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
