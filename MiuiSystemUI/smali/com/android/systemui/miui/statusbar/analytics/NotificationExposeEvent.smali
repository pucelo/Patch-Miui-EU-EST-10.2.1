.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;
.super Ljava/lang/Object;
.source "NotificationExposeEvent.java"

# interfaces
.implements Lcom/android/systemui/miui/statusbar/analytics/INotificationEvent;


# instance fields
.field private final MESSAGE_LIST:Ljava/lang/String;

.field private mMessageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;


# direct methods
.method public constructor <init>(Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "messageList"

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->MESSAGE_LIST:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->mMessageList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getTinyData()Lcom/android/systemui/miui/statusbar/analytics/TinyData;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    new-instance v1, Lcom/android/systemui/miui/statusbar/analytics/TinyData;

    const-string/jumbo v2, "notification"

    const-string/jumbo v3, "expose"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/miui/statusbar/analytics/TinyData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->mNotificationEvent:Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;

    invoke-virtual {v3, p1}, Lcom/android/systemui/miui/statusbar/analytics/NotificationEvent;->wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->mMessageList:Ljava/util/List;

    if-eqz v3, :cond_2

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->mMessageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationExposeEvent;->mMessageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/analytics/ExposeMessage;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string/jumbo v3, "messageList"

    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    :try_start_1
    const-string/jumbo v3, "event"

    const-string/jumbo v4, "expose"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method
