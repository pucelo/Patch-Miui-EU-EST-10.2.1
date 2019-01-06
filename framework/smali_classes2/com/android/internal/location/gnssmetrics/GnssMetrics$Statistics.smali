.class Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;
.super Ljava/lang/Object;
.source "GnssMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/gnssmetrics/GnssMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Statistics"
.end annotation


# instance fields
.field private count:I

.field private sum:D

.field private sumSquare:D

.field final synthetic this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->this$0:Lcom/android/internal/location/gnssmetrics/GnssMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;-><init>(Lcom/android/internal/location/gnssmetrics/GnssMetrics;)V

    return-void
.end method


# virtual methods
.method public addItem(D)V
    .registers 8

    iget v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    mul-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    return-void
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    return v0
.end method

.method public getMean()D
    .registers 5

    iget-wide v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iget v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getStandardDeviation()D
    .registers 9

    iget-wide v4, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iget v6, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    int-to-double v6, v6

    div-double v0, v4, v6

    mul-double/2addr v0, v0

    iget-wide v4, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    iget v6, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    int-to-double v6, v6

    div-double v2, v4, v6

    cmpl-double v4, v2, v0

    if-lez v4, :cond_1a

    sub-double v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4

    :cond_1a
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public reset()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->count:I

    iput-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sum:D

    iput-wide v2, p0, Lcom/android/internal/location/gnssmetrics/GnssMetrics$Statistics;->sumSquare:D

    return-void
.end method
