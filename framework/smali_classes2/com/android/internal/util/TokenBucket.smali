.class public Lcom/android/internal/util/TokenBucket;
.super Ljava/lang/Object;
.source "TokenBucket.java"


# instance fields
.field private mAvailable:I

.field private final mCapacity:I

.field private final mFillDelta:I

.field private mLastFill:J


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2, p2}, Lcom/android/internal/util/TokenBucket;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "deltaMs must be strictly positive"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    const-string/jumbo v0, "capacity must be strictly positive"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    return-void
.end method

.method private fill()V
    .registers 7

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    sub-long v4, v2, v4

    long-to-int v0, v4

    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    iget v4, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    add-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    iput-wide v2, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    return-void
.end method

.method private scaledTime()J
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/android/internal/util/TokenBucket;->mFillDelta:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public available()I
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return v0
.end method

.method public capacity()I
    .registers 2

    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    return v0
.end method

.method public get(I)I
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    if-gtz p1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-le p1, v1, :cond_10

    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    iput v2, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return v0

    :cond_10
    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    return p1
.end method

.method public get()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/util/TokenBucket;->get(I)I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public has()Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->fill()V

    iget v1, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    if-lez v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    return v0
.end method

.method public reset(I)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    iget v0, p0, Lcom/android/internal/util/TokenBucket;->mCapacity:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/util/TokenBucket;->mAvailable:I

    invoke-direct {p0}, Lcom/android/internal/util/TokenBucket;->scaledTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/util/TokenBucket;->mLastFill:J

    return-void
.end method
