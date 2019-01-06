.class public final Landroid/location/GnssClock;
.super Ljava/lang/Object;
.source "GnssClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssClock$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:I = 0x8

.field private static final HAS_BIAS_UNCERTAINTY:I = 0x10

.field private static final HAS_DRIFT:I = 0x20

.field private static final HAS_DRIFT_UNCERTAINTY:I = 0x40

.field private static final HAS_FULL_BIAS:I = 0x4

.field private static final HAS_LEAP_SECOND:I = 0x1

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_TIME_UNCERTAINTY:I = 0x2


# instance fields
.field private mBiasNanos:D

.field private mBiasUncertaintyNanos:D

.field private mDriftNanosPerSecond:D

.field private mDriftUncertaintyNanosPerSecond:D

.field private mFlags:I

.field private mFullBiasNanos:J

.field private mHardwareClockDiscontinuityCount:I

.field private mLeapSecond:I

.field private mTimeNanos:J

.field private mTimeUncertaintyNanos:D


# direct methods
.method static synthetic -set0(Landroid/location/GnssClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GnssClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GnssClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GnssClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GnssClock;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mFlags:I

    return p1
.end method

.method static synthetic -set5(Landroid/location/GnssClock;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide p1
.end method

.method static synthetic -set6(Landroid/location/GnssClock;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return p1
.end method

.method static synthetic -set7(Landroid/location/GnssClock;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return p1
.end method

.method static synthetic -set8(Landroid/location/GnssClock;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GnssClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssClock$1;

    invoke-direct {v0}, Landroid/location/GnssClock$1;-><init>()V

    sput-object v0, Landroid/location/GnssClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    return-void
.end method

.method private initialize()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetLeapSecond()V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssClock;->setTimeNanos(J)V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetTimeUncertaintyNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetFullBiasNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetBiasUncertaintyNanos()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftNanosPerSecond()V

    invoke-virtual {p0}, Landroid/location/GnssClock;->resetDriftUncertaintyNanosPerSecond()V

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, Landroid/location/GnssClock;->setHardwareClockDiscontinuityCount(I)V

    return-void
.end method

.method private isFlagSet(I)Z
    .registers 3

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private resetFlag(I)V
    .registers 4

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .registers 3

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBiasNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-wide v0
.end method

.method public getBiasUncertaintyNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-wide v0
.end method

.method public getDriftNanosPerSecond()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-wide v0
.end method

.method public getDriftUncertaintyNanosPerSecond()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-wide v0
.end method

.method public getFullBiasNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-wide v0
.end method

.method public getHardwareClockDiscontinuityCount()I
    .registers 2

    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return v0
.end method

.method public getLeapSecond()I
    .registers 2

    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return v0
.end method

.method public getTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-wide v0
.end method

.method public getTimeUncertaintyNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-wide v0
.end method

.method public hasBiasNanos()Z
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyNanos()Z
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftNanosPerSecond()Z
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyNanosPerSecond()Z
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasNanos()Z
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyNanos()Z
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/location/GnssClock;->initialize()V

    return-void
.end method

.method public resetBiasNanos()V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-void
.end method

.method public resetBiasUncertaintyNanos()V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-void
.end method

.method public resetDriftNanosPerSecond()V
    .registers 3

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-void
.end method

.method public resetDriftUncertaintyNanosPerSecond()V
    .registers 3

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-void
.end method

.method public resetFullBiasNanos()V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-void
.end method

.method public resetLeapSecond()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return-void
.end method

.method public resetTimeUncertaintyNanos()V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-void
.end method

.method public set(Landroid/location/GnssClock;)V
    .registers 4

    iget v0, p1, Landroid/location/GnssClock;->mFlags:I

    iput v0, p0, Landroid/location/GnssClock;->mFlags:I

    iget v0, p1, Landroid/location/GnssClock;->mLeapSecond:I

    iput v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    iget-wide v0, p1, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    iget-wide v0, p1, Landroid/location/GnssClock;->mFullBiasNanos:J

    iput-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    iget-wide v0, p1, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    iget-wide v0, p1, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    iget v0, p1, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    iput v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return-void
.end method

.method public setBiasNanos(D)V
    .registers 4

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasNanos:D

    return-void
.end method

.method public setBiasUncertaintyNanos(D)V
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    return-void
.end method

.method public setDriftNanosPerSecond(D)V
    .registers 4

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    return-void
.end method

.method public setDriftUncertaintyNanosPerSecond(D)V
    .registers 4

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    return-void
.end method

.method public setFullBiasNanos(J)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    return-void
.end method

.method public setHardwareClockDiscontinuityCount(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    return-void
.end method

.method public setLeapSecond(I)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput p1, p0, Landroid/location/GnssClock;->mLeapSecond:I

    return-void
.end method

.method public setTimeNanos(J)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeNanos:J

    return-void
.end method

.method public setTimeUncertaintyNanos(D)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GnssClock;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 14

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    const-string/jumbo v1, "   %-15s = %s\n"

    const-string/jumbo v2, "   %-15s = %-25s   %-26s = %s\n"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GnssClock:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v3, "LeapSecond"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasLeapSecond()Z

    move-result v3

    if-eqz v3, :cond_102

    iget v3, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_29
    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "TimeNanos"

    aput-object v3, v6, v7

    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v10

    const-string/jumbo v3, "TimeUncertaintyNanos"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasTimeUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_105

    iget-wide v8, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_56
    aput-object v3, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v3, "FullBiasNanos"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasFullBiasNanos()Z

    move-result v3

    if-eqz v3, :cond_108

    iget-wide v8, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_75
    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "BiasNanos"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasNanos()Z

    move-result v3

    if-eqz v3, :cond_10b

    iget-wide v8, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_95
    aput-object v3, v6, v10

    const-string/jumbo v3, "BiasUncertaintyNanos"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasBiasUncertaintyNanos()Z

    move-result v3

    if-eqz v3, :cond_10d

    iget-wide v8, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_a8
    aput-object v3, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "DriftNanosPerSecond"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftNanosPerSecond()Z

    move-result v3

    if-eqz v3, :cond_10f

    iget-wide v8, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_c8
    aput-object v3, v6, v10

    const-string/jumbo v3, "DriftUncertaintyNanosPerSecond"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GnssClock;->hasDriftUncertaintyNanosPerSecond()Z

    move-result v3

    if-eqz v3, :cond_db

    iget-wide v8, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_db
    aput-object v4, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-15s = %s\n"

    new-array v4, v11, [Ljava/lang/Object;

    const-string/jumbo v5, "HardwareClockDiscontinuityCount"

    aput-object v5, v4, v7

    iget v5, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_102
    move-object v3, v4

    goto/16 :goto_29

    :cond_105
    move-object v3, v4

    goto/16 :goto_56

    :cond_108
    move-object v3, v4

    goto/16 :goto_75

    :cond_10b
    move-object v3, v4

    goto :goto_95

    :cond_10d
    move-object v3, v4

    goto :goto_a8

    :cond_10f
    move-object v3, v4

    goto :goto_c8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/location/GnssClock;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssClock;->mLeapSecond:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mTimeUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mFullBiasNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mBiasUncertaintyNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssClock;->mDriftUncertaintyNanosPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssClock;->mHardwareClockDiscontinuityCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
