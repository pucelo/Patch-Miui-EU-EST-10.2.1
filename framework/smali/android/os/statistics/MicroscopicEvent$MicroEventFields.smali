.class public Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.super Landroid/os/statistics/PerfEvent$DetailFields;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MicroscopicEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MicroEventFields"
.end annotation


# instance fields
.field public endRealTimeMs:J

.field public runnableTimeMs:J

.field public runningTimeMs:J

.field public schedGroup:I

.field public schedPolicy:I

.field public schedPriority:I

.field public sleepingTimeMs:J

.field public threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>()V

    return-void
.end method
