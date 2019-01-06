.class public Landroid/os/AnrMonitor$UploadInfo;
.super Ljava/lang/Object;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadInfo"
.end annotation


# static fields
.field private static final JSON_BASE_INFO_TAG:Ljava/lang/String; = "baseInfo"

.field private static final JSON_INFO_ARRAY_TAG:Ljava/lang/String; = "msgs"

.field private static final JSON_INFO_TAG:Ljava/lang/String; = "msg"

.field private static final JSON_PACKAGE_NAME_TAG:Ljava/lang/String; = "packageName"

.field private static final JSON_PROCESS_NAME_TAG:Ljava/lang/String; = "processName"

.field private static final JSON_THREAD_NAME_TAG:Ljava/lang/String; = "threadName"

.field private static final JSON_TOOKTIME_TAG:Ljava/lang/String; = "tookTime"

.field private static final JSON_VERSION_CODE_TAG:Ljava/lang/String; = "versionCode"

.field private static final JSON_VERSION_NAME_TAG:Ljava/lang/String; = "versionName"


# instance fields
.field info:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field processName:Ljava/lang/String;

.field threadName:Ljava/lang/String;

.field tookTime:J

.field versionCode:Ljava/lang/String;

.field versionName:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/os/AnrMonitor$UploadInfo;->createJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .registers 13

    const/4 v6, 0x0

    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v7, "processName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentProcessName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "packageName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "versionName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v7, "versionCode"

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionCode()I

    move-result v8

    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v7, "baseInfo"

    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_6b

    array-length v7, p0

    if-lez v7, :cond_6b

    array-length v7, p0

    :goto_44
    if-ge v6, v7, :cond_6b

    aget-object v2, p0, v6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "msg"

    iget-object v9, v2, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "threadName"

    iget-object v9, v2, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v8, "tookTime"

    iget-wide v10, v2, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v4, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    :cond_6b
    const-string/jumbo v6, "msgs"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v6, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v6, :cond_93

    const-string/jumbo v6, "AnrMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createJsonString "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_93
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_96} :catch_98

    move-result-object v6

    return-object v6

    :catch_98
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v6, ""

    return-object v6
.end method

.method public static getBaseInfo(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "baseInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v3

    return-object v3

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public static getInfoArray(Ljava/lang/String;)[Landroid/os/AnrMonitor$UploadInfo;
    .registers 19

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v15, "msgs"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    if-nez v6, :cond_12

    const/4 v15, 0x0

    return-object v15

    :cond_12
    const-string/jumbo v15, "baseInfo"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v15, "processName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v15, "packageName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v15, "versionName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "versionCode"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    new-array v2, v11, [Landroid/os/AnrMonitor$UploadInfo;

    const/4 v5, 0x0

    :goto_3c
    if-ge v5, v11, :cond_9e

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    new-instance v12, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v12}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    const-string/jumbo v15, "msg"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    iput-object v10, v12, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    iput-object v9, v12, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    iput-object v14, v12, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    iput-object v13, v12, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    const-string/jumbo v15, "threadName"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    const-string/jumbo v15, "tookTime"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v12, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    aput-object v12, v2, v5

    sget-boolean v15, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v15, :cond_9b

    const-string/jumbo v15, "AnrMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "getInfoArray i "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " info : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_9b} :catch_9f

    :cond_9b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3c

    :cond_9e
    return-object v2

    :catch_9f
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v15, 0x0

    return-object v15
.end method

.method public static getInfoByJsonString(Ljava/lang/String;)Landroid/os/AnrMonitor$UploadInfo;
    .registers 12

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "baseInfo"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v8, "processName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "packageName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v8, "versionName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "versionCode"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v5, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v5}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    const-string/jumbo v8, "msg"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    iput-object v4, v5, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    iput-object v3, v5, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    iput-object v7, v5, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    iput-object v6, v5, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    const-string/jumbo v8, "threadName"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    const-string/jumbo v8, "tookTime"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    sget-boolean v8, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v8, :cond_6e

    const-string/jumbo v8, "AnrMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getInfo info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_6e} :catch_6f

    :cond_6e
    return-object v5

    :catch_6f
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v8, 0x0

    return-object v8
.end method

.method public static getMatchTag(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {p0}, Landroid/os/AnrMonitor$UploadInfo;->getSaveContent(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v2

    return-object v2

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    return-object v2
.end method

.method public static getSaveContent(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "processName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "packageName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "versionName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "versionCode"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "baseInfo"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "msg"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "threadName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "tookTime"

    iget-wide v4, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4d

    move-result-object v3

    return-object v3

    :catch_4d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .registers 7

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "tookTime"

    invoke-virtual {p0}, Landroid/os/AnrMonitor$UploadInfo;->getTookTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v2

    return-object v2

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string/jumbo v2, ""

    return-object v2
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getTookTime()J
    .registers 3

    iget-wide v0, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    return-wide v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " processName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " versionName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " versionCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " tookTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
