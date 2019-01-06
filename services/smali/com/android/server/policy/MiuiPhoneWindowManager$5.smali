.class Lcom/android/server/policy/MiuiPhoneWindowManager$5;
.super Ljava/lang/Object;
.source "MiuiPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/MiuiPhoneWindowManager;->adjustFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

.field final synthetic val$adj:Z

.field final synthetic val$enableNotchConfig:Z

.field final synthetic val$needAdj:Z

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MiuiPhoneWindowManager;ZZLjava/lang/String;Z)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    iput-boolean p2, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->val$needAdj:Z

    iput-boolean p3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->val$adj:Z

    iput-object p4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->val$pkg:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->val$enableNotchConfig:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/MiuiPhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "need_adjust"

    iget-boolean v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->val$needAdj:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "adjust"

    iget-boolean v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->val$adj:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "pkg"

    iget-object v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->val$pkg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "enable_config"

    iget-boolean v4, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->val$enableNotchConfig:Z

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz v2, :cond_3b

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/MiuiPhoneWindowManager;->-get4(Lcom/android/server/policy/MiuiPhoneWindowManager;)Landroid/os/Binder;

    move-result-object v3

    const-string/jumbo v4, "upate_specail_mode"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4, v1}, Lcom/android/internal/statusbar/IStatusBarService;->setStatus(ILandroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_3b} :catch_3c

    :cond_3b
    :goto_3b
    return-void

    :catch_3c
    move-exception v0

    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v3, p0, Lcom/android/server/policy/MiuiPhoneWindowManager$5;->this$0:Lcom/android/server/policy/MiuiPhoneWindowManager;

    iput-object v6, v3, Lcom/android/server/policy/MiuiPhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_3b
.end method
