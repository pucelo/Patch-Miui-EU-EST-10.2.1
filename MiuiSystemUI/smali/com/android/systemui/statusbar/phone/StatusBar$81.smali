.class Lcom/android/systemui/statusbar/phone/StatusBar$81;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationFilter$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCancel(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap26(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap24(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public onClickConfirm(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap26(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$81;->val$sbn:Lcom/android/systemui/miui/statusbar/ExpandedNotification;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap27(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/miui/statusbar/ExpandedNotification;)V

    return-void
.end method
