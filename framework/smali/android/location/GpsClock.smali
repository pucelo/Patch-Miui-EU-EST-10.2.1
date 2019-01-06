.class public Landroid/location/GpsClock;
.super Ljava/lang/Object;
.source "GpsClock.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsClock$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsClock;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_BIAS:S = 0x8s

.field private static final HAS_BIAS_UNCERTAINTY:S = 0x10s

.field private static final HAS_DRIFT:S = 0x20s

.field private static final HAS_DRIFT_UNCERTAINTY:S = 0x40s

.field private static final HAS_FULL_BIAS:S = 0x4s

.field private static final HAS_LEAP_SECOND:S = 0x1s

.field private static final HAS_NO_FLAGS:S = 0x0s

.field private static final HAS_TIME_UNCERTAINTY:S = 0x2s

.field public static final TYPE_GPS_TIME:B = 0x2t

.field public static final TYPE_LOCAL_HW_TIME:B = 0x1t

.field public static final TYPE_UNKNOWN:B


# instance fields
.field private mBiasInNs:D

.field private mBiasUncertaintyInNs:D

.field private mDriftInNsPerSec:D

.field private mDriftUncertaintyInNsPerSec:D

.field private mFlags:S

.field private mFullBiasInNs:J

.field private mLeapSecond:S

.field private mTimeInNs:J

.field private mTimeUncertaintyInNs:D

.field private mType:B


# direct methods
.method static synthetic -set0(Landroid/location/GpsClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GpsClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GpsClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GpsClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GpsClock;S)S
    .registers 2

    iput-short p1, p0, Landroid/location/GpsClock;->mFlags:S

    return p1
.end method

