.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;
.super Ljava/lang/Object;
.source "NotificationEvent.java"


# instance fields
.field private mCreateTimeStamp:J

.field private mFold:Z

.field private mImportance:I

.field private mLocalScore:D

.field private mNewly:Z

.field private mNoScore:Z

.field private mNotificationContent:Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;

.field private mNotificationEnv:Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;

.field private mPackageName:Ljava/lang/String;

.field private mPushScore:D

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;

    invoke-direct {v0, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;-><init>(Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNotificationContent:Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;

    iput-object p2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;

    invoke-direct {v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNotificationEnv:Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;

    return-void
.end method


# virtual methods
.method public getCreateTimeStamp()J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mCreateTimeStamp:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mVersion:I

    return v0
.end method

.method public setCreateTimeStamp(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mCreateTimeStamp:J

    return-void
.end method

.method public setFold(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mFold:Z

    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNotificationContent:Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    return-void
.end method

.method public setImportance(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mImportance:I

    return-void
.end method

.method public setLocalScore(D)V
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mLocalScore:D

    return-void
.end method

.method public setNewly(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNewly:Z

    return-void
.end method

.method public setNoScore()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNoScore:Z

    return-void
.end method

.method public setPushScore(D)V
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mPushScore:D

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNotificationEnv:Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;

    invoke-virtual {v0, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mVersion:I

    return-void
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNotificationContent:Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNotificationEnv:Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->init()V

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNotificationEnv:Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    :try_start_0
    const-string/jumbo v1, "create_timestamp"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mCreateTimeStamp:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v1, "package"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v1, "bucket"

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/FoldBucketHelper;->getFoldBucket()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string/jumbo v1, "no_score"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNoScore:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    const-string/jumbo v1, "push_score"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mPushScore:D

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    const-string/jumbo v1, "local_score"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mLocalScore:D

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    const-string/jumbo v1, "importance"

    iget v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mImportance:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    const-string/jumbo v1, "newly"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mNewly:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    const-string/jumbo v1, "fold"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mFold:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    const-string/jumbo v1, "user_fold"

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isUserFold()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    const-string/jumbo v1, "user_fold_lines_count"

    invoke-static {}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->getUserFoldLinesCount()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    const-string/jumbo v1, "version"

    iget v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->mVersion:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_9

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_b
.end method
