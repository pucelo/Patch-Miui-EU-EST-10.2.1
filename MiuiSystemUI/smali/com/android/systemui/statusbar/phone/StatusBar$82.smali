.class Lcom/android/systemui/statusbar/phone/StatusBar$82;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationInfo$ClickListener;


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

.field final synthetic val$item:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$item:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickCheckSave(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isLockscreenPublicMode(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$82$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$82$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$82;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onLockedNotificationImportanceChange(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onClickDone(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap26(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method

.method public onClickSettings(Landroid/view/View;Landroid/app/NotificationChannelCompat;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap26(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$82;->val$item:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap17(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method
