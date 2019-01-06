.class public Lcom/android/systemui/miui/statusbar/CloudDataHelper;
.super Ljava/lang/Object;
.source "CloudDataHelper.java"


# static fields
.field public static final URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 6

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CloudDataHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createJSONArray exception json="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "CloudDataHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "jsonArray2List exception i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    return-object v2
.end method

.method private static readHashCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static updateAll(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string/jumbo v6, "CloudDataHelper"

    const-string/jumbo v7, "CloudData updateAll"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "systemui_float_whitelist"

    const-string/jumbo v7, "whitelist"

    invoke-static {v3, v6, v7}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string/jumbo v6, "systemui_float_whitelist"

    invoke-static {p0, v6}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->readHashCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v6, "CloudDataHelper"

    const-string/jumbo v7, "updateFloatWhitelist thisHashCode=%d lastHashCode=%d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v2, :cond_0

    invoke-static {p0, v0}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->updateFloatWhitelist(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v6, "systemui_float_whitelist"

    invoke-static {p0, v6, v5}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->writeHashCode(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    const-string/jumbo v6, "systemui_keyguard_whitelist"

    const-string/jumbo v7, "whitelist"

    invoke-static {v3, v6, v7}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string/jumbo v6, "systemui_keyguard_whitelist"

    invoke-static {p0, v6}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->readHashCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v6, "CloudDataHelper"

    const-string/jumbo v7, "updateKeyguardWhitelist thisHashCode=%d lastHashCode=%d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v5, v2, :cond_1

    invoke-static {p0, v1}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->updateKeyguardWhitelist(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v6, "systemui_keyguard_whitelist"

    invoke-static {p0, v6, v5}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->writeHashCode(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_1
    const-string/jumbo v6, "systemui_local_score"

    invoke-static {v3, v6}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/List;->hashCode()I

    move-result v5

    const-string/jumbo v6, "systemui_local_score"

    invoke-static {p0, v6}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->readHashCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v6, "CloudDataHelper"

    const-string/jumbo v7, "updateLocalAlgoModel thisHashCode=%d lastHashCode=%d"

    new-array v8, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->hasLocalRules()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eq v5, v2, :cond_3

    :cond_2
    invoke-static {v4}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->updateLocalAlgoModel(Ljava/util/List;)V

    const-string/jumbo v6, "systemui_local_score"

    invoke-static {p0, v6, v5}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->writeHashCode(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private static updateFloatWhitelist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lmiui/util/NotificationFilterHelper;->updateFloatWhiteList(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static updateKeyguardWhitelist(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->createJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/CloudDataHelper;->jsonArray2List(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0, v1}, Lmiui/util/NotificationFilterHelper;->updateKeyguardWhitelist(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static updateLocalAlgoModel(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    const-string/jumbo v6, "pkg"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v4, Lcom/android/systemui/miui/statusbar/LocalScoreRule;

    invoke-direct {v4}, Lcom/android/systemui/miui/statusbar/LocalScoreRule;-><init>()V

    const-string/jumbo v6, "title"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    const-string/jumbo v6, "desc"

    const-string/jumbo v7, ""

    invoke-virtual {v0, v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    const-string/jumbo v6, "score"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v4, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->updateRules(Ljava/util/HashMap;)V

    return-void
.end method

.method private static writeHashCode(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
