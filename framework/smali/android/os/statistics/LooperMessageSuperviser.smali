.class public Landroid/os/statistics/LooperMessageSuperviser;
.super Ljava/lang/Object;
.source "LooperMessageSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessage;,
        Landroid/os/statistics/LooperMessageSuperviser$SingleLooperMessageFields;
    }
.end annotation


# static fields
.field private static final APPLICATION_OPERATION_MESSAGE_THRESHOLD_MS:J = 0x258L

.field private static final DEBUGGING:Z = false

.field private static final LOW_PRIORITY_ACTIVITY_MESSAGE_THRESHOLD_MS:J = 0x12cL

.field private static final TAG:Ljava/lang/String; = "LooperMessageSuperviser"

.field private static final WINDOW_OPERATION_MESSAGE_THRESHOLD_MS:J = 0x12cL


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginLooperMessage(Landroid/os/ILooperMonitorable;Landroid/os/Message;)V
    .registers 5

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    invoke-interface {p0}, Landroid/os/ILooperMonitorable;->isMonitorLooper()Z

    move-result v2

    if-nez v2, :cond_e

    return-void

    :cond_e
    const-wide/16 v0, 0x0

    invoke-static {}, Landroid/os/statistics/LooperMessageSuperviser;->nativeBeginLooperMessage()V

    return-void
.end method

.method public static endLooperMessage(Landroid/os/ILooperMonitorable;Landroid/os/Message;J)V
    .registers 12

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v4

    if-nez v4, :cond_8

    return-void

    :cond_8
    invoke-interface {p0}, Landroid/os/ILooperMonitorable;->isMonitorLooper()Z

    move-result v4

    if-nez v4, :cond_f

    return-void

    :cond_f
    const-wide/16 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v2

    if-nez v3, :cond_24

    move-object v4, v5

    :goto_1c
    iget v6, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_29

    :goto_20
    invoke-static {v4, v6, v5, p2, p3}, Landroid/os/statistics/LooperMessageSuperviser;->nativeEndLooperMessage(Ljava/lang/Class;ILjava/lang/Class;J)V

    return-void

    :cond_24
    invoke-virtual {v3}, Landroid/os/Handler;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1c

    :cond_29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    goto :goto_20
.end method

.method private static native nativeBeginLooperMessage()V
.end method

.method private static native nativeEndLooperMessage(Ljava/lang/Class;ILjava/lang/Class;J)V
.end method
