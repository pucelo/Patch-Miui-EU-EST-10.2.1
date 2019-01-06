.class Landroid/view/inputmethod/InputMethodManager$1;
.super Lcom/android/internal/view/IInputMethodClient$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;)V
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x1

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v2

    iput-object p1, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object v1, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v5, v2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v4, 0x5

    :try_start_23
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string/jumbo v3, "Timeout waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_31} :catch_32

    :cond_31
    :goto_31
    return-void

    :catch_32
    move-exception v0

    const-string/jumbo v3, "Interrupted waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_31
.end method

.method public onBindMethod(Lcom/android/internal/view/InputBindResult;)V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUnbindMethod(II)V
    .registers 5

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportFullscreenMode(Z)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    :goto_8
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_12
    move v0, v1

    goto :goto_8
.end method

.method public setActive(ZZ)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    if-eqz p1, :cond_14

    move v2, v0

    :goto_9
    if-eqz p2, :cond_16

    :goto_b
    const/4 v1, 0x4

    invoke-virtual {v3, v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_14
    move v2, v1

    goto :goto_9

    :cond_16
    move v0, v1

    goto :goto_b
.end method

.method public setUserActionNotificationSequenceNumber(I)V
    .registers 5

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$1;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setUsingInputMethod(Z)V
    .registers 2

    return-void
.end method
