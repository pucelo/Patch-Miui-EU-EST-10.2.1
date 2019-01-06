.class public Landroid/view/accessibility/AccessibilityNodeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityNodeInfo$1;,
        Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;,
        Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    }
.end annotation


# static fields
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40

.field public static final ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN:Ljava/lang/String; = "android.view.accessibility.action.ACTION_ARGUMENT_ACCESSIBLE_CLICKABLE_SPAN"

.field public static final ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"

.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

.field public static final ACTION_ARGUMENT_MOVE_WINDOW_X:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_X"

.field public static final ACTION_ARGUMENT_MOVE_WINDOW_Y:Ljava/lang/String; = "ACTION_ARGUMENT_MOVE_WINDOW_Y"

.field public static final ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

.field public static final ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"

.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"

.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"

.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"

.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80

.field public static final ACTION_CLEAR_FOCUS:I = 0x2

.field public static final ACTION_CLEAR_SELECTION:I = 0x8

.field public static final ACTION_CLICK:I = 0x10

.field public static final ACTION_COLLAPSE:I = 0x80000

.field public static final ACTION_COPY:I = 0x4000

.field public static final ACTION_CUT:I = 0x10000

.field public static final ACTION_DISMISS:I = 0x100000

.field public static final ACTION_EXPAND:I = 0x40000

.field public static final ACTION_FOCUS:I = 0x1

.field public static final ACTION_LONG_CLICK:I = 0x20

.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100

.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400

.field public static final ACTION_PASTE:I = 0x8000

.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200

.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800

.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000

.field public static final ACTION_SCROLL_FORWARD:I = 0x1000

.field public static final ACTION_SELECT:I = 0x4

.field public static final ACTION_SET_SELECTION:I = 0x20000

.field public static final ACTION_SET_TEXT:I = 0x200000

.field private static final ACTION_TYPE_MASK:I = -0x1000000

.field private static final BOOLEAN_PROPERTY_ACCESSIBILITY_FOCUSED:I = 0x400

.field private static final BOOLEAN_PROPERTY_CHECKABLE:I = 0x1

.field private static final BOOLEAN_PROPERTY_CHECKED:I = 0x2

.field private static final BOOLEAN_PROPERTY_CLICKABLE:I = 0x20

.field private static final BOOLEAN_PROPERTY_CONTENT_INVALID:I = 0x10000

.field private static final BOOLEAN_PROPERTY_CONTEXT_CLICKABLE:I = 0x20000

.field private static final BOOLEAN_PROPERTY_DISMISSABLE:I = 0x4000

.field private static final BOOLEAN_PROPERTY_EDITABLE:I = 0x1000

.field private static final BOOLEAN_PROPERTY_ENABLED:I = 0x80

.field private static final BOOLEAN_PROPERTY_FOCUSABLE:I = 0x4

.field private static final BOOLEAN_PROPERTY_FOCUSED:I = 0x8

.field private static final BOOLEAN_PROPERTY_IMPORTANCE:I = 0x40000

.field private static final BOOLEAN_PROPERTY_IS_SHOWING_HINT:I = 0x100000

.field private static final BOOLEAN_PROPERTY_LONG_CLICKABLE:I = 0x40

.field private static final BOOLEAN_PROPERTY_MULTI_LINE:I = 0x8000

.field private static final BOOLEAN_PROPERTY_OPENS_POPUP:I = 0x2000

.field private static final BOOLEAN_PROPERTY_PASSWORD:I = 0x100

.field private static final BOOLEAN_PROPERTY_SCROLLABLE:I = 0x200

.field private static final BOOLEAN_PROPERTY_SELECTED:I = 0x10

.field private static final BOOLEAN_PROPERTY_VISIBLE_TO_USER:I = 0x800

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

.field public static final EXTRA_DATA_REQUESTED_KEY:Ljava/lang/String; = "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

.field public static final EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_LENGTH"

.field public static final EXTRA_DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_ARG_START_INDEX"

.field public static final EXTRA_DATA_TEXT_CHARACTER_LOCATION_KEY:Ljava/lang/String; = "android.view.accessibility.extra.DATA_TEXT_CHARACTER_LOCATION_KEY"

.field public static final FLAG_INCLUDE_NOT_IMPORTANT_VIEWS:I = 0x8

.field public static final FLAG_PREFETCH_DESCENDANTS:I = 0x4

.field public static final FLAG_PREFETCH_PREDECESSORS:I = 0x1

.field public static final FLAG_PREFETCH_SIBLINGS:I = 0x2

.field public static final FLAG_REPORT_VIEW_IDS:I = 0x10

