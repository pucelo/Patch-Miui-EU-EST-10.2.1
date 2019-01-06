.class public abstract Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "OverflowArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final OVERFLOW_NAME:Ljava/lang/String; = "*overflow*"


# instance fields
.field mActiveOverflow:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/MutableInt;",
            ">;"
        }
    .end annotation
.end field

.field mCurOverflow:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mLastCleanupTime:J

.field mLastClearTime:J

.field mLastOverflowFinishTime:J

.field mLastOverflowTime:J

.field final mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field final mUid:I

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    if-nez p1, :cond_5

    const-string/jumbo p1, ""

    :cond_5
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "*overflow*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    :cond_15
    return-void
.end method

.method public cleanup()V
    .registers 6

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_15

    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    :cond_15
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cleaning up with no active overflow, but have overflow entry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v3, "*overflow*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    iput-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    :cond_51
    :goto_51
    return-void

    :cond_52
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v1, "*overflow*"

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_51

    :cond_63
    const-string/jumbo v0, "BatteryStatsImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cleaning up with active overflow, but no overflow entry: cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " map="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v3, "*overflow*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51
.end method

.method public clear()V
    .registers 4

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    return-void
.end method

.method public getMap()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public abstract instantiateObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public startObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_5

    const-string/jumbo p1, ""

    :cond_5
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    return-object v1

    :cond_e
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v3, :cond_56

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/MutableInt;

    if-eqz v2, :cond_56

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-nez v1, :cond_4f

    const-string/jumbo v3, "BatteryStatsImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Have active overflow "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " but null overflow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v4, "*overflow*"

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    iget v3, v2, Landroid/util/MutableInt;->value:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/util/MutableInt;->value:I

    return-object v1

    :cond_56
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-static {}, Lcom/android/internal/os/BatteryStatsImpl;->-get0()I

    move-result v3

    if-lt v0, v3, :cond_91

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-nez v1, :cond_74

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    const-string/jumbo v4, "*overflow*"

    invoke-virtual {v3, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_74
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-nez v3, :cond_7f

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    :cond_7f
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    new-instance v4, Landroid/util/MutableInt;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/MutableInt;-><init>(I)V

    invoke-virtual {v3, p1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    return-object v1

    :cond_91
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->instantiateObject()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public stopObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    if-nez p1, :cond_8

    const-string/jumbo p1, ""

    :cond_8
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    return-object v2

    :cond_11
    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    if-eqz v5, :cond_39

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/MutableInt;

    if-eqz v3, :cond_39

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    if-eqz v2, :cond_39

    iget v5, v3, Landroid/util/MutableInt;->value:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Landroid/util/MutableInt;->value:I

    iget v5, v3, Landroid/util/MutableInt;->value:I

    if-gtz v5, :cond_38

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    :cond_38
    return-object v2

    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to find object for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " in uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mUid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " mapsize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " activeoverflow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mActiveOverflow:Landroid/util/ArrayMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, " curoverflow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mCurOverflow:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_8d

    const-string/jumbo v5, " lastOverflowTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowTime:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_8d
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_9f

    const-string/jumbo v5, " lastOverflowFinishTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastOverflowFinishTime:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_9f
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_b1

    const-string/jumbo v5, " lastClearTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastClearTime:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_b1
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_c3

    const-string/jumbo v5, " lastCleanupTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsImpl$OverflowArrayMap;->mLastCleanupTime:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_c3
    const-string/jumbo v5, "BatteryStatsImpl"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method
