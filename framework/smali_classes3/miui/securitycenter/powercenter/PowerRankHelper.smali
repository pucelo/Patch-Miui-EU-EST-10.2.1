.class public Lmiui/securitycenter/powercenter/PowerRankHelper;
.super Ljava/lang/Object;
.source "PowerRankHelper.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerRankHelper"


# instance fields
.field private final mAppUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mMaxPower:D

.field private mMiscPower:D

.field private final mMiscUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalPower:D

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-direct {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v0, 0x0

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mUm:Landroid/os/UserManager;

    iput-object p1, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V
    .registers 6

    iget-wide v0, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iget-wide v2, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_c

    iget-wide v0, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    :cond_c
    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v2, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    iget-wide v2, p1, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAppUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    return-object v0
.end method

.method public getMiscUsageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/securitycenter/powercenter/BatterySipper;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    return-object v0
.end method

.method public getMiscUsageTotal()D
    .registers 3

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    return-wide v0
.end method

.method public getUsageTotal()D
    .registers 3

    iget-wide v0, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    return-wide v0
.end method

.method public refreshStats()V
    .registers 15

    const/4 v13, 0x0

    const/4 v12, 0x2

    const-wide/16 v10, 0x0

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    iput-wide v10, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMaxPower:D

    iput-wide v10, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iput-wide v10, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscPower:D

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, -0x1

    invoke-virtual {v5, v13, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v2

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_32
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_58

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x6

    invoke-static {v5, v6, v0}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    iget-wide v6, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-wide v8, v3, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mTotalPower:D

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_58
    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_68

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v12, v0}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_32

    :cond_68
    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_79

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x5

    invoke-static {v5, v6, v0}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_32

    :cond_79
    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_8a

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x3

    invoke-static {v5, v6, v0}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_32

    :cond_8a
    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_9b

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x4

    invoke-static {v5, v6, v0}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_32

    :cond_9b
    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_ab

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, v13, v0}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto :goto_32

    :cond_ab
    iget-object v5, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v6, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v5, v6, :cond_bd

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6, v0}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->makeBatterySipper(Landroid/content/Context;ILcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    move-result-object v3

    invoke-direct {p0, v3}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    goto/16 :goto_32

    :cond_bd
    invoke-static {v2, v0}, Lmiui/securitycenter/powercenter/BatterySipperHelper;->addBatterySipper(Lmiui/securitycenter/powercenter/BatterySipper;Lcom/android/internal/os/BatterySipper;)Lmiui/securitycenter/powercenter/BatterySipper;

    goto/16 :goto_32

    :cond_c2
    iget-wide v6, v2, Lmiui/securitycenter/powercenter/BatterySipper;->usageTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_d3

    iget-wide v6, v2, Lmiui/securitycenter/powercenter/BatterySipper;->value:D

    cmpl-double v5, v6, v10

    if-lez v5, :cond_d3

    invoke-direct {p0, v2}, Lmiui/securitycenter/powercenter/PowerRankHelper;->addEntry(Lmiui/securitycenter/powercenter/BatterySipper;)V

    :cond_d3
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v12, :cond_e0

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mAppUsageList:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_e0
    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v12, :cond_ed

    iget-object v5, p0, Lmiui/securitycenter/powercenter/PowerRankHelper;->mMiscUsageList:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_ed
    return-void
.end method