.field public static final FOCUS_ACCESSIBILITY:I = 0x2

.field public static final FOCUS_INPUT:I = 0x1

.field public static final LAST_LEGACY_STANDARD_ACTION:I = 0x200000

.field private static final MAX_POOL_SIZE:I = 0x32

.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1

.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4

.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10

.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8

.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2

.field public static final ROOT_ITEM_ID:I = 0x7ffffffe

.field public static final ROOT_NODE_ID:J

.field public static final UNDEFINED_CONNECTION_ID:I = -0x1

.field public static final UNDEFINED_ITEM_ID:I = 0x7fffffff

.field public static final UNDEFINED_NODE_ID:J

.field public static final UNDEFINED_SELECTION_INDEX:I = -0x1

.field private static final VIRTUAL_DESCENDANT_ID_MASK:J = -0x100000000L

.field private static final VIRTUAL_DESCENDANT_ID_SHIFT:I = 0x20

.field private static sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mBooleanProperties:I

.field private final mBoundsInParent:Landroid/graphics/Rect;

.field private final mBoundsInScreen:Landroid/graphics/Rect;

.field private mChildNodeIds:Landroid/util/LongArray;

.field private mClassName:Ljava/lang/CharSequence;

.field private mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

.field private mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

.field private mConnectionId:I

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mDrawingOrderInParent:I

.field private mError:Ljava/lang/CharSequence;

.field private mExtraDataKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExtras:Landroid/os/Bundle;

.field private mHintText:Ljava/lang/CharSequence;

.field private mInputType:I

.field private mLabelForId:J

.field private mLabeledById:J

.field private mLiveRegion:I

.field private mMaxTextLength:I

.field private mMovementGranularities:I

.field private mOriginalText:Ljava/lang/CharSequence;

.field private mPackageName:Ljava/lang/CharSequence;

.field private mParentNodeId:J

.field private mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

.field private mSealed:Z

.field private mSourceNodeId:J

.field private mText:Ljava/lang/CharSequence;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I

.field private mTraversalAfter:J

.field private mTraversalBefore:J

.field private mViewIdResourceName:Ljava/lang/String;

.field private mWindowId:I


