.class public Landroid/accessibilityservice/GestureDescription$StrokeDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeDescription"
.end annotation


# static fields
.field private static final INVALID_STROKE_ID:I = -0x1

.field static sIdCounter:I


# instance fields
.field mContinued:Z

.field mContinuedStrokeId:I

.field mEndTime:J

.field mId:I

.field mPath:Landroid/graphics/Path;

.field private mPathMeasure:Landroid/graphics/PathMeasure;

.field mStartTime:J

.field mTapLocation:[F

.field private mTimeToLengthConversion:F


# direct methods
.method public constructor <init>(Landroid/graphics/Path;JJ)V
    .registers 14

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;JJZ)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    iput-boolean p6, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    const-wide/16 v4, 0x0

    cmp-long v3, p4, v4

    if-lez v3, :cond_a3

    const/4 v3, 0x1

    :goto_f
    const-string/jumbo v4, "Duration must be positive"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long v3, p2, v4

    if-ltz v3, :cond_a6

    const/4 v3, 0x1

    :goto_1c
    const-string/jumbo v4, "Start time must not be negative"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    const-string/jumbo v4, "Path is empty"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_ab

    iget v3, v0, Landroid/graphics/RectF;->top:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_ab

    iget v3, v0, Landroid/graphics/RectF;->right:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_ab

    iget v3, v0, Landroid/graphics/RectF;->left:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_a9

    const/4 v3, 0x1

    :goto_54
    const-string/jumbo v4, "Path bounds must not be negative"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/PathMeasure;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_92

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2, p1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    new-instance v1, Landroid/graphics/PathMeasure;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    :cond_92
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v3

    if-eqz v3, :cond_ad

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Path has more than one contour"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a3
    const/4 v3, 0x0

    goto/16 :goto_f

    :cond_a6
    const/4 v3, 0x0

    goto/16 :goto_1c

    :cond_a9
    const/4 v3, 0x0

    goto :goto_54

    :cond_ab
    const/4 v3, 0x0

    goto :goto_54

    :cond_ad
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    iget-object v4, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-wide p2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    add-long v4, p2, p4

    iput-wide v4, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result v3

    long-to-float v4, p4

    div-float/2addr v3, v4

    iput v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    sget v3, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->sIdCounter:I

    iput v3, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return-void
.end method


# virtual methods
.method public continueStroke(Landroid/graphics/Path;JJZ)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .registers 15

    iget-boolean v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Only strokes marked willContinue can be continued"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;-><init>(Landroid/graphics/Path;JJZ)V

    iget v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    iput v1, v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return-object v0
.end method

.method public getContinuedStrokeId()I
    .registers 2

    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinuedStrokeId:I

    return v0
.end method

.method public getDuration()J
    .registers 5

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getId()I
    .registers 2

    iget v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mId:I

    return v0
.end method

.method getLength()F
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    return v0
.end method

.method public getPath()Landroid/graphics/Path;
    .registers 3

    new-instance v0, Landroid/graphics/Path;

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPath:Landroid/graphics/Path;

    invoke-direct {v0, v1}, Landroid/graphics/Path;-><init>(Landroid/graphics/Path;)V

    return-object v0
.end method

.method getPosForTime(J[F)Z
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    if-eqz v1, :cond_14

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    aget v1, v1, v3

    aput v1, p3, v3

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTapLocation:[F

    aget v1, v1, v2

    aput v1, p3, v2

    return v2

    :cond_14
    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v1, p1, v2

    if-nez v1, :cond_25

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {p0}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getLength()F

    move-result v2

    invoke-virtual {v1, v2, p3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v1

    return v1

    :cond_25
    iget v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mTimeToLengthConversion:F

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    sub-long v2, p1, v2

    long-to-float v2, v2

    mul-float v0, v1, v2

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mPathMeasure:Landroid/graphics/PathMeasure;

    invoke-virtual {v1, v0, p3, v4}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    move-result v1

    return v1
.end method

.method public getStartTime()J
    .registers 3

    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    return-wide v0
.end method

.method hasPointForTime(J)Z
    .registers 8

    const/4 v0, 0x0

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_e

    iget-wide v2, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v1, p1, v2

    if-gtz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public willContinue()Z
    .registers 2

    iget-boolean v0, p0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mContinued:Z

    return v0
.end method
