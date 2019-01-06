.class public Landroid/os/statistics/PerfEventReporter;
.super Ljava/lang/Object;
.source "PerfEventReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;
    }
.end annotation


# static fields
.field private static final APP_PERF_EVENT_ARRAY_CAPACITY:I = 0x40

.field private static final DEBUGGING:Z = false

.field private static final INITIAL_PERF_EVENT_ARRAY_CAPACITY:I = 0x20

.field private static final MAX_RETRY_WRITE_COUNT:I = 0x6

.field private static final SYSTEM_PERF_EVENT_ARRAY_CAPACITY:I = 0x100


# direct methods
.method static synthetic -wrap0()[Landroid/os/statistics/PerfEvent;
    .registers 1

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->createPerfEventFetchingBuffer()[Landroid/os/statistics/PerfEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1([Landroid/os/statistics/PerfEvent;)I
    .registers 2

    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->fetchPerfEvents([Landroid/os/statistics/PerfEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()J
    .registers 2

    invoke-static {}, Landroid/os/statistics/PerfEventReporter;->getEarliestBeginUptimeMillisOfExecutingRootEvents()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(I)V
    .registers 1

    invoke-static {p0}, Landroid/os/statistics/PerfEventReporter;->waitForPerfEventArrived(I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native createPerfEventFetchingBuffer()[Landroid/os/statistics/PerfEvent;
.end method

.method private static native fetchPerfEvents([Landroid/os/statistics/PerfEvent;)I
.end method

.method private static native getEarliestBeginUptimeMillisOfExecutingRootEvents()J
.end method

.method private static native nativeReport(ILandroid/os/statistics/PerfEvent;)V
.end method

.method public static report(Landroid/os/statistics/PerfEvent;)V
    .registers 2

    invoke-static {}, Landroid/os/statistics/PerfSupervisionSettings;->isSupervisionOn()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Landroid/os/statistics/PerfEvent;->eventType:I

    invoke-static {v0, p0}, Landroid/os/statistics/PerfEventReporter;->nativeReport(ILandroid/os/statistics/PerfEvent;)V

    return-void
.end method

.method static start()V
    .registers 1

    invoke-static {}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->getInstance()Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/statistics/PerfEventReporter$PerfEventCompactThread;->start()V

    return-void
.end method

.method private static native waitForPerfEventArrived(I)V
.end method
