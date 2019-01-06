.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;
.super Ljava/lang/Object;
.source "NotificationEnv.java"


# instance fields
.field private mBatteryLevel:I

.field private mMediaActive:Z

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryLevel(Lcom/android/systemui/statusbar/phone/StatusBar;)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public static isMediaActive(Landroid/content/Context;)Z
    .locals 2

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->isMediaActive(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->mMediaActive:Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->getBatteryLevel(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->mBatteryLevel:I

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    const-string/jumbo v1, "media_active"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->mMediaActive:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v1, "battery_level"

    iget v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationEnv;->mBatteryLevel:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
