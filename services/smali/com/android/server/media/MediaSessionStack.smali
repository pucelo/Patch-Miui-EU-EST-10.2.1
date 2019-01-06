.class Lcom/android/server/media/MediaSessionStack;
.super Ljava/lang/Object;
.source "MediaSessionStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;
    }
.end annotation


# static fields
.field private static final ALWAYS_PRIORITY_STATES:[I

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MediaSessionStack"

.field private static final TRANSITION_PRIORITY_STATES:[I


# instance fields
.field private final mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

.field private final mCachedActiveLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

.field private mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

.field private final mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

.field private final mSessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    const/4 v0, 0x4

    const/4 v1, 0x5

    const/16 v2, 0x9

    const/16 v3, 0xa

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    const/4 v0, 0x6

    const/16 v1, 0x8

    const/4 v2, 0x3

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    return-void
.end method

.method constructor <init>(Lcom/android/server/media/AudioPlaybackMonitor;Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    return-void
.end method

.method private clearCache(I)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedDefault:Lcom/android/server/media/MediaSessionRecord;

    iput-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private containsState(I[I)Z
    .registers 5

    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_d

    aget v1, p2, v0

    if-ne v1, p1, :cond_a

    const/4 v1, 0x1

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_d
    const/4 v1, 0x0

    return v1
.end method

.method private findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v3

    if-ne p1, v3, :cond_7

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/media/AudioPlaybackMonitor;->isPlaybackActive(I)Z

    move-result v4

    if-ne v3, v4, :cond_30

    return-object v1

    :cond_30
    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_7

    :cond_34
    return-object v0
.end method

.method private shouldUpdatePriority(II)Z
    .registers 5

    const/4 v1, 0x1

    sget-object v0, Lcom/android/server/media/MediaSessionStack;->ALWAYS_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/server/media/MediaSessionStack;->TRANSITION_PRIORITY_STATES:[I

    invoke-direct {p0, p2, v0}, Lcom/android/server/media/MediaSessionStack;->containsState(I[I)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method private updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    iput-object p1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mOnMediaButtonSessionChangedListener:Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;

    invoke-interface {v1, v0, p1}, Lcom/android/server/media/MediaSessionStack$OnMediaButtonSessionChangedListener;->onMediaButtonSessionChanged(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method


# virtual methods
.method public addSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    invoke-virtual {p0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSessionIfNeeded()V

    return-void
.end method

.method public contains(Lcom/android/server/media/MediaSessionRecord;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0, v5, v6}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Media button session is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "Sessions Stack - have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " sessions:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_5e
    if-ge v1, v0, :cond_6f

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/media/MediaSessionRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    :cond_6f
    return-void
.end method

.method public getActiveSessions(I)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_14

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedActiveLists:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getDefaultRemoteSession(I)Lcom/android/server/media/MediaSessionRecord;
    .registers 8

    const/4 v4, 0x1

    invoke-virtual {p0, v4, p1}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v3, :cond_1d

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getPlaybackType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1a

    return-object v1

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1d
    const/4 v4, 0x0

    return-object v4
.end method

.method public getDefaultVolumeSession()Lcom/android/server/media/MediaSessionRecord;
    .registers 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v4

    :cond_8
    const/4 v4, 0x1

    const/4 v5, -0x1

    invoke-virtual {p0, v4, v5}, Lcom/android/server/media/MediaSessionStack;->getPriorityList(ZI)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_13
    if-ge v0, v3, :cond_27

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v4

    if-eqz v4, :cond_24

    iput-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    return-object v1

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_27
    return-object v6
.end method

.method public getMediaButtonSession()Lcom/android/server/media/MediaSessionRecord;
    .registers 2

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    return-object v0
.end method

.method public getPriorityList(ZI)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/media/MediaSessionRecord;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v0, 0x0

    move v2, v1

    move v4, v3

    :goto_10
    if-ge v0, v7, :cond_4d

    iget-object v8, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaSessionRecord;

    const/4 v8, -0x1

    if-eq p2, v8, :cond_2a

    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v8

    if-eq p2, v8, :cond_2a

    move v1, v2

    move v3, v4

    :goto_25
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    move v4, v3

    goto :goto_10

    :cond_2a
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->isActive()Z

    move-result v8

    if-nez v8, :cond_38

    if-nez p1, :cond_35

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    move v1, v2

    move v3, v4

    goto :goto_25

    :cond_38
    invoke-virtual {v6}, Lcom/android/server/media/MediaSessionRecord;->isPlaybackActive()Z

    move-result v8

    if-eqz v8, :cond_46

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v5, v4, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v2, 0x1

    goto :goto_25

    :cond_46
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {v5, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v4

    goto :goto_25

    :cond_4d
    return-object v5
.end method

.method public onPlaystateChanged(Lcom/android/server/media/MediaSessionRecord;II)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p2, p3}, Lcom/android/server/media/MediaSessionStack;->shouldUpdatePriority(II)Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_3a

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v0, v1, :cond_3a

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    :cond_3a
    return-void

    :cond_3b
    invoke-static {p3}, Landroid/media/session/MediaSession;->isActiveState(I)Z

    move-result v1

    if-nez v1, :cond_19

    iput-object v2, p0, Lcom/android/server/media/MediaSessionStack;->mCachedVolumeDefault:Lcom/android/server/media/MediaSessionRecord;

    goto :goto_19
.end method

.method public onSessionStateChange(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    return-void
.end method

.method public removeSession(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mSessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-ne v0, p1, :cond_d

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaSessionStack;->clearCache(I)V

    return-void
.end method

.method public updateMediaButtonSessionIfNeeded()V
    .registers 7

    sget-boolean v3, Lcom/android/server/media/MediaSessionStack;->DEBUG:Z

    if-eqz v3, :cond_23

    const-string/jumbo v3, "MediaSessionStack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateMediaButtonSessionIfNeeded, callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

    invoke-virtual {v3}, Lcom/android/server/media/AudioPlaybackMonitor;->getSortedAudioPlaybackClientUids()Landroid/util/IntArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_2a
    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4e

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/media/MediaSessionStack;->findMediaButtonSession(I)Lcom/android/server/media/MediaSessionRecord;

    move-result-object v2

    if-eqz v2, :cond_4b

    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mAudioPlaybackMonitor:Lcom/android/server/media/AudioPlaybackMonitor;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/media/AudioPlaybackMonitor;->cleanUpAudioPlaybackUids(I)V

    iget-object v3, p0, Lcom/android/server/media/MediaSessionStack;->mMediaButtonSession:Lcom/android/server/media/MediaSessionRecord;

    if-eq v3, v2, :cond_4a

    invoke-direct {p0, v2}, Lcom/android/server/media/MediaSessionStack;->updateMediaButtonSession(Lcom/android/server/media/MediaSessionRecord;)V

    :cond_4a
    return-void

    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_4e
    return-void
.end method
