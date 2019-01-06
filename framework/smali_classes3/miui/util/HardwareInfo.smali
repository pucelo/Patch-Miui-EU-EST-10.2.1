.class public Lmiui/util/HardwareInfo;
.super Ljava/lang/Object;
.source "HardwareInfo.java"


# static fields
.field private static DEBUG_MEMORY_PERFORMANCE:Z = false

.field private static DEBUG_MEMORY_PERFORMANCE_MASK:I = 0x0

.field private static final GB:J = 0x40000000L

.field private static final MB:J = 0x100000L

.field private static final TAG:Ljava/lang/String; = "HardwareInfo"

.field private static sDevice2Memory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sDevice2MemoryAdjust:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sTotalMemory:J

.field private static sTotalPhysicalMemory:J


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const-wide v8, 0x80000000L

    const-wide/32 v6, -0x20000000

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/32 v4, 0x40000000

    const-wide/16 v2, 0x0

    sput-wide v2, Lmiui/util/HardwareInfo;->sTotalMemory:J

    sput v0, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE_MASK:I

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string/jumbo v2, "persist.sys.mem_perf_debug"

    invoke-static {v2, v1}, Lmiui/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sget v3, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE_MASK:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_100

    :cond_2a
    :goto_2a
    sput-boolean v0, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "hwu9200"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "hwu9500"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "maguro"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "ville"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "LT26i"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "ventana"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "stuttgart"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "t03g"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "pisces"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "HM2014501"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "leo"

    const-wide v2, 0x100000000L

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "HM2014011"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "HM2013022"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    const-string/jumbo v1, "HM2013023"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    const-string/jumbo v1, "lcsh92_wet_xm_td"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    const-string/jumbo v1, "lcsh92_wet_xm_kk"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_100
    move v0, v1

    goto/16 :goto_2a
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAndroidCacheMemory()J
    .registers 7

    const-wide/16 v2, 0x0

    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->getAndroidCachedEmptyProcessMemory()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-boolean v4, Lmiui/util/HardwareInfo;->DEBUG_MEMORY_PERFORMANCE:Z

    if-eqz v4, :cond_2f

    const-string/jumbo v4, "HardwareInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get CacheMemory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "KB"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    cmp-long v4, v0, v2

    if-lez v4, :cond_34

    :goto_33
    return-wide v0

    :cond_34
    move-wide v0, v2

    goto :goto_33
.end method

.method public static getFreeMemory()J
    .registers 2

    invoke-static {}, Lcom/miui/daemon/performance/PerfShielderManager;->getFreeMemory()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLowMemoryLimitation()J
    .registers 6

    :try_start_0
    const-string/jumbo v3, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-static {v3}, Lmiui/os/FileUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_21

    move-result v2

    mul-int/lit8 v3, v2, 0x4

    mul-int/lit16 v3, v3, 0x400

    int-to-long v4, v3

    return-wide v4

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method public static getTotalMemory()J
    .registers 4

    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    :cond_e
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalMemory:J

    return-wide v0
.end method

.method public static getTotalPhysicalMemory()J
    .registers 6

    const-wide/16 v4, 0x400

    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2Memory:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    :cond_24
    :goto_24
    sget-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    return-wide v0

    :cond_27
    invoke-static {}, Lmiui/util/HardwareInfo;->getTotalMemory()J

    move-result-wide v0

    div-long/2addr v0, v4

    const-wide/32 v2, 0x19000

    add-long/2addr v0, v2

    const-wide/32 v2, 0x80000

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x200

    mul-long/2addr v0, v2

    mul-long/2addr v0, v4

    mul-long/2addr v0, v4

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-wide v2, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    sget-object v0, Lmiui/util/HardwareInfo;->sDevice2MemoryAdjust:Ljava/util/HashMap;

    sget-object v1, Lmiui/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    sput-wide v0, Lmiui/util/HardwareInfo;->sTotalPhysicalMemory:J

    goto :goto_24
.end method
