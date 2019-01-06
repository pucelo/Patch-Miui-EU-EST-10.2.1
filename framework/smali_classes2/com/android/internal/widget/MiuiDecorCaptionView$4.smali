.class Lcom/android/internal/widget/MiuiDecorCaptionView$4;
.super Landroid/os/ResultReceiver;
.source "MiuiDecorCaptionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/MiuiDecorCaptionView;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/android/internal/widget/MiuiDecorCaptionView;Landroid/os/Handler;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    iput p3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->val$taskId:I

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 7

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    return-void

    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-static {v1}, Lcom/android/internal/widget/MiuiDecorCaptionView;->-get1(Lcom/android/internal/widget/MiuiDecorCaptionView;)Lcom/miui/freeform/IMiuiFreeformWindowService;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->val$taskId:I

    iget-object v3, p0, Lcom/android/internal/widget/MiuiDecorCaptionView$4;->this$0:Lcom/android/internal/widget/MiuiDecorCaptionView;

    invoke-virtual {v3}, Lcom/android/internal/widget/MiuiDecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/miui/freeform/IMiuiFreeformWindowService;->windowResize(ILjava/lang/String;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_19
.end method
