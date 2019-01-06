.class public Landroid/net/metrics/WakeupEvent;
.super Ljava/lang/Object;
.source "WakeupEvent.java"


# instance fields
.field public iface:Ljava/lang/String;

.field public timestampMs:J

.field public uid:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    const-string/jumbo v0, "WakeupEvent(%tT.%tL, %s, uid: %d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-wide v2, p0, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Landroid/net/metrics/WakeupEvent;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
