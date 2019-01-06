.class public Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
.super Ljava/lang/Object;
.source "MediaNotificationProcessor.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/app/NotificationCompat;->setRebuildStyledRemoteViews(Landroid/app/Notification$Builder;Z)V

    :cond_0
    return-void
.end method
