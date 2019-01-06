.class Landroid/widget/OverScroller$SplineOverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/OverScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SplineOverScroller"
.end annotation


# static fields
.field private static final BALLISTIC:I = 0x2

.field private static final CUBIC:I = 0x1

.field private static DECELERATION_RATE:F = 0.0f

.field private static final END_TENSION:F = 1.0f

.field private static final GRAVITY:F = 2000.0f

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SPLINE:I = 0x0

.field private static final SPLINE_POSITION:[F

.field private static final SPLINE_TIME:[F

.field private static final START_TENSION:F = 0.5f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrVelocity:F

.field private mCurrentPosition:I

.field private mDeceleration:F

.field private mDecelerationScale:F

.field private mDuration:I

.field private mFinal:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mIsPerfLockAcquired:Z

.field private mOver:I

.field private mPerf:Landroid/util/BoostFramework;

.field private mPhysicalCoeff:F

.field private mSplineDistance:I

.field private mSplineDuration:I

.field private mStart:I

.field private mStartTime:J

.field private mState:I

.field private mTotalOverDistance:I

.field private mVelocity:I


# direct methods
.method static synthetic -get0(Landroid/widget/OverScroller$SplineOverScroller;)F
    .registers 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    return v0
.end method

.method static synthetic -get1(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return v0
.end method

.method static synthetic -get2(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return v0
.end method

.method static synthetic -get3(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/OverScroller$SplineOverScroller;)Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return v0
.end method

.method static synthetic -get5(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    return v0
.end method

.method static synthetic -get6(Landroid/widget/OverScroller$SplineOverScroller;)J
    .registers 3

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    return-wide v0
.end method

.method static synthetic -get7(Landroid/widget/OverScroller$SplineOverScroller;)I
    .registers 2

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    return v0
.end method

.method static synthetic -set0(Landroid/widget/OverScroller$SplineOverScroller;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return p1
.end method

.method static constructor <clinit>()V
    .registers 16

    const-wide v12, 0x3fe8f5c28f5c28f6L    # 0.78

    invoke-static {v12, v13}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    div-double/2addr v12, v14

    double-to-float v11, v12

    sput v11, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    :goto_25
    const/16 v11, 0x64

    if-ge v3, v11, :cond_ca

    int-to-float v11, v3

    const/high16 v12, 0x42c80000    # 100.0f

    div-float v0, v11, v12

    const/high16 v6, 0x3f800000    # 1.0f

    :goto_30
    sub-float v11, v6, v7

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v5, v7, v11

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v5

    const v12, 0x3e333333    # 0.175f

    mul-float/2addr v11, v12

    const v12, 0x3eb33334    # 0.35000002f

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_b8

    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    const/high16 v9, 0x3f800000    # 1.0f

    :goto_73
    sub-float v11, v9, v10

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float v8, v10, v11

    const/high16 v11, 0x40400000    # 3.0f

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v12, v11

    const-wide v14, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v11, v12, v14

    if-gez v11, :cond_c2

    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    const v13, 0x3e333333    # 0.175f

    mul-float/2addr v12, v13

    const v13, 0x3eb33334    # 0.35000002f

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_25

    :cond_b8
    cmpl-float v11, v4, v0

    if-lez v11, :cond_bf

    move v6, v5

    goto/16 :goto_30

    :cond_bf
    move v7, v5

    goto/16 :goto_30

    :cond_c2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_c8

    move v9, v8

    goto :goto_73

    :cond_c8
    move v10, v8

    goto :goto_73

    :cond_ca
    sget-object v11, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    sget-object v12, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0x64

    aput v13, v12, v14

    const/high16 v12, 0x3f800000    # 1.0f

    const/16 v13, 0x64

    aput v12, v11, v13

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationScale:F

    iput-object v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    iput-object p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float v0, v1, v2

    const v1, 0x43c10b3d

    mul-float/2addr v1, v0

    const v2, 0x3f570a3d    # 0.84f

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    iget-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-nez v1, :cond_3d

    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1}, Landroid/util/BoostFramework;-><init>()V

    iput-object v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    :cond_3d
    return-void
.end method

.method private adjustDuration(III)V
    .registers 16

    const/high16 v11, 0x42c80000    # 100.0f

    sub-int v2, p2, p1

    sub-int v1, p3, p1

    int-to-float v9, v1

    int-to-float v10, v2

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v9, v11, v6

    float-to-int v0, v9

    const/16 v9, 0x64

    if-ge v0, v9, :cond_37

    int-to-float v9, v0

    div-float v7, v9, v11

    add-int/lit8 v9, v0, 0x1

    int-to-float v9, v9

    div-float v8, v9, v11

    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    aget v3, v9, v0

    sget-object v9, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_TIME:[F

    add-int/lit8 v10, v0, 0x1

    aget v4, v9, v10

    sub-float v9, v6, v7

    sub-float v10, v8, v7

    div-float/2addr v9, v10

    sub-float v10, v4, v3

    mul-float/2addr v9, v10

    add-float v5, v3, v9

    iget v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-float v9, v9

    mul-float/2addr v9, v5

    float-to-int v9, v9

    iput v9, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    :cond_37
    return-void
.end method

.method private fitOnBounceCurve(III)V
    .registers 14

    neg-int v5, p3

    int-to-float v5, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float v2, v5, v6

    int-to-float v5, p3

    int-to-float v6, p3

    mul-float v4, v5, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v4, v5

    iget v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float v0, v5, v6

    sub-int v5, p2, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v1, v5

    add-float v5, v0, v1

    float-to-double v6, v5

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v8, v5

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    iget-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-float v5, v3, v2

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v8

    float-to-int v5, v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    iput-wide v6, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method private static getDeceleration(I)F
    .registers 2

    if-lez p0, :cond_5

    const/high16 v0, -0x3b060000    # -2000.0f

    :goto_4
    return v0

    :cond_5
    const/high16 v0, 0x44fa0000    # 2000.0f

    goto :goto_4
.end method

.method private getSplineDeceleration(I)D
    .registers 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(I)D
    .registers 10

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(I)I
    .registers 10

    invoke-direct {p0, p1}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineDeceleration(I)D

    move-result-wide v2

    sget v4, Landroid/widget/OverScroller$SplineOverScroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double v0, v4, v6

    div-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method private onEdgeReached()V
    .registers 7

    const/high16 v5, 0x40000000    # 2.0f

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v4, v4

    mul-float v2, v3, v4

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    mul-float/2addr v3, v5

    div-float v0, v2, v3

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2d

    neg-float v3, v1

    mul-float/2addr v3, v2

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-float v0, v3

    :cond_2d
    float-to-int v3, v0

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    if-lez v4, :cond_4b

    :goto_39
    float-to-int v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    neg-int v3, v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void

    :cond_4b
    neg-float v0, v0

    goto :goto_39
.end method

.method private startAfterEdge(IIII)V
    .registers 19

    move/from16 v0, p2

    if-le p1, v0, :cond_15

    move/from16 v0, p3

    if-ge p1, v0, :cond_15

    const-string/jumbo v2, "OverScroller"

    const-string/jumbo v3, "startAfterEdge called from a valid position"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void

    :cond_15
    move/from16 v0, p3

    if-le p1, v0, :cond_2d

    const/4 v11, 0x1

    :goto_1a
    if-eqz v11, :cond_2f

    move/from16 v8, p3

    :goto_1e
    sub-int v10, p1, v8

    mul-int v2, v10, p4

    if-ltz v2, :cond_32

    const/4 v9, 0x1

    :goto_25
    if-eqz v9, :cond_34

    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startBounceAfterEdge(III)V

    :goto_2c
    return-void

    :cond_2d
    const/4 v11, 0x0

    goto :goto_1a

    :cond_2f
    move/from16 v8, p2

    goto :goto_1e

    :cond_32
    const/4 v9, 0x0

    goto :goto_25

    :cond_34
    move/from16 v0, p4

    invoke-direct {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v12

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v2, v12, v2

    if-lez v2, :cond_59

    if-eqz v11, :cond_54

    move/from16 v5, p2

    :goto_47
    if-eqz v11, :cond_56

    move v6, p1

    :goto_4a
    iget v7, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move-object v2, p0

    move v3, p1

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/widget/OverScroller$SplineOverScroller;->fling(IIIII)V

    goto :goto_2c

    :cond_54
    move v5, p1

    goto :goto_47

    :cond_56
    move/from16 v6, p3

    goto :goto_4a

    :cond_59
    move/from16 v0, p4

    invoke-direct {p0, p1, v8, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_2c
.end method

.method private startBounceAfterEdge(III)V
    .registers 6

    if-nez p3, :cond_18

    sub-int v0, p1, p2

    :goto_4
    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/OverScroller$SplineOverScroller;->fitOnBounceCurve(III)V

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    return-void

    :cond_18
    move v0, p3

    goto :goto_4
.end method

.method private startSpringback(III)V
    .registers 10

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    const/4 v1, 0x1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    sub-int v0, p1, p2

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v1

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    neg-int v1, v0

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    int-to-double v2, v0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    mul-double/2addr v2, v4

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    return-void
.end method


# virtual methods
.method continueWhenFinished()Z
    .registers 6

    const/4 v4, 0x0

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v0, :pswitch_data_42

    :goto_6
    invoke-virtual {p0}, Landroid/widget/OverScroller$SplineOverScroller;->update()Z

    const/4 v0, 0x1

    return v0

    :pswitch_b
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v0, v1, :cond_30

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v0}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_6

    :cond_30
    return v4

    :pswitch_31
    iget-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v0, v1, v4}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_6

    :pswitch_41
    return v4

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_b
        :pswitch_41
        :pswitch_31
    .end packed-switch
.end method

.method continueWhenFinished(Z)Z
    .registers 11

    const/4 v8, 0x0

    const/4 v0, 0x0

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    packed-switch v3, :pswitch_data_62

    :goto_7
    invoke-virtual {p0, v0}, Landroid/widget/OverScroller$SplineOverScroller;->update(Z)Z

    const/4 v3, 0x1

    return v3

    :pswitch_c
    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    if-ge v3, v4, :cond_2f

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {v3}, Landroid/widget/OverScroller$SplineOverScroller;->getDeceleration(I)F

    move-result v3

    iput v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    invoke-direct {p0}, Landroid/widget/OverScroller$SplineOverScroller;->onEdgeReached()V

    goto :goto_7

    :cond_2f
    return v8

    :pswitch_30
    if-eqz p1, :cond_50

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mTotalOverDistance:I

    int-to-float v4, v4

    div-float v2, v3, v4

    float-to-double v4, v2

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    mul-double/2addr v4, v6

    double-to-float v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v1, v3, v4

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationScale:F

    const/4 v0, 0x1

    :cond_50
    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    invoke-direct {p0, v3, v4, v8}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_7

    :pswitch_60
    return v8

    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_c
        :pswitch_60
        :pswitch_30
    .end packed-switch
.end method

.method extendDuration(I)V
    .registers 8

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method finish()V
    .registers 2

    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    :cond_10
    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method fling(IIIII)V
    .registers 11

    const/4 v4, 0x0

    iput p5, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    int-to-float v2, p2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iget-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    if-eqz v2, :cond_27

    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    if-eqz v2, :cond_27

    iget-object v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v2}, Landroid/util/BoostFramework;->perfLockRelease()I

    iput-boolean v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    :cond_27
    if-gt p1, p4, :cond_2b

    if-ge p1, p3, :cond_2f

    :cond_2b
    invoke-direct {p0, p1, p3, p4, p2}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    return-void

    :cond_2f
    iput v4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_41

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDuration(I)I

    move-result v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    invoke-direct {p0, p2}, Landroid/widget/OverScroller$SplineOverScroller;->getSplineFlingDistance(I)D

    move-result-wide v0

    :cond_41
    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v2, v2

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    add-int/2addr v2, p1

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-ge v2, p3, :cond_5d

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p3}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    :cond_5d
    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    if-le v2, p4, :cond_6a

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-direct {p0, v2, v3, p4}, Landroid/widget/OverScroller$SplineOverScroller;->adjustDuration(III)V

    iput p4, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    :cond_6a
    return-void
.end method

.method notifyEdgeReached(III)V
    .registers 6

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    if-nez v0, :cond_12

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, p2, v0}, Landroid/widget/OverScroller$SplineOverScroller;->startAfterEdge(IIII)V

    :cond_12
    return-void
.end method

.method setDecelerationScale(F)V
    .registers 2

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDecelerationScale:F

    return-void
.end method

.method setFinalPosition(I)V
    .registers 3

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    return-void
.end method

.method setFriction(F)V
    .registers 2

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFlingFriction:F

    return-void
.end method

.method setTotalOverDistance(I)V
    .registers 2

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mTotalOverDistance:I

    return-void
.end method

.method springback(III)Z
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    if-ge p1, p2, :cond_1e

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    :cond_19
    :goto_19
    iget-boolean v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1e
    if-le p1, p3, :cond_19

    invoke-direct {p0, p1, p3, v2}, Landroid/widget/OverScroller$SplineOverScroller;->startSpringback(III)V

    goto :goto_19
.end method

.method startScroll(III)V
    .registers 7

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinished:Z

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iput p1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    add-int v0, p1, p2

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    iput p3, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    iput v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    return-void
.end method

.method update()Z
    .registers 26

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v22, v0

    sub-long v6, v18, v22

    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-nez v21, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v21, v0

    if-lez v21, :cond_1d

    const/16 v21, 0x1

    :goto_1c
    return v21

    :cond_1d
    const/16 v21, 0x0

    goto :goto_1c

    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v21, v6, v22

    if-lez v21, :cond_32

    const/16 v21, 0x0

    return v21

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    move-object/from16 v21, v0

    if-eqz v21, :cond_71

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    move/from16 v21, v0

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_71

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v22, v0

    const/16 v23, 0x1080

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    :cond_71
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1b8

    :goto_7c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v21, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/16 v21, 0x1

    return v21

    :pswitch_96
    long-to-float v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v21, v21, v14

    move/from16 v0, v21

    float-to-int v12, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x64

    move/from16 v0, v21

    if-ge v12, v0, :cond_df

    int-to-float v0, v12

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v16, v21, v22

    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v17, v21, v22

    sget-object v21, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v5, v21, v12

    sget-object v21, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v22, v12, 0x1

    aget v8, v21, v22

    sub-float v21, v8, v5

    sub-float v22, v17, v16

    div-float v20, v21, v22

    sub-float v21, v14, v16

    mul-float v21, v21, v20

    add-float v9, v5, v21

    :cond_df
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v9

    move/from16 v0, v21

    float-to-double v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x447a0000    # 1000.0f

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_7c

    :pswitch_115
    long-to-float v0, v6

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v14, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v22, v0

    mul-float v22, v22, v14

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v22, v0

    mul-float v22, v22, v14

    mul-float v22, v22, v14

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v10, v0

    goto/16 :goto_7c

    :pswitch_159
    long-to-float v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    mul-float v15, v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v13

    const/high16 v22, 0x40400000    # 3.0f

    mul-float v22, v22, v15

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v14

    mul-float v23, v23, v15

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v13

    const/high16 v22, 0x40c00000    # 6.0f

    mul-float v21, v21, v22

    neg-float v0, v14

    move/from16 v22, v0

    add-float v22, v22, v15

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_7c

    :pswitch_data_1b8
    .packed-switch 0x0
        :pswitch_96
        :pswitch_159
        :pswitch_115
    .end packed-switch
.end method

.method update(Z)Z
    .registers 27

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStartTime:J

    move-wide/from16 v22, v0

    sub-long v6, v18, v22

    if-nez p1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    cmp-long v21, v6, v22

    if-lez v21, :cond_20

    const/16 v21, 0x0

    return v21

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    move/from16 v21, v0

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mIsPerfLockAcquired:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mPerf:Landroid/util/BoostFramework;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v22, v0

    const/16 v23, 0x1080

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v22

    move/from16 v3, v24

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    :cond_5f
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mState:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_1a6

    :goto_6a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    move/from16 v21, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    const/16 v21, 0x1

    return v21

    :pswitch_84
    long-to-float v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    const/high16 v21, 0x42c80000    # 100.0f

    mul-float v21, v21, v14

    move/from16 v0, v21

    float-to-int v12, v0

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    const/16 v21, 0x64

    move/from16 v0, v21

    if-ge v12, v0, :cond_cd

    int-to-float v0, v12

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v16, v21, v22

    add-int/lit8 v21, v12, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x42c80000    # 100.0f

    div-float v17, v21, v22

    sget-object v21, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    aget v5, v21, v12

    sget-object v21, Landroid/widget/OverScroller$SplineOverScroller;->SPLINE_POSITION:[F

    add-int/lit8 v22, v12, 0x1

    aget v8, v21, v22

    sub-float v21, v8, v5

    sub-float v22, v17, v16

    div-float v20, v21, v22

    sub-float v21, v14, v16

    mul-float v21, v21, v20

    add-float v9, v5, v21

    :cond_cd
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v9

    move/from16 v0, v21

    float-to-double v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDistance:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mSplineDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    const/high16 v22, 0x447a0000    # 1000.0f

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_6a

    :pswitch_103
    long-to-float v0, v6

    move/from16 v21, v0

    const/high16 v22, 0x447a0000    # 1000.0f

    div-float v14, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v22, v0

    mul-float v22, v22, v14

    add-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDeceleration:F

    move/from16 v22, v0

    mul-float v22, v22, v14

    mul-float v22, v22, v14

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    add-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v10, v0

    goto/16 :goto_6a

    :pswitch_147
    long-to-float v0, v6

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mDuration:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v14, v21, v22

    mul-float v15, v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mVelocity:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->signum(F)F

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v13

    const/high16 v22, 0x40400000    # 3.0f

    mul-float v22, v22, v15

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v23, v23, v14

    mul-float v23, v23, v15

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/OverScroller$SplineOverScroller;->mOver:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v13

    const/high16 v22, 0x40c00000    # 6.0f

    mul-float v21, v21, v22

    neg-float v0, v14

    move/from16 v22, v0

    add-float v22, v22, v15

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/OverScroller$SplineOverScroller;->mCurrVelocity:F

    goto/16 :goto_6a

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_84
        :pswitch_147
        :pswitch_103
    .end packed-switch
.end method

.method updateScroll(F)V
    .registers 5

    iget v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    iget v1, p0, Landroid/widget/OverScroller$SplineOverScroller;->mFinal:I

    iget v2, p0, Landroid/widget/OverScroller$SplineOverScroller;->mStart:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/widget/OverScroller$SplineOverScroller;->mCurrentPosition:I

    return-void
.end method
