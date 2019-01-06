.class public Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtimeUs:J

.field mBatteryTimeRemainingUs:J

.field mBatteryUptimeUs:J

.field mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mChargeTimeRemainingUs:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mHasBluetoothPowerReporting:Z

.field mHasWifiPowerReporting:Z

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mMinDrainedPower:D

.field mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtimeUs:J

.field mRawUptimeUs:J

.field mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mServicepackageArray:[Ljava/lang/String;

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mSystemPackageArray:[Ljava/lang/String;

.field private mTotalPower:D

.field mTypeBatteryRealtimeUs:J

.field mTypeBatteryUptimeUs:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiOnly:Z

.field mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .registers 12

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    iput v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    iput-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    iput-boolean v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    const v1, 0x1070013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    return-void
.end method

.method private addBluetoothUsage()V
    .registers 13

    const-wide/16 v10, 0x0

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string/jumbo v1, "Bluetooth"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .registers 10

    new-instance v0, Lcom/android/internal/os/BatterySipper;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput-wide p4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private addIdleUsage()V
    .registers 13

    const-wide/16 v10, 0x3e8

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    div-long/2addr v0, v10

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "cpu.idle"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    mul-double v8, v0, v2

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptimeUs:J

    div-long/2addr v0, v10

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "cpu.awake"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    mul-double v6, v0, v2

    add-double v0, v8, v6

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v2

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_38

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    div-long/2addr v2, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_38
    return-void
.end method

.method private addMemoryUsage()V
    .registers 13

    const-wide/16 v10, 0x0

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method private addPhoneUsage()V
    .registers 9

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long v2, v0, v6

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v6, v2

    mul-double/2addr v0, v6

    const-wide v6, 0x414b774000000000L    # 3600000.0

    div-double v4, v0, v6

    const-wide/16 v0, 0x0

    cmpl-double v0, v4, v0

    if-eqz v0, :cond_2c

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_2c
    return-void
.end method

.method private addRadioUsage()V
    .registers 13

    const-wide/16 v10, 0x0

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    return-void
.end method

.method private addScreenUsage()V
    .registers 21

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v4, v2, v18

    long-to-double v2, v4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v18, "screen.on"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    mul-double v2, v2, v18

    const-wide/16 v18, 0x0

    add-double v6, v18, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v16

    const/4 v10, 0x0

    :goto_3a
    const/4 v2, 0x5

    if-ge v10, v2, :cond_67

    int-to-float v2, v10

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v16

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    div-double v14, v2, v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, v18

    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v18, 0x3e8

    div-long v8, v2, v18

    long-to-double v2, v8

    mul-double v12, v14, v2

    add-double/2addr v6, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_3a

    :cond_67
    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v6, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v6, v2

    if-eqz v2, :cond_7a

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    :cond_7a
    return-void
.end method

.method private addUserUsage()V
    .registers 8

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_31

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    new-instance v0, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {v0, v3, v6, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iput v2, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const-string/jumbo v4, "User"

    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_31
    return-void
.end method

.method private addWiFiUsage()V
    .registers 13

    const-wide/16 v10, 0x0

    new-instance v2, Lcom/android/internal/os/BatterySipper;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    const/4 v1, 0x0

    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string/jumbo v1, "WIFI"

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v0, v0, v10

    if-lez v0, :cond_2a

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_13

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p1, v1}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    return-void
.end method

.method public static checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .registers 8

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "bluetooth.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "bluetooth.controller.rx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "bluetooth.controller.tx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method public static checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .registers 8

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "wifi.controller.idle"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "wifi.controller.rx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2b

    const-string/jumbo v1, "wifi.controller.tx"

    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    return v0
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .registers 3

    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .registers 13

    const/4 v9, 0x0

    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_64

    move-result-object v6

    if-eqz v6, :cond_40

    const/4 v3, 0x0

    :try_start_8
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, v6}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_49
    .catchall {:try_start_8 .. :try_end_d} :catchall_6f

    :try_start_d
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    move-result v8

    invoke-static {v4, v8}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    array-length v8, v0

    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v8, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_2e} :catch_74
    .catchall {:try_start_d .. :try_end_2e} :catchall_71

    if-eqz v4, :cond_33

    :try_start_30
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_33} :catch_46
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_33} :catch_64

    :cond_33
    :goto_33
    if-eqz v9, :cond_48

    :try_start_35
    throw v9
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_36} :catch_64

    :catch_36
    move-exception v2

    move-object v3, v4

    :goto_38
    :try_start_38
    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to read statistics stream"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_40} :catch_64

    :cond_40
    :goto_40
    new-instance v8, Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v8}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    return-object v8

    :catch_46
    move-exception v9

    goto :goto_33

    :cond_48
    return-object v7

    :catch_49
    move-exception v8

    :goto_4a
    :try_start_4a
    throw v8
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception v9

    move-object v11, v9

    move-object v9, v8

    move-object v8, v11

    :goto_4f
    if-eqz v3, :cond_54

    :try_start_51
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_59
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_54} :catch_64

    :cond_54
    :goto_54
    if-eqz v9, :cond_6e

    :try_start_56
    throw v9

    :catch_57
    move-exception v2

    goto :goto_38

    :catch_59
    move-exception v10

    if-nez v9, :cond_5e

    move-object v9, v10

    goto :goto_54

    :cond_5e
    if-eq v9, v10, :cond_54

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_63} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_56 .. :try_end_63} :catch_64

    goto :goto_54

    :catch_64
    move-exception v1

    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "RemoteException:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    :cond_6e
    :try_start_6e
    throw v8
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_6f} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_6f} :catch_64

    :catchall_6f
    move-exception v8

    goto :goto_4f

    :catchall_71
    move-exception v8

    move-object v3, v4

    goto :goto_4f

    :catch_74
    move-exception v8

    move-object v3, v4

    goto :goto_4a
