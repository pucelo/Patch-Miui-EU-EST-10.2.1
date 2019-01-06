.class public Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;
.super Landroid/os/statistics/MicroscopicEvent;
.source "SystemTraceSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SystemTraceSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleSystemTraceEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_TRACE_NAME:Ljava/lang/String; = "traceName"

.field private static final FIELD_TRACE_TAG:Ljava/lang/String; = "traceTag"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;

    invoke-direct {v0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent$1;-><init>()V

    sput-object v0, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    invoke-direct {v0}, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;-><init>()V

    const/4 v1, 0x7

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 8

    invoke-virtual {p0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceTag:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

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
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceTag:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1b

    :goto_16
    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    iput-object v4, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    return-void

    :cond_1b
    const-string/jumbo v1, ""

    goto :goto_16
.end method

.method resolveLazyInfo()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    iget-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    if-eqz v1, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    :cond_3e
    iput-object v3, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceValue:Ljava/lang/Object;

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    :try_start_9
    const-string/jumbo v2, "traceTag"

    iget-wide v4, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceTag:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "traceName"

    iget-object v3, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_19
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/statistics/SystemTraceSuperviser$SingleSystemTraceEvent;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;

    iget-wide v2, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceTag:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v1, v0, Landroid/os/statistics/SystemTraceSuperviser$SysTraceFields;->traceName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
