.class Landroid/os/statistics/PerfEvent$EndTimeComparator;
.super Ljava/lang/Object;
.source "PerfEvent.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EndTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/statistics/PerfEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/statistics/PerfEvent$EndTimeComparator;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/statistics/PerfEvent$EndTimeComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/os/statistics/PerfEvent;Landroid/os/statistics/PerfEvent;)I
    .registers 9

    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->getEndUptimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/statistics/PerfEvent;->getEndUptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_f

    return v0

    :cond_f
    invoke-virtual {p2}, Landroid/os/statistics/PerfEvent;->getBeginUptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/statistics/PerfEvent;->getBeginUptimeMillis()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    if-eqz v0, :cond_1e

    return v0

    :cond_1e
    iget-wide v2, p1, Landroid/os/statistics/PerfEvent;->eventSeq:J

    iget-wide v4, p2, Landroid/os/statistics/PerfEvent;->eventSeq:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Landroid/os/statistics/PerfEvent;

    check-cast p2, Landroid/os/statistics/PerfEvent;

    invoke-virtual {p0, p1, p2}, Landroid/os/statistics/PerfEvent$EndTimeComparator;->compare(Landroid/os/statistics/PerfEvent;Landroid/os/statistics/PerfEvent;)I

    move-result v0

    return v0
.end method
