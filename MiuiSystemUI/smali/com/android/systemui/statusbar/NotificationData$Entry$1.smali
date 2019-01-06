.class Lcom/android/systemui/statusbar/NotificationData$Entry$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusBarIconView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationData$Entry;->createIcons(Landroid/content/Context;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/NotificationData$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry$1;->this$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry$1;->this$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationData$Entry$1;->this$1:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconsVisible(Z)V

    :cond_1
    return-void
.end method
