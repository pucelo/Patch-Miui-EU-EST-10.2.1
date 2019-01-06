.class Lcom/android/systemui/statusbar/LockScreenMagazineController$13;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockScreenMagazineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/LockScreenMagazineController;->switchToKeyguardWallpaperCarousel(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

.field final synthetic val$toWallPaper:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->val$toWallPaper:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set1(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get5(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->val$toWallPaper:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get3(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardClockContainer;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->val$toWallPaper:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/keyguard/KeyguardClockContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get2(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->val$toWallPaper:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get6(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->val$toWallPaper:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setVisibility(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set1(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get5(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get3(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardClockContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardClockContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get2(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$13;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get6(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setVisibility(I)V

    return-void
.end method
