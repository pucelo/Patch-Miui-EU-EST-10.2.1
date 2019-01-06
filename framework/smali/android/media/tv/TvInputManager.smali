.class public final Landroid/media/tv/TvInputManager;
.super Ljava/lang/Object;
.source "TvInputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/TvInputManager$Hardware;,
        Landroid/media/tv/TvInputManager$HardwareCallback;,
        Landroid/media/tv/TvInputManager$Session;,
        Landroid/media/tv/TvInputManager$SessionCallback;,
        Landroid/media/tv/TvInputManager$SessionCallbackRecord;,
        Landroid/media/tv/TvInputManager$TvInputCallback;,
        Landroid/media/tv/TvInputManager$TvInputCallbackRecord;
    }
.end annotation


# static fields
.field public static final ACTION_BLOCKED_RATINGS_CHANGED:Ljava/lang/String; = "android.media.tv.action.BLOCKED_RATINGS_CHANGED"

.field public static final ACTION_PARENTAL_CONTROLS_ENABLED_CHANGED:Ljava/lang/String; = "android.media.tv.action.PARENTAL_CONTROLS_ENABLED_CHANGED"

.field public static final ACTION_QUERY_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.action.QUERY_CONTENT_RATING_SYSTEMS"

.field public static final ACTION_SETUP_INPUTS:Ljava/lang/String; = "android.media.tv.action.SETUP_INPUTS"

.field public static final ACTION_VIEW_RECORDING_SCHEDULES:Ljava/lang/String; = "android.media.tv.action.VIEW_RECORDING_SCHEDULES"

.field public static final DVB_DEVICE_DEMUX:I = 0x0

.field public static final DVB_DEVICE_DVR:I = 0x1

.field static final DVB_DEVICE_END:I = 0x2

.field public static final DVB_DEVICE_FRONTEND:I = 0x2

.field static final DVB_DEVICE_START:I = 0x0

.field public static final INPUT_STATE_CONNECTED:I = 0x0

.field public static final INPUT_STATE_CONNECTED_STANDBY:I = 0x1

.field public static final INPUT_STATE_DISCONNECTED:I = 0x2

.field public static final META_DATA_CONTENT_RATING_SYSTEMS:Ljava/lang/String; = "android.media.tv.metadata.CONTENT_RATING_SYSTEMS"

.field static final RECORDING_ERROR_END:I = 0x2

.field public static final RECORDING_ERROR_INSUFFICIENT_SPACE:I = 0x1

.field public static final RECORDING_ERROR_RESOURCE_BUSY:I = 0x2

.field static final RECORDING_ERROR_START:I = 0x0

.field public static final RECORDING_ERROR_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TvInputManager"

.field public static final TIME_SHIFT_INVALID_TIME:J = -0x8000000000000000L

.field public static final TIME_SHIFT_STATUS_AVAILABLE:I = 0x3

.field public static final TIME_SHIFT_STATUS_UNAVAILABLE:I = 0x2

.field public static final TIME_SHIFT_STATUS_UNKNOWN:I = 0x0

.field public static final TIME_SHIFT_STATUS_UNSUPPORTED:I = 0x1

.field public static final VIDEO_UNAVAILABLE_REASON_AUDIO_ONLY:I = 0x4

.field public static final VIDEO_UNAVAILABLE_REASON_BUFFERING:I = 0x3

.field static final VIDEO_UNAVAILABLE_REASON_END:I = 0x4

.field static final VIDEO_UNAVAILABLE_REASON_START:I = 0x0

.field public static final VIDEO_UNAVAILABLE_REASON_TUNING:I = 0x1

.field public static final VIDEO_UNAVAILABLE_REASON_UNKNOWN:I = 0x0

.field public static final VIDEO_UNAVAILABLE_REASON_WEAK_SIGNAL:I = 0x2


# instance fields
.field private final mCallbackRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputManager$TvInputCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/media/tv/ITvInputClient;

.field private final mLock:Ljava/lang/Object;

.field private mNextSeq:I

.field private final mService:Landroid/media/tv/ITvInputManager;

.field private final mSessionCallbackRecordMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/media/tv/TvInputManager$SessionCallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Landroid/media/tv/TvInputManager;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/tv/TvInputManager;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/tv/TvInputManager;)Landroid/media/tv/ITvInputManager;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/tv/TvInputManager;)Landroid/util/SparseArray;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/tv/TvInputManager;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/tv/TvInputManager;)I
    .registers 2

    iget v0, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    return v0
