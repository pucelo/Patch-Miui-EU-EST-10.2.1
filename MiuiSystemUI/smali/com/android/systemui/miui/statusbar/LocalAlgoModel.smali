.class public Lcom/android/systemui/miui/statusbar/LocalAlgoModel;
.super Ljava/lang/Object;
.source "LocalAlgoModel.java"


# static fields
.field static b:D

.field static cg:[D

.field static cgw:[D

.field static cl:[D

.field static clw:[D

.field static eg:[D

.field static egw:[D

.field static el:[D

.field static elw:[D

.field private static mLastUpdateTimeStamp:J

.field private static mOldestUpdateTimeStamp:J

.field private static sPkgs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/LocalScoreRule;",
            ">;>;"
        }
    .end annotation
.end field

.field static th:D

.field static v:D

.field static w:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->v:D

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->b:D

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->th:D

    const/4 v0, 0x6

    new-array v0, v0, [D

    sput-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->elw:[D

    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->egw:[D

    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->clw:[D

    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    sput-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cgw:[D

    sput-wide v4, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    sput-wide v4, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.facebook.orca"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.gm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.calendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.stk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.cellbroadcastreceiver"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.server.telecom"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.channel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.bugreport"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.providers.downloads"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cacheLocalModel(Lorg/json/JSONObject;)V
    .locals 18

    :try_start_0
    const-string/jumbo v13, "v"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    sput-wide v14, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->v:D

    const-string/jumbo v13, "b"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    sput-wide v14, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->b:D

    const-string/jumbo v13, "th"

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v14

    sput-wide v14, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->th:D

    const-string/jumbo v13, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_0

    const/4 v13, 0x6

    if-ge v11, v13, :cond_0

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const-wide/16 v14, 0x0

    invoke-virtual {v12, v11, v14, v15}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v13, "el"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->elw:[D

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_2

    invoke-virtual {v9, v11}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v10

    if-eqz v10, :cond_1

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->elw:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v13, "eg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->egw:[D

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_4

    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    if-eqz v8, :cond_3

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->egw:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v8, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v13, "cl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->clw:[D

    const/4 v11, 0x0

    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_6

    invoke-virtual {v4, v11}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_5

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->clw:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v5, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    const-string/jumbo v13, "cg"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v13, v13, [D

    sput-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cgw:[D

    const/4 v11, 0x0

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v11, v13, :cond_8

    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11

    sget-object v13, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cgw:[D

    const/4 v14, 0x1

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-virtual {v2, v14, v0, v1}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v14

    aput-wide v14, v13, v11
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    return-void
.end method

.method private static diff()D
    .locals 4

    const-wide/16 v2, 0x0

    sget-wide v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    sget-wide v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x4194997000000000L    # 8.64E7

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static getIncreasePercent()D
    .locals 6

    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->diff()D

    move-result-wide v0

    cmpl-double v2, v0, v4

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    return-wide v2

    :cond_1
    div-double v2, v0, v4

    return-wide v2
.end method

.method public static getScore(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)D
    .locals 28

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getFoldPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->isLocalModelAvailable()Z

    move-result v18

    if-nez v18, :cond_0

    const-wide/16 v18, 0x0

    return-wide v18

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->matchRules(Ljava/lang/String;Landroid/app/Notification;)I

    move-result v5

    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-eq v5, v0, :cond_1

    int-to-double v0, v5

    move-wide/from16 v18, v0

    return-wide v18

    :cond_1
    const-class v18, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-static/range {v18 .. v18}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;

    invoke-virtual {v7, v6}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalClickCount(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v6}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalShowCount(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_2

    int-to-double v0, v10

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    mul-double v18, v18, v20

    int-to-double v0, v11

    move-wide/from16 v20, v0

    div-double v8, v18, v20

    :goto_0
    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalClickCount()I

    move-result v14

    invoke-virtual {v7}, Lcom/android/systemui/miui/statusbar/phone/rank/PackageScoreCache;->getTotalShowCount()I

    move-result v15

    if-eqz v15, :cond_3

    int-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    mul-double v18, v18, v20

    int-to-double v0, v15

    move-wide/from16 v20, v0

    div-double v2, v18, v20

    :goto_1
    const-wide/16 v12, 0x0

    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    if-eqz v18, :cond_5

    const/4 v4, 0x0

    :goto_2
    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_5

    int-to-double v0, v11

    move-wide/from16 v18, v0

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->el:[D

    aget-wide v20, v20, v4

    cmpg-double v18, v18, v20

    if-gez v18, :cond_4

    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->elw:[D

    aget-wide v18, v18, v4

    :goto_3
    add-double v12, v12, v18

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v8, 0x0

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_4
    const-wide/16 v18, 0x0

    goto :goto_3

    :cond_5
    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    if-eqz v18, :cond_7

    const/4 v4, 0x0

    :goto_4
    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_7

    int-to-double v0, v11

    move-wide/from16 v18, v0

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->eg:[D

    aget-wide v20, v20, v4

    cmpl-double v18, v18, v20

    if-lez v18, :cond_6

    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->egw:[D

    aget-wide v18, v18, v4

    :goto_5
    add-double v12, v12, v18

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    const-wide/16 v18, 0x0

    goto :goto_5

    :cond_7
    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    if-eqz v18, :cond_9

    const/4 v4, 0x0

    :goto_6
    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_9

    int-to-double v0, v10

    move-wide/from16 v18, v0

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cl:[D

    aget-wide v20, v20, v4

    cmpg-double v18, v18, v20

    if-gez v18, :cond_8

    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->clw:[D

    aget-wide v18, v18, v4

    :goto_7
    add-double v12, v12, v18

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_8
    const-wide/16 v18, 0x0

    goto :goto_7

    :cond_9
    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    if-eqz v18, :cond_b

    const/4 v4, 0x0

    :goto_8
    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v4, v0, :cond_b

    int-to-double v0, v10

    move-wide/from16 v18, v0

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cg:[D

    aget-wide v20, v20, v4

    cmpl-double v18, v18, v20

    if-lez v18, :cond_a

    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cgw:[D

    aget-wide v18, v18, v4

    :goto_9
    add-double v12, v12, v18

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    const-wide/16 v18, 0x0

    goto :goto_9

    :cond_b
    sget-object v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sPkgs:Ljava/util/HashSet;

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const-wide/high16 v18, 0x4022000000000000L    # 9.0

    add-double v12, v12, v18

    :cond_c
    sget-wide v18, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->b:D

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v21, 0x0

    aget-wide v20, v20, v21

    mul-double v20, v20, v8

    add-double v18, v18, v20

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v21, 0x1

    aget-wide v20, v20, v21

    mul-double v20, v20, v2

    add-double v18, v18, v20

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v21, 0x2

    aget-wide v20, v20, v21

    int-to-double v0, v11

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v21, 0x3

    aget-wide v20, v20, v21

    int-to-double v0, v10

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v21, 0x4

    aget-wide v20, v20, v21

    int-to-double v0, v10

    move-wide/from16 v22, v0

    const-wide v24, 0x3fb999999999999aL    # 0.1

    mul-double v22, v22, v24

    int-to-double v0, v10

    move-wide/from16 v24, v0

    const-wide v26, 0x3fb999999999999aL    # 0.1

    mul-double v24, v24, v26

    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    add-double v24, v24, v26

    div-double v22, v22, v24

    mul-double v20, v20, v22

    add-double v18, v18, v20

    sget-object v20, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    const/16 v21, 0x5

    aget-wide v20, v20, v21

    add-int v22, v10, v14

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v20, v20, v22

    add-int/lit8 v22, v11, 0x1

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    add-double v18, v18, v20

    add-double v16, v18, v12

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->exp(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    add-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    div-double v18, v20, v18

    return-wide v18
.end method

.method public static getScoreForRank(D)D
    .locals 4

    const-wide/16 v0, 0x0

    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->th:D

    cmpl-double v2, v2, v0

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getThreshold()D

    move-result-wide v2

    cmpl-double v2, p0, v2

    if-lez v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :cond_0
    return-wide v0

    :cond_1
    return-wide p0
.end method

.method public static getThreshold()D
    .locals 4

    sget-wide v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->th:D

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->getIncreasePercent()D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static hasLocalRules()Z
    .locals 1

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isLocalModelAvailable()Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->allowFold()Z

    move-result v1

    if-nez v1, :cond_0

    return v6

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->w:[D

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method private static matchRules(Ljava/lang/String;Landroid/app/Notification;)I
    .locals 12

    const/high16 v1, -0x80000000

    sget-object v7, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveTitle(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->resolveText(Landroid/app/Notification;)Ljava/lang/CharSequence;

    move-result-object v5

    sget-object v7, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v7, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;

    iget-object v7, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v1, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    :try_start_0
    iget-object v7, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    invoke-static {v7, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    invoke-static {v7, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v1, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->score:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v7, "LocalAlgoModel"

    const-string/jumbo v8, "match exception title=%s rule=%s text=%s rule=%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    iget-object v10, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->title:Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x2

    aput-object v5, v9, v10

    iget-object v10, v2, Lcom/android/systemui/miui/statusbar/LocalScoreRule;->desc:Ljava/lang/String;

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static needUpdateLocalModel()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static needUploadLocalAlgoModel(Landroid/content/Context;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v4, "last_upload_algo_date"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/systemui/DateUtils;->getDigitalFormatDateToday()I

    move-result v2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static recordUpdateTime(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "update_time"

    sget-wide v4, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    sget-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "oldest_update_time"

    sget-wide v4, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public static restoreUpdateTime(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "update_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "update_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mLastUpdateTimeStamp:J

    :cond_0
    const-string/jumbo v1, "oldest_update_time"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "oldest_update_time"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->mOldestUpdateTimeStamp:J

    :cond_1
    return-void
.end method

.method private static saveUploadDate(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "last_upload_algo_date"

    invoke-static {}, Lcom/android/systemui/DateUtils;->getDigitalFormatDateToday()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static updateLocalModel(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->cacheLocalModel(Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getSortDelay()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getSortDelay()J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sNewNotification:J

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getGroupInterval()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getGroupInterval()J

    move-result-wide v4

    sput-wide v4, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sGap:J

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;->getCount()I

    move-result v4

    sput v4, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->UNFLOD_LIMIT:I

    :cond_2
    invoke-static {p0, p1}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->persistLocalModel(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method public static updateLocalModelIfNeed(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;Landroid/os/Handler;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->needUpdateLocalModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getScoreInfo(Landroid/app/Notification;)Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$1;-><init>(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/notification/ScoreInfo;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static updateRules(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/LocalScoreRule;",
            ">;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->sRules:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public static uploadLocalAlgoModelIfNeed(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->needUploadLocalAlgoModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "LocalAlgoModel"

    const-string/jumbo v1, "upload local algo model"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel;->saveUploadDate(Landroid/content/Context;)V

    new-instance v0, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$2;

    invoke-direct {v0}, Lcom/android/systemui/miui/statusbar/LocalAlgoModel$2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
