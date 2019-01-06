.class Lcom/android/systemui/statusbar/LockScreenMagazineController$14;
.super Landroid/os/AsyncTask;
.source "LockScreenMagazineController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/LockScreenMagazineController;->initLockScreenMagazinePreRes()V
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


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->getLockScreenMagazinePreContent(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v4, "result_json"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :try_start_0
    const-string/jumbo v4, "LockScreenMagazineController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "initLockScreenMagazinePreRes resultJson = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const-string/jumbo v5, "leftscreen_activity"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set4(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const-string/jumbo v5, "main_entry_res_icon_dark"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set6(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const-string/jumbo v5, "main_entry_res_icon_light"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set7(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const-string/jumbo v5, "trans_to_leftscreen_res_drawable"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set8(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    const-string/jumbo v5, "leftscreen_res_drawable_preview"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set5(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->initPreMainEntryIcon()V

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-wrap1(Lcom/android/systemui/statusbar/LockScreenMagazineController;)V

    return-object v7

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "LockScreenMagazineController"

    const-string/jumbo v5, "initLockScreenMagazinePreRes"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set4(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set6(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set7(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set8(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v4, v7}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-set5(Lcom/android/systemui/statusbar/LockScreenMagazineController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get9(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSupportLockScreenMagazineLeft(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardWallPaperUtils$LockScreenMagazine;->setLockScreenMagazineStatus(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/LockScreenMagazineController$14;->this$0:Lcom/android/systemui/statusbar/LockScreenMagazineController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/LockScreenMagazineController;->-get0(Lcom/android/systemui/statusbar/LockScreenMagazineController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSupportLockScreenMagazineLeft(Z)V

    goto :goto_0
.end method
