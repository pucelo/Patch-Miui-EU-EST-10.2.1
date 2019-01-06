.class public final Landroid/accessibilityservice/GestureDescription;
.super Ljava/lang/Object;
.source "GestureDescription.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$Builder;,
        Landroid/accessibilityservice/GestureDescription$GestureStep;,
        Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;,
        Landroid/accessibilityservice/GestureDescription$StrokeDescription;,
        Landroid/accessibilityservice/GestureDescription$TouchPoint;
    }
.end annotation


# static fields
.field private static final MAX_GESTURE_DURATION_MS:J = 0xea60L

.field private static final MAX_STROKE_COUNT:I = 0xa


# instance fields
.field private final mStrokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempPos:[F


# direct methods
.method static synthetic -wrap0(Landroid/accessibilityservice/GestureDescription;J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/accessibilityservice/GestureDescription;->getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/accessibilityservice/GestureDescription;J)J
    .registers 6

    invoke-direct {p0, p1, p2}, Landroid/accessibilityservice/GestureDescription;->getNextKeyPointAtLeast(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(Ljava/util/List;)J
    .registers 3

    invoke-static {p0}, Landroid/accessibilityservice/GestureDescription;->getTotalDuration(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Landroid/accessibilityservice/GestureDescription;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/accessibilityservice/GestureDescription;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static getMaxGestureDuration()J
    .registers 2

    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public static getMaxStrokeCount()I
    .registers 1

    const/16 v0, 0xa

    return v0
.end method

.method private getNextKeyPointAtLeast(J)J
    .registers 14

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :goto_6
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v6, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v1, v6, v2

    if-gez v1, :cond_21

    cmp-long v1, v6, p1

    if-ltz v1, :cond_21

    move-wide v2, v6

    :cond_21
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v4, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v1, v4, v2

    if-gez v1, :cond_34

    cmp-long v1, v4, p1

    if-ltz v1, :cond_34

    move-wide v2, v4

    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_37
    const-wide v8, 0x7fffffffffffffffL

    cmp-long v1, v2, v8

    if-nez v1, :cond_42

    const-wide/16 v2, -0x1

    :cond_42
    return-wide v2
.end method

.method private getPointsForTime(J[Landroid/accessibilityservice/GestureDescription$TouchPoint;)I
    .registers 15

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_78

    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    invoke-virtual {v2, p1, p2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->hasPointForTime(J)Z

    move-result v3

    if-eqz v3, :cond_6d

    aget-object v3, p3, v1

    invoke-virtual {v2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getId()I

    move-result v6

    iput v6, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    aget-object v3, p3, v1

    invoke-virtual {v2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    move-result v6

    iput v6, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    aget-object v6, p3, v1

    invoke-virtual {v2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getContinuedStrokeId()I

    move-result v3

    if-gez v3, :cond_72

    iget-wide v8, v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mStartTime:J

    cmp-long v3, p1, v8

    if-nez v3, :cond_70

    move v3, v4

    :goto_39
    iput-boolean v3, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    aget-object v6, p3, v1

    invoke-virtual {v2}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->willContinue()Z

    move-result v3

    if-nez v3, :cond_76

    iget-wide v8, v2, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    cmp-long v3, p1, v8

    if-nez v3, :cond_74

    move v3, v4

    :goto_4a
    iput-boolean v3, v6, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    invoke-virtual {v2, p1, p2, v3}, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->getPosForTime(J[F)Z

    aget-object v3, p3, v1

    iget-object v6, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v3, p3, v1

    iget-object v6, p0, Landroid/accessibilityservice/GestureDescription;->mTempPos:[F

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float v6, v6

    iput v6, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    add-int/lit8 v1, v1, 0x1

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_70
    move v3, v5

    goto :goto_39

    :cond_72
    move v3, v5

    goto :goto_39

    :cond_74
    move v3, v5

    goto :goto_4a

    :cond_76
    move v3, v5

    goto :goto_4a

    :cond_78
    return v1
.end method

.method private static getTotalDuration(Ljava/util/List;)J
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$StrokeDescription;",
            ">;)J"
        }
    .end annotation

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v0, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_18

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    iget-wide v4, v1, Landroid/accessibilityservice/GestureDescription$StrokeDescription;->mEndTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_18
    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public getStroke(I)Landroid/accessibilityservice/GestureDescription$StrokeDescription;
    .registers 3

    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$StrokeDescription;

    return-object v0
.end method

.method public getStrokeCount()I
    .registers 2

    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription;->mStrokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
