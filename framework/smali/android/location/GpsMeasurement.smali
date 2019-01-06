.class public Landroid/location/GpsMeasurement;
.super Ljava/lang/Object;
.source "GpsMeasurement.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GpsMeasurement$1;
    }
.end annotation


# static fields
.field private static final ADR_ALL:S = 0x7s

.field public static final ADR_STATE_CYCLE_SLIP:S = 0x4s

.field public static final ADR_STATE_RESET:S = 0x2s

.field public static final ADR_STATE_UNKNOWN:S = 0x0s

.field public static final ADR_STATE_VALID:S = 0x1s

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/GpsMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static final GPS_MEASUREMENT_HAS_UNCORRECTED_PSEUDORANGE_RATE:I = 0x40000

.field private static final HAS_AZIMUTH:I = 0x8

.field private static final HAS_AZIMUTH_UNCERTAINTY:I = 0x10

.field private static final HAS_BIT_NUMBER:I = 0x2000

.field private static final HAS_CARRIER_CYCLES:I = 0x400

.field private static final HAS_CARRIER_FREQUENCY:I = 0x200

.field private static final HAS_CARRIER_PHASE:I = 0x800

.field private static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field private static final HAS_CODE_PHASE:I = 0x80

.field private static final HAS_CODE_PHASE_UNCERTAINTY:I = 0x100

.field private static final HAS_DOPPLER_SHIFT:I = 0x8000

.field private static final HAS_DOPPLER_SHIFT_UNCERTAINTY:I = 0x10000

.field private static final HAS_ELEVATION:I = 0x2

.field private static final HAS_ELEVATION_UNCERTAINTY:I = 0x4

.field private static final HAS_NO_FLAGS:I = 0x0

.field private static final HAS_PSEUDORANGE:I = 0x20

.field private static final HAS_PSEUDORANGE_UNCERTAINTY:I = 0x40

.field private static final HAS_SNR:I = 0x1

.field private static final HAS_TIME_FROM_LAST_BIT:I = 0x4000

.field private static final HAS_USED_IN_FIX:I = 0x20000

.field public static final LOSS_OF_LOCK_CYCLE_SLIP:B = 0x2t

.field public static final LOSS_OF_LOCK_OK:B = 0x1t

.field public static final LOSS_OF_LOCK_UNKNOWN:B = 0x0t

.field public static final MULTIPATH_INDICATOR_DETECTED:B = 0x1t

.field public static final MULTIPATH_INDICATOR_NOT_USED:B = 0x2t

.field public static final MULTIPATH_INDICATOR_UNKNOWN:B = 0x0t

.field private static final STATE_ALL:S = 0x1fs

.field public static final STATE_BIT_SYNC:S = 0x2s

.field public static final STATE_CODE_LOCK:S = 0x1s

.field public static final STATE_MSEC_AMBIGUOUS:S = 0x10s

.field public static final STATE_SUBFRAME_SYNC:S = 0x4s

.field public static final STATE_TOW_DECODED:S = 0x8s

.field public static final STATE_UNKNOWN:S


# instance fields
.field private mAccumulatedDeltaRangeInMeters:D

.field private mAccumulatedDeltaRangeState:S

.field private mAccumulatedDeltaRangeUncertaintyInMeters:D

.field private mAzimuthInDeg:D

.field private mAzimuthUncertaintyInDeg:D

.field private mBitNumber:I

.field private mCarrierCycles:J

.field private mCarrierFrequencyInHz:F

.field private mCarrierPhase:D

.field private mCarrierPhaseUncertainty:D

.field private mCn0InDbHz:D

.field private mCodePhaseInChips:D

.field private mCodePhaseUncertaintyInChips:D

.field private mDopplerShiftInHz:D

.field private mDopplerShiftUncertaintyInHz:D

.field private mElevationInDeg:D

.field private mElevationUncertaintyInDeg:D

.field private mFlags:I

.field private mLossOfLock:B

.field private mMultipathIndicator:B

.field private mPrn:B

.field private mPseudorangeInMeters:D

.field private mPseudorangeRateInMetersPerSec:D

.field private mPseudorangeRateUncertaintyInMetersPerSec:D

.field private mPseudorangeUncertaintyInMeters:D

.field private mReceivedGpsTowInNs:J

.field private mReceivedGpsTowUncertaintyInNs:J

