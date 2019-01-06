.class Lcom/android/systemui/statusbar/NotificationLogger$2;
.super Ljava/lang/Object;
.source "NotificationLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mFoldViewVisible:Z

.field private final mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLogger;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLogger;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/NotificationLogger;->-set0(Lcom/android/systemui/statusbar/NotificationLogger;J)J

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationLogger;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v9, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-virtual {v9}, Lcom/android/systemui/miui/statusbar/ExpandedNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationLogger;->-get2(Lcom/android/systemui/statusbar/NotificationLogger;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v9

    iget-object v10, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isInVisibleLocation(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z

    move-result v5

    invoke-static {v6, v4, v0, v5}, Lcom/android/internal/statusbar/NotificationVisibilityCompat;->obtain(Ljava/lang/String;IIZ)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationLogger;->-get0(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v5, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    if-nez v7, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    goto :goto_1

    :cond_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v10}, Lcom/android/systemui/statusbar/NotificationLogger;->-get0(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    iget-object v11, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v9, v10, v11}, Lcom/android/systemui/statusbar/NotificationLogger;->-wrap0(Lcom/android/systemui/statusbar/NotificationLogger;Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v10}, Lcom/android/systemui/statusbar/NotificationLogger;->-get0(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/NotificationLogger;->-wrap2(Lcom/android/systemui/statusbar/NotificationLogger;Landroid/util/ArraySet;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationLogger;->-get0(Lcom/android/systemui/statusbar/NotificationLogger;)Landroid/util/ArraySet;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    iget-object v10, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/NotificationLogger;->-wrap2(Lcom/android/systemui/statusbar/NotificationLogger;Landroid/util/ArraySet;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNewlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mTmpNoLongerVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->clear()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->this$0:Lcom/android/systemui/statusbar/NotificationLogger;

    invoke-static {v9}, Lcom/android/systemui/statusbar/NotificationLogger;->-get2(Lcom/android/systemui/statusbar/NotificationLogger;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isFoldFooterViewInVisibleLocation()Z

    move-result v3

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mFoldViewVisible:Z

    if-eq v3, v9, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mFoldViewVisible:Z

    const-class v9, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v9}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/NotificationLogger$2;->mFoldViewVisible:Z

    invoke-virtual {v9, v10}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onFoldViewVisibilityChanged(Z)V

    :cond_3
    return-void
.end method
