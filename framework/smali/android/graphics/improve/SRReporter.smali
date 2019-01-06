.class public Landroid/graphics/improve/SRReporter;
.super Ljava/lang/Object;
.source "SRReporter.java"


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "3"

.field public static final ACTION_FAIL:Ljava/lang/String; = "4"

.field public static final ACTION_IMPROVE:Ljava/lang/String; = "1"

.field public static final ACTION_IMPROVE_TIME:Ljava/lang/String; = "5"

.field public static final ACTION_OPEN:Ljava/lang/String; = "2"

.field public static final STR_ACTION:Ljava/lang/String; = "action"

.field public static final STR_DEAL_TIME:Ljava/lang/String; = "deal_time"

.field public static final STR_FAIL_PKG:Ljava/lang/String; = "fail_pkg"

.field public static final STR_FAIL_REASON:Ljava/lang/String; = "fail_reason"

.field public static final STR_FAIL_VERSION:Ljava/lang/String; = "fail_version"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseJson()Lorg/json/JSONObject;
    .registers 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v2, "action"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "deal_time"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "fail_pkg"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "fail_version"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "fail_reason"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_32} :catch_33

    :goto_32
    return-object v1

    :catch_33
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_32
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return-object v3

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v4, "unknow"

    return-object v4
.end method

.method private static report(Lorg/json/JSONObject;)V
    .registers 3

    new-instance v0, Landroid/graphics/improve/SRReporter$1;

    invoke-direct {v0, p0}, Landroid/graphics/improve/SRReporter$1;-><init>(Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/graphics/improve/SRReporter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static reportClose(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "fail_pkg"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "3"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_16
.end method

.method public static reportFailure(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_4
    const-string/jumbo v2, "fail_pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "fail_version"

    invoke-static {p0}, Landroid/graphics/improve/SRReporter;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "fail_reason"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "4"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2a
.end method

.method public static reportImprove()V
    .registers 4

    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "1"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_10
.end method

.method public static reportImproveTime(J)V
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "deal_time"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "5"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a
.end method

.method public static reportOpen(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    invoke-static {}, Landroid/graphics/improve/SRReporter;->getBaseJson()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v2, "fail_pkg"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "action"

    const-string/jumbo v3, "2"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_17

    :goto_16
    return-void

    :catch_17
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_16
.end method
