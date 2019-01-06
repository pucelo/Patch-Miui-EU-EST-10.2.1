.class Lcom/android/systemui/statusbar/LockScreenMagazineController$6;
.super Ljava/lang/Object;
.source "LockScreenMagazineController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "click"

    invoke-static {v0, v1}, Lcom/android/keyguard/analytics/LockScreenMagazineAnalytics;->recordLockScreenMagazinePreviewAction(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get1(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-wrap4(Lcom/android/systemui/statusbar/LockScreenMagazineController;Z)V

    const-string/jumbo v0, "miui_keyguard"

    const-string/jumbo v1, "preview button goto lock screen wall paper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "buttonLockScreen"

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->gotoLockScreenMagazine(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get4(Lcom/android/systemui/statusbar/LockScreenMagazineController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string/jumbo v0, "buttonLockScreen"

    invoke-static {v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->recordDownloadLockScreenMagazine(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-wrap3(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$6;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set2(Lcom/android/systemui/statusbar/LockScreenMagazineController;J)J

    goto :goto_0
.end method
