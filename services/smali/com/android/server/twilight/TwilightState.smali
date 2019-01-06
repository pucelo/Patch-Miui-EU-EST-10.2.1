.class public final Lcom/android/server/twilight/TwilightState;
.super Ljava/lang/Object;
.source "TwilightState.java"


# instance fields
.field private final mSunriseTimeMillis:J

.field private final mSunsetTimeMillis:J


# direct methods
.method public constructor <init>(JJ)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    iput-wide p3, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/twilight/TwilightState;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_14

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_14

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    iget-wide v4, p1, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/android/server/twilight/TwilightState;

    invoke-virtual {p0, p1}, Lcom/android/server/twilight/TwilightState;->equals(Lcom/android/server/twilight/TwilightState;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hashCode()I
    .registers 5

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isNight()Z
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    cmp-long v3, v0, v4

    if-ltz v3, :cond_12

    iget-wide v4, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    cmp-long v3, v0, v4

    if-gez v3, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method

.method public sunrise()Ljava/time/LocalDateTime;
    .registers 5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public sunriseTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    return-wide v0
.end method

.method public sunset()Ljava/time/LocalDateTime;
    .registers 5

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    return-object v1
.end method

.method public sunsetTimeMillis()J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TwilightState { sunrise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MM-dd HH:mm"

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunriseTimeMillis:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sunset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "MM-dd HH:mm"

    iget-wide v2, p0, Lcom/android/server/twilight/TwilightState;->mSunsetTimeMillis:J

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
