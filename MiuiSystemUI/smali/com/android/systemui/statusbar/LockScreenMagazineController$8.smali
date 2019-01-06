.class Lcom/android/systemui/statusbar/LockScreenMagazineController$8;
.super Landroid/os/AsyncTask;
.source "LockScreenMagazineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/LockScreenMagazineController;->updateWallpaperPreview(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

.field final synthetic val$maybeQueryWallpaperInfo:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->val$maybeQueryWallpaperInfo:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    sget-boolean v0, Lcom/android/systemui/Constants;->IS_TABLET:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isSystemLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isLockLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$WallpaperAuthority;->isBabyWallpaper(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardCompatibilityHelperForN;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-wrap0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set9(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get12(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z

    move-result v0

    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->isKeyguardWallpaperPreviewAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get12(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z

    move-result v0

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->setLockScreenMagazinePreviewAvailability(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get12(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "keyguard_close_lockscreen_magazine"

    invoke-static {v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->record(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get12(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->val$maybeQueryWallpaperInfo:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get11(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockScreenMagazineWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get11(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->queryLockScreenMagazineWallpaperInfo()V

    :cond_1
    return-object v2

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get12(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->val$maybeQueryWallpaperInfo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get11(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockScreenMagazineWallpaperInfo()Lcom/android/keyguard/wallpaper/mode/LockScreenMagazineWallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get11(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLockScreenMagazineWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$8;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get11(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyWallpaperInfoChanged()V

    :cond_0
    return-void
.end method
