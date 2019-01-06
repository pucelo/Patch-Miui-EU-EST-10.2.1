.class Lcom/android/systemui/statusbar/NotificationGuts$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationGuts;->animateClose(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationGuts;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->-set0(Lcom/android/systemui/statusbar/NotificationGuts;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-get0(Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGuts$2;->this$0:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->-get0(Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;->onGutsCloseAnimationEnd()V

    :cond_0
    return-void
.end method
