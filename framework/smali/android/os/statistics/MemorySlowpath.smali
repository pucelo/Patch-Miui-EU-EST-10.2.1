.class public Landroid/os/statistics/MemorySlowpath;
.super Landroid/os/statistics/MacroscopicEvent;
.source "MemorySlowpath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/MemorySlowpath$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent",
        "<",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/MemorySlowpath;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_BEGIN_COUNT:Ljava/lang/String; = "beginCount"

.field private static final FIELD_BEGIN_TOTAL_DURATION_MS:Ljava/lang/String; = "beginTotalDuration"

.field private static final FIELD_END_COUNT:Ljava/lang/String; = "endCount"

.field private static final FIELD_END_TOTAL_DURATION_MS:Ljava/lang/String; = "endTotalDuration"


# instance fields
.field public beginCount:J

.field public beginTotalDurationMillis:J

.field public beginUptimeMillis:J

.field public endCount:J

.field public endTotalDurationMillis:J

.field public endUptimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/MemorySlowpath$1;

    invoke-direct {v0}, Landroid/os/statistics/MemorySlowpath$1;-><init>()V

    sput-object v0, Landroid/os/statistics/MemorySlowpath;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/PerfEvent$DetailFields;

    invoke-direct {v0}, Landroid/os/statistics/PerfEvent$DetailFields;-><init>()V

    const v1, 0x10006

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 6

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginCount:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginTotalDurationMillis:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endCount:J

    invoke-virtual {p1}, Landroid/os/statistics/JniParcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endTotalDurationMillis:J

    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->occurUptimeMillis:J

    return-void
.end method

.method isConcerned()Z
    .registers 5

    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginTotalDurationMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endTotalDurationMillis:J

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v1, "beginTime"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "endTime"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "beginCount"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->beginCount:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "beginTotalDuration"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->beginTotalDurationMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "endCount"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->endCount:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v1, "endTotalDuration"

    iget-wide v2, p0, Landroid/os/statistics/MemorySlowpath;->endTotalDurationMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_33} :catch_34

    :goto_33
    return-void

    :catch_34
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_33
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->beginTotalDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/statistics/MemorySlowpath;->endTotalDurationMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
