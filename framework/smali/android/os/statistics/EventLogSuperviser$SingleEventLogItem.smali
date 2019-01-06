.class public Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;
.super Landroid/os/statistics/MacroscopicEvent;
.source "EventLogSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/EventLogSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleEventLogItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent",
        "<",
        "Landroid/os/statistics/EventLogSuperviser$EventLogFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIELD_EVENT_LOG_TAG_ID:Ljava/lang/String; = "eventLogTagId"

.field private static final FIELD_EVENT_LOG_TAG_NAME:Ljava/lang/String; = "eventLogTagName"

.field private static final FIELD_EVENT_LOG_TIME:Ljava/lang/String; = "eventLogTime"

.field private static final FIELD_EVENT_LOG_VALUE_STRS:Ljava/lang/String; = "eventlogValues"


# instance fields
.field public currentTimeMillis:J

.field public eventLogTagId:I

.field public eventLogTagName:Ljava/lang/String;

.field public eventLogValueStrs:[Ljava/lang/String;

.field public launchEventTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem$1;-><init>()V

    sput-object v0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    invoke-direct {v0}, Landroid/os/statistics/EventLogSuperviser$EventLogFields;-><init>()V

    const/high16 v1, 0x10000

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

    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v1, 0x7538

    if-ne v0, v1, :cond_d

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->occurUptimeMillis:J

    const-wide/32 v2, 0xea60

    sub-long/2addr v0, v2

    return-wide v0

    :cond_d
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v1, 0x7588

    if-ne v0, v1, :cond_19

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->occurUptimeMillis:J

    iget-wide v2, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_19
    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->occurUptimeMillis:J

    return-wide v0
.end method

.method public getEndUptimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->occurUptimeMillis:J

    return-wide v0
.end method

.method isConcerned()Z
    .registers 6

    const/4 v4, 0x1

    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v1, 0x7538

    if-ne v0, v1, :cond_8

    return v4

    :cond_8
    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v1, 0x7588

    if-ne v0, v1, :cond_22

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    const-wide/32 v2, 0x1d4c0

    cmp-long v0, v0, v2

    if-gez v0, :cond_20

    return v4

    :cond_20
    const/4 v0, 0x0

    return v0

    :cond_22
    return v4
.end method

.method public isUserPerceptible()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v2, 0x7538

    if-eq v1, v2, :cond_d

    iget v1, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    const/16 v2, 0x7588

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 5

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->currentTimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    if-nez v0, :cond_25

    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    :cond_25
    invoke-static {p1}, Landroid/os/statistics/ParcelUtils;->readStringArray(Landroid/os/Parcel;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    if-nez v0, :cond_35

    invoke-static {}, Landroid/os/statistics/EventLogSuperviser;->-get0()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    :cond_35
    invoke-virtual {p0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    iput-object v2, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    return-void
.end method

.method resolveLazyInfo()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->isLazyInfoResolved()Z

    move-result v3

    if-eqz v3, :cond_9

    return-void

    :cond_9
    invoke-super {p0}, Landroid/os/statistics/MacroscopicEvent;->resolveLazyInfo()V

    invoke-virtual {p0}, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;

    iget v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    if-eqz v3, :cond_51

    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    iget v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-static {v3}, Landroid/util/EventLog;->getTagName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_51

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    :cond_51
    iget-object v3, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    if-eqz v3, :cond_87

    iget-object v3, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    instance-of v3, v3, [Ljava/lang/Object;

    if-eqz v3, :cond_75

    iget-object v2, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_65
    array-length v3, v2

    if-ge v1, v3, :cond_84

    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    :cond_75
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    iget-object v4, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    :cond_84
    :goto_84
    iput-object v6, v0, Landroid/os/statistics/EventLogSuperviser$EventLogFields;->eventLogValueObject:Ljava/lang/Object;

    return-void

    :cond_87
    invoke-static {}, Landroid/os/statistics/EventLogSuperviser;->-get0()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    goto :goto_84
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v2, "eventLogTime"

    iget-wide v4, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->currentTimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "eventLogTagId"

    iget v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "eventLogTagName"

    iget-object v3, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    if-eqz v2, :cond_2c

    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    const-string/jumbo v2, "eventlogValues"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_2c} :catch_2d

    :cond_2c
    :goto_2c
    return-void

    :catch_2d
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2c
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->currentTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogTagName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->launchEventTotalTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/statistics/EventLogSuperviser$SingleEventLogItem;->eventLogValueStrs:[Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/os/statistics/ParcelUtils;->writeStringArray(Landroid/os/Parcel;[Ljava/lang/String;)V

    return-void
.end method
