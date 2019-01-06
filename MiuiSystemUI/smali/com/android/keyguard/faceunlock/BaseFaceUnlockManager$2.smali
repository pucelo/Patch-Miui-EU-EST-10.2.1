.class Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;
.super Ljava/lang/Object;
.source "BaseFaceUnlockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsSuccess:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->stopDetect(Z)V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCameraUtil:Lcom/android/keyguard/faceunlock/AbstractCameraUtil;

    invoke-virtual {v0}, Lcom/android/keyguard/faceunlock/AbstractCameraUtil;->closeCameraImmediately()V

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$2;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string/jumbo v0, "face_unlock"

    const-string/jumbo v1, "close camera when worker handler block"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
