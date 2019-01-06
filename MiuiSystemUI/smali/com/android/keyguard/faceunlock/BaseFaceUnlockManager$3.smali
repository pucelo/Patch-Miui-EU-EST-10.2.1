.class Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;
.super Landroid/os/Handler;
.source "BaseFaceUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->newWorkerHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->-set0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->-get0()Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->releaseFaceUnlock()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsSuccess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect()V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    invoke-static {v0}, Lcom/android/keyguard/analytics/AnalyticsHelper;->trackFaceUnlockFailCount(Z)V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$3;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3ef
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
