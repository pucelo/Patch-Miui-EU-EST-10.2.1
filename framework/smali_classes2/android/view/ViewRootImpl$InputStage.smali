.class abstract Landroid/view/ViewRootImpl$InputStage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InputStage"
.end annotation


# static fields
.field protected static final FINISH_HANDLED:I = 0x1

.field protected static final FINISH_NOT_HANDLED:I = 0x2

.field protected static final FORWARD:I


# instance fields
.field private final mNext:Landroid/view/ViewRootImpl$InputStage;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .registers 3

    iput-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    return-void
.end method

.method private isBack(Landroid/view/InputEvent;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_10

    check-cast p1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0

    :cond_10
    return v0
.end method


# virtual methods
.method protected apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    :goto_7
    return-void

    :cond_8
    if-ne p2, v0, :cond_e

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_7

    :cond_e
    const/4 v0, 0x2

    if-ne p2, v0, :cond_15

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_7

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 4

    const/4 v1, 0x0

    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    :goto_a
    return-void

    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_a

    :cond_15
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    goto :goto_a
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_9
    return-void
.end method

.method protected finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V
    .registers 4

    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    if-eqz p2, :cond_e

    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    :cond_e
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method protected forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method protected onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .registers 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-wrap6(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_9
.end method

.method protected onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method protected shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_30

    :cond_10
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get5(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dropping event due to root view being removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_30
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-nez v0, :cond_43

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_69

    :cond_43
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_69

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    if-eqz v0, :cond_59

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_69

    :cond_59
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_b6

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$InputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_b6

    :cond_69
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_96

    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->cancel()V

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get5(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancelling event due to no window focus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_96
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get5(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Dropping event due to no window focus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_b6
    return v4
.end method
