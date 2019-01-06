.class Lcom/android/server/policy/PhoneWindowManager$18;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowingChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->onKeyguardShowingAndNotOccludedChanged()V

    return-void
.end method

.method public onTrustedChanged()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->notifyKeyguardTrustedChanged()V

    return-void
.end method

.method public unblockScreenOn()V
    .registers 9

    const-wide/16 v6, 0x0

    const-string/jumbo v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unblockScreenOn mScreenOnFully = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v3, v3, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_26
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_44

    :goto_36
    monitor-exit v2

    if-eqz v0, :cond_3c

    invoke-interface {v0, v6, v7}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn(J)V

    :cond_3c
    return-void

    :cond_3d
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$18;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnDelay:J
    :try_end_43
    .catchall {:try_start_3d .. :try_end_43} :catchall_44

    goto :goto_36

    :catchall_44
    move-exception v1

    monitor-exit v2

    throw v1
.end method
