.class Landroid/widget/VideoView$7;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 9

    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, p3}, Landroid/widget/VideoView;->-set7(Landroid/widget/VideoView;I)I

    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2, p4}, Landroid/widget/VideoView;->-set5(Landroid/widget/VideoView;I)I

    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get12(Landroid/widget/VideoView;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4a

    const/4 v1, 0x1

    :goto_14
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get14(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, p3, :cond_4c

    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get13(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, p4, :cond_4c

    const/4 v0, 0x1

    :goto_25
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get4(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_49

    if-eqz v1, :cond_49

    if-eqz v0, :cond_49

    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v2}, Landroid/widget/VideoView;->-get9(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    iget-object v3, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-get9(Landroid/widget/VideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/VideoView;->seekTo(I)V

    :cond_44
    iget-object v2, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    :cond_49
    return-void

    :cond_4a
    const/4 v1, 0x0

    goto :goto_14

    :cond_4c
    const/4 v0, 0x0

    goto :goto_25
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, p1}, Landroid/widget/VideoView;->-set6(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-wrap0(Landroid/widget/VideoView;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-set6(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/widget/VideoView;->-get3(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_17
    iget-object v0, p0, Landroid/widget/VideoView$7;->this$0:Landroid/widget/VideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/VideoView;->-wrap1(Landroid/widget/VideoView;Z)V

    return-void
.end method
