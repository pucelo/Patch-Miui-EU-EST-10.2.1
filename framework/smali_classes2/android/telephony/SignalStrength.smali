.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrength$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x6

.field private static final RSRP_THRESH_CU_TEST:[I

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field public static final SIGNAL_STRENGTH_EXCELLENT:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrpBoost:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v1, 0x7

    new-array v0, v1, [I

    fill-array-data v0, :array_48

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_5a

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_6c

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_CU_TEST:[I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "none"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "poor"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "moderate"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "good"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "great"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "excellent"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_48
    .array-data 4
        -0x8c
        -0x78
        -0x73
        -0x6e
        -0x69
        -0x61
        -0x2c
    .end array-data

    :array_5a
    .array-data 4
        -0x8c
        -0x8c
        -0x7d
        -0x73
        -0x6e
        -0x66
        -0x2c
    .end array-data

    :array_6c
    .array-data 4
        -0x8c
        -0x78
        -0x76
        -0x72
        -0x6e
        -0x69
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .registers 4

    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIZ)V
    .registers 33

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p15

    invoke-virtual/range {v2 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    move/from16 v0, p14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .registers 32

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v16, p14

    invoke-virtual/range {v2 .. v16}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    move/from16 v0, p13

    move-object/from16 v1, p0

    iput v0, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .registers 29

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v14, p13

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .registers 24

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v0, 0x1

    :cond_5f
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5

    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method private getCdmaRelatedSignalStrength()I
    .registers 4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_c

    move v2, v0

    :goto_b
    return v2

    :cond_c
    if-nez v0, :cond_10

    move v2, v1

    goto :goto_b

    :cond_10
    if-ge v0, v1, :cond_14

    move v2, v0

    goto :goto_b

    :cond_14
    move v2, v1

    goto :goto_b
.end method

.method private getGsmRelatedSignalStrength()I
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    :cond_10
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .registers 2

    const-string/jumbo v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .registers 3

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .registers 2

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .registers 3

    const-string/jumbo v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const-string/jumbo v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const-string/jumbo v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const-string/jumbo v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const-string/jumbo v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const-string/jumbo v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    const-string/jumbo v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const-string/jumbo v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const-string/jumbo v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const-string/jumbo v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const-string/jumbo v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const-string/jumbo v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const-string/jumbo v0, "lteRsrpBoost"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    const-string/jumbo v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const-string/jumbo v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .registers 3

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_5} :catch_8

    if-nez p1, :cond_a

    return v3

    :catch_8
    move-exception v1

    return v3

    :cond_a
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    if-ne v4, v5, :cond_65

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_65

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_65

    const/4 v3, 0x1

    :cond_65
    return v3
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "lteRsrpBoost"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public fixType()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public getAsuLevel()I
    .registers 6

    const/16 v4, 0xff

    const/4 v0, 0x0

    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_2e

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_29

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v3

    if-ne v3, v4, :cond_29

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v3

    if-ne v3, v4, :cond_24

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    :goto_23
    return v0

    :cond_24
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_23

    :cond_29
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_23

    :cond_2e
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    if-nez v2, :cond_3a

    move v0, v1

    goto :goto_23

    :cond_3a
    if-nez v1, :cond_3e

    move v0, v2

    goto :goto_23

    :cond_3e
    if-ge v1, v2, :cond_42

    move v0, v1

    goto :goto_23

    :cond_42
    move v0, v2

    goto :goto_23
.end method

.method public getCdmaAsuLevel()I
    .registers 9

    const/16 v7, -0x5a

    const/16 v6, -0x64

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    const/16 v5, -0x4b

    if-lt v1, v5, :cond_1a

    const/16 v0, 0x10

    :goto_12
    if-lt v2, v7, :cond_32

    const/16 v3, 0x10

    :goto_16
    if-ge v0, v3, :cond_4c

    move v4, v0

    :goto_19
    return v0

    :cond_1a
    const/16 v5, -0x52

    if-lt v1, v5, :cond_21

    const/16 v0, 0x8

    goto :goto_12

    :cond_21
    if-lt v1, v7, :cond_25

    const/4 v0, 0x4

    goto :goto_12

    :cond_25
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_2b

    const/4 v0, 0x2

    goto :goto_12

    :cond_2b
    if-lt v1, v6, :cond_2f

    const/4 v0, 0x1

    goto :goto_12

    :cond_2f
    const/16 v0, 0x63

    goto :goto_12

    :cond_32
    if-lt v2, v6, :cond_37

    const/16 v3, 0x8

    goto :goto_16

    :cond_37
    const/16 v5, -0x73

    if-lt v2, v5, :cond_3d

    const/4 v3, 0x4

    goto :goto_16

    :cond_3d
    const/16 v5, -0x82

    if-lt v2, v5, :cond_43

    const/4 v3, 0x2

    goto :goto_16

    :cond_43
    const/16 v5, -0x96

    if-lt v2, v5, :cond_49

    const/4 v3, 0x1

    goto :goto_16

    :cond_49
    const/16 v3, 0x63

    goto :goto_16

    :cond_4c
    move v4, v3

    goto :goto_19
.end method

.method public getCdmaDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/16 v3, -0x5a

    if-lt v0, v3, :cond_e

    const/4 v2, 0x5

    :goto_d
    return v2

    :cond_e
    const/16 v3, -0x5d

    if-lt v0, v3, :cond_14

    const/4 v2, 0x4

    goto :goto_d

    :cond_14
    const/16 v3, -0x61

    if-lt v0, v3, :cond_1a

    const/4 v2, 0x3

    goto :goto_d

    :cond_1a
    const/16 v3, -0x65

    if-lt v0, v3, :cond_20

    const/4 v2, 0x2

    goto :goto_d

    :cond_20
    const/16 v3, -0x6d

    if-lt v0, v3, :cond_26

    const/4 v2, 0x1

    goto :goto_d

    :cond_26
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public getDbm()I
    .registers 6

    const/16 v4, -0x78

    const v1, 0x7fffffff

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_2c

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_27

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_27

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    :goto_26
    return v1

    :cond_27
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_26

    :cond_2c
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    goto :goto_26

    :cond_31
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    if-ne v2, v4, :cond_3c

    :cond_3b
    :goto_3b
    return v0

    :cond_3c
    if-ne v0, v4, :cond_40

    move v0, v2

    goto :goto_3b

    :cond_40
    if-lt v0, v2, :cond_3b

    move v0, v2

    goto :goto_3b
.end method

.method public getEvdoAsuLevel()I
    .registers 7

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/16 v5, -0x41

    if-lt v0, v5, :cond_17

    const/16 v3, 0x10

    :goto_e
    const/4 v5, 0x7

    if-lt v1, v5, :cond_33

    const/16 v4, 0x10

    :goto_13
    if-ge v3, v4, :cond_4b

    move v2, v3

    :goto_16
    return v3

    :cond_17
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1e

    const/16 v3, 0x8

    goto :goto_e

    :cond_1e
    const/16 v5, -0x55

    if-lt v0, v5, :cond_24

    const/4 v3, 0x4

    goto :goto_e

    :cond_24
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_2a

    const/4 v3, 0x2

    goto :goto_e

    :cond_2a
    const/16 v5, -0x69

    if-lt v0, v5, :cond_30

    const/4 v3, 0x1

    goto :goto_e

    :cond_30
    const/16 v3, 0x63

    goto :goto_e

    :cond_33
    const/4 v5, 0x6

    if-lt v1, v5, :cond_39

    const/16 v4, 0x8

    goto :goto_13

    :cond_39
    const/4 v5, 0x5

    if-lt v1, v5, :cond_3e

    const/4 v4, 0x4

    goto :goto_13

    :cond_3e
    const/4 v5, 0x3

    if-lt v1, v5, :cond_43

    const/4 v4, 0x2

    goto :goto_13

    :cond_43
    const/4 v5, 0x1

    if-lt v1, v5, :cond_48

    const/4 v4, 0x1

    goto :goto_13

    :cond_48
    const/16 v4, 0x63

    goto :goto_13

    :cond_4b
    move v2, v4

    goto :goto_16
.end method

.method public getEvdoDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/16 v3, -0x5a

    if-lt v0, v3, :cond_e

    const/4 v2, 0x5

    :goto_d
    return v2

    :cond_e
    const/16 v3, -0x5d

    if-lt v0, v3, :cond_14

    const/4 v2, 0x4

    goto :goto_d

    :cond_14
    const/16 v3, -0x61

    if-lt v0, v3, :cond_1a

    const/4 v2, 0x3

    goto :goto_d

    :cond_1a
    const/16 v3, -0x65

    if-lt v0, v3, :cond_20

    const/4 v2, 0x2

    goto :goto_d

    :cond_20
    const/16 v3, -0x6d

    if-lt v0, v3, :cond_26

    const/4 v2, 0x1

    goto :goto_d

    :cond_26
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public getEvdoSnr()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .registers 2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    return v0
.end method

.method public getGsmBitErrorRate()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .registers 5

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    const/16 v3, 0x63

    if-ne v2, v3, :cond_11

    const/4 v0, -0x1

    :goto_9
    const/4 v3, -0x1

    if-eq v0, v3, :cond_13

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    :goto_10
    return v1

    :cond_11
    move v0, v2

    goto :goto_9

    :cond_13
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public getGsmLevel()I
    .registers 4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    if-lez v0, :cond_a

    const/16 v2, 0x63

    if-ne v0, v2, :cond_c

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    const/16 v2, 0xc

    if-lt v0, v2, :cond_12

    const/4 v1, 0x5

    goto :goto_b

    :cond_12
    const/16 v2, 0x9

    if-lt v0, v2, :cond_18

    const/4 v1, 0x4

    goto :goto_b

    :cond_18
    const/4 v2, 0x6

    if-lt v0, v2, :cond_1d

    const/4 v1, 0x3

    goto :goto_b

    :cond_1d
    const/4 v2, 0x3

    if-lt v0, v2, :cond_22

    const/4 v1, 0x2

    goto :goto_b

    :cond_22
    const/4 v1, 0x1

    goto :goto_b
.end method

.method public getGsmSignalStrength()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .registers 3

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmRelatedSignalStrength()I

    move-result v0

    :goto_8
    return v0

    :cond_9
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v0

    goto :goto_8
.end method

.method public getLteAsuLevel()I
    .registers 4

    const/16 v0, 0x63

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_e

    const/16 v0, 0xff

    :goto_d
    return v0

    :cond_e
    add-int/lit16 v0, v1, 0x8c

    goto :goto_d
.end method

.method public getLteCqi()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .registers 11

    const/4 v9, 0x3

    const/4 v8, 0x6

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, -0x1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    array-length v4, v3

    if-eq v4, v8, :cond_21

    const-string/jumbo v4, "SignalStrength"

    const-string/jumbo v5, "getLteLevel - config_lteDbmThresholds has invalid num of elements. Cannot evaluate RSRP signal."

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    :goto_1d
    const/4 v4, -0x1

    if-eq v0, v4, :cond_8d

    return v0

    :cond_21
    sget-boolean v4, Lmiui/os/Build;->IS_CU_CUSTOMIZATION_TEST:Z

    if-eqz v4, :cond_2f

    sget-object v3, Landroid/telephony/SignalStrength;->RSRP_THRESH_CU_TEST:[I

    :goto_27
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v5, v3, v8

    if-le v4, v5, :cond_4a

    const/4 v0, -0x1

    goto :goto_1d

    :cond_2f
    sget-boolean v4, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v4, :cond_44

    sget-boolean v4, Lmiui/os/Build;->IS_CT_CUSTOMIZATION:Z

    if-nez v4, :cond_44

    sget-boolean v4, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v4, :cond_44

    const-string/jumbo v4, "persist.radio.signal_enhance"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_47

    :cond_44
    sget-object v3, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    goto :goto_27

    :cond_47
    sget-object v3, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    goto :goto_27

    :cond_4a
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v5, 0x5

    aget v5, v3, v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_56

    const/4 v0, 0x5

    goto :goto_1d

    :cond_56
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v5, 0x4

    aget v5, v3, v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_62

    const/4 v0, 0x4

    goto :goto_1d

    :cond_62
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v5, v3, v9

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_6d

    const/4 v0, 0x3

    goto :goto_1d

    :cond_6d
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v5, 0x2

    aget v5, v3, v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_79

    const/4 v0, 0x2

    goto :goto_1d

    :cond_79
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v5, 0x1

    aget v5, v3, v5

    iget v6, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_85

    const/4 v0, 0x1

    goto :goto_1d

    :cond_85
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    aget v5, v3, v7

    if-lt v4, v5, :cond_1d

    const/4 v0, 0x0

    goto :goto_1d

    :cond_8d
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x3f

    if-le v4, v5, :cond_95

    const/4 v1, 0x0

    :cond_94
    :goto_94
    return v1

    :cond_95
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_9d

    const/4 v1, 0x5

    goto :goto_94

    :cond_9d
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const/16 v5, 0x9

    if-lt v4, v5, :cond_a5

    const/4 v1, 0x4

    goto :goto_94

    :cond_a5
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-lt v4, v8, :cond_ab

    const/4 v1, 0x3

    goto :goto_94

    :cond_ab
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-lt v4, v9, :cond_b1

    const/4 v1, 0x2

    goto :goto_94

    :cond_b1
    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v4, :cond_94

    const/4 v1, 0x1

    goto :goto_94
.end method

.method public getLteRsrp()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrpBoost()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return v0
.end method

.method public getLteRsrq()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .registers 4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_c

    const/16 v0, 0xff

    :goto_b
    return v0

    :cond_c
    add-int/lit8 v0, v1, 0x78

    goto :goto_b
.end method

.method public getTdScdmaDbm()I
    .registers 2

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .registers 4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    const/16 v2, -0x19

    if-gt v1, v2, :cond_d

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_f

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/16 v2, -0x58

    if-lt v1, v2, :cond_15

    const/4 v0, 0x5

    goto :goto_e

    :cond_15
    const/16 v2, -0x5f

    if-lt v1, v2, :cond_1b

    const/4 v0, 0x4

    goto :goto_e

    :cond_1b
    const/16 v2, -0x66

    if-lt v1, v2, :cond_21

    const/4 v0, 0x3

    goto :goto_e

    :cond_21
    const/16 v2, -0x6d

    if-lt v1, v2, :cond_27

    const/4 v0, 0x2

    goto :goto_e

    :cond_27
    const/16 v2, -0x78

    if-lt v1, v2, :cond_2d

    const/4 v0, 0x1

    goto :goto_e

    :cond_2d
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public hashCode()I
    .registers 4

    const/16 v0, 0x1f

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_4e

    const/4 v1, 0x1

    :goto_4c
    add-int/2addr v1, v2

    return v1

    :cond_4e
    const/4 v1, 0x0

    goto :goto_4c
.end method

.method public initialize(IIIIIIIIIIIIIZ)V
    .registers 16

    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput p13, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput-boolean p14, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .registers 24

    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const/4 v13, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v14, p8

    invoke-virtual/range {v0 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIIZ)V

    return-void
.end method

.method public isGsm()Z
    .registers 2

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return-void
.end method

.method public setLteRsrpBoost(I)V
    .registers 2

    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_d2

    const-string/jumbo v0, "gsm|lte"

    :goto_c9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d2
    const-string/jumbo v0, "cdma"

    goto :goto_c9
.end method

.method public validateInput()V
    .registers 6

    const/16 v1, 0x63

    const/4 v3, -0x1

    const/16 v2, -0x78

    const v4, 0x7fffffff

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_8d

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_e
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_8f

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_17
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_91

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_20
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_29

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_29
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_94

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_32
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_40

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_40

    iget v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_40
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_48

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_48
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_96

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_96

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_59
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_98

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_98

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_69
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_9a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_9a

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_79
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_8a

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_8a

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v4, v0

    :cond_8a
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return-void

    :cond_8d
    move v0, v1

    goto :goto_e

    :cond_8f
    move v0, v2

    goto :goto_17

    :cond_91
    const/16 v0, -0xa0

    goto :goto_20

    :cond_94
    move v0, v3

    goto :goto_32

    :cond_96
    move v0, v4

    goto :goto_59

    :cond_98
    move v0, v4

    goto :goto_69

    :cond_9a
    move v0, v4

    goto :goto_79
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_4f

    const/4 v0, 0x1

    :goto_4b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_4f
    const/4 v0, 0x0

    goto :goto_4b
.end method
