.class public abstract Lcom/android/server/am/MiuiActivityHelper;
.super Ljava/lang/Object;
.source "MiuiActivityHelper.java"


# static fields
.field static sAms:Lcom/android/server/am/ActivityManagerService;

.field private static sTotalMem:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/MiuiActivityHelper;->sTotalMem:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "miui_security"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static getCachePss()J
    .registers 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    sget-object v6, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    if-nez v6, :cond_12

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    instance-of v6, v0, Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_12

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    sput-object v0, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    :cond_12
    const-wide/16 v2, 0x0

    sget-object v6, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_3a

    sget-object v6, Lcom/android/server/am/MiuiActivityHelper;->sAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v7, v8, v8, v7}, Lcom/android/server/am/ActivityManagerService;->collectProcesses(Ljava/io/PrintWriter;IZ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3a

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v7, 0x384

    if-lt v6, v7, :cond_24

    iget-wide v6, v1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    add-long/2addr v2, v6

    goto :goto_24

    :cond_3a
    const-wide/16 v6, 0x400

    mul-long/2addr v6, v2

    return-wide v6
.end method

.method public static getCachedLostRam()J
    .registers 2

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getNativeCachedLostMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFreeMemory()J
    .registers 8

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getNativeFreeMemory()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getCachedLostRam()J

    move-result-wide v6

    add-long v2, v4, v6

    invoke-static {}, Lcom/android/server/am/MiuiActivityHelper;->getCachePss()J

    move-result-wide v4

    add-long v0, v2, v4

    sget-wide v4, Lcom/android/server/am/MiuiActivityHelper;->sTotalMem:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_17

    move-wide v0, v2

    :cond_17
    return-wide v0
.end method

.method private static native getNativeCachedLostMemory()J
.end method

.method private static native getNativeFreeMemory()J
.end method
