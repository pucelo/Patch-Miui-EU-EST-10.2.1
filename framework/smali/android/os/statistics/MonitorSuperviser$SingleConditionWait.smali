.class public final Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;
.super Landroid/os/statistics/MicroscopicEvent;
.source "MonitorSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/MonitorSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SingleConditionWait"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent",
        "<",
        "Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMDITION_AWAKEN_INTERRUPTED:I = 0x2

.field public static final COMDITION_AWAKEN_TIMEDOUT:I = 0x1

.field public static final CONDITION_AWAKEN_NOTIFIED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_AWAKEN_REASON:Ljava/lang/String; = "awakenReason"

.field private static final FIELD_MONITOR_ID:Ljava/lang/String; = "monitorId"

.field private static final FIELD_STACK:Ljava/lang/String; = "stack"


# instance fields
.field public awakenReason:I

.field public monitorId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait$1;-><init>()V

    sput-object v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    invoke-direct {v0}, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 8

    invoke-virtual {p0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->threadId:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->threadName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Landroid/os/statistics/OsUtils;->decodeThreadSchedulePolicy(I)I

    move-result v1

    iput v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->schedPolicy:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->schedPriority:I

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v2

    long-to-int v1, v2

    iput v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    iput-object p2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    return-void
.end method

.method public hasMultiplePeerBlockingEvents()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public hasPeerBlockingEvent()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public isBlockedBy(Landroid/os/statistics/MicroscopicEvent;)Z
    .registers 10

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    if-nez v3, :cond_7

    return v2

    :cond_7
    move-object v0, p1

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;

    iget v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->pid:I

    iget v4, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->pid:I

    if-ne v3, v4, :cond_3d

    iget-wide v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->monitorId:J

    iget-wide v6, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3d

    iget-wide v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->beginUptimeMillis:J

    iget-wide v6, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->beginUptimeMillis:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3d

    iget-wide v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->endUptimeMillis:J

    iget-wide v6, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->beginUptimeMillis:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3d

    iget-wide v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->endUptimeMillis:J

    iget-wide v6, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->endUptimeMillis:J

    cmp-long v3, v4, v6

    if-gtz v3, :cond_3d

    iget v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->peerThreadId:I

    if-eqz v3, :cond_3a

    iget v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleConditionAwaken;->peerThreadId:I

    iget v4, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->threadId:I

    if-ne v3, v4, :cond_3b

    :cond_3a
    :goto_3a
    return v1

    :cond_3b
    move v1, v2

    goto :goto_3a

    :cond_3d
    move v1, v2

    goto :goto_3a
.end method

.method public isBlockedBySameProcess()Z
    .registers 2

    const/4 v0, 0x1

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    invoke-virtual {p0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    :goto_1c
    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    iput-object v4, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    return-void

    :cond_21
    sget-object v1, Landroid/os/statistics/StackUtils;->emptyStack:[Ljava/lang/String;

    goto :goto_1c
.end method

.method resolveLazyInfo()V
    .registers 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->isLazyInfoResolved()Z

    move-result v1

    if-eqz v1, :cond_8

    return-void

    :cond_8
    invoke-super {p0}, Landroid/os/statistics/MicroscopicEvent;->resolveLazyInfo()V

    invoke-virtual {p0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    iget-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v1}, Landroid/os/statistics/JavaBackTrace;->resolve(Ljava/lang/Object;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    iget-object v2, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    invoke-static {v2}, Landroid/os/statistics/JavaBackTrace;->resolveClasses(Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/os/statistics/StackUtils;->getStackTrace([Ljava/lang/StackTraceElement;[Ljava/lang/Class;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    iput-object v3, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->javaBackTrace:Ljava/lang/Object;

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/statistics/MicroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v1, "monitorId"

    iget-wide v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "awakenReason"

    iget v2, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "stack"

    invoke-virtual {p0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    iget-object v1, v1, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    invoke-static {v1}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_25
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MicroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->monitorId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->awakenReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/statistics/MonitorSuperviser$SingleConditionWait;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;

    iget-object v0, v0, Landroid/os/statistics/MonitorSuperviser$SingleMonitorFields;->stackTrace:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
