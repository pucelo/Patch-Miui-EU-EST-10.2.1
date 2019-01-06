.class public Lmiui/securitycenter/powercenter/BatteryHistoryHelper;
.super Ljava/lang/Object;
.source "BatteryHistoryHelper.java"


# instance fields
.field private mStats:Landroid/os/BatteryStats;

.field private rec:Landroid/os/BatteryStats$HistoryItem;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v0}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    return-void
.end method


# virtual methods
.method public finishIterate()V
    .registers 2

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    return-void
.end method

.method public getBatteryUsageRealtime()J
    .registers 7

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextHistoryItem(Lmiui/securitycenter/powercenter/HistoryItemWrapper;)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v2, :cond_7

    return v4

    :cond_7
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    iget-object v5, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    invoke-virtual {v2, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v1

    if-nez v1, :cond_12

    return v4

    :cond_12
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cmd:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v6, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->time:J

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryLevel:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryStatus:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryStatus:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryHealth:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryHealth:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-byte v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryPlugType:B

    iput-byte v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryPlugType:B

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-short v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryTemperature:S

    iput-short v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryTemperature:S

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget-char v2, v2, Landroid/os/BatteryStats$HistoryItem;->batteryVoltage:C

    iput-char v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->batteryVoltage:C

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v5, 0x10000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_99

    move v2, v3

    :goto_4c
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wifiOn:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x20000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_9b

    move v2, v3

    :goto_58
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->gpsOn:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x80000

    and-int/2addr v2, v5

    if-eqz v2, :cond_9d

    move v2, v3

    :goto_64
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->charging:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x100000

    and-int/2addr v2, v5

    if-eqz v2, :cond_9f

    move v2, v3

    :goto_70
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->screenOn:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, 0x40000000    # 2.0f

    and-int/2addr v2, v5

    if-eqz v2, :cond_a1

    move v2, v3

    :goto_7c
    iput-boolean v2, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->wakelockOn:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v5, -0x80000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_88

    move v4, v3

    :cond_88
    iput-boolean v4, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->cpuRunning:Z

    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0x1c0

    shr-int/lit8 v2, v2, 0x6

    const/4 v4, 0x3

    if-ne v2, v4, :cond_a3

    const/4 v0, 0x0

    :goto_96
    iput v0, p1, Lmiui/securitycenter/powercenter/HistoryItemWrapper;->phoneSignalStrength:I

    return v3

    :cond_99
    move v2, v4

    goto :goto_4c

    :cond_9b
    move v2, v4

    goto :goto_58

    :cond_9d
    move v2, v4

    goto :goto_64

    :cond_9f
    move v2, v4

    goto :goto_70

    :cond_a1
    move v2, v4

    goto :goto_7c

    :cond_a3
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x200000

    and-int/2addr v2, v4

    if-eqz v2, :cond_ae

    const/4 v0, 0x1

    goto :goto_96

    :cond_ae
    iget-object v2, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->rec:Landroid/os/BatteryStats$HistoryItem;

    iget v2, v2, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v2, v2, 0x38

    shr-int/lit8 v0, v2, 0x3

    add-int/lit8 v0, v0, 0x2

    goto :goto_96
.end method

.method public getScreenOnTime()J
    .registers 9

    iget-object v4, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v4, :cond_7

    const-wide/16 v4, 0x0

    return-wide v4

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    iget-object v4, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v4, v2, v3}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    move-result-wide v0

    iget-object v4, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v4

    return-wide v4
.end method

.method public refreshHistory()V
    .registers 2

    invoke-static {}, Lmiui/securitycenter/powercenter/BatteryStatsUtils;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    return-void
.end method

.method public startIterate()Z
    .registers 2

    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Lmiui/securitycenter/powercenter/BatteryHistoryHelper;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v0

    return v0
.end method
