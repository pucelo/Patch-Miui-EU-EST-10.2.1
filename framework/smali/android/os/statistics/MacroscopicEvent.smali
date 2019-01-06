.class public abstract Landroid/os/statistics/MacroscopicEvent;
.super Landroid/os/statistics/PerfEvent;
.source "MacroscopicEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/statistics/PerfEvent$DetailFields;",
        ">",
        "Landroid/os/statistics/PerfEvent",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public occurUptimeMillis:J


# direct methods
.method public constructor <init>(ILandroid/os/statistics/PerfEvent$DetailFields;)V
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

    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    return-wide v0
.end method

.method public getEndUptimeMillis()J
    .registers 3

    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    return-wide v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    return-void
.end method

.method public writeToJson(Lorg/json/JSONObject;)V
    .registers 6

    invoke-super {p0, p1}, Landroid/os/statistics/PerfEvent;->writeToJson(Lorg/json/JSONObject;)V

    :try_start_3
    const-string/jumbo v1, "occurTime"

    iget-wide v2, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/os/statistics/PerfEvent;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/os/statistics/MacroscopicEvent;->occurUptimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
