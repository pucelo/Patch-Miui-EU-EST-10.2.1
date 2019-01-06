.class public Lcom/android/server/wm/FullScreenEventReporter;
.super Ljava/lang/Object;
.source "FullScreenEventReporter.java"


# static fields
.field private static final CACHE_LIST_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field static final FS_ACTION_CANCEL:Ljava/lang/String; = "cancel"

.field static final FS_ACTION_HOME:Ljava/lang/String; = "home"

.field private static final FS_ACTION_KEY:Ljava/lang/String; = "action"

.field static final FS_ACTION_RECENTS:Ljava/lang/String; = "recents"

.field private static final FS_DO_FRAMES_COUNT:Ljava/lang/String; = "doFramesCount"

.field private static final FS_EXTRA1:Ljava/lang/String; = "extraKey1"

.field private static final FS_EXTRA2:Ljava/lang/String; = "extraKey2"

.field private static final FS_FUNCTION_VERSION:Ljava/lang/String; = "fullScreenVersion"

.field private static final FS_JANKY_FRAMES_COUNT:Ljava/lang/String; = "jankyFramesCount"

.field private static final FS_MODULE:Ljava/lang/String; = "fsJankyFrames"

.field private static final FS_PACKAGE_NAME:Ljava/lang/String; = "package"

.field private static final FS_RECORD_TIME:Ljava/lang/String; = "recordTime"

.field private static final FS_VERSION_VALUE:Ljava/lang/String; = "2"

.field private static final JANKY_FRAME_INTERVAL:I = 0x14

.field private static final JSON_PREFIX_FORMAT:Ljava/lang/String; = "{\"fullScreenVersion\":\"\",\"action\":\"\",\"jankyFramesCount\":\"\",\"extraKey1\":\"\",\"extraKey2\":\" %s\"}"

.field private static final TAG:Ljava/lang/String; = "FullScreenEventReporter"

.field private static mFrameIntervalMsec:J

.field private static sCurrentTime:J

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static sDoFrameCount:I

.field private static sJankyFrameCount:I

.field private static final sJankyFramesInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    sput v2, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:I

    sput v2, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->mFrameIntervalMsec:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/FullScreenEventReporter;->sDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static caculateAnimationFrameInterval(Ljava/lang/String;)V
    .registers 11

    sget v6, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:I

    sget-wide v2, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2d

    sget-wide v6, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    sub-long v0, v6, v2

    const-wide/16 v6, 0x14

    cmp-long v6, v0, v6

    if-lez v6, :cond_2d

    sget-wide v6, Lcom/android/server/wm/FullScreenEventReporter;->mFrameIntervalMsec:J

    div-long v6, v0, v6

    const-wide/16 v8, 0x1

    sub-long v4, v6, v8

    sget v6, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:I

    int-to-long v6, v6

    add-long/2addr v6, v4

    long-to-int v6, v6

    sput v6, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:I

    :cond_2d
    return-void
.end method

.method private static frameInfoToJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "fullScreenVersion"

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "action"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "jankyFramesCount"

    sget v3, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "doFramesCount"

    sget v3, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "recordTime"

    sget-object v3, Lcom/android/server/wm/FullScreenEventReporter;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "extraKey1"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "extraKey2"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static getRefreshRate()F
    .registers 3

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method static recordJankyFrames(Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    const-class v4, Lcom/android/server/wm/FullScreenEventReporter;

    monitor-enter v4

    :try_start_3
    invoke-static {p0, p1}, Lcom/android/server/wm/FullScreenEventReporter;->frameInfoToJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_10} :catch_34
    .catchall {:try_start_3 .. :try_end_10} :catchall_4f

    :goto_10
    :try_start_10
    sget-object v3, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0xa

    if-lt v3, v5, :cond_32

    new-instance v2, Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/android/server/wm/FullScreenEventReporter$1;

    invoke-direct {v5, v2}, Lcom/android/server/wm/FullScreenEventReporter$1;-><init>(Ljava/util/List;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_32
    .catchall {:try_start_10 .. :try_end_32} :catchall_4f

    :cond_32
    monitor-exit v4

    return-void

    :catch_34
    move-exception v0

    :try_start_35
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    sget-object v3, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFramesInfoList:Ljava/util/List;

    const-string/jumbo v5, "{\"fullScreenVersion\":\"\",\"action\":\"\",\"jankyFramesCount\":\"\",\"extraKey1\":\"\",\"extraKey2\":\" %s\"}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_4f

    goto :goto_10

    :catchall_4f
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static resetAnimationFrameIntervalParams(Ljava/lang/String;)V
    .registers 4

    const/4 v2, 0x0

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->sCurrentTime:J

    sput v2, Lcom/android/server/wm/FullScreenEventReporter;->sJankyFrameCount:I

    sput v2, Lcom/android/server/wm/FullScreenEventReporter;->sDoFrameCount:I

    invoke-static {}, Lcom/android/server/wm/FullScreenEventReporter;->getRefreshRate()F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v0, v1, v0

    float-to-long v0, v0

    sput-wide v0, Lcom/android/server/wm/FullScreenEventReporter;->mFrameIntervalMsec:J

    return-void
.end method
