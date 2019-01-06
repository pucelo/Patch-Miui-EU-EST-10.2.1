.class public Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;
.super Ljava/lang/Object;
.source "NotificationContent.java"


# static fields
.field private static DEBUG:Z


# instance fields
.field private mEventMessageType:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHasActions:Z

.field private mHasCustomView:Z

.field private mHasLargeIcon:Z

.field private mId:Ljava/lang/String;

.field private mIsClearable:Z

.field private mNotification:Landroid/app/Notification;

.field private mPriority:I

.field private mPushId:Ljava/lang/String;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Constants;->DEBUG:Z

    sput-boolean v0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->generateNotificationId(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.largeIcon"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mHasLargeIcon:Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.contains.customView"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mHasCustomView:Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v0, v0

    if-lez v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mHasActions:Z

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->isClearable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mIsClearable:Z

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->priority:I

    iput v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mPriority:I

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getMessageId(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mPushId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/PushEvents;->getEventMessageType(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mEventMessageType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mStyle:Ljava/lang/String;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private calculateNotificationType()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGroupKey()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/systemui/Constants;->AUTOGROUP_KEY:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.android.systemui"

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-static {v1}, Landroid/service/notification/StatusBarNotificationCompat;->isAppGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const-string/jumbo v1, "com.android.systemui"

    return-object v1

    :cond_3
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private isClearable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method public wrapJSONObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v1, "largeicon"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mHasLargeIcon:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v1, "custom_icon"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mHasCustomView:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string/jumbo v1, "custom_action"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mHasActions:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    const-string/jumbo v1, "clearable"

    iget-boolean v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mIsClearable:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    const-string/jumbo v1, "priority"

    iget v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mPriority:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mPushId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :try_start_6
    const-string/jumbo v1, "push_id"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mPushId:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    :cond_1
    :goto_6
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mEventMessageType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :try_start_7
    const-string/jumbo v1, "event_message_type"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mEventMessageType:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    :cond_2
    :goto_7
    iget-object v1, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mStyle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_8
    const-string/jumbo v1, "style"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mStyle:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    :cond_3
    :goto_8
    :try_start_9
    const-string/jumbo v1, "notification_type"

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->calculateNotificationType()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    const-string/jumbo v1, "group_key"

    invoke-direct {p0}, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->getGroupKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    sget-boolean v1, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->DEBUG:Z

    if-eqz v1, :cond_4

    :try_start_b
    const-string/jumbo v1, "title_debug"

    iget-object v2, p0, Lcom/android/systemui/miui/statusbar/analytics/NotificationContent;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.title"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    :cond_4
    :goto_b
    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

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
