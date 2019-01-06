.class Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;
.super Landroid/os/Handler;
.source "BaseFaceUnlockManager.java"


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
.method constructor <init>(Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceStart()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceAuthenticated()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mIsTrigger:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget v2, v2, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHelpStringResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceHelp(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v1, v1, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110280

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceHelp(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    iget-object v1, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-boolean v1, v1, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mHasFace:Z

    invoke-interface {v0, v1}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceAuthFailed(Z)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager$1;->this$0:Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;

    iget-object v0, v0, Lcom/android/keyguard/faceunlock/BaseFaceUnlockManager;->mCallback:Lcom/android/keyguard/faceunlock/FaceUnlockCallback;

    invoke-interface {v0}, Lcom/android/keyguard/faceunlock/FaceUnlockCallback;->onFaceLocked()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