.method static synthetic -set5(Landroid/location/GpsClock;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide p1
.end method

.method static synthetic -set6(Landroid/location/GpsClock;S)S
    .registers 2

    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return p1
.end method

.method static synthetic -set7(Landroid/location/GpsClock;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/GpsClock;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GpsClock;B)B
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GpsClock$1;

    invoke-direct {v0}, Landroid/location/GpsClock$1;-><init>()V

    sput-object v0, Landroid/location/GpsClock;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    return-void
.end method

.method private getTypeString()Ljava/lang/String;
    .registers 3

    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_23
    const-string/jumbo v0, "Unknown"

    return-object v0

    :pswitch_27
    const-string/jumbo v0, "GpsTime"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "LocalHwClock"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2b
        :pswitch_27
    .end packed-switch
.end method

.method private initialize()V
    .registers 3

    const/4 v0, 0x0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetLeapSecond()V

    invoke-virtual {p0, v0}, Landroid/location/GpsClock;->setType(B)V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsClock;->setTimeInNs(J)V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetTimeUncertaintyInNs()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetFullBiasInNs()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasInNs()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetBiasUncertaintyInNs()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftInNsPerSec()V

    invoke-virtual {p0}, Landroid/location/GpsClock;->resetDriftUncertaintyInNsPerSec()V

    return-void
.end method

.method private isFlagSet(S)Z
    .registers 3

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private resetFlag(S)V
    .registers 4

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    not-int v1, p1

    and-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method

.method private setFlag(S)V
    .registers 3

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    or-int/2addr v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getBiasInNs()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-wide v0
.end method

.method public getBiasUncertaintyInNs()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-wide v0
.end method

.method public getDriftInNsPerSec()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-wide v0
.end method

.method public getDriftUncertaintyInNsPerSec()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-wide v0
.end method

.method public getFullBiasInNs()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-wide v0
.end method

.method public getLeapSecond()S
    .registers 2

    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return v0
.end method

.method public getTimeInNs()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-wide v0
.end method

.method public getTimeUncertaintyInNs()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-wide v0
.end method

.method public getType()B
    .registers 2

    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    return v0
.end method

.method public hasBiasInNs()Z
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasBiasUncertaintyInNs()Z
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftInNsPerSec()Z
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasDriftUncertaintyInNsPerSec()Z
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasFullBiasInNs()Z
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasLeapSecond()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public hasTimeUncertaintyInNs()Z
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->isFlagSet(S)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/location/GpsClock;->initialize()V

    return-void
.end method

.method public resetBiasInNs()V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-void
.end method

.method public resetBiasUncertaintyInNs()V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-void
.end method

.method public resetDriftInNsPerSec()V
    .registers 3

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-void
.end method

.method public resetDriftUncertaintyInNsPerSec()V
    .registers 3

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public resetFullBiasInNs()V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-void
.end method

.method public resetLeapSecond()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return-void
.end method

.method public resetTimeUncertaintyInNs()V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->resetFlag(S)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-void
.end method

.method public set(Landroid/location/GpsClock;)V
    .registers 4

    iget-short v0, p1, Landroid/location/GpsClock;->mFlags:S

    iput-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    iget-short v0, p1, Landroid/location/GpsClock;->mLeapSecond:S

    iput-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    iget-byte v0, p1, Landroid/location/GpsClock;->mType:B

    iput-byte v0, p0, Landroid/location/GpsClock;->mType:B

    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    iget-wide v0, p1, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    iget-wide v0, p1, Landroid/location/GpsClock;->mFullBiasInNs:J

    iput-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    iget-wide v0, p1, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    iget-wide v0, p1, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    iput-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public setBiasInNs(D)V
    .registers 4

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasInNs:D

    return-void
.end method

.method public setBiasUncertaintyInNs(D)V
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    return-void
.end method

.method public setDriftInNsPerSec(D)V
    .registers 4

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    return-void
.end method

.method public setDriftUncertaintyInNsPerSec(D)V
    .registers 4

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    return-void
.end method

.method public setFullBiasInNs(J)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    return-void
.end method

.method public setLeapSecond(S)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-short p1, p0, Landroid/location/GpsClock;->mLeapSecond:S

    return-void
.end method

.method public setTimeInNs(J)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeInNs:J

    return-void
.end method

.method public setTimeUncertaintyInNs(D)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsClock;->setFlag(S)V

    iput-wide p1, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    return-void
.end method

.method public setType(B)V
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsClock;->mType:B

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

    const-string/jumbo v3, "GpsClock:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "   %-15s = %s\n"

    new-array v5, v11, [Ljava/lang/Object;

    const-string/jumbo v6, "Type"

    aput-object v6, v5, v7

    invoke-direct {p0}, Landroid/location/GpsClock;->getTypeString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v3, "LeapSecond"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasLeapSecond()Z

    move-result v3

    if-eqz v3, :cond_100

    iget-short v3, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    :goto_40
    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "TimeInNs"

    aput-object v3, v6, v7

    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v10

    const-string/jumbo v3, "TimeUncertaintyInNs"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasTimeUncertaintyInNs()Z

    move-result v3

    if-eqz v3, :cond_103

    iget-wide v8, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_6d
    aput-object v3, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %s\n"

    new-array v6, v11, [Ljava/lang/Object;

    const-string/jumbo v3, "FullBiasInNs"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasFullBiasInNs()Z

    move-result v3

    if-eqz v3, :cond_106

    iget-wide v8, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_8c
    aput-object v3, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "BiasInNs"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasInNs()Z

    move-result v3

    if-eqz v3, :cond_108

    iget-wide v8, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_ac
    aput-object v3, v6, v10

    const-string/jumbo v3, "BiasUncertaintyInNs"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasBiasUncertaintyInNs()Z

    move-result v3

    if-eqz v3, :cond_10a

    iget-wide v8, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_bf
    aput-object v3, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-15s = %-25s   %-26s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "DriftInNsPerSec"

    aput-object v3, v6, v7

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftInNsPerSec()Z

    move-result v3

    if-eqz v3, :cond_10c

    iget-wide v8, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_df
    aput-object v3, v6, v10

    const-string/jumbo v3, "DriftUncertaintyInNsPerSec"

    aput-object v3, v6, v11

    invoke-virtual {p0}, Landroid/location/GpsClock;->hasDriftUncertaintyInNsPerSec()Z

    move-result v3

    if-eqz v3, :cond_f2

    iget-wide v8, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_f2
    aput-object v4, v6, v12

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_100
    move-object v3, v4

    goto/16 :goto_40

    :cond_103
    move-object v3, v4

    goto/16 :goto_6d

    :cond_106
    move-object v3, v4

    goto :goto_8c

    :cond_108
    move-object v3, v4

    goto :goto_ac

    :cond_10a
    move-object v3, v4

    goto :goto_bf

    :cond_10c
    move-object v3, v4

    goto :goto_df
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-short v0, p0, Landroid/location/GpsClock;->mFlags:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Landroid/location/GpsClock;->mLeapSecond:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Landroid/location/GpsClock;->mType:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mTimeUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mFullBiasInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mBiasUncertaintyInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsClock;->mDriftUncertaintyInNsPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
