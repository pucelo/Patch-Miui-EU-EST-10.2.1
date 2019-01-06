.class Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$3;
.super Ljava/lang/Object;
.source "NotificationTemplateViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->handleMiuiAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$3;->this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-class v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper$3;->this$0:Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/NotificationTemplateViewWrapper;->mRow:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onActionClick(Lcom/android/systemui/miui/statusbar/ExpandedNotification;I)V

    return-void
.end method
