.class public abstract Landroid/os/statistics/MicroscopicEvent;
.super Landroid/os/statistics/PerfEvent;
.source "MicroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/MicroscopicEvent$MicroEventFields;",
        ">",
        "Landroid/os/statistics/PerfEvent",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final FLAG_INITIATOR_POSITION_MASK:I = 0x3

.field public static final FLAG_INITIATOR_POSITION_MASTER:I = 0x1

.field public static final FLAG_INITIATOR_POSITION_SLAVE:I = 0x2

.field public static final FLAG_INITIATOR_POSITION_UNKNOWN:I = 0x0

.field public static final SCHED_POLICY_UNKNOWN:I = -0x1


# instance fields
.field public beginUptimeMillis:J

.field public endUptimeMillis:J

.field public eventFlags:I

.field matchedPeerBlockingDuration:J

.field public threadId:I


# direct methods
.method constructor <init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Landroid/os/statistics/PerfEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method


# virtual methods
.method public getBeginUptimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    return-wide v0
.end method

.method public getEndUptimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    return-wide v0
.end method

.method public abstract hasMultiplePeerBlockingEvents()Z
.end method

.method public hasNativeStack()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public abstract hasPeerBlockingEvent()Z
.end method

.method public abstract isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
.end method

.method public abstract isBlockedBySameProcess()Z
.end method

.method public abstract isBlockingMultiplePeer()Z
.end method

.method public abstract isBlockingSameProcess()Z
.end method

.method public isMasterEvent()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract isPeerBlockingEvent()Z
.end method

.method public abstract isRootEvent()Z
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    invoke-virtual {p0}, Landroid/os/statistics/MicroscopicEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_58

    :goto_27
    iput-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->matchedPeerBlockingDuration:J

    return-void

    :cond_58
    const-string/jumbo v1, ""

    goto :goto_27
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    invoke-virtual {p0}, Landroid/os/statistics/MicroscopicEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    const-string/jumbo v2, "threadId"

    iget v3, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "threadName"

    iget-object v3, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "beginTime"

    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "endTime"

    iget-wide v4, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "policy"

    iget v3, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "priority"

    iget v3, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "schedGroup"

    iget v3, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "runningTime"

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "runnableTime"

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "sleepingTime"

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "endRealTime"

    iget-wide v4, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "eventFlags"

    iget v3, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_69} :catch_6a

    :goto_69
    return-void

    :catch_6a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_69
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent;->threadId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/os/statistics/MicroscopicEvent;->eventFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->beginUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/os/statistics/MicroscopicEvent;->endUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/os/statistics/MicroscopicEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;

    iget-object v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPolicy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedPriority:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->schedGroup:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runningTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->runnableTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->sleepingTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v0, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;->endRealTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