.field private mSnrInDb:D

.field private mState:S

.field private mTimeFromLastBitInMs:S

.field private mTimeOffsetInNs:D

.field private mUsedInFix:Z


# direct methods
.method static synthetic -set0(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide p1
.end method

.method static synthetic -set1(Landroid/location/GpsMeasurement;S)S
    .registers 2

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return p1
.end method

.method static synthetic -set10(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide p1
.end method

.method static synthetic -set11(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide p1
.end method

.method static synthetic -set12(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide p1
.end method

.method static synthetic -set13(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide p1
.end method

.method static synthetic -set14(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide p1
.end method

.method static synthetic -set15(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide p1
.end method

.method static synthetic -set16(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide p1
.end method

.method static synthetic -set17(Landroid/location/GpsMeasurement;I)I
    .registers 2

    iput p1, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return p1
.end method

.method static synthetic -set18(Landroid/location/GpsMeasurement;B)B
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return p1
.end method

.method static synthetic -set19(Landroid/location/GpsMeasurement;B)B
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return p1
.end method

.method static synthetic -set2(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide p1
.end method

.method static synthetic -set20(Landroid/location/GpsMeasurement;B)B
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return p1
.end method

.method static synthetic -set21(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide p1
.end method

.method static synthetic -set22(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide p1
.end method

.method static synthetic -set23(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide p1
.end method

.method static synthetic -set24(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide p1
.end method

.method static synthetic -set25(Landroid/location/GpsMeasurement;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide p1
.end method

.method static synthetic -set26(Landroid/location/GpsMeasurement;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide p1
.end method

.method static synthetic -set27(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide p1
.end method

.method static synthetic -set28(Landroid/location/GpsMeasurement;S)S
    .registers 2

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return p1
.end method

.method static synthetic -set29(Landroid/location/GpsMeasurement;S)S
    .registers 2

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return p1
.end method

.method static synthetic -set3(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide p1
.end method

.method static synthetic -set30(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide p1
.end method

.method static synthetic -set31(Landroid/location/GpsMeasurement;Z)Z
    .registers 2

    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return p1
.end method

.method static synthetic -set4(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide p1
.end method

.method static synthetic -set5(Landroid/location/GpsMeasurement;I)I
    .registers 2

    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return p1
.end method

.method static synthetic -set6(Landroid/location/GpsMeasurement;J)J
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide p1
.end method

.method static synthetic -set7(Landroid/location/GpsMeasurement;F)F
    .registers 2

    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return p1
.end method

.method static synthetic -set8(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide p1
.end method

.method static synthetic -set9(Landroid/location/GpsMeasurement;D)D
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide p1
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/location/GpsMeasurement$1;

    invoke-direct {v0}, Landroid/location/GpsMeasurement$1;-><init>()V

    sput-object v0, Landroid/location/GpsMeasurement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    return-void
.end method

.method private getAccumulatedDeltaRangeStateString()Ljava/lang/String;
    .registers 5

    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    if-nez v2, :cond_8

    const-string/jumbo v2, "Unknown"

    return-object v2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    const-string/jumbo v2, "Valid|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    const-string/jumbo v2, "Reset|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_34

    const-string/jumbo v2, "CycleSlip|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

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

.method private getLossOfLockString()Ljava/lang/String;
    .registers 3

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

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
    const-string/jumbo v0, "Ok"

    return-object v0

    :pswitch_2b
    const-string/jumbo v0, "CycleSlip"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_23
        :pswitch_27
        :pswitch_2b
    .end packed-switch
.end method

.method private getMultipathIndicatorString()Ljava/lang/String;
    .registers 3

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    packed-switch v0, :pswitch_data_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<Invalid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

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
    const-string/jumbo v0, "NotUsed"

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

    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    if-nez v2, :cond_8

    const-string/jumbo v2, "Unknown"

    return-object v2

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1a

    const-string/jumbo v2, "CodeLock|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_27

    const-string/jumbo v2, "BitSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_27
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_34

    const-string/jumbo v2, "SubframeSync|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_42

    const-string/jumbo v2, "TowDecoded|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_42
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_50

    const-string/jumbo v2, "MsecAmbiguous"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-short v2, p0, Landroid/location/GpsMeasurement;->mState:S

    and-int/lit8 v1, v2, -0x20

    if-lez v1, :cond_69

    const-string/jumbo v2, "Other("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, ")|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private initialize()V
    .registers 7

    const-wide/16 v4, 0x1

    const/4 v2, 0x0

    iput v2, p0, Landroid/location/GpsMeasurement;->mFlags:I

    const/16 v0, -0x80

    invoke-virtual {p0, v0}, Landroid/location/GpsMeasurement;->setPrn(B)V

    const-wide/high16 v0, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setTimeOffsetInNs(D)V

    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setState(S)V

    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setReceivedGpsTowInNs(J)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Landroid/location/GpsMeasurement;->setReceivedGpsTowUncertaintyInNs(J)V

    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setCn0InDbHz(D)V

    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setPseudorangeRateInMetersPerSec(D)V

    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setPseudorangeRateUncertaintyInMetersPerSec(D)V

    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeState(S)V

    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeInMeters(D)V

    invoke-virtual {p0, v4, v5}, Landroid/location/GpsMeasurement;->setAccumulatedDeltaRangeUncertaintyInMeters(D)V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeInMeters()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetPseudorangeUncertaintyInMeters()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseInChips()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCodePhaseUncertaintyInChips()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierFrequencyInHz()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierCycles()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhase()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetCarrierPhaseUncertainty()V

    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setLossOfLock(B)V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetBitNumber()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetTimeFromLastBitInMs()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftInHz()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetDopplerShiftUncertaintyInHz()V

    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setMultipathIndicator(B)V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetSnrInDb()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationInDeg()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetElevationUncertaintyInDeg()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthInDeg()V

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->resetAzimuthUncertaintyInDeg()V

    invoke-virtual {p0, v2}, Landroid/location/GpsMeasurement;->setUsedInFix(Z)V

    return-void
.end method

.method private isFlagSet(I)Z
    .registers 3

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

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

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method

.method private setFlag(I)V
    .registers 3

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAccumulatedDeltaRangeInMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-wide v0
.end method

.method public getAccumulatedDeltaRangeState()S
    .registers 2

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return v0
.end method

.method public getAccumulatedDeltaRangeUncertaintyInMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getAzimuthInDeg()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-wide v0
.end method

.method public getAzimuthUncertaintyInDeg()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-wide v0
.end method

.method public getBitNumber()I
    .registers 2

    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return v0
.end method

.method public getCarrierCycles()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-wide v0
.end method

.method public getCarrierFrequencyInHz()F
    .registers 2

    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return v0
.end method

.method public getCarrierPhase()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-wide v0
.end method

.method public getCarrierPhaseUncertainty()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-wide v0
.end method

.method public getCn0InDbHz()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-wide v0
.end method

.method public getCodePhaseInChips()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-wide v0
.end method

.method public getCodePhaseUncertaintyInChips()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-wide v0
.end method

.method public getDopplerShiftInHz()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-wide v0
.end method

.method public getDopplerShiftUncertaintyInHz()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-wide v0
.end method

.method public getElevationInDeg()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-wide v0
.end method

.method public getElevationUncertaintyInDeg()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-wide v0
.end method

.method public getLossOfLock()B
    .registers 2

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return v0
.end method

.method public getMultipathIndicator()B
    .registers 2

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return v0
.end method

.method public getPrn()B
    .registers 2

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return v0
.end method

.method public getPseudorangeInMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-wide v0
.end method

.method public getPseudorangeRateInMetersPerSec()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeRateUncertaintyInMetersPerSec()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-wide v0
.end method

.method public getPseudorangeUncertaintyInMeters()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-wide v0
.end method

.method public getReceivedGpsTowInNs()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-wide v0
.end method

.method public getReceivedGpsTowUncertaintyInNs()J
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-wide v0
.end method

.method public getSnrInDb()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-wide v0
.end method

.method public getState()S
    .registers 2

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    return v0
.end method

.method public getTimeFromLastBitInMs()S
    .registers 2

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return v0
.end method

.method public getTimeOffsetInNs()D
    .registers 3

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-wide v0
.end method

.method public hasAzimuthInDeg()Z
    .registers 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasAzimuthUncertaintyInDeg()Z
    .registers 2

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasBitNumber()Z
    .registers 2

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierCycles()Z
    .registers 2

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierFrequencyInHz()Z
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhase()Z
    .registers 2

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .registers 2

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCodePhaseInChips()Z
    .registers 2

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasCodePhaseUncertaintyInChips()Z
    .registers 2

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDopplerShiftInHz()Z
    .registers 2

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasDopplerShiftUncertaintyInHz()Z
    .registers 2

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElevationInDeg()Z
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasElevationUncertaintyInDeg()Z
    .registers 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPseudorangeInMeters()Z
    .registers 2

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasPseudorangeUncertaintyInMeters()Z
    .registers 2

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasSnrInDb()Z
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public hasTimeFromLastBitInMs()Z
    .registers 2

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    return v0
.end method

.method public isPseudorangeRateCorrected()Z
    .registers 2

    const/high16 v0, 0x40000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->isFlagSet(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isUsedInFix()Z
    .registers 2

    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return v0
.end method

.method public reset()V
    .registers 1

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->initialize()V

    return-void
.end method

.method public resetAzimuthInDeg()V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-void
.end method

.method public resetAzimuthUncertaintyInDeg()V
    .registers 3

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-void
.end method

.method public resetBitNumber()V
    .registers 2

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return-void
.end method

.method public resetCarrierCycles()V
    .registers 3

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public resetCarrierFrequencyInHz()V
    .registers 2

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return-void
.end method

.method public resetCarrierPhase()V
    .registers 3

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public resetCarrierPhaseUncertainty()V
    .registers 3

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public resetCodePhaseInChips()V
    .registers 3

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-void
.end method

.method public resetCodePhaseUncertaintyInChips()V
    .registers 3

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-void
.end method

.method public resetDopplerShiftInHz()V
    .registers 3

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-void
.end method

.method public resetDopplerShiftUncertaintyInHz()V
    .registers 3

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-void
.end method

.method public resetElevationInDeg()V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-void
.end method

.method public resetElevationUncertaintyInDeg()V
    .registers 3

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-void
.end method

.method public resetPseudorangeInMeters()V
    .registers 3

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-void
.end method

.method public resetPseudorangeUncertaintyInMeters()V
    .registers 3

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-void
.end method

.method public resetSnrInDb()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-void
.end method

.method public resetTimeFromLastBitInMs()V
    .registers 2

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->resetFlag(I)V

    const/16 v0, -0x8000

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return-void
.end method

.method public set(Landroid/location/GpsMeasurement;)V
    .registers 4

    iget v0, p1, Landroid/location/GpsMeasurement;->mFlags:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mPrn:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    iget-short v0, p1, Landroid/location/GpsMeasurement;->mState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    iget-short v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    iget v0, p1, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    iput v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mLossOfLock:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    iget v0, p1, Landroid/location/GpsMeasurement;->mBitNumber:I

    iput v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    iget-short v0, p1, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    iput-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    iget-byte v0, p1, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    iput-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mSnrInDb:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    iget-wide v0, p1, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    iput-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    iget-boolean v0, p1, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    iput-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    return-void
.end method

.method public setAccumulatedDeltaRangeInMeters(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    return-void
.end method

.method public setAccumulatedDeltaRangeState(S)V
    .registers 2

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    return-void
.end method

.method public setAccumulatedDeltaRangeUncertaintyInMeters(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    return-void
.end method

.method public setAzimuthInDeg(D)V
    .registers 4

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    return-void
.end method

.method public setAzimuthUncertaintyInDeg(D)V
    .registers 4

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    return-void
.end method

.method public setBitNumber(I)V
    .registers 3

    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput p1, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    return-void
.end method

.method public setCarrierCycles(J)V
    .registers 4

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    return-void
.end method

.method public setCarrierFrequencyInHz(F)V
    .registers 3

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput p1, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    return-void
.end method

.method public setCarrierPhase(D)V
    .registers 4

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    return-void
.end method

.method public setCarrierPhaseUncertainty(D)V
    .registers 4

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    return-void
.end method

.method public setCn0InDbHz(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    return-void
.end method

.method public setCodePhaseInChips(D)V
    .registers 4

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    return-void
.end method

.method public setCodePhaseUncertaintyInChips(D)V
    .registers 4

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    return-void
.end method

.method public setDopplerShiftInHz(D)V
    .registers 4

    const v0, 0x8000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    return-void
.end method

.method public setDopplerShiftUncertaintyInHz(D)V
    .registers 4

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    return-void
.end method

.method public setElevationInDeg(D)V
    .registers 4

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    return-void
.end method

.method public setElevationUncertaintyInDeg(D)V
    .registers 4

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    return-void
.end method

.method public setLossOfLock(B)V
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    return-void
.end method

.method public setMultipathIndicator(B)V
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    return-void
.end method

.method public setPrn(B)V
    .registers 2

    iput-byte p1, p0, Landroid/location/GpsMeasurement;->mPrn:B

    return-void
.end method

.method public setPseudorangeInMeters(D)V
    .registers 4

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    return-void
.end method

.method public setPseudorangeRateInMetersPerSec(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    return-void
.end method

.method public setPseudorangeRateUncertaintyInMetersPerSec(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    return-void
.end method

.method public setPseudorangeUncertaintyInMeters(D)V
    .registers 4

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    return-void
.end method

.method public setReceivedGpsTowInNs(J)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    return-void
.end method

.method public setReceivedGpsTowUncertaintyInNs(J)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    return-void
.end method

.method public setSnrInDb(D)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    return-void
.end method

.method public setState(S)V
    .registers 2

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mState:S

    return-void
.end method

.method public setTimeFromLastBitInMs(S)V
    .registers 3

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Landroid/location/GpsMeasurement;->setFlag(I)V

    iput-short p1, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    return-void
.end method

.method public setTimeOffsetInNs(D)V
    .registers 4

    iput-wide p1, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    return-void
.end method

.method public setUsedInFix(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

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

    const-string/jumbo v3, "GpsMeasurement:\n"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Prn"

    aput-object v6, v5, v10

    iget-byte v6, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "TimeOffsetInNs"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

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

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "ReceivedGpsTowInNs"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    const-string/jumbo v6, "ReceivedGpsTowUncertaintyInNs"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "Cn0InDbHz"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "PseudorangeRateInMetersPerSec"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    const-string/jumbo v6, "PseudorangeRateUncertaintyInMetersPerSec"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "PseudorangeRateIsCorrected"

    aput-object v6, v5, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->isPseudorangeRateCorrected()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "AccumulatedDeltaRangeState"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getAccumulatedDeltaRangeStateString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "AccumulatedDeltaRangeInMeters"

    aput-object v6, v5, v10

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v11

    const-string/jumbo v6, "AccumulatedDeltaRangeUncertaintyInMeters"

    aput-object v6, v5, v12

    iget-wide v6, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v5, v13

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "PseudorangeInMeters"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeInMeters()Z

    move-result v3

    if-eqz v3, :cond_335

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_133
    aput-object v3, v6, v11

    const-string/jumbo v3, "PseudorangeUncertaintyInMeters"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasPseudorangeUncertaintyInMeters()Z

    move-result v3

    if-eqz v3, :cond_338

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_146
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "CodePhaseInChips"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseInChips()Z

    move-result v3

    if-eqz v3, :cond_33b

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_166
    aput-object v3, v6, v11

    const-string/jumbo v3, "CodePhaseUncertaintyInChips"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCodePhaseUncertaintyInChips()Z

    move-result v3

    if-eqz v3, :cond_33e

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_179
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "CarrierFrequencyInHz"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierFrequencyInHz()Z

    move-result v3

    if-eqz v3, :cond_341

    iget v3, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    :goto_198
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "CarrierCycles"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierCycles()Z

    move-result v3

    if-eqz v3, :cond_344

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1b7
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "CarrierPhase"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhase()Z

    move-result v3

    if-eqz v3, :cond_347

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1d7
    aput-object v3, v6, v11

    const-string/jumbo v3, "CarrierPhaseUncertainty"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasCarrierPhaseUncertainty()Z

    move-result v3

    if-eqz v3, :cond_34a

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_1ea
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "LossOfLock"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getLossOfLockString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "BitNumber"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasBitNumber()Z

    move-result v3

    if-eqz v3, :cond_34d

    iget v3, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_220
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "TimeFromLastBitInMs"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasTimeFromLastBitInMs()Z

    move-result v3

    if-eqz v3, :cond_350

    iget-short v3, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    :goto_23f
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "DopplerShiftInHz"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftInHz()Z

    move-result v3

    if-eqz v3, :cond_353

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_25f
    aput-object v3, v6, v11

    const-string/jumbo v3, "DopplerShiftUncertaintyInHz"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasDopplerShiftUncertaintyInHz()Z

    move-result v3

    if-eqz v3, :cond_356

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_272
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v5, v12, [Ljava/lang/Object;

    const-string/jumbo v6, "MultipathIndicator"

    aput-object v6, v5, v10

    invoke-direct {p0}, Landroid/location/GpsMeasurement;->getMultipathIndicatorString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %s\n"

    new-array v6, v12, [Ljava/lang/Object;

    const-string/jumbo v3, "SnrInDb"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasSnrInDb()Z

    move-result v3

    if-eqz v3, :cond_359

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_2a8
    aput-object v3, v6, v11

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "ElevationInDeg"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationInDeg()Z

    move-result v3

    if-eqz v3, :cond_35c

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_2c8
    aput-object v3, v6, v11

    const-string/jumbo v3, "ElevationUncertaintyInDeg"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasElevationUncertaintyInDeg()Z

    move-result v3

    if-eqz v3, :cond_35f

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_2db
    aput-object v3, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "   %-29s = %-25s   %-40s = %s\n"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "AzimuthInDeg"

    aput-object v3, v6, v10

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthInDeg()Z

    move-result v3

    if-eqz v3, :cond_362

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_2fb
    aput-object v3, v6, v11

    const-string/jumbo v3, "AzimuthUncertaintyInDeg"

    aput-object v3, v6, v12

    invoke-virtual {p0}, Landroid/location/GpsMeasurement;->hasAzimuthUncertaintyInDeg()Z

    move-result v3

    if-eqz v3, :cond_30e

    iget-wide v8, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :cond_30e
    aput-object v4, v6, v13

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "   %-29s = %s\n"

    new-array v4, v12, [Ljava/lang/Object;

    const-string/jumbo v5, "UsedInFix"

    aput-object v5, v4, v10

    iget-boolean v5, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_335
    move-object v3, v4

    goto/16 :goto_133

    :cond_338
    move-object v3, v4

    goto/16 :goto_146

    :cond_33b
    move-object v3, v4

    goto/16 :goto_166

    :cond_33e
    move-object v3, v4

    goto/16 :goto_179

    :cond_341
    move-object v3, v4

    goto/16 :goto_198

    :cond_344
    move-object v3, v4

    goto/16 :goto_1b7

    :cond_347
    move-object v3, v4

    goto/16 :goto_1d7

    :cond_34a
    move-object v3, v4

    goto/16 :goto_1ea

    :cond_34d
    move-object v3, v4

    goto/16 :goto_220

    :cond_350
    move-object v3, v4

    goto/16 :goto_23f

    :cond_353
    move-object v3, v4

    goto/16 :goto_25f

    :cond_356
    move-object v3, v4

    goto/16 :goto_272

    :cond_359
    move-object v3, v4

    goto/16 :goto_2a8

    :cond_35c
    move-object v3, v4

    goto/16 :goto_2c8

    :cond_35f
    move-object v3, v4

    goto/16 :goto_2db

    :cond_362
    move-object v3, v4

    goto :goto_2fb
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget v0, p0, Landroid/location/GpsMeasurement;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mPrn:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mTimeOffsetInNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mState:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mReceivedGpsTowUncertaintyInNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCn0InDbHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeRateUncertaintyInMetersPerSec:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeState:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAccumulatedDeltaRangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mPseudorangeUncertaintyInMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCodePhaseUncertaintyInChips:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/location/GpsMeasurement;->mCarrierFrequencyInHz:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierCycles:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhase:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mCarrierPhaseUncertainty:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mLossOfLock:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget v0, p0, Landroid/location/GpsMeasurement;->mBitNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-short v0, p0, Landroid/location/GpsMeasurement;->mTimeFromLastBitInMs:S

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mDopplerShiftUncertaintyInHz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-byte v0, p0, Landroid/location/GpsMeasurement;->mMultipathIndicator:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mSnrInDb:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mElevationUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/GpsMeasurement;->mAzimuthUncertaintyInDeg:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-boolean v0, p0, Landroid/location/GpsMeasurement;->mUsedInFix:Z

    if-eqz v0, :cond_a4

    const/4 v0, 0x1

    :goto_a0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_a4
    const/4 v0, 0x0

    goto :goto_a0
.end method
