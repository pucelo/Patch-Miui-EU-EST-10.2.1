.class public Lcom/android/internal/policy/DividerSnapAlgorithm;
.super Ljava/lang/Object;
.source "DividerSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    }
.end annotation


# static fields
.field private static final MIN_DISMISS_VELOCITY_DP_PER_SECOND:I = 0x258

.field private static final MIN_FLING_VELOCITY_DP_PER_SECOND:I = 0x190

.field private static final SNAP_FIXED_RATIO:I = 0x1

.field private static final SNAP_MODE_16_9:I = 0x0

.field private static final SNAP_MODE_MINIMIZED:I = 0x3

.field private static final SNAP_ONLY_1_1:I = 0x2


# instance fields
.field private final mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mDisplayHeight:I

.field private final mDisplayWidth:I

.field private final mDividerSize:I

.field private final mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mFixedRatio:F

.field private final mInsets:Landroid/graphics/Rect;

.field private mIsHorizontalDivision:Z

.field private final mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field private final mMinDismissVelocityPxPerSecond:F

.field private final mMinFlingVelocityPxPerSecond:F

.field private final mMinimalSizeResizableTask:I

.field private final mSnapMode:I

.field private final mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskHeightInMinimizedMode:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;Z)V
    .registers 11

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43c80000    # 400.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44160000    # 600.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    iput p4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    iput p2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iput p3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iput-boolean p5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p7, :cond_a4

    const/4 v0, 0x3

    :goto_38
    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    const v0, 0x1130004

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    const v0, 0x105006c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    const v0, 0x1050195

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    invoke-direct {p0, p5}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateTargets(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iput-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-void

    :cond_a4
    const v0, 0x10e0040

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_38
.end method

.method private addFixedDivisionTargets(ZI)V
    .registers 10

    if-eqz p1, :cond_29

    iget-object v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->top:I

    :goto_6
    if-eqz p1, :cond_2e

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v5, v6

    :goto_10
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFixedRatio:F

    sub-int v6, v1, v3

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int v2, v5, v6

    add-int v4, v3, v2

    sub-int v5, v1, v2

    iget v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v5, v6

    invoke-direct {p0, p1, v4, v0, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    return-void

    :cond_29
    iget-object v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v5, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :cond_2e
    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    goto :goto_10
.end method

.method private addMiddleTarget(Z)V
    .registers 7

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    invoke-static {p1, v1, v2, v3, v4}, Lcom/android/internal/policy/DockedDividerUtils;->calculateMiddlePosition(ZLandroid/graphics/Rect;III)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addMinimizedTarget(Z)V
    .registers 6

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTaskHeightInMinimizedMode:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    if-nez p1, :cond_f

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    :cond_f
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v0, v3}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNonDismissingTargets(ZIII)V
    .registers 7

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v0, p2, v0

    invoke-direct {p0, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, p4, v0

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    add-int/2addr v1, p3

    sub-int/2addr v0, v1

    invoke-direct {p0, p3, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->maybeAddTarget(II)V

    return-void
.end method

.method private addRatio16_9Targets(ZI)V
    .registers 13

    if-eqz p1, :cond_39

    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->top:I

    :goto_6
    if-eqz p1, :cond_3e

    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v8, v9

    :goto_10
    if-eqz p1, :cond_47

    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->left:I

    :goto_16
    if-eqz p1, :cond_4c

    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v9

    :goto_20
    sub-int v8, v2, v6

    int-to-float v8, v8

    const/high16 v9, 0x3f100000    # 0.5625f

    mul-float v3, v9, v8

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    add-int v7, v5, v4

    sub-int v8, v1, v4

    iget v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v8, v9

    invoke-direct {p0, p1, v7, v0, p2}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addNonDismissingTargets(ZIII)V

    return-void

    :cond_39
    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :cond_3e
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int v1, v8, v9

    goto :goto_10

    :cond_47
    iget-object v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    goto :goto_16

    :cond_4c
    iget v8, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    iget-object v9, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v8, v9

    goto :goto_20
.end method

.method private calculateTargets(Z)V
    .registers 10

    const v7, 0x3eb33333    # 0.35f

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_36

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    :goto_c
    if-eqz p1, :cond_39

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    :goto_12
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    neg-int v4, v4

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    neg-int v5, v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mSnapMode:I

    packed-switch v2, :pswitch_data_4e

    :goto_28
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    sub-int v4, v0, v1

    const/4 v5, 0x2

    invoke-direct {v3, v4, v0, v5, v7}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(IIIF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_36
    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    goto :goto_c

    :cond_39
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_12

    :pswitch_3e
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addRatio16_9Targets(ZI)V

    goto :goto_28

    :pswitch_42
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addFixedDivisionTargets(ZI)V

    goto :goto_28

    :pswitch_46
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMiddleTarget(Z)V

    goto :goto_28

    :pswitch_4a
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->addMinimizedTarget(Z)V

    goto :goto_28

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_42
        :pswitch_46
        :pswitch_4a
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;Landroid/graphics/Rect;)Lcom/android/internal/policy/DividerSnapAlgorithm;
    .registers 13

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v7, Landroid/view/DisplayInfo;

    invoke-direct {v7}, Landroid/view/DisplayInfo;-><init>()V

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v6}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    new-instance v0, Lcom/android/internal/policy/DividerSnapAlgorithm;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v7, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v4, v8, 0x2

    sub-int v4, v9, v4

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    if-ne v10, v5, :cond_4f

    :goto_4a
    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/DividerSnapAlgorithm;-><init>(Landroid/content/res/Resources;IIIZLandroid/graphics/Rect;)V

    return-object v0

    :cond_4f
    move v5, v6

    goto :goto_4a
.end method

.method private getEndInset()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method private getStartInset()I
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method private maybeAddTarget(II)V
    .registers 6

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt p2, v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p1, v2}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;-><init>(III)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method private snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 10

    const/4 v3, -0x1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v4, :cond_2e

    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v6, v5, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v0, v6

    if-eqz p2, :cond_25

    invoke-static {v5}, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->-get0(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)F

    move-result v6

    div-float/2addr v0, v6

    :cond_25
    cmpg-float v6, v0, v2

    if-gez v6, :cond_2b

    move v3, v1

    move v2, v0

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_2e
    iget-object v6, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v6
.end method


# virtual methods
.method public calculateDismissingFraction(I)F
    .registers 5

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_1d

    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    invoke-direct {p0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getStartInset()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    return v0

    :cond_1d
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_39

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v2, v2, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    :cond_39
    const/4 v0, 0x0

    return v0
.end method

.method public calculateNonDismissingSnapTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    :cond_c
    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v0, v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    :cond_13
    return-object v0
.end method

.method public calculateSnapTarget(IF)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0
.end method

.method public calculateSnapTarget(IFZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_10

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    neg-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_1f

    iget v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinDismissVelocityPxPerSecond:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    :cond_1f
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinFlingVelocityPxPerSecond:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2e

    invoke-direct {p0, p1, p3}, Lcom/android/internal/policy/DividerSnapAlgorithm;->snap(IZ)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    return-object v0

    :cond_2e
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_36

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    :cond_36
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public cycleNonDismissTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 8

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2f

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v0

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v1, v2, :cond_27

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v2

    :cond_27
    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-ne v1, v2, :cond_2e

    iget-object v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v2

    :cond_2e
    return-object v1

    :cond_2f
    return-object p1
.end method

.method public getClosestDismissTarget(I)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 4

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-ge p1, v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    if-le p1, v0, :cond_12

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v1, v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->position:I

    sub-int/2addr v1, p1

    if-ge v0, v1, :cond_22

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissEndTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDismissStartTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v0
.end method

.method public getNextTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 5

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    :cond_1e
    return-object p1
.end method

.method public getPreviousTarget(Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;
    .registers 5

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_16

    if-lez v0, :cond_16

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mTargets:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    return-object v1

    :cond_16
    return-object p1
.end method

.method public isFirstSplitTargetAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mFirstSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isLastSplitTargetAvailable()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mLastSplitTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget-object v1, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMiddleTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isSplitScreenFeasible()Z
    .registers 7

    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    iget-boolean v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v4, :cond_21

    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    :goto_c
    iget-boolean v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mIsHorizontalDivision:Z

    if-eqz v4, :cond_26

    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayHeight:I

    :goto_12
    sub-int v4, v2, v1

    sub-int/2addr v4, v3

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDividerSize:I

    sub-int v0, v4, v5

    div-int/lit8 v4, v0, 0x2

    iget v5, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mMinimalSizeResizableTask:I

    if-lt v4, v5, :cond_29

    const/4 v4, 0x1

    :goto_20
    return v4

    :cond_21
    iget-object v4, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mInsets:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->right:I

    goto :goto_c

    :cond_26
    iget v2, p0, Lcom/android/internal/policy/DividerSnapAlgorithm;->mDisplayWidth:I

    goto :goto_12

    :cond_29
    const/4 v4, 0x0

    goto :goto_20
.end method
