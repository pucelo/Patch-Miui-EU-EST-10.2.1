.class Landroid/media/TextTrackCueSpan;
.super Ljava/lang/Object;
.source "WebVttRenderer.java"


# instance fields
.field mEnabled:Z

.field mText:Ljava/lang/String;

.field mTimestampMs:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iput-object p1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    iget-wide v0, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_13

    const/4 v0, 0x1

    :goto_10
    iput-boolean v0, p0, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_10
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/media/TextTrackCueSpan;

    if-nez v2, :cond_6

    return v1

    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/TextTrackCueSpan;

    iget-wide v2, p0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    iget-wide v4, v0, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    iget-object v1, p0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    iget-object v2, v0, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_19
    return v1
.end method
