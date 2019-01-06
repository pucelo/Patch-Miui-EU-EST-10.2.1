.class public Landroid/os/statistics/PerfTracer$SingleTracePoint;
.super Landroid/os/statistics/MicroscopicEvent;
.source "PerfTracer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/PerfTracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleTracePoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/PerfTracer$SingleTracePoint$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/PerfTracer$SingleTraceFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/PerfTracer$SingleTracePoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_LEVEL:Ljava/lang/String; = "level"

.field private static final FIELD_NUMBER_VALUE:Ljava/lang/String; = "numberValue"

.field private static final FIELD_REASON:Ljava/lang/String; = "reason"

.field private static final FIELD_TAG:Ljava/lang/String; = "tag"

.field private static final FIELD_TEXT_VALUE:Ljava/lang/String; = "textValue"


# instance fields
.field public level:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/PerfTracer$SingleTracePoint$1;

    invoke-direct {v0}, Landroid/os/statistics/PerfTracer$SingleTracePoint$1;-><init>()V

    sput-object v0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    invoke-direct {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;-><init>()V

    const/4 v1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/PerfTracer$SingleTracePoint;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v2

    iput v2, v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->schedGroup:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->runningTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->runnableTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->sleepingTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;->endRealTimeMs:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    iget v2, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    if-nez v2, :cond_5d

    const/4 v1, 0x1

    :cond_5d
    iput v1, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->eventFlags:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set0(Landroid/os/statistics/PerfTracer$SingleTraceFields;J)J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set2(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set1(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public isPeerBlockingEvent()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isRootEvent()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isUserPerceptible()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    invoke-virtual {p0}, Landroid/os/statistics/PerfTracer$SingleTracePoint;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    :goto_16
    invoke-static {v0, v1}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set2(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set0(Landroid/os/statistics/PerfTracer$SingleTraceFields;J)J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    :goto_26
    invoke-static {v0, v2}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set3(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set1(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2d
    const-string/jumbo v1, ""

    goto :goto_16

    :cond_31
    const-string/jumbo v2, ""

    goto :goto_26
.end method

.method resolveLazyInfo()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/PerfTracer$SingleTracePoint;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    invoke-virtual {p0}, Landroid/os/statistics/PerfTracer$SingleTracePoint;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get1(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get1(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1f
    invoke-static {v0, v1}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set3(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-set1(Landroid/os/statistics/PerfTracer$SingleTraceFields;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_26
    const-string/jumbo v1, ""

    goto :goto_1f
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    invoke-virtual {p0}, Landroid/os/statistics/PerfTracer$SingleTracePoint;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    const-string/jumbo v2, "level"

    iget v3, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "reason"

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get2(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "tag"

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get2(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "numberValue"

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get0(Landroid/os/statistics/PerfTracer$SingleTraceFields;)J

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "textValue"

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get3(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_39
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget v1, p0, Landroid/os/statistics/PerfTracer$SingleTracePoint;->level:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/statistics/PerfTracer$SingleTracePoint;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/PerfTracer$SingleTraceFields;

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get2(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get0(Landroid/os/statistics/PerfTracer$SingleTraceFields;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-static {v0}, Landroid/os/statistics/PerfTracer$SingleTraceFields;->-get3(Landroid/os/statistics/PerfTracer$SingleTraceFields;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