.end method

.method private load()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    :cond_22
    return-void
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .registers 8

    const-wide/16 v2, 0x0

    cmpl-double v1, p0, v2

    if-nez v1, :cond_a

    const-string/jumbo v1, "0"

    return-object v1

    :cond_a
    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v1, p0, v2

    if-gez v1, :cond_27

    const-string/jumbo v0, "%.8f"

    :goto_16
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_27
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, p0, v2

    if-gez v1, :cond_34

    const-string/jumbo v0, "%.7f"

    goto :goto_16

    :cond_34
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v1, p0, v2

    if-gez v1, :cond_41

    const-string/jumbo v0, "%.6f"

    goto :goto_16

    :cond_41
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, p0, v2

    if-gez v1, :cond_4e

    const-string/jumbo v0, "%.5f"

    goto :goto_16

    :cond_4e
    const-wide v2, 0x3fb999999999999aL    # 0.1

    cmpg-double v1, p0, v2

    if-gez v1, :cond_5b

    const-string/jumbo v0, "%.4f"

    goto :goto_16

    :cond_5b
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_65

    const-string/jumbo v0, "%.3f"

    goto :goto_16

    :cond_65
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_6f

    const-string/jumbo v0, "%.2f"

    goto :goto_16

    :cond_6f
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpg-double v1, p0, v2

    if-gez v1, :cond_79

    const-string/jumbo v0, "%.1f"

    goto :goto_16

    :cond_79
    const-string/jumbo v0, "%.0f"

    goto :goto_16
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_fe

    const/4 v15, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/16 v16, 0x0

    :goto_22
    move/from16 v0, v16

    if-ge v0, v2, :cond_14f

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    new-instance v4, Lcom/android/internal/os/BatterySipper;

    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    const-wide/16 v6, 0x0

    invoke-direct {v4, v3, v5, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v20

    const-wide/16 v6, 0x0

    cmpl-double v3, v20, v6

    if-nez v3, :cond_e1

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    if-nez v3, :cond_fa

    :cond_e1
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v23

    const/16 v3, 0x3f2

    move/from16 v0, v19

    if-ne v0, v3, :cond_101

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_f6
    if-nez v19, :cond_fa

    move-object/from16 v18, v4

    :cond_fa
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_22

    :cond_fe
    const/4 v15, 0x0

    goto/16 :goto_a

    :cond_101
    const/16 v3, 0x3ea

    move/from16 v0, v19

    if-ne v0, v3, :cond_10f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    :cond_10f
    if-nez v15, :cond_147

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_147

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v6, 0x2710

    if-lt v3, v6, :cond_147

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    if-nez v17, :cond_141

    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_141
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    :cond_147
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f6

    :cond_14f
    if-eqz v18, :cond_16d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-object/from16 v8, v18

    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    :cond_16d
    return-void
.end method

.method private processMiscUsage()V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addScreenUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addMemoryUsage()V

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    :cond_1c
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-array v1, p1, [B

    :cond_4
    :goto_4
    array-length v4, v1

    sub-int/2addr v4, v3

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    if-gtz v0, :cond_d

    return-object v1

    :cond_d
    add-int/2addr v3, v0

    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result p1

    array-length v4, v1

    sub-int/2addr v4, v3

    if-le p1, v4, :cond_4

    add-int v4, v3, p1

    new-array v2, v4, [B

    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v1, v2

    goto :goto_4
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .registers 12

    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v8

    :try_start_3
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_63

    if-eqz v6, :cond_13

    monitor-exit v8

    return-object v6

    :cond_13
    const/4 v2, 0x0

    :try_start_14
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_3b
    .catchall {:try_start_14 .. :try_end_19} :catchall_5c

    :try_start_19
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    array-length v7, v0

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_32} :catch_6b
    .catchall {:try_start_19 .. :try_end_32} :catchall_68

    if-eqz v3, :cond_37

    :try_start_34
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_39
    .catchall {:try_start_34 .. :try_end_37} :catchall_63

    :cond_37
    :goto_37
    monitor-exit v8

    return-object v7

    :catch_39
    move-exception v1

    goto :goto_37

    :catch_3b
    move-exception v1

    :goto_3c
    :try_start_3c
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "Unable to read history to file"

    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3c .. :try_end_44} :catchall_5c

    if-eqz v2, :cond_49

    :try_start_46
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_5a
    .catchall {:try_start_46 .. :try_end_49} :catchall_63

    :cond_49
    :goto_49
    monitor-exit v8

    const-string/jumbo v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    return-object v7

    :catch_5a
    move-exception v1

    goto :goto_49

    :catchall_5c
    move-exception v7

    :goto_5d
    if-eqz v2, :cond_62

    :try_start_5f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_66
    .catchall {:try_start_5f .. :try_end_62} :catchall_63

    :cond_62
    :goto_62
    :try_start_62
    throw v7
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v7

    monitor-exit v8

    throw v7

    :catch_66
    move-exception v1

    goto :goto_62

    :catchall_68
    move-exception v7

    move-object v2, v3

    goto :goto_5d

    :catch_6b
    move-exception v1

    move-object v2, v3

    goto :goto_3c
.end method


# virtual methods
.method public clearStats()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public convertMsToUs(J)J
    .registers 6

    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p1

    return-wide v0
.end method

.method public convertUsToMs(J)J
    .registers 6

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    return-wide v0
.end method

.method public create(Landroid/os/BatteryStats;)V
    .registers 4

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .registers 4

    if-eqz p1, :cond_a

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    :cond_a
    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    :cond_b
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    return-object v0
.end method

.method public getComputedPower()D
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    return-wide v0
.end method

.method public getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J
    .registers 8

    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v2

    return-wide v2

    :cond_c
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getMaxDrainedPower()D
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    return-wide v0
.end method

.method public getMaxPower()D
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getMaxRealPower()D
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    return-wide v0
.end method

.method public getMinDrainedPower()D
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J
    .registers 15

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/os/BatteryStatsHelper;->convertMsToUs(J)J

    move-result-wide v4

    const/4 v9, 0x1

    new-array v0, v9, [I

    aput v8, v0, v8

    const-wide/16 v6, 0x0

    array-length v9, v0

    :goto_11
    if-ge v8, v9, :cond_1d

    aget v1, v0, v8

    invoke-virtual {p1, v1, v4, v5, p2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v2

    add-long/2addr v6, v2

    add-int/lit8 v8, v8, 0x1

    goto :goto_11

    :cond_1d
    invoke-virtual {p0, p1, v4, v5}, Lcom/android/internal/os/BatteryStatsHelper;->getForegroundActivityTotalTimeUs(Landroid/os/BatteryStats$Uid;J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/os/BatteryStatsHelper;->convertUsToMs(J)J

    move-result-wide v8

    return-wide v8
.end method

.method public getStats()Landroid/os/BatteryStats;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    :cond_7
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    return-object v0
.end method

.method public getStatsPeriod()J
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    return-wide v0
.end method

.method public getStatsType()I
    .registers 2

    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    return v0
.end method

.method public getTotalPower()D
    .registers 3

    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .registers 8

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    return v3

    :cond_e
    array-length v4, v1

    move v2, v3

    :goto_10
    if-ge v2, v4, :cond_21

    aget-object v0, v1, v2

    iget-object v5, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const/4 v2, 0x1

    return v2

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_21
    return v3
.end method

.method public isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
    .registers 10

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v2, :cond_16

    const/4 v1, -0x1

    :goto_7
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-ltz v1, :cond_1b

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1b

    return v7

    :cond_16
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    goto :goto_7

    :cond_1b
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v2, :cond_33

    iget-object v4, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_23
    if-ge v2, v5, :cond_33

    aget-object v0, v4, v2

    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    return v7

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_33
    return v3
.end method

.method public refreshStats(II)V
    .registers 5

    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    mul-long v4, v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    mul-long v6, v0, v2

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    if-nez v20, :cond_59

    return-void

    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    if-nez v20, :cond_72

    new-instance v20, Lcom/android/internal/os/CpuPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    if-nez v20, :cond_94

    new-instance v20, Lcom/android/internal/os/MemoryPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/os/MemoryPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMemoryPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    if-nez v20, :cond_b6

    new-instance v20, Lcom/android/internal/os/WakelockPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_b6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v20, v0

    if-nez v20, :cond_de

    new-instance v20, Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v22, v0

    invoke-direct/range {v20 .. v22}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    :cond_de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset(Landroid/os/BatteryStats;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v8, v0, :cond_126

    :cond_10f
    if-eqz v8, :cond_311

    new-instance v20, Lcom/android/internal/os/WifiPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    :goto_11c
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    :cond_126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    if-eqz v20, :cond_151

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v7, v0, :cond_166

    :cond_151
    new-instance v20, Lcom/android/internal/os/BluetoothPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    :cond_166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    if-nez v20, :cond_1a1

    new-instance v21, Lcom/android/internal/os/SensorPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string/jumbo v23, "sensor"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/hardware/SensorManager;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_1a1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    if-nez v20, :cond_1c3

    new-instance v20, Lcom/android/internal/os/CameraPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_1c3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    if-nez v20, :cond_1e5

    new-instance v20, Lcom/android/internal/os/FlashlightPowerCalculator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/os/PowerCalculator;->reset()V

    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptimeUs:J

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtimeUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptimeUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtimeUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p5

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptimeUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtimeUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemainingUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemainingUs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v20

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v22

    mul-double v20, v20, v22

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->processAppUsage(Landroid/util/SparseArray;)V

    const/4 v9, 0x0

    :goto_2da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_31e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    iget-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_30e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_30e
    add-int/lit8 v9, v9, 0x1

    goto :goto_2da

    :cond_311
    new-instance v20, Lcom/android/internal/os/WifiPowerEstimator;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    goto/16 :goto_11c

    :cond_31e
    const/4 v9, 0x0

    :goto_31f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_36a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    const/4 v13, 0x0

    :goto_33c
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v13, v0, :cond_367

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    iget-wide v0, v6, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-eqz v20, :cond_364

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_364
    add-int/lit8 v13, v13, 0x1

    goto :goto_33c

    :cond_367
    add-int/lit8 v9, v9, 0x1

    goto :goto_31f

    :cond_36a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/internal/os/BatteryStatsHelper$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    invoke-static/range {v20 .. v21}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscUsage()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v18

    const/4 v9, 0x0

    :goto_3bf
    move/from16 v0, v18

    if-ge v9, v0, :cond_3e8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    add-double v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    add-int/lit8 v9, v9, 0x1

    goto :goto_3bf

    :cond_3e8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_46d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v22, v0

    cmpl-double v20, v20, v22

    if-lez v20, :cond_4c7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v22, v0

    sub-double v4, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v20, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_450

    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    neg-int v12, v0

    :cond_450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    :cond_46d
    :goto_46d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v20

    sub-double v16, v20, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    const-wide v22, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v20, v20, v22

    if-lez v20, :cond_524

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v15

    :goto_499
    if-ge v9, v15, :cond_524

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/BatterySipper;

    iget-boolean v0, v14, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    move/from16 v20, v0

    if-nez v20, :cond_4c4

    iget-wide v0, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-wide/from16 v20, v0

    iget-wide v0, v14, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    div-double v20, v20, v16

    mul-double v20, v20, v10

    move-wide/from16 v0, v20

    iput-wide v0, v14, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-virtual {v14}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    :cond_4c4
    add-int/lit8 v9, v9, 0x1

    goto :goto_499

    :cond_4c7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v22, v0

    cmpg-double v20, v20, v22

    if-gez v20, :cond_46d

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    move-wide/from16 v22, v0

    sub-double v4, v20, v22

    new-instance v6, Lcom/android/internal/os/BatterySipper;

    sget-object v20, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v6, v0, v1, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v12

    if-gez v12, :cond_505

    add-int/lit8 v20, v12, 0x1

    move/from16 v0, v20

    neg-int v12, v0

    :cond_505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v12, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    goto/16 :goto_46d

    :cond_524
    return-void
.end method

.method public refreshStats(ILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v1, :cond_1c

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1c
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    return-void
.end method

.method public removeHiddenBatterySippers(Ljava/util/List;)D
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)D"
        }
    .end annotation

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    :goto_9
    if-ltz v0, :cond_4c

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, v4}, Lcom/android/internal/os/BatteryStatsHelper;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    iget-boolean v5, v4, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v5, :cond_42

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_42

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_42

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_42

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_42

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_42

    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v5, v6, :cond_42

    iget-wide v6, v4, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v2, v6

    :cond_42
    iget-object v5, v4, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_49

    move-object v1, v4

    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_4c
    if-eqz v1, :cond_51

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;->smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V

    :cond_51
    return-wide v2
.end method

.method public setPackageManager(Landroid/content/pm/PackageManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public setServicePackageArray([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mServicepackageArray:[Ljava/lang/String;

    return-void
.end method

.method public setSystemPackageArray([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mSystemPackageArray:[Ljava/lang/String;

    return-void
.end method

.method public shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .registers 4

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->isTypeService(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z

    move-result v1

    goto :goto_b
.end method

.method public smearScreenBatterySipper(Ljava/util/List;Lcom/android/internal/os/BatterySipper;)V
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Lcom/android/internal/os/BatterySipper;",
            ")V"
        }
    .end annotation

    const-wide/16 v10, 0x0

    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    :goto_c
    if-ge v3, v7, :cond_2c

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/BatterySipper;

    iget-object v12, v13, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v12, :cond_29

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->getProcessForegroundTimeMs(Landroid/os/BatteryStats$Uid;I)J

    move-result-wide v8

    invoke-virtual {v12}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    invoke-virtual {v2, v13, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    add-long/2addr v10, v8

    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_2c
    if-eqz p2, :cond_5e

    const-wide/32 v14, 0x927c0

    cmp-long v13, v10, v14

    if-ltz v13, :cond_5e

    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v3, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    :goto_3e
    if-ge v3, v7, :cond_5e

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    const-wide/16 v14, 0x0

    invoke-virtual {v2, v13, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v14

    long-to-double v14, v14

    mul-double/2addr v14, v4

    long-to-double v0, v10

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    iput-wide v14, v6, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_5e
    return-void
.end method

.method public storeState()V
    .registers 2

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .registers 11

    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    monitor-enter v7

    :try_start_3
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_4d

    const/4 v1, 0x0

    :try_start_13
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_18} :catch_35
    .catchall {:try_start_13 .. :try_end_18} :catchall_46

    :try_start_18
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v3, v8}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_55
    .catchall {:try_start_18 .. :try_end_2b} :catchall_52

    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_33
    .catchall {:try_start_2d .. :try_end_30} :catchall_4d

    :cond_30
    :goto_30
    move-object v1, v2

    :cond_31
    :goto_31
    monitor-exit v7

    return-void

    :catch_33
    move-exception v0

    goto :goto_30

    :catch_35
    move-exception v0

    :goto_36
    :try_start_36
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Unable to write history to file"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_36 .. :try_end_3e} :catchall_46

    if-eqz v1, :cond_31

    :try_start_40
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44
    .catchall {:try_start_40 .. :try_end_43} :catchall_4d

    goto :goto_31

    :catch_44
    move-exception v0

    goto :goto_31

    :catchall_46
    move-exception v6

    :goto_47
    if-eqz v1, :cond_4c

    :try_start_49
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_50
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    :cond_4c
    :goto_4c
    :try_start_4c
    throw v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    :catchall_4d
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_50
    move-exception v0

    goto :goto_4c

    :catchall_52
    move-exception v6

    move-object v1, v2

    goto :goto_47

    :catch_55
    move-exception v0

    move-object v1, v2

    goto :goto_36
.end method
