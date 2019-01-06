.class public Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;
.super Ljava/lang/Object;
.source "RankUtil.java"


# static fields
.field private static final SUPPORT_HIGH_PRIORITY:Z

.field public static UNFLOD_LIMIT:I

.field public static sGap:J

.field private static sHighPriorityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIMPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastNotificationAddedTime:J

.field public static sNewNotification:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sGap:J

    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sNewNotification:J

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->UNFLOD_LIMIT:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->SUPPORT_HIGH_PRIORITY:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sLastNotificationAddedTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    const-string/jumbo v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public static compareHighPriority(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 5

    const/4 v4, 0x0

    sget-boolean v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->SUPPORT_HIGH_PRIORITY:Z

    if-nez v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isHighPriority(Ljava/lang/String;I)Z

    move-result v0

    iget-object v2, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v2}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v3}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isHighPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eq v0, v1, :cond_2

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public static compareIM(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 3

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isIMNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isIMNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static compareImportance(II)I
    .locals 1

    invoke-static {p1, p0}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static compareMedia(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;IILjava/lang/String;)I
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-le p2, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-le p3, v2, :cond_3

    const/4 v1, 0x1

    :goto_1
    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method public static compareNew(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 3

    invoke-static {p0}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isNewNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isNewNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public static comparePriority(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 2

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget v0, v0, Landroid/app/Notification;->priority:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->priority:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public static compareSystemMax(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;II)I
    .locals 3

    invoke-static {p0, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isSystemMaxImportanceNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v0

    invoke-static {p1, p3}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->isSystemMaxImportanceNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z

    move-result v1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static isHighPriority(Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->updateHighPriorityMap(Ljava/lang/String;I)V

    :cond_0
    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static isIMNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sIMPackages:Ljava/util/List;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v1}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNewNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    sget-wide v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sLastNotificationAddedTime:J

    invoke-virtual {v0}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-wide v4, v1, Landroid/app/Notification;->when:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sNewNotification:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSystemMaxImportanceNotification(Lcom/android/systemui/statusbar/NotificationData$Entry;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0}, Lcom/android/systemui/miui/statusbar/notification/NotificationUtil;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static updateHighPriorityMap(Ljava/lang/String;I)V
    .locals 4

    sget-boolean v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->SUPPORT_HIGH_PRIORITY:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/systemui/SystemUICompat;->isHighPriority(Ljava/lang/String;I)Z

    move-result v1

    sget-object v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sHighPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static updateLastNotificationAddedTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->sLastNotificationAddedTime:J

    return-void
.end method
