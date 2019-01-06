.class public Landroid/os/statistics/E2EScenarioOnce;
.super Landroid/os/statistics/MacroscopicEvent;
.source "E2EScenarioOnce.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/statistics/E2EScenarioOnce$1;,
        Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MacroscopicEvent",
        "<",
        "Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/statistics/E2EScenarioOnce;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public beginPid:I

.field public beginTid:I

.field public beginUptimeMillis:J

.field public endPid:I

.field public endTid:I

.field public endUptimeMillis:J

.field public scenarioOnceId:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/os/statistics/E2EScenarioOnce$1;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioOnce$1;-><init>()V

    sput-object v0, Landroid/os/statistics/E2EScenarioOnce;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    new-instance v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;

    invoke-direct {v0}, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;-><init>()V

    const v1, 0x10005

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MacroscopicEvent;-><init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V

    return-void
.end method


# virtual methods
.method fillIn(Landroid/os/statistics/JniParcel;Ljava/lang/Object;Landroid/os/statistics/NativeBackTrace;)V
    .registers 4

    return-void
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
    .registers 7

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/E2EScenarioOnce;->scenarioOnceId:J

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenarioOnce;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/E2EScenario;

    iput-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->scenario:Landroid/os/statistics/E2EScenario;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/E2EScenarioSettings;

    iput-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->settings:Landroid/os/statistics/E2EScenarioSettings;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->tag:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/statistics/E2EScenarioPayload;

    iput-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->payload:Landroid/os/statistics/E2EScenarioPayload;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/E2EScenarioOnce;->beginUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginWalltimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/E2EScenarioOnce;->beginPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/E2EScenarioOnce;->beginTid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/os/statistics/E2EScenarioOnce;->endUptimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endWalltimeMillis:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/E2EScenarioOnce;->endPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/os/statistics/E2EScenarioOnce;->endTid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endProcessName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endPackageName:Ljava/lang/String;

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/os/statistics/MacroscopicEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v2, "scenarioOnceId"

    iget-wide v4, p0, Landroid/os/statistics/E2EScenarioOnce;->scenarioOnceId:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenarioOnce;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;

    const-string/jumbo v2, "scenario"

    iget-object v3, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->scenario:Landroid/os/statistics/E2EScenario;

    invoke-virtual {v3}, Landroid/os/statistics/E2EScenario;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->payload:Landroid/os/statistics/E2EScenarioPayload;

    if-eqz v2, :cond_37

    iget-object v2, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->payload:Landroid/os/statistics/E2EScenarioPayload;

    invoke-virtual {v2}, Landroid/os/statistics/E2EScenarioPayload;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_37

    const-string/jumbo v2, "payload"

    iget-object v3, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->payload:Landroid/os/statistics/E2EScenarioPayload;

    invoke-virtual {v3}, Landroid/os/statistics/E2EScenarioPayload;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_37
    const-string/jumbo v2, "beginUptime"

    iget-wide v4, p0, Landroid/os/statistics/E2EScenarioOnce;->beginUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "beginWalltime"

    iget-wide v4, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginWalltimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "beginPid"

    iget v3, p0, Landroid/os/statistics/E2EScenarioOnce;->beginPid:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "beginTid"

    iget v3, p0, Landroid/os/statistics/E2EScenarioOnce;->beginTid:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "beginProcessName"

    iget-object v3, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginProcessName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "beginPackageName"

    iget-object v3, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "endUptime"

    iget-wide v4, p0, Landroid/os/statistics/E2EScenarioOnce;->endUptimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "endWalltime"

    iget-wide v4, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endWalltimeMillis:J

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string/jumbo v2, "endPid"

    iget v3, p0, Landroid/os/statistics/E2EScenarioOnce;->endPid:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "endTid"

    iget v3, p0, Landroid/os/statistics/E2EScenarioOnce;->endTid:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v2, "endProcessName"

    iget-object v3, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endProcessName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "endPackageName"

    iget-object v3, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_97
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_97} :catch_98

    :goto_97
    return-void

    :catch_98
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_97
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 7

    invoke-super {p0, p1, p2}, Landroid/os/statistics/MacroscopicEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v2, p0, Landroid/os/statistics/E2EScenarioOnce;->scenarioOnceId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/os/statistics/E2EScenarioOnce;->getDetailsFields()Landroid/os/statistics/PerfEvent$DetailFields;

    move-result-object v0

    check-cast v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;

    iget-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->scenario:Landroid/os/statistics/E2EScenario;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->settings:Landroid/os/statistics/E2EScenarioSettings;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->payload:Landroid/os/statistics/E2EScenarioPayload;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v2, p0, Landroid/os/statistics/E2EScenarioOnce;->beginUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginWalltimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Landroid/os/statistics/E2EScenarioOnce;->beginPid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/os/statistics/E2EScenarioOnce;->beginTid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginProcessName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->beginPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/os/statistics/E2EScenarioOnce;->endUptimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endWalltimeMillis:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Landroid/os/statistics/E2EScenarioOnce;->endPid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/os/statistics/E2EScenarioOnce;->endTid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endProcessName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/statistics/E2EScenarioOnce$E2EScenarioOnceDetails;->endPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
