.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->onResume()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->showPromptReason(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->isFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-get3(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/keyguard/KeyguardHostView;->applyHintAnimation(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->startAppearAnimation()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-set3(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardHostView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-set2(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;Z)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$5;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->mKeyguardView:Lcom/android/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardHostView;->requestLayout()V

    goto :goto_0

    :cond_2
    return-void
.end method
