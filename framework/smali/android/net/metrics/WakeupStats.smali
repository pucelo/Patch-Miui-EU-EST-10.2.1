.class public Landroid/net/metrics/WakeupStats;
.super Ljava/lang/Object;
.source "WakeupStats.java"


# static fields
.field private static final NO_UID:I = -0x1


# instance fields
.field public applicationWakeups:J

.field public final creationTimeMs:J

.field public durationSec:J

.field public final iface:Ljava/lang/String;

.field public noUidWakeups:J

.field public nonApplicationWakeups:J

.field public rootWakeups:J

.field public systemWakeups:J

.field public totalWakeups:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    iput-wide v2, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    iput-object p1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public countEvent(Landroid/net/metrics/WakeupEvent;)V
    .registers 6

    const-wide/16 v2, 0x1

    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iget v0, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    sparse-switch v0, :sswitch_data_30

    iget v0, p1, Landroid/net/metrics/WakeupEvent;->uid:I

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_2a

    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    :goto_17
    return-void

    :sswitch_18
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    goto :goto_17

    :sswitch_1e
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    goto :goto_17

    :sswitch_24
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    goto :goto_17

    :cond_2a
    iget-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    goto :goto_17

    :sswitch_data_30
    .sparse-switch
        -0x1 -> :sswitch_24
        0x0 -> :sswitch_18
        0x3e8 -> :sswitch_1e
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WakeupStats("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", root: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", system: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", non-apps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", no uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDuration()V
    .registers 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->creationTimeMs:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    return-void
.end method
