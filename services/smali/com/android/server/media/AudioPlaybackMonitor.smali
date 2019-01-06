.class Lcom/android/server/media/AudioPlaybackMonitor;
.super Landroid/media/IPlaybackConfigDispatcher$Stub;
.source "AudioPlaybackMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;,
        Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;
    }
.end annotation


# static fields
.field private static DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/media/AudioPlaybackMonitor;


# instance fields
.field private final mActiveAudioPlaybackClientUids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlaybackStartedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlaybackStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioPlayerActiveStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mSortedAudioPlaybackClientUids:Landroid/util/IntArray;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/server/media/MediaSessionService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/media/AudioPlaybackMonitor;->DEBUG:Z

    const-string/jumbo v0, "AudioPlaybackMonitor"

    sput-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/media/IAudioService;)V
    .registers 6

    invoke-direct {p0}, Landroid/media/IPlaybackConfigDispatcher$Stub;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStartedListeners:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlayerActiveStateChangedListeners:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    new-instance v1, Landroid/util/IntArray;

    invoke-direct {v1}, Landroid/util/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    iput-object p1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mContext:Landroid/content/Context;

    :try_start_2f
    invoke-interface {p2, p0}, Landroid/media/IAudioService;->registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33

    :goto_32
    return-void

    :catch_33
    move-exception v0

    sget-object v1, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Failed to register playback callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32
.end method

.method static getInstance(Landroid/content/Context;Landroid/media/IAudioService;)Lcom/android/server/media/AudioPlaybackMonitor;
    .registers 3

    sget-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->sInstance:Lcom/android/server/media/AudioPlaybackMonitor;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/server/media/AudioPlaybackMonitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/AudioPlaybackMonitor;-><init>(Landroid/content/Context;Landroid/media/IAudioService;)V

    sput-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->sInstance:Lcom/android/server/media/AudioPlaybackMonitor;

    :cond_b
    sget-object v0, Lcom/android/server/media/AudioPlaybackMonitor;->sInstance:Lcom/android/server/media/AudioPlaybackMonitor;

    return-object v0
.end method

.method private isActiveState(Ljava/lang/Integer;)Z
    .registers 3

    if-eqz p1, :cond_c

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public cleanUpAudioPlaybackUids(I)V
    .registers 7

    iget-object v4, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3}, Landroid/util/IntArray;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_f
    if-ltz v0, :cond_19

    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_37

    move-result v3

    if-ne v3, p1, :cond_1b

    :cond_19
    monitor-exit v4

    return-void

    :cond_1b
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->get(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v2, v3, :cond_34

    invoke-virtual {p0, v1}, Lcom/android/server/media/AudioPlaybackMonitor;->isPlaybackActive(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_34

    iget-object v3, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v3, v0}, Landroid/util/IntArray;->remove(I)V
    :try_end_34
    .catchall {:try_start_1b .. :try_end_34} :catchall_37

    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    :catchall_37
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public dispatchPlaybackConfigChange(Ljava/util/List;Z)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    :try_start_9
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_e2

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->clear()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_22
    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_e7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v20

    if-eqz v20, :cond_22

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerType()I

    move-result v20

    const/16 v22, 0x3

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/media/AudioPlaybackMonitor;->isActiveState(Ljava/lang/Integer;)Z

    move-result v20

    if-nez v20, :cond_22

    sget-boolean v20, Lcom/android/server/media/AudioPlaybackMonitor;->DEBUG:Z

    if-eqz v20, :cond_9a

    sget-object v20, Lcom/android/server/media/AudioPlaybackMonitor;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Found a new active media playback. "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v6}, Landroid/media/AudioPlaybackConfiguration;->toLogFriendlyString(Landroid/media/AudioPlaybackConfiguration;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v22

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->indexOf(I)I

    move-result v8

    if-eqz v8, :cond_22

    if-lez v8, :cond_c8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/util/IntArray;->remove(I)V

    :cond_c8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/IntArray;->add(II)V
    :try_end_dd
    .catchall {:try_start_15 .. :try_end_dd} :catchall_df

    goto/16 :goto_22

    :catchall_df
    move-exception v20

    :try_start_e0
    monitor-exit v21

    throw v20
    :try_end_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_e2

    :catchall_e2
    move-exception v20

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v20

    :cond_e7
    :try_start_e7
    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlayerActiveStateChangedListeners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStartedListeners:Ljava/util/List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_101
    .catchall {:try_start_e7 .. :try_end_101} :catchall_df

    :try_start_101
    monitor-exit v21

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_106
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_150

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/media/AudioPlaybackMonitor;->isActiveState(Ljava/lang/Integer;)Z

    move-result v19

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v9

    move/from16 v0, v19

    if-eq v0, v9, :cond_106

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_13a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_106

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v20

    move/from16 v0, v20

    invoke-interface {v11, v0, v9}, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;->onAudioPlayerActiveStateChanged(IZ)V

    goto :goto_13a

    :cond_150
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_154
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_178

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_168
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_154

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;

    invoke-interface {v10, v15}, Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;->onAudioPlaybackStarted(I)V

    goto :goto_168

    :cond_178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->clear()V

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_185
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1ab

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioPlaybackConfiguration;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStates:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerInterfaceId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual {v6}, Landroid/media/AudioPlaybackConfiguration;->getPlayerState()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-interface/range {v20 .. v22}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1aa
    .catchall {:try_start_101 .. :try_end_1aa} :catchall_e2

    goto :goto_185

    :cond_1ab
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    iget-object v6, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "Audio playback (lastly played comes first)"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "  "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_2f
    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v5}, Landroid/util/IntArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_94

    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v5, v0}, Landroid/util/IntArray;->get(I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " packages="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8e

    array-length v5, v3

    if-lez v5, :cond_8e

    const/4 v2, 0x0

    :goto_6f
    array-length v5, v3

    if-ge v2, v5, :cond_8e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v3, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6f

    :cond_8e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_91
    .catchall {:try_start_3 .. :try_end_91} :catchall_96

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_94
    monitor-exit v6

    return-void

    :catchall_96
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getSortedAudioPlaybackClientUids()Landroid/util/IntArray;
    .registers 4

    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iget-object v2, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_8
    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mSortedAudioPlaybackClientUids:Landroid/util/IntArray;

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->addAll(Landroid/util/IntArray;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit v2

    return-object v0

    :catchall_f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isPlaybackActive(I)Z
    .registers 5

    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mActiveAudioPlaybackClientUids:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerOnAudioPlaybackStartedListener(Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStartedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerOnAudioPlayerActiveStateChangedListener(Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlayerActiveStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterOnAudioPlaybackStartedListener(Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlaybackStartedListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlaybackStartedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public unregisterOnAudioPlayerActiveStateChangedListener(Lcom/android/server/media/AudioPlaybackMonitor$OnAudioPlayerActiveStateChangedListener;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/android/server/media/AudioPlaybackMonitor;->mAudioPlayerActiveStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
