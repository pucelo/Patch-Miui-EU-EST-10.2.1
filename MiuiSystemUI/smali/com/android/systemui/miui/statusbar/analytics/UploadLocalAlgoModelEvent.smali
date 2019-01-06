.class public Lcom/android/systemui/miui/statusbar/analytics/UploadLocalAlgoModelEvent;
.super Ljava/lang/Object;
.source "UploadLocalAlgoModelEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# instance fields
.field private mLocalAlgoModel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/UploadLocalAlgoModelEvent;->mLocalAlgoModel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/UploadLocalAlgoModelEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "local_algo_model"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/UploadLocalAlgoModelEvent;->mLocalAlgoModel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "params"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/UploadLocalAlgoModelEvent;->mLocalAlgoModel:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "local_algo_model"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
