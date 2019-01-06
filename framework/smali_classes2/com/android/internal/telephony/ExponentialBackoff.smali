.class public Lcom/android/internal/telephony/ExponentialBackoff;
.super Ljava/lang/Object;
.source "ExponentialBackoff.java"


# instance fields
.field private mCurrentDelayMs:J

.field private mHandler:Landroid/os/Handler;

.field private mMaximumDelayMs:J

.field private mMultiplier:I

.field private mRetryCounter:I

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartDelayMs:J


# direct methods
.method public constructor <init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    iput-wide p1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    iput-wide p3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    iput p5, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    iput-object p6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iput-object p7, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(JJILandroid/os/Looper;Ljava/lang/Runnable;)V
    .registers 17

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/telephony/ExponentialBackoff;-><init>(JJILandroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentDelay()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    return-wide v0
.end method

.method public notifyFailed()V
    .registers 11

    iget v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMaximumDelayMs:J

    iget-wide v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    long-to-double v4, v4

    iget v6, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mMultiplier:I

    int-to-double v6, v6

    iget v8, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    long-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v4, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public start()V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    iget-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mStartDelayMs:J

    iput-wide v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mCurrentDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRetryCounter:I

    iget-object v0, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/ExponentialBackoff;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
