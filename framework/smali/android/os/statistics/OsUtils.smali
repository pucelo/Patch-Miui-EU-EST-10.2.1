.class public Landroid/os/statistics/OsUtils;
.super Ljava/lang/Object;
.source "OsUtils.java"


# static fields
.field public static final SCHED_GROUP_UNKNOWN:I = 0x7fffffff

.field private static sDoneFindIsRenderThreadMethod:Z

.field private static sIsRenderThreadMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeThreadSchedulePolicy(I)I
    .registers 2

    if-gez p0, :cond_3

    :goto_2
    return p0

    :cond_3
    const v0, -0x40000001    # -1.9999999f

    and-int/2addr p0, v0

    goto :goto_2
.end method

.method public static native getCoarseUptimeMillisFast()J
.end method

.method public static native getDeltaToUptimeMillis()J
.end method

.method public static native getRunningTimeMs()J
.end method

.method public static getSchedGroup(I)I
    .registers 3

    :try_start_0
    invoke-static {p0}, Landroid/os/Process;->getProcessGroup(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    :catch_5
    move-exception v0

    const v1, 0x7fffffff

    return v1
.end method

.method public static native getThreadSchedStat([J)V
.end method

.method public static getThreadSchedulePolicy(I)I
    .registers 3

    :try_start_0
    invoke-static {p0}, Landroid/os/statistics/OsUtils;->getThreadScheduler(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private static final native getThreadScheduler(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public static isHighPriority(II)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x2

    if-eq p0, v2, :cond_b

    if-ne p0, v0, :cond_c

    :cond_b
    return v0

    :cond_c
    if-nez p0, :cond_14

    const/4 v2, -0x2

    if-gt p1, v2, :cond_12

    :goto_11
    return v0

    :cond_12
    move v0, v1

    goto :goto_11

    :cond_14
    return v1
.end method

.method public static isHighSchedGroup(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p0, v1, :cond_7

    const/4 v1, 0x5

    if-ne p0, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eq p0, v0, :cond_7

    const/16 v1, 0x9

    if-eq p0, v1, :cond_7

    const/16 v1, 0xa

    if-eq p0, v1, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static native isIsolatedProcess()Z
.end method

.method public static isLowPriority(II)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p0, v2, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x2

    if-eq p0, v2, :cond_b

    if-ne p0, v0, :cond_c

    :cond_b
    return v1

    :cond_c
    if-nez p0, :cond_15

    const/16 v2, 0xa

    if-lt p1, v2, :cond_13

    :goto_12
    return v0

    :cond_13
    move v0, v1

    goto :goto_12

    :cond_15
    return v0
.end method

.method public static isRenderThread(I)Z
    .registers 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v2, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    if-nez v2, :cond_19

    const-class v2, Landroid/view/ThreadedRenderer;

    const-string/jumbo v3, "isRenderThread"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryFindMethodBestMatch(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    sput-boolean v7, Landroid/os/statistics/OsUtils;->sDoneFindIsRenderThreadMethod:Z

    :cond_19
    sget-object v2, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3f

    :try_start_1d
    sget-object v2, Landroid/os/statistics/OsUtils;->sIsRenderThreadMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_33} :catch_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_33} :catch_35

    move-result v2

    return v2

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    return v6

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    return v6

    :cond_3f
    return v6
.end method

.method public static native setThreadPriorityUnconditonally(II)V
.end method
