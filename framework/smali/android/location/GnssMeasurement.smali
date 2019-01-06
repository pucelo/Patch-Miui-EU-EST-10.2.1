.class public final Landroid/location/GnssMeasurement;
.super Ljava/lang/Object;
.source "GnssMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurement$1;
    }
.end annotation


# static fields
.field private static final ADR_ALL:I = 0x7

.field public static final ADR_STATE_CYCLE_SLIP:I = 0x4

.field public static final ADR_STATE_RESET:I = 0x2

.field public static final ADR_STATE_UNKNOWN:I = 0x0

.field public static final ADR_STATE_VALID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GnssMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_SNR:I = 0x1

.field public static final MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field private static final STATE_ALL:I = 0x3fff

.field public static final STATE_BDS_D2_BIT_SYNC:I = 0x100

.field public static final STATE_BDS_D2_SUBFRAME_SYNC:I = 0x200

.field public static final STATE_BIT_SYNC:I = 0x2

.field public static final STATE_CODE_LOCK:I = 0x1

.field public static final STATE_GAL_E1BC_CODE_LOCK:I = 0x400

.field public static final STATE_GAL_E1B_PAGE_SYNC:I = 0x1000

.field public static final STATE_GAL_E1C_2ND_CODE_LOCK:I = 0x800

.field public static final STATE_GLO_STRING_SYNC:I = 0x40

.field public static final STATE_GLO_TOD_DECODED:I = 0x80

.field public static final STATE_GLO_TOD_KNOWN:I = 0x8000

.field public static final STATE_MSEC_AMBIGUOUS:I = 0x10

.field public static final STATE_SBAS_SYNC:I = 0x2000

.field public static final STATE_SUBFRAME_SYNC:I = 0x4

.field public static final STATE_SYMBOL_SYNC:I = 0x20

.field public static final STATE_TOW_DECODED:I = 0x8

.field public static final STATE_TOW_KNOWN:I = 0x4000

.field public static final STATE_UNKNOWN:I


# instance fields
.field private mAccumulatedDeltaRangeMeters:D

.field private mAccumulatedDeltaRangeState:I

.field private mAccumulatedDeltaRangeUncertaintyMeters:D

.field private mAutomaticGainControlLevelInDb:D

.field private mCarrierCycles:J

.field private mCarrierFrequencyHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0DbHz:D

.field private mConstellationType:I

.field private mFlags:I

.field private mMultipathIndicator:I

.field private mPseudorangeRateMetersPerSecond:D

.field private mPseudorangeRateUncertaintyMetersPerSecond:D

.field private mReceivedSvTimeNanos:J

.field private mReceivedSvTimeUncertaintyNanos:J

.field private mSnrInDb:D

.field private mState:I

.field private mSvid:I

.field private mTimeOffsetNanos:D


