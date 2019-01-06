.class public Landroid/os/statistics/PerfSupervisionSettings;
.super Ljava/lang/Object;
.source "PerfSupervisionSettings.java"


# static fields
.field private static final DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

.field private static final DEFAULT_DIVISION_RATIO:I

.field private static final DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

.field private static final DEFAULT_HARD_THRESHOLD_MS:I

.field private static final DEFAULT_LEVEL:I

.field private static final DEFAULT_SOFT_THRESHOLD_MS:I

.field public static final MIN_HARD_THRESHOLD_MS:I = 0x1f4

.field public static final MIN_SOFT_THRESHOLD_MS:I = 0xa

.field public static final PERF_SUPERVISION_OFF:I = 0x0

.field public static final PERF_SUPERVISION_ON_HEAVY:I = 0x2

.field public static final PERF_SUPERVISION_ON_NORMAL:I = 0x1

.field public static final PERF_SUPERVISION_ON_TEST:I = 0x9

.field private static final TAG:Ljava/lang/String;

.field public static final sGlobalPerfEventQueueLength:I

.field public static final sIsAutoAnalysisOn:Z

.field public static final sPerfSupervisionDivisionRatio:I

.field public static final sPerfSupervisionHardThreshold:I

.field private static final sPerfSupervisionLevel:I

.field public static final sPerfSupervisionSoftThreshold:I

.field private static sReadySupervision:Z


# direct methods
.method static constructor <clinit>()V
    .registers 12

    const-class v7, Landroid/os/statistics/PerfSupervisionSettings;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    sput-object v7, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    const/4 v7, 0x0

    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    const/4 v2, 0x0

    :try_start_c
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "/dev/misysinfofreader"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_15b

    move-result v2

    :goto_18
    sget-boolean v7, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-nez v7, :cond_20

    xor-int/lit8 v7, v2, 0x1

    if-eqz v7, :cond_79

    :cond_20
    const/4 v7, 0x0

    :goto_21
    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    invoke-static {}, Lmiui/os/Environment;->getCpuCount()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long/2addr v8, v10

    const-wide/16 v10, 0x400

    div-long v4, v8, v10

    const/4 v7, 0x2

    if-gt v0, v7, :cond_7b

    const-wide/16 v8, 0x400

    cmp-long v7, v4, v8

    if-gtz v7, :cond_7b

    const/16 v7, 0x190

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    const/16 v7, 0x7d0

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    const/4 v7, 0x4

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    const/16 v7, 0x7d0

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    const/4 v7, 0x0

    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    :goto_4d
    const-string/jumbo v7, "persist.sys.perf_mistats_opt"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Lmiui/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ae

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    :goto_6d
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    if-nez v7, :cond_157

    const/4 v7, 0x0

    :goto_76
    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    return-void

    :cond_79
    const/4 v7, 0x1

    goto :goto_21

    :cond_7b
    const/4 v7, 0x4

    if-gt v0, v7, :cond_9b

    const/16 v7, 0xc8

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    const/16 v7, 0x7d0

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    const/4 v7, 0x2

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    :goto_89
    const-wide/16 v8, 0x600

    cmp-long v7, v4, v8

    if-gtz v7, :cond_a7

    const/16 v7, 0x1388

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    :goto_93
    sget-boolean v7, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v7, :cond_ac

    const/4 v7, 0x0

    :goto_98
    sput-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    goto :goto_4d

    :cond_9b
    const/16 v7, 0x64

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    const/16 v7, 0x3e8

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    const/4 v7, 0x2

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    goto :goto_89

    :cond_a7
    const/16 v7, 0x2710

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_GLOBAL_PERF_EVENT_QUEUE_LENGTH:I

    goto :goto_93

    :cond_ac
    const/4 v7, 0x1

    goto :goto_98

    :cond_ae
    const-string/jumbo v7, " "

    const-string/jumbo v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x1

    if-lt v7, v8, :cond_142

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_142

    const/4 v7, 0x0

    aget-object v7, v6, v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    invoke-static {v7, v8}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v7

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    :goto_d9
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_147

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_147

    const/4 v7, 0x1

    aget-object v7, v6, v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    invoke-static {v7, v8}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    :goto_f9
    array-length v7, v6

    const/4 v8, 0x3

    if-lt v7, v8, :cond_14c

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_14c

    const/4 v7, 0x2

    aget-object v7, v6, v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    invoke-static {v7, v8}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v7

    const/16 v8, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    :goto_119
    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_151

    const/4 v7, 0x3

    aget-object v7, v6, v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_151

    const/4 v7, 0x3

    aget-object v7, v6, v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    invoke-static {v7, v8}, Landroid/os/statistics/PerfSupervisionSettings;->parseIntWithDefault(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sget v8, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    div-int/lit8 v8, v8, 0xa

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    goto/16 :goto_6d

    :cond_142
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_LEVEL:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    goto :goto_d9

    :cond_147
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_SOFT_THRESHOLD_MS:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    goto :goto_f9

    :cond_14c
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_HARD_THRESHOLD_MS:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    goto :goto_119

    :cond_151
    sget v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_DIVISION_RATIO:I

    sput v7, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    goto/16 :goto_6d

    :cond_157
    sget-boolean v7, Landroid/os/statistics/PerfSupervisionSettings;->DEFAULT_AUTO_ANALYSIS_ON_STATE:Z

    goto/16 :goto_76

    :catch_15b
    move-exception v1

    goto/16 :goto_18
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSupervisionLevel()I
    .registers 1

    sget-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v0, :cond_7

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static init()V
    .registers 3

    sget-object v0, Landroid/os/statistics/PerfSupervisionSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionDivisionRatio:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sGlobalPerfEventQueueLength:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/os/statistics/PerfSupervisionSettings;->sIsAutoAnalysisOn:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isAboveHardThreshold(J)Z
    .registers 4

    sget v0, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static isInHeavyMode()Z
    .registers 3

    const/4 v0, 0x0

    sget-boolean v1, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v1, :cond_b

    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public static isInTestMode()Z
    .registers 3

    const/4 v0, 0x0

    sget-boolean v1, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    if-eqz v1, :cond_c

    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionLevel:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method public static isSupervisionOn()Z
    .registers 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->getSupervisionLevel()I

    move-result v1

    if-lt v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static notifySupervisionReady()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/os/statistics/PerfSupervisionSettings;->sReadySupervision:Z

    return-void
.end method

.method static parseIntWithDefault(Ljava/lang/String;I)I
    .registers 4

    move v1, p1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_6

    move-result v1

    :goto_5
    return v1

    :catch_6
    move-exception v0

    goto :goto_5
.end method
