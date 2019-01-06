.class Landroid/media/SubtitleTrack$Run;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Run"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field public mEndTimeMs:J

.field public mFirstCue:Landroid/media/SubtitleTrack$Cue;

.field public mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

.field public mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

.field public mRunID:J

.field private mStoredEndTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Landroid/media/SubtitleTrack$Run;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Landroid/media/SubtitleTrack$Run;->-assertionsDisabled:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/SubtitleTrack$Run;->mRunID:J

    iput-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/SubtitleTrack$Run;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/SubtitleTrack$Run;-><init>()V

    return-void
.end method


# virtual methods
.method public removeAtEndTimeMs()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iget-object v2, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v2, v1, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v3, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    :cond_f
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v0, v1, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object v3, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    :cond_19
    return-void
.end method

.method public storeByEndTimeMs(Landroid/util/LongSparseArray;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v0

    if-ltz v0, :cond_27

    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-nez v1, :cond_24

    sget-boolean v1, Landroid/media/SubtitleTrack$Run;->-assertionsDisabled:Z

    if-nez v1, :cond_1d

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eq p0, v1, :cond_1d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1d
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-nez v1, :cond_4d

    invoke-virtual {p1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    :cond_24
    :goto_24
    invoke-virtual {p0}, Landroid/media/SubtitleTrack$Run;->removeAtEndTimeMs()V

    :cond_27
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_4c

    iput-object v6, p0, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Run;

    iput-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    if-eqz v1, :cond_43

    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    iput-object p0, v1, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    :cond_43
    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    invoke-virtual {p1, v2, v3, p0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    iget-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iput-wide v2, p0, Landroid/media/SubtitleTrack$Run;->mStoredEndTimeMs:J

    :cond_4c
    return-void

    :cond_4d
    iget-object v1, p0, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_24
.end method
