.class public Landroid/service/notification/NotificationListenerServiceCompat;
.super Ljava/lang/Object;
.source "NotificationListenerServiceCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImportance(Landroid/app/Notification;)I
    .locals 1

    const/16 v0, -0x3e8

    return v0
.end method

.method public static getImportance(Landroid/service/notification/NotificationListenerService$Ranking;)I
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v0

    return v0
.end method

.method public static getOverrideGroupKey(Landroid/service/notification/NotificationListenerService$Ranking;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shouldSuppressScreenOff(Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static shouldSuppressScreenOn(Landroid/service/notification/NotificationListenerService$Ranking;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