# direct methods
.method static synthetic -set0(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GnssMeasurement;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return p1
.end method

.method static synthetic -set10(Landroid/location/GnssMeasurement;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return p1
.end method

.method static synthetic -set11(Landroid/location/GnssMeasurement;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return p1
.end method

.method static synthetic -set12(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide p1
.end method

.method static synthetic -set13(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide p1
.end method

.method static synthetic -set14(Landroid/location/GnssMeasurement;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide p1
.end method

.method static synthetic -set15(Landroid/location/GnssMeasurement;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide p1
.end method

.method static synthetic -set16(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method static synthetic -set17(Landroid/location/GnssMeasurement;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return p1
.end method

.method static synthetic -set18(Landroid/location/GnssMeasurement;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return p1
.end method

.method static synthetic -set19(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide p1
.end method

.method static synthetic -set2(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide p1
.end method

.method static synthetic -set3(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide p1
.end method

.method static synthetic -set4(Landroid/location/GnssMeasurement;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method static synthetic -set5(Landroid/location/GnssMeasurement;F)F
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return p1
.end method

.method static synthetic -set6(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method static synthetic -set7(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method static synthetic -set8(Landroid/location/GnssMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GnssMeasurement;I)I
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GnssMeasurement$1;

    invoke-direct {v0}, Landroid/location/GnssMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GnssMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    return-void
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .registers 5

    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    if-nez v2, :cond_8

    const-string/jumbo v2, "Unknown"

    return-object v2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    const-string/jumbo v2, "Valid|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    const-string/jumbo v2, "Reset|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_34

    const-string/jumbo v2, "CycleSlip|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    iget v2, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    and-int/lit8 v1, v2, -0x8

    if-lez v1, :cond_4d

    const-string/jumbo v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getMultipathIndicatorString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

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
    const-string/jumbo v0, "Detected"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "NotDetected"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_23
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method private getStateString()Ljava/lang/String;
    .registers 5

    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    if-nez v2, :cond_8

    const-string/jumbo v2, "Unknown"

    return-object v2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_19

    const-string/jumbo v2, "CodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_25

    const-string/jumbo v2, "BitSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_31

    const-string/jumbo v2, "SubframeSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3d

    const-string/jumbo v2, "TowDecoded|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_49

    const-string/jumbo v2, "TowKnown|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_49
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_55

    const-string/jumbo v2, "MsecAmbiguous|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_61

    const-string/jumbo v2, "SymbolSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "GloStringSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6d
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_79

    const-string/jumbo v2, "GloTodDecoded|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_79
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_87

    const-string/jumbo v2, "GloTodKnown|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_87
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_93

    const-string/jumbo v2, "BdsD2BitSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_9f

    const-string/jumbo v2, "BdsD2SubframeSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_ab

    const-string/jumbo v2, "GalE1bcCodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ab
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_b7

    const-string/jumbo v2, "E1c2ndCodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b7
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_c3

    const-string/jumbo v2, "GalE1bPageSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c3
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_cf

    const-string/jumbo v2, "SbasSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cf
    iget v2, p0, Landroid/location/GnssMeasurement;->mState:I

    and-int/lit16 v1, v2, -0x4000

    if-lez v1, :cond_e8

    const-string/jumbo v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize()V
    .registers 6

    const/4 v4, 0x0

    const-wide/16 v2, 0x1

    iput v4, p0, Landroid/location/GnssMeasurement;->mFlags:I

    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setSvid(I)V

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setTimeOffsetNanos(D)V

    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setState(I)V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setReceivedSvTimeNanos(J)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Landroid/location/GnssMeasurement;->setReceivedSvTimeUncertaintyNanos(J)V

    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setCn0DbHz(D)V

    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setPseudorangeRateMetersPerSecond(D)V

    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setPseudorangeRateUncertaintyMetersPerSecond(D)V

    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeState(I)V

    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeMeters(D)V

    invoke-virtual {p0, v2, v3}, Landroid/location/GnssMeasurement;->setAccumulatedDeltaRangeUncertaintyMeters(D)V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierFrequencyHz()V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierCycles()V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhase()V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetCarrierPhaseUncertainty()V

    invoke-virtual {p0, v4}, Landroid/location/GnssMeasurement;->setMultipathIndicator(I)V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetSnrInDb()V

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->resetAutomaticGainControlLevel()V

    return-void
.end method

.method private isFlagSet(I)Z
    .registers 3

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

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

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .registers 3

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()I
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-wide v0
.end method

.method public getAutomaticGainControlLevelDb()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-wide v0
.end method

.method public getCarrierCycles()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyHz()F
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0DbHz()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-wide v0
.end method

.method public getConstellationType()I
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return v0
.end method

.method public getMultipathIndicator()I
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return v0
.end method

.method public getPseudorangeRateMetersPerSecond()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyMetersPerSecond()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-wide v0
.end method

.method public getReceivedSvTimeNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-wide v0
.end method

.method public getReceivedSvTimeUncertaintyNanos()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()I
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    return v0
.end method

.method public getSvid()I
    .registers 2

    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return v0
.end method

.method public getTimeOffsetNanos()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-wide v0
.end method

.method public hasAutomaticGainControlLevelDb()Z
    .registers 2

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierCycles()Z
    .registers 2

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyHz()Z
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .registers 2

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .registers 2

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->initialize()V

    return-void
.end method

.method public resetAutomaticGainControlLevel()V
    .registers 3

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-void
.end method

.method public resetCarrierCycles()V
    .registers 3

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public resetCarrierFrequencyHz()V
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return-void
.end method

.method public resetCarrierPhase()V
    .registers 3

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .registers 3

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public resetSnrInDb()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-void
.end method

.method public set(Landroid/location/GnssMeasurement;)V
    .registers 4

    iget v0, p1, Landroid/location/GnssMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    iget v0, p1, Landroid/location/GnssMeasurement;->mSvid:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    iget v0, p1, Landroid/location/GnssMeasurement;->mConstellationType:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    iget v0, p1, Landroid/location/GnssMeasurement;->mState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mState:I

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    iget v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    iget v0, p1, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    iput v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    iget v0, p1, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    iput v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    iget-wide v0, p1, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    iput-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-void
.end method

.method public setAccumulatedDeltaRangeMeters(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    return-void
.end method

.method public setAccumulatedDeltaRangeState(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyMeters(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    return-void
.end method

.method public setAutomaticGainControlLevelInDb(D)V
    .registers 4

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    return-void
.end method

.method public setCarrierCycles(J)V
    .registers 4

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public setCarrierFrequencyHz(F)V
    .registers 3

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput p1, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    return-void
.end method

.method public setCarrierPhase(D)V
    .registers 4

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .registers 4

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public setCn0DbHz(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    return-void
.end method

.method public setConstellationType(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    return-void
.end method

.method public setMultipathIndicator(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    return-void
.end method

.method public setPseudorangeRateMetersPerSecond(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    return-void
.end method

.method public setPseudorangeRateUncertaintyMetersPerSecond(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    return-void
.end method

.method public setReceivedSvTimeNanos(J)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    return-void
.end method

.method public setReceivedSvTimeUncertaintyNanos(J)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    return-void
.end method

.method public setSnrInDb(D)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GnssMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    return-void
.end method

.method public setState(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mState:I

    return-void
.end method

.method public setSvid(I)V
    .registers 2

    iput p1, p0, Landroid/location/GnssMeasurement;->mSvid:I

    return-void
.end method

.method public setTimeOffsetNanos(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    const/4 v13, 0x3

    const/4 v4, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v1, "   %-29s = %s\n"

    const-string/jumbo v2, "   %-29s = %-25s   %-40s = %s\n"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GnssMeasurement:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Svid"

    aput-object v6, v5, v10

    iget v6, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "ConstellationType"

    aput-object v6, v5, v10

    iget v6, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "TimeOffsetNanos"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "State"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "ReceivedSvTimeNanos"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    const-string/jumbo v6, "ReceivedSvTimeUncertaintyNanos"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Cn0DbHz"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "PseudorangeRateMetersPerSecond"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    const-string/jumbo v6, "PseudorangeRateUncertaintyMetersPerSecond"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "AccumulatedDeltaRangeState"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "AccumulatedDeltaRangeMeters"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    const-string/jumbo v6, "AccumulatedDeltaRangeUncertaintyMeters"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "CarrierFrequencyHz"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierFrequencyHz()Z

    move-result v3

    if-eqz v3, :cond_1e5

    iget v3, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_130
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "CarrierCycles"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierCycles()Z

    move-result v3

    if-eqz v3, :cond_1e8

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_14f
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "CarrierPhase"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhase()Z

    move-result v3

    if-eqz v3, :cond_1eb

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_16f
    aput-object v3, v6, v11

    const-string/jumbo v3, "CarrierPhaseUncertainty"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v3

    if-eqz v3, :cond_1ed

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_182
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "MultipathIndicator"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GnssMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "SnrInDb"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasSnrInDb()Z

    move-result v3

    if-eqz v3, :cond_1ef

    iget-wide v8, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1b8
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "AgcLevelDb"

    aput-object v6, v5, v10

    invoke-virtual {p0}, Landroid/location/GnssMeasurement;->hasAutomaticGainControlLevelDb()Z

    move-result v6

    if-eqz v6, :cond_1d7

    iget-wide v6, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_1d7
    aput-object v4, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1e5
    move-object v3, v4

    goto/16 :goto_130

    :cond_1e8
    move-object v3, v4

    goto/16 :goto_14f

    :cond_1eb
    move-object v3, v4

    goto :goto_16f

    :cond_1ed
    move-object v3, v4

    goto :goto_182

    :cond_1ef
    move-object v3, v4

    goto :goto_1b8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/location/GnssMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mSvid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mConstellationType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mTimeOffsetNanos:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mReceivedSvTimeUncertaintyNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCn0DbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mPseudorangeRateUncertaintyMetersPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAccumulatedDeltaRangeUncertaintyMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mCarrierFrequencyHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GnssMeasurement;->mMultipathIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GnssMeasurement;->mAutomaticGainControlLevelInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
