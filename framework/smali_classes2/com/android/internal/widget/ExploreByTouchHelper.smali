.class public abstract Lcom/android/internal/widget/ExploreByTouchHelper;
.super Landroid/view/View$AccessibilityDelegate;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private mTempArray:Landroid/util/IntArray;

.field private mTempGlobalRect:[I

.field private mTempParentRect:Landroid/graphics/Rect;

.field private mTempScreenRect:Landroid/graphics/Rect;

.field private mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/widget/ExploreByTouchHelper;I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const/high16 v0, -0x80000000

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-nez p1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "View may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-object p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v0

    if-eqz v0, :cond_16

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/high16 v0, 0x10000

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v0, 0x1

    return v0

    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 6

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    sget-object v1, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_29

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    return-object v0
.end method

.method private createNode(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 3

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :pswitch_8
    invoke-direct {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private createNodeForChild(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ExploreByTouchHelper;->ensureTempRects()V

    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    iget-object v6, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v7, Lcom/android/internal/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    sget-object v7, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_34

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_34

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_34
    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    sget-object v7, Lcom/android/internal/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_48

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_48
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActions()I

    move-result v0

    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_59

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_59
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_66

    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_66
    iget-object v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v7, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    iget-object v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    iget v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v7, p1, :cond_a8

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    sget-object v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_89
    invoke-direct {p0, v5}, Lcom/android/internal/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_95

    invoke-virtual {v1, v9}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_95
    iget-object v7, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v4, v8

    aget v3, v4, v9

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v6, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v1, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    return-object v1

    :cond_a8
    invoke-virtual {v1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->setAccessibilityFocused(Z)V

    sget-object v7, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v1, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_89
.end method

.method private createNodeForHost()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 8

    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    if-nez v5, :cond_33

    new-instance v5, Landroid/util/IntArray;

    invoke-direct {v5}, Landroid/util/IntArray;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    :goto_1d
    iget-object v4, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Landroid/util/IntArray;)V

    if-lez v3, :cond_39

    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v5

    if-lez v5, :cond_39

    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Views cannot have both real and virtual children"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_33
    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempArray:Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->clear()V

    goto :goto_1d

    :cond_39
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3e
    if-ge v1, v0, :cond_4c

    iget-object v5, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_4c
    return-object v2
.end method

.method private ensureTempRects()V
    .registers 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    return-void
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 8

    const/4 v5, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_9
    return v5

    :cond_a
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I

    move-result v3

    if-eqz v3, :cond_13

    return v5

    :cond_13
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    :goto_19
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_35

    move-object v1, v2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_2f

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_30

    :cond_2f
    return v5

    :cond_30
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_19

    :cond_35
    if-nez v2, :cond_38

    return v5

    :cond_38
    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    if-nez v3, :cond_43

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    :cond_43
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_4e

    return v5

    :cond_4e
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v3

    return v3
.end method

.method private isAccessibilityFocused(I)Z
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private manageFocusForChild(II)Z
    .registers 4

    sparse-switch p2, :sswitch_data_10

    const/4 v0, 0x0

    return v0

    :sswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0

    :sswitch_a
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x40 -> :sswitch_5
        0x80 -> :sswitch_a
    .end sparse-switch
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .registers 5

    packed-switch p1, :pswitch_data_e

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :pswitch_8
    invoke-direct {p0, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5

    sparse-switch p2, :sswitch_data_e

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    :sswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->manageFocusForChild(II)Z

    move-result v0

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x40 -> :sswitch_8
        0x80 -> :sswitch_8
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1d

    :cond_1c
    return v3

    :cond_1d
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v1

    if-nez v1, :cond_3f

    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_30

    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v2, 0x10000

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :cond_30
    iput p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    iget-object v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const v1, 0x8000

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/4 v1, 0x1

    return v1

    :cond_3f
    return v3
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4

    iget v1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v1, p1, :cond_5

    return-void

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    iput p1, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    const/16 v1, 0x100

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v1, 0x1

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_17

    :cond_16
    return v2

    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_3c

    :pswitch_1e
    return v2

    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    if-eq v0, v5, :cond_31

    :goto_30
    return v1

    :cond_31
    move v1, v2

    goto :goto_30

    :pswitch_33
    iget v3, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    if-eq v3, v5, :cond_3b

    invoke-direct {p0, v5}, Lcom/android/internal/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    return v1

    :cond_3b
    return v2

    :pswitch_data_3c
    .packed-switch 0x7
        :pswitch_1f
        :pswitch_1e
        :pswitch_1f
        :pswitch_33
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Lcom/android/internal/widget/ExploreByTouchHelper;Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;)V

    iput-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mNodeProvider:Lcom/android/internal/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Landroid/util/IntArray;)V
.end method

.method public invalidateRoot()V
    .registers 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public invalidateVirtualView(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    return-void
.end method

.method public invalidateVirtualView(II)V
    .registers 6

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_22

    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_22

    const/16 v2, 0x800

    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_22
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    return-void
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method protected onPopulateNodeForHost(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
.end method

.method public sendEventForVirtualView(II)Z
    .registers 7

    const/4 v3, 0x0

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_f

    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_10

    :cond_f
    return v3

    :cond_10
    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_19

    return v3

    :cond_19
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method
