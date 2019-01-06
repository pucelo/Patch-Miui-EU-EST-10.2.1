.class public Lcom/android/server/notification/NotificationIntrusivenessExtractor;
.super Ljava/lang/Object;
.source "NotificationIntrusivenessExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field private static final DBG:Z

.field static final HANG_TIME_MS:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "IntrusivenessExtractor"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "IntrusivenessExtractor"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 6

    sget-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "IntrusivenessExtractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Initializing  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 8

    const-wide/16 v4, 0x2710

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_c
    sget-boolean v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor;->DBG:Z

    if-eqz v0, :cond_19

    const-string/jumbo v0, "IntrusivenessExtractor"

    const-string/jumbo v1, "skipping empty notification"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    return-object v2

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/notification/NotificationRecord;->getFreshnessMs(J)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_53

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_53

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSound()Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq v0, v1, :cond_3f

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    :cond_3f
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getVibration()[J

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    :cond_48
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_53

    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setRecentlyIntrusive(Z)V

    :cond_53
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isRecentlyIntrusive()Z

    move-result v0

    if-nez v0, :cond_5a

    return-object v2

    :cond_5a
    new-instance v0, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, v4, v5}, Lcom/android/server/notification/NotificationIntrusivenessExtractor$1;-><init>(Lcom/android/server/notification/NotificationIntrusivenessExtractor;Ljava/lang/String;J)V

    return-object v0
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    return-void
.end method
