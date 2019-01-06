.class public Lcom/android/server/notification/NotificationLightController;
.super Ljava/lang/Object;
.source "NotificationLightController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizeNotificationLight(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/NotificationRecord$Light;
    .registers 8

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {p0, v4, v0}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;I)V

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v1, v4, Landroid/app/Notification;->ledARGB:I

    if-nez v1, :cond_23

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLight()Lcom/android/server/notification/NotificationRecord$Light;

    move-result-object v4

    return-object v4

    :cond_23
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v3, v4, Landroid/app/Notification;->ledOnMS:I

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iget v2, v4, Landroid/app/Notification;->ledOffMS:I

    new-instance v4, Lcom/android/server/notification/NotificationRecord$Light;

    invoke-direct {v4, v1, v3, v2}, Lcom/android/server/notification/NotificationRecord$Light;-><init>(III)V

    return-object v4
.end method

.method private static customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    const/4 v6, 0x0

    const/4 v5, -0x2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1108000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p2, p4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p1, Landroid/app/Notification;->ledARGB:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p3, v0, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-gez v1, :cond_2f

    :goto_21
    invoke-static {v0}, Lcom/android/server/notification/NotificationLightController;->getLedPwmOffOn(I)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v2, v3

    iput v3, p1, Landroid/app/Notification;->ledOnMS:I

    aget v3, v2, v6

    iput v3, p1, Landroid/app/Notification;->ledOffMS:I

    return-void

    :cond_2f
    move v0, v1

    goto :goto_21
.end method

.method public static customizeNotificationLight(Lcom/android/server/notification/NotificationManagerService;Landroid/app/Notification;I)V
    .registers 11

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService;->mLights:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, "com.android.phone"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_29

    const-string/jumbo v5, "com.android.server.telecom"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_37

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "call_breathing_light_color"

    const-string/jumbo v7, "call_breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    :cond_37
    const-string/jumbo v5, "com.android.mms"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "mms_breathing_light_color"

    const-string/jumbo v7, "mms_breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    goto :goto_b

    :cond_4f
    if-eqz v0, :cond_52

    return-void

    :cond_52
    iget v5, p1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_65

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "breathing_light_color"

    const-string/jumbo v7, "breathing_light_freq"

    invoke-static {v5, p1, v6, v7, p2}, Lcom/android/server/notification/NotificationLightController;->customizeNotificationLight(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public static getLedPwmOffOn(I)[I
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v2

    aget v1, v0, v2

    sub-int v1, p0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-object v0
.end method
