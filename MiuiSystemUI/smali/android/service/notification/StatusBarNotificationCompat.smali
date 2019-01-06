.class public Landroid/service/notification/StatusBarNotificationCompat;
.super Ljava/lang/Object;
.source "StatusBarNotificationCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOverrideGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAppGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    return v0
.end method

.method public static isAutoGroupSummary(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "ranker_group"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ranker_group"

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGroup(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v0

    return v0
.end method

.method public static setOverrideGroupKey(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/service/notification/StatusBarNotification;->setOverrideGroupKey(Ljava/lang/String;)V

    return-void
.end method
