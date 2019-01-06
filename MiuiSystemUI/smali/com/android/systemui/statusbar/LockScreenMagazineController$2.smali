.class Lcom/android/systemui/statusbar/LockScreenMagazineController$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$2;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "LockScreenMagazineController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received broadcast "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v1, v4, v5

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->LOCK_SCREEN_MAGAZINE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "LockScreenMagazineController"

    const-string/jumbo v5, "lock screen magazine package changed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$2;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get8(Lcom/android/systemui/statusbar/LockScreenMagazineController;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$2;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->initLockScreenMagazinePreRes()V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$2;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4, v2, v3}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set3(Lcom/android/systemui/statusbar/LockScreenMagazineController;J)J

    :cond_3
    return-void
.end method
