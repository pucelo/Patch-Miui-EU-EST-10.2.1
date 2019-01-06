.class public Landroid/os/statistics/EventLogSuperviser;
.super Ljava/lang/Object;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/EventLogSuperviser$EventLogFields;,
        Landroid/os/statistics/EventLogSuperviser$EventLogTags;,
        Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
    }
.end annotation


# static fields
.field private static final emptyEventValueStrs:[Ljava/lang/String;

.field private static final supervisedEventLogTags:[I


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xaa8

    const/16 v1, 0x7538

    const/16 v2, 0x7588

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Landroid/os/statistics/EventLogSuperviser;->supervisedEventLogTags:[I

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/os/statistics/EventLogSuperviser;->emptyEventValueStrs:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isSupervised(I)Z
    .registers 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Landroid/os/statistics/EventLogSuperviser;->supervisedEventLogTags:[I

    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public static notifyEvent(IF)V
    .registers 3

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public static notifyEvent(II)V
    .registers 3

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public static notifyEvent(IJ)V
    .registers 4

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_d
    return-void
.end method

.method public static notifyEvent(ILjava/lang/String;)V
    .registers 3

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public static varargs notifyEvent(I[Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0}, Landroid/os/statistics/EventLogSuperviser;->isSupervised(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p0, p1}, Landroid/os/statistics/EventLogSuperviser;->notifyEventWithObject(ILjava/lang/Object;)V

    :cond_9
    return-void
.end method

.method private static notifyEventWithObject(ILjava/lang/Object;)V
    .registers 8

    new-instance v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;-><init>()V

    invoke-static {}, Landroid/os/statistics/OsUtils;->getCoarseUptimeMillisFast()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->occurUptimeMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->currentTimeMillis:J

    iput p0, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-virtual {v0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v2

    check-cast v2, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    iput-object p1, v2, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    iget v2, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v3, 0x7588

    if-ne v2, v3, :cond_43

    invoke-virtual {v0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v2

    check-cast v2, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    iget-object v1, v2, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v2, 0x4

    aget-object v2, v1, v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    :cond_43
    invoke-static {v0}, Landroid/os/statistics/PerfEventReporter;->report(Landroid/os/statistics/PerfEvent;)V

    return-void
.end method
