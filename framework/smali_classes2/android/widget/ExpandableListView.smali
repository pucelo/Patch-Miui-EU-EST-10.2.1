.class public Landroid/widget/ExpandableListView;
.super Landroid/widget/ListView;
.source "ExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;,
        Landroid/widget/ExpandableListView$OnChildClickListener;,
        Landroid/widget/ExpandableListView$OnGroupClickListener;,
        Landroid/widget/ExpandableListView$OnGroupCollapseListener;,
        Landroid/widget/ExpandableListView$OnGroupExpandListener;,
        Landroid/widget/ExpandableListView$SavedState;
    }
.end annotation


# static fields
.field public static final CHILD_INDICATOR_INHERIT:I = -0x1

.field private static final CHILD_LAST_STATE_SET:[I

.field private static final EMPTY_STATE_SET:[I

.field private static final GROUP_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_EMPTY_STATE_SET:[I

.field private static final GROUP_EXPANDED_STATE_SET:[I

.field private static final GROUP_STATE_SETS:[[I

.field private static final INDICATOR_UNDEFINED:I = -0x2

.field private static final PACKED_POSITION_INT_MASK_CHILD:J = -0x1L

.field private static final PACKED_POSITION_INT_MASK_GROUP:J = 0x7fffffffL

.field private static final PACKED_POSITION_MASK_CHILD:J = 0xffffffffL

.field private static final PACKED_POSITION_MASK_GROUP:J = 0x7fffffff00000000L

.field private static final PACKED_POSITION_MASK_TYPE:J = -0x8000000000000000L

.field private static final PACKED_POSITION_SHIFT_GROUP:J = 0x20L

.field private static final PACKED_POSITION_SHIFT_TYPE:J = 0x3fL

.field public static final PACKED_POSITION_TYPE_CHILD:I = 0x1

.field public static final PACKED_POSITION_TYPE_GROUP:I = 0x0

.field public static final PACKED_POSITION_TYPE_NULL:I = 0x2

.field public static final PACKED_POSITION_VALUE_NULL:J = 0xffffffffL


# instance fields
.field private mAdapter:Landroid/widget/ExpandableListAdapter;

.field private mChildDivider:Landroid/graphics/drawable/Drawable;

.field private mChildIndicator:Landroid/graphics/drawable/Drawable;

.field private mChildIndicatorEnd:I

.field private mChildIndicatorLeft:I

.field private mChildIndicatorRight:I

.field private mChildIndicatorStart:I

.field private mConnector:Landroid/widget/ExpandableListConnector;

.field private mGroupIndicator:Landroid/graphics/drawable/Drawable;

.field private mIndicatorEnd:I

.field private mIndicatorLeft:I

.field private final mIndicatorRect:Landroid/graphics/Rect;

.field private mIndicatorRight:I

.field private mIndicatorStart:I

.field private mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field private mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

.field private mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

.field private mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const v2, 0x10100a9

    const v1, 0x10100a8

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v3, [I

    sput-object v0, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    new-array v0, v4, [I

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    new-array v0, v4, [I

    aput v2, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    filled-new-array {v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v0, 0x4

    new-array v0, v0, [[I

    sget-object v1, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_STATE_SET:[I

    aput-object v1, v0, v4

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EMPTY_STATE_SET:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/ExpandableListView;->GROUP_EXPANDED_EMPTY_STATE_SET:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    new-array v0, v4, [I

    const v1, 0x10100a6

    aput v1, v0, v3

    sput-object v0, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x101006f

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 10

    const/4 v4, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/internal/R$styleable;->ExpandableListView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_41

    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    :cond_41
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->isRtlCompatibilityMode()Z

    move-result v1

    if-nez v1, :cond_7b

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    :cond_7b
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getAbsoluteFlatPosition(I)I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J
    .registers 5

    iget v0, p1, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget v2, p1, Landroid/widget/ExpandableListPosition;->childPos:I

    invoke-interface {v0, v1, v2}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v0

    return-wide v0

    :cond_10
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    iget v1, p1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private getFlatPositionForConnector(I)I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method private getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/4 v4, 0x2

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v6, v6, Landroid/widget/ExpandableListPosition;->type:I

    if-ne v6, v4, :cond_3c

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_33

    iget-object v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    if-eqz v6, :cond_34

    iget-object v6, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v6, v6, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v7, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v7, v7, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-ne v6, v7, :cond_36

    const/4 v1, 0x1

    :goto_21
    invoke-virtual {p1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v6

    if-eqz v6, :cond_38

    const/4 v6, 0x1

    :goto_28
    if-eqz v1, :cond_3a

    :goto_2a
    or-int v3, v6, v4

    sget-object v4, Landroid/widget/ExpandableListView;->GROUP_STATE_SETS:[[I

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_33
    :goto_33
    return-object v0

    :cond_34
    const/4 v1, 0x1

    goto :goto_21

    :cond_36
    const/4 v1, 0x0

    goto :goto_21

    :cond_38
    move v6, v5

    goto :goto_28

    :cond_3a
    move v4, v5

    goto :goto_2a

    :cond_3c
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->flatListPos:I

    iget-object v5, p1, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    if-ne v4, v5, :cond_56

    sget-object v2, Landroid/widget/ExpandableListView;->CHILD_LAST_STATE_SET:[I

    :goto_52
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_33

    :cond_56
    sget-object v2, Landroid/widget/ExpandableListView;->EMPTY_STATE_SET:[I

    goto :goto_52
.end method

.method public static getPackedPositionChild(J)I
    .registers 10

    const-wide v6, 0xffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v2, -0x1

    cmp-long v0, p0, v6

    if-nez v0, :cond_d

    return v2

    :cond_d
    and-long v0, p0, v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_14

    return v2

    :cond_14
    and-long v0, p0, v6

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionForChild(II)J
    .registers 8

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, -0x8000000000000000L

    or-long/2addr v0, v2

    int-to-long v2, p1

    const-wide/16 v4, -0x1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionForGroup(I)J
    .registers 5

    int-to-long v0, p0

    const-wide/32 v2, 0x7fffffff

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static getPackedPositionGroup(J)I
    .registers 6

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_b

    const/4 v0, -0x1

    return v0

    :cond_b
    const-wide v0, 0x7fffffff00000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static getPackedPositionType(J)I
    .registers 6

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v0, 0xffffffffL

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    return v0

    :cond_d
    and-long v0, p0, v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private hasRtlSupport()Z
    .registers 2

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v0

    return v0
.end method

.method private isHeaderOrFooterPosition(I)Z
    .registers 6

    const/4 v1, 0x1

    iget v2, p0, Landroid/widget/ExpandableListView;->mItemCount:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v3

    sub-int v0, v2, v3

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v2

    if-lt p1, v2, :cond_11

    if-lt p1, v0, :cond_12

    :cond_11
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isRtlCompatibilityMode()Z
    .registers 3

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_13

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->hasRtlSupport()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x1

    goto :goto_12
.end method

.method private resolveChildIndicator()V
    .registers 4

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_18

    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_f

    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    :cond_f
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_17

    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    if-lt v1, v2, :cond_20

    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    :cond_20
    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    if-lt v1, v2, :cond_17

    iget v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    goto :goto_17
.end method

.method private resolveIndicator()V
    .registers 4

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_e

    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    :cond_e
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_16

    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    :cond_16
    :goto_16
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v1, :cond_29

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_29

    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v2, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    :cond_29
    return-void

    :cond_2a
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    if-ltz v1, :cond_32

    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    :cond_32
    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    if-ltz v1, :cond_16

    iget v1, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    iput v1, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    goto :goto_16
.end method


# virtual methods
.method public collapseGroup(I)Z
    .registers 4

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1, p1}, Landroid/widget/ExpandableListConnector;->collapseGroup(I)Z

    move-result v0

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    invoke-interface {v1, p1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_f
    return v0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .registers 14

    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0

    :cond_c
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v6

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v6}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v7

    iget-object v8, v7, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v8}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    invoke-virtual {v8}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    invoke-virtual {v7}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 32

    invoke-super/range {p0 .. p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-nez v25, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    if-nez v25, :cond_14

    return-void

    :cond_14
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mGroupFlags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x22

    const/16 v26, 0x22

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_bc

    const/4 v8, 0x1

    :goto_27
    if-eqz v8, :cond_86

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mScrollX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mScrollY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v25, v0

    add-int v25, v25, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingTop:I

    move/from16 v26, v0

    add-int v26, v26, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mRight:I

    move/from16 v27, v0

    add-int v27, v27, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mLeft:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mBottom:I

    move/from16 v28, v0

    add-int v28, v28, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mTop:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingBottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_86
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mItemCount:I

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getFooterViewsCount()I

    move-result v26

    sub-int v25, v25, v26

    sub-int v25, v25, v9

    add-int/lit8 v15, v25, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mBottom:I

    move/from16 v17, v0

    const/16 v16, -0x4

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/ExpandableListView;->mIndicatorRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v6

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    move/from16 v25, v0

    sub-int v7, v25, v9

    :goto_b3
    if-ge v10, v6, :cond_c1

    if-gez v7, :cond_bf

    :cond_b7
    :goto_b7
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_b3

    :cond_bc
    const/4 v8, 0x0

    goto/16 :goto_27

    :cond_bf
    if-le v7, v15, :cond_cb

    :cond_c1
    if-eqz v8, :cond_ca

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_ca
    return-void

    :cond_cb
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v5

    if-ltz v5, :cond_b7

    move/from16 v0, v22

    move/from16 v1, v17

    if-gt v0, v1, :cond_b7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->isLayoutRtl()Z

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/widget/ExpandableListView;->getWidth()I

    move-result v24

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v16

    if-eq v0, v1, :cond_18d

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1d0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v25, v0

    :goto_12f
    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1c8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v25, v0

    :goto_147
    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    :goto_14b
    if-eqz v13, :cond_1e6

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    sub-int v25, v24, v25

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    sub-int v25, v24, v23

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    :goto_181
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    move/from16 v16, v0

    :cond_18d
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_1bb

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/ExpandableListView;->mStackFromBottom:Z

    move/from16 v25, v0

    if-eqz v25, :cond_208

    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    :goto_1a9
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/widget/ExpandableListView;->getIndicator(Landroid/widget/ExpandableListConnector$PositionMetadata;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_1bb

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1bb
    invoke-virtual/range {v18 .. v18}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    goto/16 :goto_b7

    :cond_1c0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    move/from16 v25, v0

    goto/16 :goto_12f

    :cond_1c8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    move/from16 v25, v0

    goto/16 :goto_147

    :cond_1d0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    move/from16 v25, v0

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_14b

    :cond_1e6
    iget v0, v12, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->left:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/ExpandableListView;->mPaddingLeft:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    iput v0, v12, Landroid/graphics/Rect;->right:I

    goto/16 :goto_181

    :cond_208
    move/from16 v0, v22

    iput v0, v12, Landroid/graphics/Rect;->top:I

    iput v5, v12, Landroid/graphics/Rect;->bottom:I

    goto :goto_1a9
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .registers 10

    iget v4, p0, Landroid/widget/ExpandableListView;->mFirstPosition:I

    add-int v2, p3, v4

    if-ltz v2, :cond_36

    invoke-direct {p0, v2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v3

    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v4, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_27

    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v4

    if-eqz v4, :cond_33

    iget-object v4, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v4, v4, Landroid/widget/ExpandableListConnector$GroupMetadata;->lastChildFlPos:I

    iget-object v5, v3, Landroid/widget/ExpandableListConnector$PositionMetadata;->groupMetadata:Landroid/widget/ExpandableListConnector$GroupMetadata;

    iget v5, v5, Landroid/widget/ExpandableListConnector$GroupMetadata;->flPos:I

    if-eq v4, v5, :cond_33

    :cond_27
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-void

    :cond_33
    invoke-virtual {v3}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    :cond_36
    invoke-super {p0, p1, p2, v2}, Landroid/widget/ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public expandGroup(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    move-result v0

    return v0
.end method

.method public expandGroup(IZ)Z
    .registers 10

    const/4 v6, -0x1

    const/4 v5, 0x2

    invoke-static {v5, p1, v6, v6}, Landroid/widget/ExpandableListPosition;->obtain(IIII)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    iget-object v5, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v5, v2}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    move-result v3

    iget-object v5, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_1e
    if-eqz p2, :cond_34

    iget-object v5, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v5, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v5

    add-int v4, v1, v5

    iget-object v5, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v5, p1}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p0, v5, v4}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    :cond_34
    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return v3
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    const-class v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    invoke-super {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    return-object v0
.end method

.method public getExpandableListPosition(I)J
    .registers 8

    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v4

    if-eqz v4, :cond_c

    const-wide v4, 0xffffffffL

    return-wide v4

    :cond_c
    invoke-direct {p0, p1}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    iget-object v4, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v4, v0}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v1

    iget-object v4, v1, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-virtual {v4}, Landroid/widget/ExpandableListPosition;->getPackedPosition()J

    move-result-wide v2

    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-wide v2
.end method

.method public getFlatListPosition(J)I
    .registers 8

    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainPosition(J)Landroid/widget/ExpandableListPosition;

    move-result-object v0

    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v0}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/ExpandableListPosition;->recycle()V

    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    invoke-direct {p0, v1}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v3

    return v3
.end method

.method public getSelectedId()J
    .registers 7

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedPosition()J

    move-result-wide v2

    const-wide v4, 0xffffffffL

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    const-wide/16 v4, -0x1

    return-wide v4

    :cond_10
    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    return-wide v4

    :cond_21
    iget-object v1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-static {v2, v3}, Landroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result v4

    invoke-interface {v1, v0, v4}, Landroid/widget/ExpandableListAdapter;->getChildId(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getSelectedPosition()J
    .registers 5

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->getExpandableListPosition(I)J

    move-result-wide v2

    return-wide v2
.end method

.method handleItemClick(Landroid/view/View;IJ)Z
    .registers 18

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p2}, Landroid/widget/ExpandableListConnector;->getUnflattenedPos(I)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v10

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    invoke-direct {p0, v0}, Landroid/widget/ExpandableListView;->getChildOrGroupId(Landroid/widget/ExpandableListPosition;)J

    move-result-wide p3

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v0, v0, Landroid/widget/ExpandableListPosition;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v0, 0x1

    return v0

    :cond_2c
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->collapseGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    if-eqz v0, :cond_48

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupCollapseListener;->onGroupCollapse(I)V

    :cond_48
    :goto_48
    const/4 v11, 0x1

    :goto_49
    invoke-virtual {v10}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return v11

    :cond_4d
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, v10}, Landroid/widget/ExpandableListConnector;->expandGroup(Landroid/widget/ExpandableListConnector$PositionMetadata;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    if-eqz v0, :cond_63

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    iget-object v1, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v1, v1, Landroid/widget/ExpandableListPosition;->groupPos:I

    invoke-interface {v0, v1}, Landroid/widget/ExpandableListView$OnGroupExpandListener;->onGroupExpand(I)V

    :cond_63
    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v9, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v8, v0, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-virtual {p0}, Landroid/widget/ExpandableListView;->getHeaderViewsCount()I

    move-result v0

    add-int v12, v8, v0

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    invoke-interface {v0, v9}, Landroid/widget/ExpandableListAdapter;->getChildrenCount(I)I

    move-result v0

    add-int/2addr v0, v12

    invoke-virtual {p0, v0, v12}, Landroid/widget/ExpandableListView;->smoothScrollToPosition(II)V

    goto :goto_48

    :cond_7c
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    if-eqz v0, :cond_97

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ExpandableListView;->playSoundEffect(I)V

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v4, v0, Landroid/widget/ExpandableListPosition;->groupPos:I

    iget-object v0, v10, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v5, v0, Landroid/widget/ExpandableListPosition;->childPos:I

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v6, p3

    invoke-interface/range {v1 .. v7}, Landroid/widget/ExpandableListView$OnChildClickListener;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z

    move-result v0

    return v0

    :cond_97
    const/4 v11, 0x0

    goto :goto_49
.end method

.method public isGroupExpanded(I)Z
    .registers 3

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v0, p1}, Landroid/widget/ExpandableListConnector;->isGroupExpanded(I)Z

    move-result v0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5

    instance-of v1, p1, Landroid/widget/ExpandableListView$SavedState;

    if-nez v1, :cond_8

    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/widget/ExpandableListView$SavedState;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    if-eqz v1, :cond_21

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    iget-object v2, v0, Landroid/widget/ExpandableListView$SavedState;->expandedGroupMetadataList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListConnector;->setExpandedGroupMetadataList(Ljava/util/ArrayList;)V

    :cond_21
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 5

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v2, Landroid/widget/ExpandableListView$SavedState;

    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    if-eqz v3, :cond_11

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v1}, Landroid/widget/ExpandableListConnector;->getExpandedGroupMetadataList()Ljava/util/ArrayList;

    move-result-object v1

    :cond_11
    invoke-direct {v2, v0, v1}, Landroid/widget/ExpandableListView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/util/ArrayList;)V

    return-object v2
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .registers 8

    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1

    :cond_b
    invoke-direct {p0, p2}, Landroid/widget/ExpandableListView;->getFlatPositionForConnector(I)I

    move-result v0

    invoke-virtual {p0, p1, v0, p3, p4}, Landroid/widget/ExpandableListView;->handleItemClick(Landroid/view/View;IJ)Z

    move-result v1

    return v1
.end method

.method public setAdapter(Landroid/widget/ExpandableListAdapter;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mAdapter:Landroid/widget/ExpandableListAdapter;

    if-eqz p1, :cond_12

    new-instance v0, Landroid/widget/ExpandableListConnector;

    invoke-direct {v0, p1}, Landroid/widget/ExpandableListConnector;-><init>(Landroid/widget/ExpandableListAdapter;)V

    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    :goto_c
    iget-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_12
    iput-object v0, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    goto :goto_c
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "For ExpandableListView, use setAdapter(ExpandableListAdapter) instead of setAdapter(ListAdapter)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setChildDivider(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mChildIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setChildIndicatorBounds(II)V
    .registers 3

    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorLeft:I

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorRight:I

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public setChildIndicatorBoundsRelative(II)V
    .registers 3

    iput p1, p0, Landroid/widget/ExpandableListView;->mChildIndicatorStart:I

    iput p2, p0, Landroid/widget/ExpandableListView;->mChildIndicatorEnd:I

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveChildIndicator()V

    return-void
.end method

.method public setGroupIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_15

    iget v0, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iget-object v1, p0, Landroid/widget/ExpandableListView;->mGroupIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    :cond_15
    return-void
.end method

.method public setIndicatorBounds(II)V
    .registers 3

    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorLeft:I

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorRight:I

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    return-void
.end method

.method public setIndicatorBoundsRelative(II)V
    .registers 3

    iput p1, p0, Landroid/widget/ExpandableListView;->mIndicatorStart:I

    iput p2, p0, Landroid/widget/ExpandableListView;->mIndicatorEnd:I

    invoke-direct {p0}, Landroid/widget/ExpandableListView;->resolveIndicator()V

    return-void
.end method

.method public setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    return-void
.end method

.method public setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;

    return-void
.end method

.method public setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupCollapseListener:Landroid/widget/ExpandableListView$OnGroupCollapseListener;

    return-void
.end method

.method public setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/ExpandableListView;->mOnGroupExpandListener:Landroid/widget/ExpandableListView$OnGroupExpandListener;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setSelectedChild(IIZ)Z
    .registers 9

    invoke-static {p1, p2}, Landroid/widget/ExpandableListPosition;->obtainChildPosition(II)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-nez v2, :cond_24

    if-nez p3, :cond_10

    const/4 v3, 0x0

    return v3

    :cond_10
    invoke-virtual {p0, p1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    if-nez v2, :cond_24

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Could not find child"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    const/4 v3, 0x1

    return v3
.end method

.method public setSelectedGroup(I)V
    .registers 6

    invoke-static {p1}, Landroid/widget/ExpandableListPosition;->obtainGroupPosition(I)Landroid/widget/ExpandableListPosition;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/ExpandableListView;->mConnector:Landroid/widget/ExpandableListConnector;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListConnector;->getFlattenedPos(Landroid/widget/ExpandableListPosition;)Landroid/widget/ExpandableListConnector$PositionMetadata;

    move-result-object v2

    invoke-virtual {v1}, Landroid/widget/ExpandableListPosition;->recycle()V

    iget-object v3, v2, Landroid/widget/ExpandableListConnector$PositionMetadata;->position:Landroid/widget/ExpandableListPosition;

    iget v3, v3, Landroid/widget/ExpandableListPosition;->flatListPos:I

    invoke-direct {p0, v3}, Landroid/widget/ExpandableListView;->getAbsoluteFlatPosition(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector$PositionMetadata;->recycle()V

    return-void
.end method
