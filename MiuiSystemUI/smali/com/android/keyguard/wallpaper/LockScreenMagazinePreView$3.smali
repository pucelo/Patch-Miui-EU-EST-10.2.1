.class Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;
.super Ljava/lang/Object;
.source "LockScreenMagazinePreView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->initSettingButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    iput-object p2, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->hideLockScreenInActivityManager()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->-get0(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;->val$intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->-get1(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->-get1(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView$3;->this$0:Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;->-get0(Lcom/android/keyguard/wallpaper/LockScreenMagazinePreView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "click_settings"

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->recordLockScreenMagazinePreviewAction(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
