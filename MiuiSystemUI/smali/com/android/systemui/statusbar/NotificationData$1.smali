.class Lcom/android/systemui/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I
    .locals 10

    iget-object v3, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    iget-object v4, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    const/4 v0, 0x3

    const/4 v1, 0x3

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationData;->-get3(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationData;->-get3(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    iget-object v6, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5, v6, v7}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationData;->-get3(Lcom/android/systemui/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v5

    iget-object v6, p2, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5, v6, v7}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5, p1, v6}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v6, p0, Lcom/android/systemui/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v5, p2, v6}, Lcom/android/systemui/statusbar/NotificationData;->getImportance(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/service/notification/NotificationListenerService$Ranking;)I

    move-result v1

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationData;->-get2(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v5

    invoke-static {p1, p2, v5}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)I

    move-result v2

    if-eqz v2, :cond_1

    return v2

    :cond_1
    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareHighPriority(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/NotificationData$1;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationData;->-get0(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/NotificationData$Environment;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/systemui/statusbar/NotificationData$Environment;->getCurrentMediaNotificationKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, v0, v1, v5}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareMedia(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    return v2

    :cond_3
    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareNew(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v2

    if-eqz v2, :cond_4

    return v2

    :cond_4
    sget-boolean v5, Lcom/android/systemui/Constants;->IS_INTERNATIONAL:Z

    if-nez v5, :cond_5

    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareIM(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v2

    if-eqz v2, :cond_5

    return v2

    :cond_5
    invoke-static {p1, p2, v0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareSystemMax(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;II)I

    move-result v2

    if-eqz v2, :cond_6

    return v2

    :cond_6
    invoke-static {v0, v1}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->compareImportance(II)I

    move-result v2

    if-eqz v2, :cond_7

    return v2

    :cond_7
    invoke-static {p1, p2}, Lcom/android/systemui/miui/statusbar/phone/rank/RankUtil;->comparePriority(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v2

    if-eqz v2, :cond_8

    return v2

    :cond_8
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v6, v5, Landroid/app/Notification;->when:J

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget-wide v8, v5, Landroid/app/Notification;->when:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Long;->compare(JJ)I

    move-result v5

    return v5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationData$Entry;

    check-cast p2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationData$1;->compare(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