# direct methods
.method static synthetic -wrap0(I)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSymbolicName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/os/Parcel;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->initFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const v0, 0x7fffffff

    invoke-static {v0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    const v0, 0x7ffffffe

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    sput-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$1;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$1;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    sget-wide v0, Landroid/view/accessibility/AccessibilityNodeInfo;->UNDEFINED_NODE_ID:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return-void
.end method

.method private addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    :cond_e
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addChildInternal(Landroid/view/View;IZ)V
    .registers 8

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v3, :cond_e

    new-instance v3, Landroid/util/LongArray;

    invoke-direct {v3}, Landroid/util/LongArray;-><init>()V

    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    :cond_e
    if-eqz p1, :cond_23

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v2

    :goto_14
    invoke-static {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v0

    if-eqz p3, :cond_27

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->indexOf(J)I

    move-result v3

    if-ltz v3, :cond_27

    return-void

    :cond_23
    const v2, 0x7fffffff

    goto :goto_14

    :cond_27
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongArray;->add(J)V

    return-void
.end method

.method private addStandardActions(I)V
    .registers 7

    move v2, p1

    :goto_1
    if-lez v2, :cond_14

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    const/4 v4, 0x1

    shl-int v1, v4, v3

    not-int v3, v1

    and-int/2addr v2, v3

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingletonBySerializationFlag(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    :cond_14
    return-void
.end method

.method private canPerformRequestOverConnection(J)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v3, -0x1

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v1, v3, :cond_14

    invoke-static {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v1

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_14

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v1, v3, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private clear()V
    .registers 2

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method private enforceValidFocusDirection(I)V
    .registers 5

    sparse-switch p1, :sswitch_data_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1d
    return-void

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_1d
        0x11 -> :sswitch_1d
        0x21 -> :sswitch_1d
        0x42 -> :sswitch_1d
        0x82 -> :sswitch_1d
    .end sparse-switch
.end method

.method private enforceValidFocusType(I)V
    .registers 5

    packed-switch p1, :pswitch_data_1e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown focus type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1d
    return-void

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1d
    .end packed-switch
.end method

.method public static getAccessibilityViewId(J)I
    .registers 4

    long-to-int v0, p0

    return v0
.end method

.method private static getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .registers 5

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1b

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    if-ne p0, v3, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1b
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getActionSingletonBySerializationFlag(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;
    .registers 5

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_19

    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->sStandardActions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget v3, v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:I

    if-ne p0, v3, :cond_16

    return-object v1

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_19
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getActionSymbolicName(I)Ljava/lang/String;
    .registers 2

    sparse-switch p0, :sswitch_data_80

    const-string/jumbo v0, "ACTION_UNKNOWN"

    return-object v0

    :sswitch_7
    const-string/jumbo v0, "ACTION_FOCUS"

    return-object v0

    :sswitch_b
    const-string/jumbo v0, "ACTION_CLEAR_FOCUS"

    return-object v0

    :sswitch_f
    const-string/jumbo v0, "ACTION_SELECT"

    return-object v0

    :sswitch_13
    const-string/jumbo v0, "ACTION_CLEAR_SELECTION"

    return-object v0

    :sswitch_17
    const-string/jumbo v0, "ACTION_CLICK"

    return-object v0

    :sswitch_1b
    const-string/jumbo v0, "ACTION_LONG_CLICK"

    return-object v0

    :sswitch_1f
    const-string/jumbo v0, "ACTION_ACCESSIBILITY_FOCUS"

    return-object v0

    :sswitch_23
    const-string/jumbo v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"

    return-object v0

    :sswitch_27
    const-string/jumbo v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"

    return-object v0

    :sswitch_2b
    const-string/jumbo v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"

    return-object v0

    :sswitch_2f
    const-string/jumbo v0, "ACTION_NEXT_HTML_ELEMENT"

    return-object v0

    :sswitch_33
    const-string/jumbo v0, "ACTION_PREVIOUS_HTML_ELEMENT"

    return-object v0

    :sswitch_37
    const-string/jumbo v0, "ACTION_SCROLL_FORWARD"

    return-object v0

    :sswitch_3b
    const-string/jumbo v0, "ACTION_SCROLL_BACKWARD"

    return-object v0

    :sswitch_3f
    const-string/jumbo v0, "ACTION_CUT"

    return-object v0

    :sswitch_43
    const-string/jumbo v0, "ACTION_COPY"

    return-object v0

    :sswitch_47
    const-string/jumbo v0, "ACTION_PASTE"

    return-object v0

    :sswitch_4b
    const-string/jumbo v0, "ACTION_SET_SELECTION"

    return-object v0

    :sswitch_4f
    const-string/jumbo v0, "ACTION_EXPAND"

    return-object v0

    :sswitch_53
    const-string/jumbo v0, "ACTION_COLLAPSE"

    return-object v0

    :sswitch_57
    const-string/jumbo v0, "ACTION_DISMISS"

    return-object v0

    :sswitch_5b
    const-string/jumbo v0, "ACTION_SET_TEXT"

    return-object v0

    :sswitch_5f
    const-string/jumbo v0, "ACTION_SHOW_ON_SCREEN"

    return-object v0

    :sswitch_63
    const-string/jumbo v0, "ACTION_SCROLL_TO_POSITION"

    return-object v0

    :sswitch_67
    const-string/jumbo v0, "ACTION_SCROLL_UP"

    return-object v0

    :sswitch_6b
    const-string/jumbo v0, "ACTION_SCROLL_LEFT"

    return-object v0

    :sswitch_6f
    const-string/jumbo v0, "ACTION_SCROLL_DOWN"

    return-object v0

    :sswitch_73
    const-string/jumbo v0, "ACTION_SCROLL_RIGHT"

    return-object v0

    :sswitch_77
    const-string/jumbo v0, "ACTION_SET_PROGRESS"

    return-object v0

    :sswitch_7b
    const-string/jumbo v0, "ACTION_CONTEXT_CLICK"

    return-object v0

    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_b
        0x4 -> :sswitch_f
        0x8 -> :sswitch_13
        0x10 -> :sswitch_17
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_1f
        0x80 -> :sswitch_23
        0x100 -> :sswitch_27
        0x200 -> :sswitch_2b
        0x400 -> :sswitch_2f
        0x800 -> :sswitch_33
        0x1000 -> :sswitch_37
        0x2000 -> :sswitch_3b
        0x4000 -> :sswitch_43
        0x8000 -> :sswitch_47
        0x10000 -> :sswitch_3f
        0x20000 -> :sswitch_4b
        0x40000 -> :sswitch_4f
        0x80000 -> :sswitch_53
        0x100000 -> :sswitch_57
        0x200000 -> :sswitch_5b
        0x1020036 -> :sswitch_5f
        0x1020037 -> :sswitch_63
        0x1020038 -> :sswitch_67
        0x1020039 -> :sswitch_6b
        0x102003a -> :sswitch_6f
        0x102003b -> :sswitch_73
        0x102003c -> :sswitch_7b
        0x102003d -> :sswitch_77
    .end sparse-switch
.end method

.method private getBooleanProperty(I)Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private static getMovementGranularitySymbolicName(I)Ljava/lang/String;
    .registers 4

    sparse-switch p0, :sswitch_data_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown movement granularity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1d
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_CHARACTER"

    return-object v0

    :sswitch_21
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_WORD"

    return-object v0

    :sswitch_25
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_LINE"

    return-object v0

    :sswitch_29
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_PARAGRAPH"

    return-object v0

    :sswitch_2d
    const-string/jumbo v0, "MOVEMENT_GRANULARITY_PAGE"

    return-object v0

    nop

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_1d
        0x2 -> :sswitch_21
        0x4 -> :sswitch_25
        0x8 -> :sswitch_29
        0x10 -> :sswitch_2d
    .end sparse-switch
.end method

.method private getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 12

    const/4 v8, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_8

    return-object v8

    :cond_8
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    const/4 v6, 0x0

    const/4 v7, 0x7

    move-wide v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getVirtualDescendantId(J)I
    .registers 6

    const-wide v0, -0x100000000L

    and-long/2addr v0, p0

    const/16 v2, 0x20

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private init(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 8

    const/4 v3, 0x0

    iget-boolean v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    iget-wide v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iput-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v2, :cond_5c

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_5c
    iget-object v0, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_71

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v2, :cond_ff

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    :cond_71
    :goto_71
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v2, :cond_86

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2}, Landroid/util/LongArray;->clear()V

    :cond_86
    iget-object v1, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-eqz v1, :cond_9a

    invoke-virtual {v1}, Landroid/util/LongArray;->size()I

    move-result v2

    if-lez v2, :cond_9a

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v2, :cond_108

    invoke-virtual {v1}, Landroid/util/LongArray;->clone()Landroid/util/LongArray;

    move-result-object v2

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    :cond_9a
    :goto_9a
    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    iget v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iput v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_10e

    new-instance v2, Landroid/os/Bundle;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    :goto_bd
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v2, :cond_c8

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    :cond_c8
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v2, :cond_110

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    :goto_d2
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v2, :cond_dd

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    :cond_dd
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v2, :cond_112

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    :goto_e7
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v2, :cond_f2

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    :cond_f2
    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v2, :cond_fc

    iget-object v2, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v3

    :cond_fc
    iput-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-void

    :cond_ff
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_71

    :cond_108
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v1}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    goto :goto_9a

    :cond_10e
    move-object v2, v3

    goto :goto_bd

    :cond_110
    move-object v2, v3

    goto :goto_d2

    :cond_112
    move-object v2, v3

    goto :goto_e7
.end method

.method private initFromParcel(Landroid/os/Parcel;)V
    .registers 23

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_156

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_152

    const/16 v18, 0x1

    :goto_18
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    :cond_2a
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    :cond_3c
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    :cond_4e
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    :cond_60
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    :cond_72
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_84

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    :cond_84
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    :cond_96
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_a8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    :cond_a8
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-gtz v9, :cond_15e

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    :cond_bd
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_ef

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :cond_ef
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_121

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    :cond_121
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_178

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    const/4 v14, 0x0

    :goto_13b
    if-ge v14, v15, :cond_178

    new-instance v8, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v8, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_13b

    :cond_152
    const/16 v18, 0x0

    goto/16 :goto_18

    :cond_156
    sget-object v2, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-boolean v0, v2, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    move/from16 v18, v0

    goto/16 :goto_18

    :cond_15e
    new-instance v2, Landroid/util/LongArray;

    invoke-direct {v2, v9}, Landroid/util/LongArray;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    const/4 v14, 0x0

    :goto_168
    if-ge v14, v9, :cond_bd

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v2, v10, v11}, Landroid/util/LongArray;->add(J)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_168

    :cond_178
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_18a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    :cond_18a
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_19c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    :cond_19c
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_1ae

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    :cond_1ae
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_1c0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    :cond_1c0
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_1d2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    :cond_1d2
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_1e4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    :cond_1e4
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_1f6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    :cond_1f6
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_208

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    :cond_208
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_21a

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    :cond_21a
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_22c

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    :cond_22c
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_23e

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    :cond_23e
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_250

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    :cond_250
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_262

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    :cond_262
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_274

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    :cond_274
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_286

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    :cond_286
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_355

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    :goto_294
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_358

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    :goto_2a6
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    if-eqz v2, :cond_2b7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->recycle()V

    :cond_2b7
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_35b

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v2

    :goto_2d5
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    if-eqz v2, :cond_2e6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->recycle()V

    :cond_2e6
    add-int/lit8 v13, v12, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v12}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_360

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_35e

    const/4 v2, 0x1

    :goto_300
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v2

    :goto_308
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    if-eqz v2, :cond_319

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->recycle()V

    :cond_319
    add-int/lit8 v12, v13, 0x1

    move-wide/from16 v0, v16

    invoke-static {v0, v1, v13}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v2

    if-eqz v2, :cond_366

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_362

    const/4 v6, 0x1

    :goto_33b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v7, v0, :cond_364

    const/4 v7, 0x1

    :goto_346
    invoke-static/range {v2 .. v7}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    :goto_34a
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return-void

    :cond_355
    const/4 v2, 0x0

    goto/16 :goto_294

    :cond_358
    const/4 v2, 0x0

    goto/16 :goto_2a6

    :cond_35b
    const/4 v2, 0x0

    goto/16 :goto_2d5

    :cond_35e
    const/4 v2, 0x0

    goto :goto_300

    :cond_360
    const/4 v2, 0x0

    goto :goto_308

    :cond_362
    const/4 v6, 0x0

    goto :goto_33b

    :cond_364
    const/4 v7, 0x0

    goto :goto_346

    :cond_366
    const/4 v2, 0x0

    goto :goto_34a
.end method

.method private static isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static makeNodeId(II)J
    .registers 6

    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_11

    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_11
    if-eqz v0, :cond_14

    :goto_13
    return-object v0

    :cond_14
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;-><init>()V

    goto :goto_13
.end method

.method public static obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    return-object v0
.end method

.method public static obtain(Landroid/view/View;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-object v0
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p2, :cond_b

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    :goto_a
    return-void

    :cond_b
    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    goto :goto_a
.end method

.method public static setNumInstancesInUseCounter(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 1

    sput-object p0, Landroid/view/accessibility/AccessibilityNodeInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public addAction(I)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Action is not a combination of the standard actions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addStandardActions(I)V

    return-void
.end method

.method public addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addActionUnchecked(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public addChild(Landroid/view/View;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public addChild(Landroid/view/View;I)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public addChildUnchecked(Landroid/view/View;)V
    .registers 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChildInternal(Landroid/view/View;IZ)V

    return-void
.end method

.method public canOpenPopup()Z
    .registers 2

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected enforceNotSealed()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method protected enforceSealed()V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne p0, p1, :cond_5

    return v7

    :cond_5
    if-nez p1, :cond_8

    return v6

    :cond_8
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_13

    return v6

    :cond_13
    move-object v0, p1

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iget-wide v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1f

    return v6

    :cond_1f
    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget v2, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v1, v2, :cond_26

    return v6

    :cond_26
    return v7
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfosByViewId(IIJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusType(I)V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public focusSearch(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 9

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceValidFocusDirection(I)V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    return-object v0

    :cond_10
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActionList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getActions()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-nez v4, :cond_6

    return v3

    :cond_6
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_23

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v0

    const/high16 v4, 0x200000

    if-gt v0, v4, :cond_20

    or-int/2addr v3, v0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_23
    return v3
.end method

.method public getAvailableExtraData()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_b
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getBoundsInParent(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getBoundsInScreen()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 6

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 11

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_9

    return-object v8

    :cond_9
    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_12

    return-object v8

    :cond_12
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v4

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0}, Landroid/util/LongArray;->size()I

    move-result v0

    goto :goto_5
.end method

.method public getChildId(I)J
    .registers 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-virtual {v0, p1}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChildNodeIds()Landroid/util/LongArray;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCollectionInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-object v0
.end method

.method public getCollectionItemInfo()Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-object v0
.end method

.method public getConnectionId()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDrawingOrder()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputType()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return v0
.end method

.method public getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLiveRegion()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return v0
.end method

.method public getMaxTextLength()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return v0
.end method

.method public getMovementGranularities()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return v0
.end method

.method public getOriginalText()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getParent()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getParentNodeId()J
    .registers 3

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-wide v0
.end method

.method public getRangeInfo()Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-object v0
.end method

.method public getSourceNodeId()J
    .registers 3

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-wide v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spanned;

    if-eqz v4, :cond_3f

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/AccessibilityClickableSpan;

    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/AccessibilityClickableSpan;

    const/4 v1, 0x0

    :goto_1a
    array-length v4, v0

    if-ge v1, v4, :cond_25

    aget-object v4, v0, v1

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityClickableSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_25
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Landroid/text/style/AccessibilityURLSpan;

    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AccessibilityURLSpan;

    const/4 v1, 0x0

    :goto_34
    array-length v4, v3

    if-ge v1, v4, :cond_3f

    aget-object v4, v3, v1

    invoke-virtual {v4, p0}, Landroid/text/style/AccessibilityURLSpan;->copyConnectionDataFrom(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_3f
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-object v4
.end method

.method public getTextSelectionEnd()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return v0
.end method

.method public getTextSelectionStart()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    return v0
.end method

.method public getTraversalAfter()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTraversalBefore()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    invoke-direct {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getNodeForAccessibilityId(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getViewIdResourceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getWindow()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    return-object v1

    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindow(II)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    return-object v1
.end method

.method public getWindowId()I
    .registers 2

    iget v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return v0
.end method

.method public hasExtras()Z
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    const/16 v0, 0x1f

    const/4 v1, 0x1

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    add-int v1, v2, v3

    return v1
.end method

.method public isAccessibilityFocused()Z
    .registers 2

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isCheckable()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isClickable()Z
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContentInvalid()Z
    .registers 2

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isContextClickable()Z
    .registers 2

    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isDismissable()Z
    .registers 2

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .registers 2

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility()Z
    .registers 2

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isLongClickable()Z
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isMultiLine()Z
    .registers 2

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .registers 2

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isShowingHintText()Z
    .registers 2

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isVisibleToUser()Z
    .registers 2

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public performAction(I)Z
    .registers 10

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    const/4 v7, 0x0

    move v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performAction(ILandroid/os/Bundle;)Z
    .registers 11

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x0

    return v0

    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Landroid/view/accessibility/AccessibilityInteractionClient;->performAccessibilityAction(IIJILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->clear()V

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_11

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo;->sNumInstancesInUse:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_11
    return-void
.end method

.method public refresh()Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public refresh(Landroid/os/Bundle;Z)Z
    .registers 12

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceSealed()V

    iget-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    invoke-direct {p0, v2, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->canPerformRequestOverConnection(J)Z

    move-result v2

    if-nez v2, :cond_d

    return v7

    :cond_d
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    iget v3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move v6, p2

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJZILandroid/os/Bundle;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    if-nez v0, :cond_20

    return v7

    :cond_20
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->init(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    const/4 v2, 0x1

    return v2
.end method

.method public refreshWithExtraData(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    const-string/jumbo v0, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->refresh(Landroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public removeAction(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionSingleton(I)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    return-void
.end method

.method public removeAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    if-nez p1, :cond_b

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAllActions()V
    .registers 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_9
    return-void
.end method

.method public removeChild(Landroid/view/View;)Z
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->removeChild(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public removeChild(Landroid/view/View;I)Z
    .registers 9

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v0, :cond_9

    return v5

    :cond_9
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v4

    :goto_f
    invoke-static {v4, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->indexOf(J)I

    move-result v1

    if-gez v1, :cond_1e

    return v5

    :cond_1a
    const v4, 0x7fffffff

    goto :goto_f

    :cond_1e
    invoke-virtual {v0, v1}, Landroid/util/LongArray;->remove(I)V

    const/4 v5, 0x1

    return v5
.end method

.method public setAccessibilityFocused(Z)V
    .registers 3

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setAvailableExtraData(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    return-void
.end method

.method public setBoundsInParent(Landroid/graphics/Rect;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setBoundsInScreen(Landroid/graphics/Rect;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public setCanOpenPopup(Z)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    const/16 v0, 0x2000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setCheckable(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setClickable(Z)V
    .registers 3

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    return-void
.end method

.method public setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    return-void
.end method

.method public setConnectionId(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_9

    :goto_6
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public setContentInvalid(Z)V
    .registers 3

    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setContextClickable(Z)V
    .registers 3

    const/high16 v0, 0x20000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setDismissable(Z)V
    .registers 3

    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setDrawingOrder(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    return-void
.end method

.method public setEditable(Z)V
    .registers 3

    const/16 v0, 0x1000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_9

    :goto_6
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public setFocusable(Z)V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setFocused(Z)V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-nez p1, :cond_9

    :goto_6
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    return-void

    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6
.end method

.method public setImportantForAccessibility(Z)V
    .registers 3

    const/high16 v0, 0x40000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setInputType(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    return-void
.end method

.method public setLabelFor(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V

    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_9
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    return-void

    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setLabeledBy(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V

    return-void
.end method

.method public setLabeledBy(Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_9
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    return-void

    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setLiveRegion(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    return-void
.end method

.method public setLongClickable(Z)V
    .registers 3

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setMaxTextLength(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    return-void
.end method

.method public setMovementGranularities(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    return-void
.end method

.method public setMultiLine(Z)V
    .registers 3

    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setPackageName(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;I)V

    return-void
.end method

.method public setParent(Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_9
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    return-void

    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setPassword(Z)V
    .registers 3

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    return-void
.end method

.method public setScrollable(Z)V
    .registers 3

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setSealed(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSealed:Z

    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setShowingHintText(Z)V
    .registers 3

    const/high16 v0, 0x100000

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v1

    :goto_9
    iput v1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_11
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    return-void

    :cond_18
    const v1, 0x7fffffff

    goto :goto_9

    :cond_1c
    const v0, 0x7fffffff

    goto :goto_11
.end method

.method public setSourceNodeId(JI)V
    .registers 5

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-wide p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    iput p3, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 15

    const/4 v9, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mOriginalText:Ljava/lang/CharSequence;

    instance-of v8, p1, Landroid/text/Spanned;

    if-eqz v8, :cond_5d

    move-object v8, p1

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v10

    const-class v11, Landroid/text/style/ClickableSpan;

    invoke-interface {v8, v12, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    array-length v8, v7

    if-lez v8, :cond_5d

    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_23
    array-length v8, v7

    if-ge v0, v8, :cond_30

    aget-object v2, v7, v0

    instance-of v8, v2, Landroid/text/style/AccessibilityClickableSpan;

    if-nez v8, :cond_30

    instance-of v8, v2, Landroid/text/style/AccessibilityURLSpan;

    if-eqz v8, :cond_33

    :cond_30
    iput-object v6, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-void

    :cond_33
    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v6, v2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {v6, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    instance-of v8, v2, Landroid/text/style/URLSpan;

    if-eqz v8, :cond_53

    new-instance v1, Landroid/text/style/AccessibilityURLSpan;

    check-cast v2, Landroid/text/style/URLSpan;

    invoke-direct {v1, v2}, Landroid/text/style/AccessibilityURLSpan;-><init>(Landroid/text/style/URLSpan;)V

    :goto_4d
    invoke-interface {v6, v1, v5, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_53
    new-instance v1, Landroid/text/style/AccessibilityClickableSpan;

    invoke-virtual {v2}, Landroid/text/style/ClickableSpan;->getId()I

    move-result v8

    invoke-direct {v1, v8}, Landroid/text/style/AccessibilityClickableSpan;-><init>(I)V

    goto :goto_4d

    :cond_5d
    if-nez p1, :cond_63

    move-object v8, v9

    :goto_60
    iput-object v8, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    return-void

    :cond_63
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {p1, v12, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_60
.end method

.method public setTextSelection(II)V
    .registers 3

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    iput p2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalAfter(Landroid/view/View;I)V

    return-void
.end method

.method public setTraversalAfter(Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_9
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    return-void

    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setTraversalBefore(Landroid/view/View;)V
    .registers 3

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setTraversalBefore(Landroid/view/View;I)V

    return-void
.end method

.method public setTraversalBefore(Landroid/view/View;I)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_9
    invoke-static {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->makeNodeId(II)J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    return-void

    :cond_10
    const v0, 0x7fffffff

    goto :goto_9
.end method

.method public setViewIdResourceName(Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->enforceNotSealed()V

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    return-void
.end method

.method public setVisibleToUser(Z)V
    .registers 3

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBooleanProperty(IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; boundsInParent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; boundsInScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; className: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; maxTextLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; contentDescription: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; viewIdResName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; checkable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isCheckable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; checked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; focusable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; focused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; selected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; clickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; longClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isLongClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; contextClickable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isContextClickable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; password: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; scrollable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isScrollable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; importantForAccessibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isImportantForAccessibility()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "; actions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 21

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v14

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v15

    if-eq v14, v15, :cond_17

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    or-long v10, v16, v14

    :cond_17
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_2d

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_2d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    if-eq v14, v15, :cond_3e

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_3e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_55

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_55
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_6c

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_6c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_83

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_83
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_9a

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_9a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    sget-object v16, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_b1

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_b1
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    if-eq v14, v15, :cond_c2

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_c2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d7

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_d7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_ec

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_ec
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_101

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_101
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_116

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_116
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    if-eq v14, v15, :cond_127

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_127
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    if-eq v14, v15, :cond_138

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_138
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    if-eq v14, v15, :cond_149

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_149
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_15e

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_15e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_173

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_173
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_188

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_188
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_19d

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_19d
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b2

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_1b2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1c7

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_1c7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1dc

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_1dc
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    if-eq v14, v15, :cond_1ed

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_1ed
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    if-eq v14, v15, :cond_1fe

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_1fe
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    if-eq v14, v15, :cond_20f

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_20f
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    if-eq v14, v15, :cond_220

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_220
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    if-eq v14, v15, :cond_231

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_231
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_246

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_246
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_25b

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_25b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_270

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_270
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_285

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_285
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    sget-object v15, Landroid/view/accessibility/AccessibilityNodeInfo;->DEFAULT:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget-object v15, v15, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-static {v14, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_29a

    invoke-static {v7}, Lcom/android/internal/util/BitUtils;->bitAt(I)J

    move-result-wide v14

    or-long/2addr v10, v14

    :cond_29a
    move v13, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v7, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x1

    invoke-static {v10, v11, v14}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_2b5

    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->isSealed()Z

    move-result v14

    if-eqz v14, :cond_3f6

    const/4 v14, 0x1

    :goto_2b0
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2b5
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_2c6

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mSourceNodeId:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2c6
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_2d7

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mWindowId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2d7
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_2e8

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mParentNodeId:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2e8
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_2f9

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabelForId:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    :cond_2f9
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_30a

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLabeledById:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    :cond_30a
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_31b

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalBefore:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    :cond_31b
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_32c

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTraversalAfter:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    :cond_32c
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_33d

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mConnectionId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_33d
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_351

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mChildNodeIds:Landroid/util/LongArray;

    if-nez v4, :cond_3f9

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_351
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_385

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInParent:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_385
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_3b9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBoundsInScreen:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_3b9
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_452

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    if-eqz v14, :cond_446

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_446

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_3de
    if-ge v9, v3, :cond_414

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v14

    if-eqz v14, :cond_411

    iget v14, v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->mSerializationFlag:I

    or-int/2addr v6, v14

    :goto_3f3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3de

    :cond_3f6
    const/4 v14, 0x0

    goto/16 :goto_2b0

    :cond_3f9
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    :goto_403
    if-ge v9, v5, :cond_351

    invoke-virtual {v4, v9}, Landroid/util/LongArray;->get(I)J

    move-result-wide v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_403

    :cond_411
    add-int/lit8 v12, v12, 0x1

    goto :goto_3f3

    :cond_414
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x0

    :goto_41f
    if-ge v9, v3, :cond_452

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->isDefaultStandardAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)Z

    move-result v14

    if-nez v14, :cond_443

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_443
    add-int/lit8 v9, v9, 0x1

    goto :goto_41f

    :cond_446
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_452
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_463

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMaxTextLength:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_463
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_474

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mMovementGranularities:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_474
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_485

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mBooleanProperties:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_485
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_496

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mPackageName:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_496
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_4a7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mClassName:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4a7
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_4b8

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4b8
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_4c9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mHintText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4c9
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_4da

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mError:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4da
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_4eb

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mContentDescription:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    :cond_4eb
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_4fc

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mViewIdResourceName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_4fc
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_50d

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionStart:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_50d
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_51e

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mTextSelectionEnd:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_51e
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_52f

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mInputType:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_52f
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_540

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mLiveRegion:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_540
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_551

    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mDrawingOrderInParent:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_551
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_562

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtraDataKeys:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    :cond_562
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_573

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mExtras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    :cond_573
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_5af

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getType()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMin()F

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeFloat(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getMax()F

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeFloat(F)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mRangeInfo:Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->getCurrent()F

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_5af
    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v11, v7}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_5ee

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z

    move-result v14

    if-eqz v14, :cond_64e

    const/4 v14, 0x1

    :goto_5dc
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getSelectionMode()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5ee
    add-int/lit8 v7, v8, 0x1

    invoke-static {v10, v11, v8}, Lcom/android/internal/util/BitUtils;->isBitSet(JI)Z

    move-result v14

    if-eqz v14, :cond_64a

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getRowSpan()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnIndex()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->getColumnSpan()I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isHeading()Z

    move-result v14

    if-eqz v14, :cond_650

    const/4 v14, 0x1

    :goto_635
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/accessibility/AccessibilityNodeInfo;->mCollectionItemInfo:Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->isSelected()Z

    move-result v14

    if-eqz v14, :cond_652

    const/4 v14, 0x1

    :goto_645
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    :cond_64a
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-void

    :cond_64e
    const/4 v14, 0x0

    goto :goto_5dc

    :cond_650
    const/4 v14, 0x0

    goto :goto_635

    :cond_652
    const/4 v14, 0x0

    goto :goto_645
.end method
