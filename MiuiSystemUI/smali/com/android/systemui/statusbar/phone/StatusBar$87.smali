.class Lcom/android/systemui/statusbar/phone/StatusBar$87;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->bindRow(Lcom/android/systemui/statusbar/NotificationData$Entry;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

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

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get16(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "keyguard"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/miui/statusbar/analytics/SystemUIStat;->onRemove(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$87;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->performRemoveNotification(Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    return-void

    :cond_0
    const-string/jumbo v1, "statusbar"

    goto :goto_0
.end method
