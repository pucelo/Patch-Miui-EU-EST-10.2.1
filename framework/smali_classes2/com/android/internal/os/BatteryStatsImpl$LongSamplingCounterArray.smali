.class public Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
.super Landroid/os/BatteryStats$LongCounterArray;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongSamplingCounterArray"
.end annotation


# instance fields
.field public mCounts:[J

.field public mLoadedCounts:[J

.field public mPluggedCounts:[J

.field final mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

.field public mUnpluggedCounts:[J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/BatteryStats$LongCounterArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-virtual {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->add(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method private static copyArray([J[J)[J
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    if-nez p1, :cond_a

    array-length v0, p0

    new-array p1, v0, [J

    :cond_a
    array-length v0, p0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    return-object p1
.end method

.method private static fillArray([JJ)V
    .registers 4

    if-eqz p0, :cond_5

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    :cond_5
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .registers 3

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;Landroid/os/Parcel;)V

    return-object v0

    :cond_c
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readSummaryFromParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;
    .registers 4

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;-><init>(Lcom/android/internal/os/BatteryStatsImpl$TimeBase;)V

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->readSummaryFromParcelLocked(Landroid/os/Parcel;)V

    return-object v0

    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private readSummaryFromParcelLocked(Landroid/os/Parcel;)V
    .registers 4

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    return-void
.end method

.method private static subtract([J[J)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    :goto_4
    array-length v1, p0

    if-ge v0, v1, :cond_11

    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    sub-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_11
    return-void
.end method

.method private writeSummaryToParcelLocked(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method

.method public static writeSummaryToParcelLocked(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeSummaryToParcelLocked(Landroid/os/Parcel;)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9
.end method

.method private writeToParcel(Landroid/os/Parcel;)V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method

.method public static writeToParcel(Landroid/os/Parcel;Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;)V
    .registers 3

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-direct {p1, p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->writeToParcel(Landroid/os/Parcel;)V

    :goto_9
    return-void

    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9
.end method


# virtual methods
.method public addCountLocked([J)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v1, :cond_14

    array-length v1, p1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    :cond_14
    const/4 v0, 0x0

    :goto_15
    array-length v1, p1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    aget-wide v2, v1, v0

    aget-wide v4, p1, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_24
    return-void
.end method

.method public detach()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->remove(Lcom/android/internal/os/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public getCountsLocked(I)[J
    .registers 5

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mTimeBase:Lcom/android/internal/os/BatteryStatsImpl$TimeBase;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl$TimeBase;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    :goto_a
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->subtract([J[J)V

    :cond_17
    :goto_17
    return-object v0

    :cond_18
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    goto :goto_a

    :cond_1b
    if-eqz p1, :cond_17

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->subtract([J[J)V

    goto :goto_17
.end method

.method public getSize()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    array-length v0, v0

    goto :goto_5
.end method

.method public logState(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mLoadedCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mUnpluggedCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mPluggedCounts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeStarted(JJJ)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    return-void
.end method

.method public onTimeStopped(JJJ)V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->copyArray([J[J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    return-void
.end method

.method public reset(Z)V
    .registers 6

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mCounts:[J

    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->fillArray([JJ)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mLoadedCounts:[J

    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->fillArray([JJ)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mPluggedCounts:[J

    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->fillArray([JJ)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->mUnpluggedCounts:[J

    invoke-static {v0, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->fillArray([JJ)V

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsImpl$LongSamplingCounterArray;->detach()V

    :cond_1b
    return-void
.end method
