.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;
.super Ljava/lang/Object;
.source "NotificationClickEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# instance fields
.field protected final CLICK_TIMESTAMP:Ljava/lang/String;

.field protected final FLOAT_NOTIFICATION:Ljava/lang/String;

.field protected final KEYGUARD_NOTIFICATION:Ljava/lang/String;

.field private mClickTimestamp:J

.field private mFloatNotification:Z

.field private mKeyguardNotification:Z

.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "click_timestamp"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->CLICK_TIMESTAMP:Ljava/lang/String;

    const-string/jumbo v0, "float_notification"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->FLOAT_NOTIFICATION:Ljava/lang/String;

    const-string/jumbo v0, "keyguard_notification"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->KEYGUARD_NOTIFICATION:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mClickTimestamp:J

    iput-boolean p2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mFloatNotification:Z

    iput-boolean p3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mKeyguardNotification:Z

    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "click"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v1, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mClickTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    :try_start_0
    const-string/jumbo v1, "click_timestamp"

    iget-wide v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mClickTimestamp:J

    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    :try_start_1
    const-string/jumbo v1, "float_notification"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mFloatNotification:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v1, "keyguard_notification"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationClickEvent;->mKeyguardNotification:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string/jumbo v1, "event"

    const-string/jumbo v2, "click"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
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
.end method
