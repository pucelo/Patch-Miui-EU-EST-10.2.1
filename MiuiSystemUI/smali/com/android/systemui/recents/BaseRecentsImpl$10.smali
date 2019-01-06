.class Lcom/android/systemui/recents/BaseRecentsImpl$10;
.super Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;
.source "BaseRecentsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/BaseRecentsImpl;->registerMiuiGestureControlHelper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/BaseRecentsImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/BaseRecentsImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-direct {p0}, Lcom/miui/internal/transition/IMiuiGestureControlHelper$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpec(Ljava/lang/String;I)Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/miui/internal/transition/MiuiAppTransitionAnimationSpec;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public notifyGestureAnimationCancel()V
    .locals 5

    const/16 v4, 0x67

    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "notifyGestureAnimationCancel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyGestureAnimationEnd()V
    .locals 6

    const/16 v4, 0x66

    const-string/jumbo v2, "RecentsImpl"

    const-string/jumbo v3, "notifyGestureAnimationEnd"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v2, v2, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public notifyGestureAnimationStart()V
    .locals 12

    const/16 v11, 0x6b

    const/16 v10, 0x69

    const/16 v8, 0x68

    const-string/jumbo v6, "RecentsImpl"

    const-string/jumbo v7, "notifyGestureAnimationStart"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v0, 0x11f

    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {v6}, Lcom/android/systemui/recents/BaseRecentsImpl;->-get6(Lcom/android/systemui/recents/BaseRecentsImpl;)Landroid/view/IWindowManager;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v6, v7}, Landroid/view/IWindowManager;->getAnimationScale(I)F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/high16 v7, 0x43960000    # 300.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x41880000    # 17.0f

    sub-float/2addr v6, v7

    float-to-long v0, v6

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/android/systemui/recents/BaseRecentsImpl;->-set1(Lcom/android/systemui/recents/BaseRecentsImpl;J)J

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v6, v6, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1f4

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public notifyGestureStartRecents()V
    .locals 9

    const/16 v8, 0x6a

    const/16 v7, 0x65

    const/16 v6, 0x64

    const-string/jumbo v4, "RecentsImpl"

    const-string/jumbo v5, "notifyGestureStartRecents"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/recents/BaseRecentsImpl$10;->this$0:Lcom/android/systemui/recents/BaseRecentsImpl;

    iget-object v4, v4, Lcom/android/systemui/recents/BaseRecentsImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
