.class public Landroid/app/NotificationCompat;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createContentView(Landroid/app/Notification$Builder;ZZ)Landroid/widget/RemoteViews;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static createHeadsUpContentView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static getChannelId(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isColorized(Landroid/app/Notification;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method public static isMediaNotification(Landroid/app/Notification;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification;->isMediaNotification()Z

    move-result v0

    return v0
.end method

.method public static loadHeaderAppName(Landroid/app/Notification$Builder;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeAmbientNotification(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makePublicAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_0
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-static {p0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public static makeLowPriorityContentView(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static makeNotificationHeader(Landroid/app/Notification$Builder;Z)Landroid/widget/RemoteViews;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 1

    invoke-static {p0, p1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static setBackgroundColorHint(Landroid/app/Notification$Builder;I)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setBackgroundColorHint(I)V

    return-void
.end method

.method public static setChannelId(Landroid/app/Notification$Builder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-void
.end method

.method public static setRebuildStyledRemoteViews(Landroid/app/Notification$Builder;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setRebuildStyledRemoteViews(Z)V

    return-void
.end method

.method public static setRemoteInputHistory(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static showsChronometer(Landroid/app/Notification;)Z
    .locals 4

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showChronometer"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showsTime(Landroid/app/Notification;)Z
    .locals 4

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.showWhen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static snoozeNotification(Landroid/service/notification/NotificationListenerService;Ljava/lang/String;J)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;J)V

    return-void
.end method

.method public static snoozeNotification(Landroid/service/notification/NotificationListenerService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static suppressAlertingDueToGrouping(Landroid/app/Notification;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Notification;->suppressAlertingDueToGrouping()Z

    move-result v0

    return v0
.end method
