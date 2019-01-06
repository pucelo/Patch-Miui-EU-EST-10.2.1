.class Lcom/android/systemui/qs/customize/QSCustomizer$1;
.super Ljava/lang/Object;
.source "QSCustomizer.java"

# interfaces
.implements Lcom/android/systemui/qs/customize/QSCustomizer$QSPanelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/QSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hide(IIZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set2(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v4}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap5(Lcom/android/systemui/qs/customize/QSCustomizer;Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap4(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get1(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/qs/QSDetailClipper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get9(Lcom/android/systemui/qs/customize/QSCustomizer;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get10(Lcom/android/systemui/qs/customize/QSCustomizer;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v3}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap2(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get5(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get3(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get4(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get5(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v4, p3, v5}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->onQsDetailShowing(ZZZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get2(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method public show(II)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get0(Lcom/android/systemui/qs/customize/QSCustomizer;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set3(Lcom/android/systemui/qs/customize/QSCustomizer;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set4(Lcom/android/systemui/qs/customize/QSCustomizer;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x166

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set0(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set2(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0, v2}, Lcom/android/systemui/qs/customize/QSCustomizer;->-set1(Lcom/android/systemui/qs/customize/QSCustomizer;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap6(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-wrap1(Lcom/android/systemui/qs/customize/QSCustomizer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get5(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setCustomizerAnimating(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get3(Lcom/android/systemui/qs/customize/QSCustomizer;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$1;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSCustomizer;->-get4(Lcom/android/systemui/qs/customize/QSCustomizer;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
