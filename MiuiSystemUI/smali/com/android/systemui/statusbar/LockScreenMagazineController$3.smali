.class Lcom/android/systemui/statusbar/LockScreenMagazineController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "LockScreenMagazineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/LockScreenMagazineController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLockScreenMagazineStatusChanged()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onLockScreenMagazineStatusChanged()V

    const-string/jumbo v0, "LockScreenMagazineController"

    const-string/jumbo v1, "onLockScreenMagazineStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get7(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->inflateLeftView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get5(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->initSettingButton()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get5(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->updateViewsText()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get2(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordance()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get2(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initTipsView(Z)V

    return-void
.end method

.method public onRegionChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserUnlocked()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-wrap5(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$3;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    return-void
.end method
