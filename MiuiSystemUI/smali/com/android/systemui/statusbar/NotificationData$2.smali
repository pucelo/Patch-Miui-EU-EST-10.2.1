.class Lcom/android/systemui/statusbar/NotificationData$2;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationData;->remove(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/systemui/statusbar/NotificationData$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationData;

.field final synthetic val$group:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationData$2;->val$group:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationData;->-get1(Lcom/android/systemui/statusbar/NotificationData;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$2;->val$group:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->canRemove(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationData$2;->this$0:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$2;->val$group:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationData;->performRemoveNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    :cond_0
    return-void
.end method
