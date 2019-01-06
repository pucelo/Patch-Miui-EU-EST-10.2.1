.class public Lcom/android/internal/policy/PipSnapAlgorithm;
.super Ljava/lang/Object;
.source "PipSnapAlgorithm.java"


# static fields
.field private static final CORNER_MAGNET_THRESHOLD:F = 0.3f

.field private static final SNAP_MODE_CORNERS_AND_SIDES:I = 0x1

.field private static final SNAP_MODE_CORNERS_ONLY:I = 0x0

.field private static final SNAP_MODE_EDGE:I = 0x2

.field private static final SNAP_MODE_EDGE_MAGNET_CORNERS:I = 0x3

.field private static final SNAP_MODE_LONG_EDGE_MAGNET_CORNERS:I = 0x4


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultSizePercent:F

.field private final mDefaultSnapMode:I

.field private final mFlingDeceleration:I

.field private mIsMinimized:Z

.field private final mMaxAspectRatioForMinSize:F

.field private final mMinAspectRatioForMinSize:F

.field private final mMinimizedVisibleSize:I

.field private mOrientation:I

.field private final mSnapGravities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSnapMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSnapMode:I

    iput v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    const v1, 0x105015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    const v1, 0x105003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    const v1, 0x105003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v1, v2, v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    iget-object v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105015c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    invoke-virtual {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    return-void
.end method

.method private calculateSnapTargets()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    packed-switch v0, :pswitch_data_6a

    :goto_a
    :pswitch_a
    return-void

    :pswitch_b
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_53

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_26
    :pswitch_26
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_53
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_26
        :pswitch_b
        :pswitch_a
        :pswitch_26
        :pswitch_26
    .end packed-switch
.end method

.method private distanceToPoint(Landroid/graphics/Point;II)F
    .registers 6

    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, p3

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method private findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 11

    const/4 v0, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v4, 0x0

    array-length v5, p3

    :goto_6
    if-ge v4, v5, :cond_17

    aget-object v3, p3, v4

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v1

    cmpg-float v6, v1, v2

    if-gez v6, :cond_14

    move-object v0, v3

    move v2, v1

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_17
    return-object v0
.end method

.method private findX(FFF)I
    .registers 5

    sub-float v0, p3, p2

    div-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method private findY(FFF)I
    .registers 5

    mul-float v0, p1, p3

    add-float/2addr v0, p2

    float-to-int v0, v0

    return v0
.end method

.method private snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 14

    iget v7, p2, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    iget v9, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    if-eqz v7, :cond_27

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void

    :cond_27
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v7, p2, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v7, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_66

    iget v7, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_61

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    :goto_59
    if-ne v6, v3, :cond_73

    iget v7, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3, v7, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_60
    return-void

    :cond_61
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_59

    :cond_66
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_59

    :cond_73
    if-ne v6, v5, :cond_7b

    iget v7, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3, v0, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_60

    :cond_7b
    if-ne v6, v4, :cond_83

    iget v7, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p3, v7, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_60

    :cond_83
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p3, v0, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_60
.end method


# virtual methods
.method public applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .registers 7

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-gt v0, v1, :cond_18

    iget v0, p4, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_17
    return-void

    :cond_18
    iget v0, p3, Landroid/graphics/Point;->x:I

    iget v1, p4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_17
.end method

.method public applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V
    .registers 9

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, p3, v2

    if-gez v1, :cond_1b

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    add-int v0, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_1a
    return-void

    :cond_1b
    cmpg-float v1, p3, v3

    if-gez v1, :cond_31

    sub-float/2addr p3, v2

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    add-int v0, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1a

    :cond_31
    cmpg-float v1, p3, v4

    if-gez v1, :cond_48

    sub-float/2addr p3, v3

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-float/2addr v2, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1a

    :cond_48
    sub-float/2addr p3, v4

    iget v1, p2, Landroid/graphics/Rect;->top:I

    sub-float/2addr v2, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int v0, v1, v2

    iget v1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1a
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mSnapMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mMinimizedVisibleSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinimizedVisibleSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mIsMinimized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 16

    new-instance v3, Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_26

    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_95

    :cond_26
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [Landroid/graphics/Point;

    const/4 v8, 0x0

    :goto_34
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_63

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    :cond_63
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v11}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v10, v0, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->distanceToPoint(Landroid/graphics/Point;II)F

    move-result v7

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e99999a    # 0.3f

    mul-float v12, v0, v1

    cmpg-float v0, v7, v12

    if-gez v0, :cond_91

    iget v0, v10, Landroid/graphics/Point;->x:I

    iget v1, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    :goto_90
    return-object v9

    :cond_91
    invoke-direct {p0, p2, p1, v9}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_90

    :cond_95
    iget v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9e

    invoke-direct {p0, p2, p1, v9}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_90

    :cond_9e
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [Landroid/graphics/Point;

    const/4 v8, 0x0

    :goto_ac
    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_db

    iget-object v0, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapGravities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    new-instance v0, Landroid/graphics/Point;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v2, v6, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    aput-object v0, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_ac

    :cond_db
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, v11}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestPoint(II[Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v10

    iget v0, v10, Landroid/graphics/Point;->x:I

    iget v1, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_90
.end method

.method public findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;
    .registers 14

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    iget v0, v6, Landroid/graphics/Point;->x:I

    iget v1, v6, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-virtual {p0, p1, v7}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getEdgeIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Point;
    .registers 30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_ee

    const/4 v12, 0x1

    :goto_f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    div-float v14, p4, p3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v14

    sub-float v19, v20, v21

    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    new-instance v11, Landroid/graphics/Point;

    invoke-direct {v11}, Landroid/graphics/Point;-><init>()V

    const/16 v20, 0x0

    cmpl-float v20, p3, v20

    if-lez v20, :cond_f1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    :goto_41
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->findY(FFF)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Landroid/graphics/Point;->y:I

    const/16 v20, 0x0

    cmpl-float v20, p4, v20

    if-lez v20, :cond_f9

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    :goto_6e
    move/from16 v0, v20

    iput v0, v11, Landroid/graphics/Point;->y:I

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->findX(FFF)I

    move-result v20

    move/from16 v0, v20

    iput v0, v11, Landroid/graphics/Point;->x:I

    if-eqz v12, :cond_110

    const/16 v20, 0x0

    cmpl-float v20, p3, v20

    if-lez v20, :cond_101

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    :goto_9f
    if-lez v13, :cond_144

    if-eqz v12, :cond_136

    move-object/from16 v0, p5

    iget v15, v0, Landroid/graphics/Point;->y:I

    :goto_a7
    if-eqz v12, :cond_13c

    iget v10, v11, Landroid/graphics/Point;->y:I

    :goto_ab
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    if-ge v15, v4, :cond_140

    if-ge v10, v4, :cond_140

    :cond_b3
    if-eqz v12, :cond_183

    move/from16 v20, p3

    :goto_b7
    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    sub-double v20, v22, v20

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/PipSnapAlgorithm;->mFlingDeceleration:I

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    div-int v5, v20, v21

    invoke-static {v5, v13}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v12, :cond_18a

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v21, p3, v21

    if-lez v21, :cond_187

    :goto_e7
    add-int v20, v20, v5

    move/from16 v0, v20

    iput v0, v11, Landroid/graphics/Point;->x:I

    :goto_ed
    return-object v11

    :cond_ee
    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_f1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    goto/16 :goto_41

    :cond_f9
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    goto/16 :goto_6e

    :cond_101
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    goto :goto_9f

    :cond_110
    const/16 v20, 0x0

    cmpl-float v20, p4, v20

    if-lez v20, :cond_126

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    goto/16 :goto_9f

    :cond_126
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v13, v20, v21

    goto/16 :goto_9f

    :cond_136
    move-object/from16 v0, p5

    iget v15, v0, Landroid/graphics/Point;->x:I

    goto/16 :goto_a7

    :cond_13c
    iget v10, v11, Landroid/graphics/Point;->x:I

    goto/16 :goto_ab

    :cond_140
    if-le v15, v4, :cond_144

    if-gt v10, v4, :cond_b3

    :cond_144
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v17

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v22, v22, v18

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    iget v0, v11, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v17

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    move/from16 v22, v0

    sub-int v22, v22, v18

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmpl-double v20, v8, v20

    if-nez v20, :cond_1a0

    return-object v11

    :cond_183
    move/from16 v20, p4

    goto/16 :goto_b7

    :cond_187
    neg-int v5, v5

    goto/16 :goto_e7

    :cond_18a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v21, p4, v21

    if-lez v21, :cond_19e

    :goto_196
    add-int v20, v20, v5

    move/from16 v0, v20

    iput v0, v11, Landroid/graphics/Point;->y:I

    goto/16 :goto_ed

    :cond_19e
    neg-int v5, v5

    goto :goto_196

    :cond_1a0
    const-wide/16 v20, 0x0

    cmpl-double v20, v6, v20

    if-nez v20, :cond_1a7

    return-object v16

    :cond_1a7
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    cmpl-double v20, v20, v22

    if-lez v20, :cond_1b4

    :goto_1b3
    return-object v11

    :cond_1b4
    move-object/from16 v11, v16

    goto :goto_1b3
.end method

.method public getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .registers 8

    invoke-virtual {p3, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p4

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public getSizeForAspectRatio(FFII)Landroid/util/Size;
    .registers 14

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v6, v3

    iget v7, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mDefaultSizePercent:F

    mul-float/2addr v6, v7

    invoke-static {p2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    float-to-int v1, v6

    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMinAspectRatioForMinSize:F

    cmpg-float v6, p1, v6

    if-lez v6, :cond_1b

    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    cmpl-float v6, p1, v6

    if-lez v6, :cond_34

    :cond_1b
    cmpg-float v6, p1, v8

    if-gtz v6, :cond_2c

    move v4, v1

    int-to-float v6, v1

    div-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_26
    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v4, v0}, Landroid/util/Size;-><init>(II)V

    return-object v6

    :cond_2c
    move v0, v1

    int-to-float v6, v1

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_26

    :cond_34
    iget v6, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mMaxAspectRatioForMinSize:F

    int-to-float v7, v1

    mul-float v5, v6, v7

    int-to-float v6, v1

    invoke-static {v5, v6}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    mul-float v6, v2, v2

    mul-float v7, p1, p1

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v0, v6

    int-to-float v6, v0

    mul-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v4

    goto :goto_26
.end method

.method public getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .registers 9

    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->snapRectToClosestEdge(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float v2, v3, v4

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    if-ne v3, v4, :cond_2b

    return v2

    :cond_2b
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->right:I

    if-ne v3, v4, :cond_34

    add-float v3, v5, v0

    return v3

    :cond_34
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v3, v4, :cond_40

    sub-float v3, v5, v2

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    return v3

    :cond_40
    sub-float v3, v5, v0

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v3, v4

    return v3
.end method

.method public onConfigurationChanged()V
    .registers 3

    iget-object v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mOrientation:I

    const v1, 0x10e0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mSnapMode:I

    invoke-direct {p0}, Lcom/android/internal/policy/PipSnapAlgorithm;->calculateSnapTargets()V

    return-void
.end method

.method public setMinimized(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/policy/PipSnapAlgorithm;->mIsMinimized:Z

    return-void
.end method
