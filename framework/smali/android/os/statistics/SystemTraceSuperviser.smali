.class public Landroid/os/statistics/SystemTraceSuperviser;
.super Ljava/lang/Object;
.source "SystemTraceSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;,
        Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;
    }
.end annotation


# static fields
.field private static final DEBUGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemTraceSuperviser"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncBeginSupervisedTrace(JLjava/lang/String;I)V
    .registers 8

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/os/statistics/SystemTraceSuperviser;->nativeAsyncBeginTrace(JLjava/lang/String;I)V

    return-void
.end method

.method public static asyncBeginTrace(JLjava/lang/String;I)V
    .registers 8

    invoke-static {}, Landroid/os/statistics/SystemTraceSuperviser;->isAllowSystemTraceSupervision()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/os/statistics/SystemTraceSuperviser;->nativeAsyncBeginTrace(JLjava/lang/String;I)V

    return-void
.end method

.method public static asyncEndSupervisedTrace(JLjava/lang/String;ILjava/lang/Object;)V
    .registers 9

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/statistics/SystemTraceSuperviser;->nativeAsyncEndTrace(JLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static asyncEndTrace(JLjava/lang/String;I)V
    .registers 8

    invoke-static {}, Landroid/os/statistics/SystemTraceSuperviser;->isAllowSystemTraceSupervision()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, p3, v2}, Landroid/os/statistics/SystemTraceSuperviser;->nativeAsyncEndTrace(JLjava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static beginSupervisedTrace(JLjava/lang/String;)V
    .registers 7

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Landroid/os/statistics/SystemTraceSuperviser;->nativeBeginTrace(JLjava/lang/String;)V

    return-void
.end method

.method public static beginTrace(JLjava/lang/String;)V
    .registers 7

    invoke-static {}, Landroid/os/statistics/SystemTraceSuperviser;->isAllowSystemTraceSupervision()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2}, Landroid/os/statistics/SystemTraceSuperviser;->nativeBeginTrace(JLjava/lang/String;)V

    return-void
.end method

.method public static endSupervisedTrace(JLjava/lang/String;Ljava/lang/Object;)V
    .registers 8

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/os/statistics/SystemTraceSuperviser;->nativeEndTrace(JLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static endTrace(J)V
    .registers 6

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/statistics/SystemTraceSuperviser;->isAllowSystemTraceSupervision()Z

    move-result v2

    if-nez v2, :cond_8

    return-void

    :cond_8
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v3, v3}, Landroid/os/statistics/SystemTraceSuperviser;->nativeEndTrace(JLjava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static isAllowSystemTraceSupervision()Z
    .registers 1

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isInHeavyMode()Z

    move-result v0

    return v0
.end method

.method private static native nativeAsyncBeginTrace(JLjava/lang/String;I)V
.end method

.method private static native nativeAsyncEndTrace(JLjava/lang/String;ILjava/lang/Object;)V
.end method

.method private static native nativeBeginTrace(JLjava/lang/String;)V
.end method

.method private static native nativeEndTrace(JLjava/lang/String;Ljava/lang/Object;)V
.end method
