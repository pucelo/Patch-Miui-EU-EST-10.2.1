.class public Landroid/os/statistics/PerfTracer;
.super Ljava/lang/Object;
.source "PerfTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfTracer$SingleTraceFields;,
        Landroid/os/statistics/PerfTracer$SingleTracePoint;
    }
.end annotation


# static fields
.field private static final DEBUGGING:Z = false

.field private static final TAG:Ljava/lang/String; = "PerfTracer"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginTracePoint(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    invoke-static {p0}, Landroid/os/statistics/PerfTracer;->nativeBeginTracePoint(Ljava/lang/String;)V

    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;I)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;J)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;JI)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;JLjava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V
    .registers 8

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/os/statistics/PerfTracer;->nativeEndTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, p1, v2}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method public static endTracePoint(Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V

    return-void
.end method

.method private static native nativeBeginTracePoint(Ljava/lang/String;)V
.end method

.method private static native nativeEndTracePoint(Ljava/lang/String;JLjava/lang/Object;I)V
.end method
