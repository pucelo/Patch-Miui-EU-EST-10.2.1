.class public Lcom/android/internal/os/CpuPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "CpuPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final MICROSEC_IN_HR:J = 0xd693a400L

.field private static final TAG:Ljava/lang/String; = "CpuPowerCalculator"


# instance fields
.field private final mProfile:Lcom/android/internal/os/PowerProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    return-void
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .registers 36

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v24

    move-object/from16 v0, p2

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v26

    add-long v24, v24, v26

    const-wide/16 v26, 0x3e8

    div-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/PowerProfile;->getNumCpuClusters()I

    move-result v14

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    :goto_29
    if-ge v4, v14, :cond_65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/os/PowerProfile;->getNumSpeedStepsInCpuCluster(I)I

    move-result v20

    const/16 v19, 0x0

    :goto_39
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_62

    move-object/from16 v0, p2

    move/from16 v1, v19

    move/from16 v2, p7

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/BatteryStats$Uid;->getTimeAtCpuSpeed(III)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/os/CpuPowerCalculator;->mProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePowerForCpu(II)D

    move-result-wide v26

    mul-double v10, v24, v26

    add-double/2addr v8, v10

    add-int/lit8 v19, v19, 0x1

    goto :goto_39

    :cond_62
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_65
    const-wide v24, 0x41ead27480000000L    # 3.6E9

    div-double v24, v8, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v12, 0x0

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v17

    const/4 v5, 0x0

    :goto_85
    move/from16 v0, v17

    if-ge v5, v0, :cond_108

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/os/BatteryStats$Uid$Proc;

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v26

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v24

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v26

    add-long v24, v24, v26

    move-object/from16 v0, v18

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v26

    add-long v6, v24, v26

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string/jumbo v24, "*"

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_ee

    :cond_e6
    long-to-double v12, v6

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_eb
    :goto_eb
    add-int/lit8 v5, v5, 0x1

    goto :goto_85

    :cond_ee
    long-to-double v0, v6

    move-wide/from16 v24, v0

    cmpg-double v21, v12, v24

    if-gez v21, :cond_eb

    const-string/jumbo v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    xor-int/lit8 v21, v21, 0x1

    if-eqz v21, :cond_eb

    long-to-double v12, v6

    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_eb

    :cond_108
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    move-wide/from16 v26, v0

    cmp-long v21, v24, v26

    if-lez v21, :cond_124

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    :cond_124
    return-void
.end method
