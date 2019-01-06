.class public Landroid/os/health/SystemHealthManager;
.super Ljava/lang/Object;
.source "SystemHealthManager.java"


# instance fields
.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string/jumbo v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/health/SystemHealthManager;-><init>(Lcom/android/internal/app/IBatteryStats;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/os/health/SystemHealthManager;
    .registers 2

    const-string/jumbo v0, "systemhealth"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/health/SystemHealthManager;

    return-object v0
.end method


# virtual methods
.method public takeMyUidSnapshot()Landroid/os/health/HealthStats;
    .registers 2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/health/SystemHealthManager;->takeUidSnapshot(I)Landroid/os/health/HealthStats;

    move-result-object v0

    return-object v0
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStats;
    .registers 5

    :try_start_0
    iget-object v2, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    return-object v2

    :catch_b
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStats;
    .registers 8

    :try_start_0
    iget-object v5, p0, Landroid/os/health/SystemHealthManager;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    array-length v5, p1

    new-array v4, v5, [Landroid/os/health/HealthStats;

    array-length v0, p1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_18

    aget-object v5, v3, v2

    invoke-virtual {v5}, Landroid/os/health/HealthStatsParceler;->getHealthStats()Landroid/os/health/HealthStats;

    move-result-object v5

    aput-object v5, v4, v2
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_18
    return-object v4

    :catch_19
    move-exception v1

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
