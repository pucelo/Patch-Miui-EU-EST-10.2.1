.class public final Landroid/os/statistics/LooperOnce;
.super Landroid/os/statistics/MicroscopicEvent;
.source "LooperOnce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/LooperOnce$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/MicroscopicEvent$MicroEventFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/LooperOnce;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/LooperOnce$1;

    invoke-direct {v0}, Landroid/os/statistics/LooperOnce$1;-><init>()V

    sput-object v0, Landroid/os/statistics/LooperOnce;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    invoke-direct {v0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/statistics/LooperOnce;->eventFlags:I

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 8

    invoke-virtual {p0}, Landroid/os/statistics/LooperOnce;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/LooperOnce;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/LooperOnce;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/LooperOnce;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockedBySameProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingMultiplePeer()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isBlockingSameProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isConcerned()Z
    .registers 9

    invoke-virtual {p0}, Landroid/os/statistics/LooperOnce;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    iget v1, p0, Landroid/os/statistics/LooperOnce;->threadId:I

    sget v4, Landroid/os/statistics/PerfSuperviser;->MY_PID:I

    if-eq v1, v4, :cond_24

    iget v1, p0, Landroid/os/statistics/LooperOnce;->threadId:I

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->isRenderThread(I)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-static {}, Landroid/app/ActivityThreadInjector;->isSystemThread()Z

    move-result v1

    if-eqz v1, :cond_32

    iget v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    iget v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    invoke-static {v1, v4}, Landroid/os/statistics/OsUtils;->isHighPriority(II)Z

    move-result v1

    if-eqz v1, :cond_32

    :cond_24
    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    int-to-long v2, v1

    :goto_27
    iget-wide v4, p0, Landroid/os/statistics/LooperOnce;->endUptimeMillis:J

    iget-wide v6, p0, Landroid/os/statistics/LooperOnce;->beginUptimeMillis:J

    sub-long/2addr v4, v6

    cmp-long v1, v4, v2

    if-ltz v1, :cond_3c

    const/4 v1, 0x1

    :goto_31
    return v1

    :cond_32
    sget v1, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionHardThreshold:I

    const/16 v4, 0x12c

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-long v2, v1

    goto :goto_27

    :cond_3c
    const/4 v1, 0x0

    goto :goto_31
.end method

.method public isPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