.end method

.method public constructor <init>(Landroid/media/tv/ITvInputManager;I)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iput p2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    new-instance v6, Landroid/media/tv/TvInputManager$1;

    invoke-direct {v6, p0}, Landroid/media/tv/TvInputManager$1;-><init>(Landroid/media/tv/TvInputManager;)V

    iput-object v6, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    new-instance v5, Landroid/media/tv/TvInputManager$2;

    invoke-direct {v5, p0}, Landroid/media/tv/TvInputManager$2;-><init>(Landroid/media/tv/TvInputManager;)V

    :try_start_2f
    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    if-eqz v6, :cond_75

    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v7, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v6, v5, v7}, Landroid/media/tv/ITvInputManager;->registerCallback(Landroid/media/tv/ITvInputManagerCallback;I)V

    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v7, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v6, v7}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;

    move-result-object v3

    iget-object v7, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_45} :catch_6e

    :try_start_45
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    iget-object v8, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v9, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v8, v4, v9}, Landroid/media/tv/ITvInputManager;->getTvInputState(Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catchall {:try_start_45 .. :try_end_6a} :catchall_6b

    goto :goto_49

    :catchall_6b
    move-exception v6

    :try_start_6c
    monitor-exit v7

    throw v6
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6c .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v6

    throw v6

    :cond_74
    :try_start_74
    monitor-exit v7
    :try_end_75
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_75} :catch_6e

    :cond_75
    return-void
.end method

.method private createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .registers 14

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/media/tv/TvInputManager$SessionCallbackRecord;

    invoke-direct {v7, p3, p4}, Landroid/media/tv/TvInputManager$SessionCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    iget-object v8, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    monitor-enter v8

    :try_start_11
    iget v4, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    add-int/lit8 v0, v4, 0x1

    iput v0, p0, Landroid/media/tv/TvInputManager;->mNextSeq:I

    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mSessionCallbackRecordMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_2f

    :try_start_1c
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mClient:Landroid/media/tv/ITvInputClient;

    iget v5, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/media/tv/ITvInputManager;->createSession(Landroid/media/tv/ITvInputClient;Ljava/lang/String;ZII)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_27} :catch_29
    .catchall {:try_start_1c .. :try_end_27} :catchall_2f

    monitor-exit v8

    return-void

    :catch_29
    move-exception v6

    :try_start_2a
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit v8

    throw v0
.end method


