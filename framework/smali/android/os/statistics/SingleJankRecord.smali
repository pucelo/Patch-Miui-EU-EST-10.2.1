.class public Landroid/os/statistics/SingleJankRecord;
.super Landroid/os/statistics/MacroscopicEvent;
.source "SingleJankRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/SingleJankRecord$1;,
        Landroid/os/statistics/SingleJankRecord$JankRecordFields;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent",
        "<",
        "Landroid/os/statistics/SingleJankRecord$JankRecordFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/SingleJankRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_APP_CAUSE:Ljava/lang/String; = "appCause"

.field private static final FIELD_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final FIELD_BATTERY_TEMP:Ljava/lang/String; = "batteryTemperature"

.field private static final FIELD_CHARGING:Ljava/lang/String; = "isCharging"

.field private static final FIELD_CONCLUSION:Ljava/lang/String; = "conclusion"

.field private static final FIELD_MAX_FRAME_DURATION:Ljava/lang/String; = "maxFrameDuration"

.field private static final FIELD_NUM_FRAMES:Ljava/lang/String; = "numFrames"

.field private static final FIELD_RECEIVED_CURRENT_TIME:Ljava/lang/String; = "receivedCurrentTime"

.field private static final FIELD_RECEIVED_UPTIME:Ljava/lang/String; = "receivedUptime"

.field private static final FIELD_RENDER_THREAD_ID:Ljava/lang/String; = "renderThreadTid"

.field private static final FIELD_SYS_CAUSE:Ljava/lang/String; = "sysCause"

.field private static final FIELD_TOTAL_DURATION:Ljava/lang/String; = "totalDuration"

.field private static final FIELD_WINDOW_NAME:Ljava/lang/String; = "windowName"


# instance fields
.field public maxFrameDuration:J

.field public numFrames:J

.field public renderThreadTid:I

.field public totalDuration:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/SingleJankRecord$1;

    invoke-direct {v0}, Landroid/os/statistics/SingleJankRecord$1;-><init>()V

    sput-object v0, Landroid/os/statistics/SingleJankRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    invoke-direct {v0}, Landroid/os/statistics/SingleJankRecord$JankRecordFields;-><init>()V

    const v1, 0x10002

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 4

    return-void
.end method

.method public getBeginUptimeMillis()J
    .registers 5

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->occurUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getEndUptimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->occurUptimeMillis:J

    return-wide v0
.end method

.method isConcerned()Z
    .registers 5

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    sget v2, Landroid/os/statistics/PerfSupervisionSettings;->sPerfSupervisionSoftThreshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_19

    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    :cond_19
    iget-wide v0, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_24

    const/4 v0, 0x1

    return v0

    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public isUserPerceptible()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method occursInCurrentProcess()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 6

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p0}, Landroid/os/statistics/SingleJankRecord;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/os/statistics/SingleJankRecord;->renderThreadTid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_5b

    :goto_46
    iput-boolean v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->numFrames:J

    return-void

    :cond_5b
    const/4 v1, 0x0

    goto :goto_46
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    invoke-virtual {p0}, Landroid/os/statistics/SingleJankRecord;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    const-string/jumbo v2, "renderThreadTid"

    iget v3, p0, Landroid/os/statistics/SingleJankRecord;->renderThreadTid:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "windowName"

    iget-object v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "appCause"

    iget-object v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "sysCause"

    iget-object v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "conclusion"

    iget-object v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "totalDuration"

    iget-wide v4, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "maxFrameDuration"

    iget-wide v4, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "receivedUptime"

    iget-wide v4, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "receivedCurrentTime"

    iget-wide v4, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "isCharging"

    iget-boolean v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v2, "batteryLevel"

    iget v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "batteryTemperature"

    iget v3, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "numFrames"

    iget-wide v4, p0, Landroid/os/statistics/SingleJankRecord;->numFrames:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_71} :catch_72

    :goto_71
    return-void

    :catch_72
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_71
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/statistics/SingleJankRecord;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;

    iget v1, p0, Landroid/os/statistics/SingleJankRecord;->renderThreadTid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->windowName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->appCause:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->sysCause:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->conclusion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->totalDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->maxFrameDuration:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->receivedCurrentTimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-boolean v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->isCharging:Z

    if-eqz v1, :cond_4e

    const/4 v1, 0x1

    :goto_3b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, v0, Landroid/os/statistics/SingleJankRecord$JankRecordFields;->batteryTemperature:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v2, p0, Landroid/os/statistics/SingleJankRecord;->numFrames:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_4e
    const/4 v1, 0x0

    goto :goto_3b
.end method
