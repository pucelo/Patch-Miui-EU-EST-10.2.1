.class Lcom/android/systemui/statusbar/phone/StatusBar$85$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$85;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$85;

.field final synthetic val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$85;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$85;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$85$1;->val$guts:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setIsAnimating(Z)V

    return-void
.end method