# virtual methods
.method public acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;
    .registers 9

    :try_start_0
    new-instance v1, Landroid/media/tv/TvInputManager$Hardware;

    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    new-instance v3, Landroid/media/tv/TvInputManager$3;

    invoke-direct {v3, p0, p3}, Landroid/media/tv/TvInputManager$3;-><init>(Landroid/media/tv/TvInputManager;Landroid/media/tv/TvInputManager$HardwareCallback;)V

    iget v4, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v2, p1, v3, p2, v4}, Landroid/media/tv/ITvInputManager;->acquireTvInputHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;I)Landroid/media/tv/ITvInputHardware;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/tv/TvInputManager$Hardware;-><init>(Landroid/media/tv/ITvInputHardware;Landroid/media/tv/TvInputManager$Hardware;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public acquireTvInputHardware(ILandroid/media/tv/TvInputManager$HardwareCallback;Landroid/media/tv/TvInputInfo;)Landroid/media/tv/TvInputManager$Hardware;
    .registers 5

    invoke-virtual {p0, p1, p3, p2}, Landroid/media/tv/TvInputManager;->acquireTvInputHardware(ILandroid/media/tv/TvInputInfo;Landroid/media/tv/TvInputManager$HardwareCallback;)Landroid/media/tv/TvInputManager$Hardware;

    move-result-object v0

    return-object v0
.end method

.method public addBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->addBlockedRating(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/media/tv/ITvInputManager;->captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createRecordingSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/media/tv/TvInputManager;->createSessionInternal(Ljava/lang/String;ZLandroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputManager;->getAvailableTvStreamConfigList(Ljava/lang/String;I)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getBlockedRatings()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRating;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v5, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v4, v5}, Landroid/media/tv/ITvInputManager;->getBlockedRatings(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/media/tv/TvContentRating;->unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_11

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :cond_2b
    return-object v3
.end method

.method public getDvbDeviceList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/DvbDeviceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v1}, Landroid/media/tv/ITvInputManager;->getDvbDeviceList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v1}, Landroid/media/tv/ITvInputManager;->getHardwareList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInputState(Ljava/lang/String;)I
    .registers 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mStateMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2d

    const-string/jumbo v1, "TvInputManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unrecognized input ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_6 .. :try_end_2a} :catchall_33

    const/4 v1, 0x2

    monitor-exit v2

    return v1

    :cond_2d
    :try_start_2d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_33

    move-result v1

    monitor-exit v2

    return v1

    :catchall_33
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getTvContentRatingSystemList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvContentRatingSystemInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getTvContentRatingSystemList(I)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputManager;->getTvInputInfo(Ljava/lang/String;I)Landroid/media/tv/TvInputInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c

    move-result-object v1

    return-object v1

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getTvInputList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->getTvInputList(I)Ljava/util/List;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isParentalControlsEnabled()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->isParentalControlsEnabled(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isRatingBlocked(Landroid/media/tv/TvContentRating;)Z
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->isRatingBlocked(Ljava/lang/String;I)Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_10

    move-result v1

    return v1

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isSingleSessionActive()Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2}, Landroid/media/tv/ITvInputManager;->isSingleSessionActive(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_9

    move-result v1

    return v1

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyPreviewProgramAddedToWatchNext(Ljava/lang/String;JJ)V
    .registers 10

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.media.tv.action.PREVIEW_PROGRAM_ADDED_TO_WATCH_NEXT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v1, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_1a
    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v2, v1, v3}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notifyPreviewProgramBrowsableDisabled(Ljava/lang/String;J)V
    .registers 8

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.media.tv.action.PREVIEW_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.extra.PREVIEW_PROGRAM_ID"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_14
    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v2, v1, v3}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public notifyWatchNextProgramBrowsableDisabled(Ljava/lang/String;J)V
    .registers 8

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.media.tv.action.WATCH_NEXT_PROGRAM_BROWSABLE_DISABLED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.media.tv.extra.WATCH_NEXT_PROGRAM_ID"

    invoke-virtual {v1, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_14
    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v2, v1, v3}, Landroid/media/tv/ITvInputManager;->sendTvInputNotifyIntent(Landroid/content/Intent;I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1c

    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    .registers 7

    if-ltz p2, :cond_5

    const/4 v1, 0x2

    if-ge v1, p2, :cond_25

    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid DVB device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_25
    :try_start_25
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-interface {v1, p1, p2}, Landroid/media/tv/ITvInputManager;->openDvbDevice(Landroid/media/tv/DvbDeviceInfo;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2a} :catch_1f

    move-result-object v1

    return-object v1
.end method

.method public registerCallback(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    new-instance v2, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-direct {v2, p1, p2}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;-><init>(Landroid/media/tv/TvInputManager$TvInputCallback;Landroid/os/Handler;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_15

    monitor-exit v1

    return-void

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public releaseTvInputHardware(ILandroid/media/tv/TvInputManager$Hardware;)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-static {p2}, Landroid/media/tv/TvInputManager$Hardware;->-wrap0(Landroid/media/tv/TvInputManager$Hardware;)Landroid/media/tv/ITvInputHardware;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, p1, v2, v3}, Landroid/media/tv/ITvInputManager;->releaseTvInputHardware(ILandroid/media/tv/ITvInputHardware;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeBlockedRating(Landroid/media/tv/TvContentRating;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->flattenToString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/media/tv/ITvInputManager;->removeBlockedRating(Ljava/lang/String;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_f

    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestChannelBrowsable(Landroid/net/Uri;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputManager;->requestChannelBrowsable(Landroid/net/Uri;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setParentalControlsEnabled(Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputManager;->setParentalControlsEnabled(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterCallback(Landroid/media/tv/TvInputManager$TvInputCallback;)V
    .registers 6

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/media/tv/TvInputManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_6
    iget-object v2, p0, Landroid/media/tv/TvInputManager;->mCallbackRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;

    invoke-virtual {v1}, Landroid/media/tv/TvInputManager$TvInputCallbackRecord;->getCallback()Landroid/media/tv/TvInputManager$TvInputCallback;

    move-result-object v2

    if-ne v2, p1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_23

    :cond_21
    monitor-exit v3

    return-void

    :catchall_23
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V
    .registers 5

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    iget-object v1, p0, Landroid/media/tv/TvInputManager;->mService:Landroid/media/tv/ITvInputManager;

    iget v2, p0, Landroid/media/tv/TvInputManager;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/media/tv/ITvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
