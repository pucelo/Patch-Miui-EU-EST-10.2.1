.class Landroid/media/SubtitleTrack$CueList;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CueList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$CueList$EntryIterator;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CueList"


# instance fields
.field public DEBUG:Z

.field private mCues:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/media/SubtitleTrack$CueList;)Ljava/util/SortedMap;
    .registers 2

    iget-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/SubtitleTrack$CueList;Landroid/media/SubtitleTrack$Cue;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack$CueList;->DEBUG:Z

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    return-void
.end method

.method private addEvent(Landroid/media/SubtitleTrack$Cue;J)Z
    .registers 8

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_22

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1

    :cond_22
    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x0

    return v1
.end method

.method private removeEvent(Landroid/media/SubtitleTrack$Cue;J)V
    .registers 8

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-eqz v0, :cond_20

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method


# virtual methods
.method public add(Landroid/media/SubtitleTrack$Cue;)V
    .registers 12

    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v6, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_9

    return-void

    :cond_9
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v4, v5}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    move-result v4

    if-nez v4, :cond_12

    return-void

    :cond_12
    iget-wide v0, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v4, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v4, :cond_31

    iget-object v5, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    const/4 v4, 0x0

    array-length v6, v5

    :goto_1c
    if-ge v4, v6, :cond_31

    aget-wide v2, v5, v4

    cmp-long v7, v2, v0

    if-lez v7, :cond_2e

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_2e

    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    move-wide v0, v2

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_31
    iget-wide v4, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v4, v5}, Landroid/media/SubtitleTrack$CueList;->addEvent(Landroid/media/SubtitleTrack$Cue;J)Z

    return-void
.end method

.method public entriesBetween(JJ)Ljava/lang/Iterable;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/lang/Iterable",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Landroid/media/SubtitleTrack$CueList$1;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/SubtitleTrack$CueList$1;-><init>(Landroid/media/SubtitleTrack$CueList;JJ)V

    return-object v0
.end method

.method public nextTimeAfter(J)J
    .registers 12

    const-wide/16 v6, -0x1

    const/4 v2, 0x0

    :try_start_3
    iget-object v3, p0, Landroid/media/SubtitleTrack$CueList;->mCues:Ljava/util/SortedMap;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-interface {v2}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_1b} :catch_20
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_1b} :catch_1e

    move-result-wide v4

    return-wide v4

    :cond_1d
    return-wide v6

    :catch_1e
    move-exception v1

    return-wide v6

    :catch_20
    move-exception v0

    return-wide v6
.end method

.method public remove(Landroid/media/SubtitleTrack$Cue;)V
    .registers 7

    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    iget-object v2, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v2, :cond_17

    iget-object v3, p1, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    const/4 v2, 0x0

    array-length v4, v3

    :goto_d
    if-ge v2, v4, :cond_17

    aget-wide v0, v3, v2

    invoke-direct {p0, p1, v0, v1}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    iget-wide v2, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-direct {p0, p1, v2, v3}, Landroid/media/SubtitleTrack$CueList;->removeEvent(Landroid/media/SubtitleTrack$Cue;J)V

    return-void
.end method
