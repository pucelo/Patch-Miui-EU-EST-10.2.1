.class Landroid/app/VoiceInteractor$1;
.super Ljava/lang/Object;
.source "VoiceInteractor.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/VoiceInteractor;


# direct methods
.method constructor <init>(Landroid/app/VoiceInteractor;)V
    .registers 2

    iput-object p1, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_c4

    :cond_b
    :goto_b
    return-void

    :pswitch_c
    iget-object v6, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v6, v3, v4}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object v3, v2

    check-cast v3, Landroid/app/VoiceInteractor$ConfirmationRequest;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_20

    move v5, v4

    :cond_20
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3, v5, v4}, Landroid/app/VoiceInteractor$ConfirmationRequest;->onConfirmationResult(ZLandroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_b

    :pswitch_2b
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_50

    const/4 v1, 0x1

    :goto_30
    iget-object v4, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v4, v3, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object v3, v2

    check-cast v3, Landroid/app/VoiceInteractor$PickOptionRequest;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, [Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v3, v1, v4, v5}, Landroid/app/VoiceInteractor$PickOptionRequest;->onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_b

    :cond_50
    const/4 v1, 0x0

    goto :goto_30

    :pswitch_52
    iget-object v5, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v5, v3, v4}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object v3, v2

    check-cast v3, Landroid/app/VoiceInteractor$CompleteVoiceRequest;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor$CompleteVoiceRequest;->onCompleteResult(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_b

    :pswitch_6c
    iget-object v5, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v5, v3, v4}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object v3, v2

    check-cast v3, Landroid/app/VoiceInteractor$AbortVoiceRequest;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/app/VoiceInteractor$AbortVoiceRequest;->onAbortResult(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto :goto_b

    :pswitch_86
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_ad

    const/4 v1, 0x1

    :goto_8b
    iget-object v6, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v6, v3, v1}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object v3, v2

    check-cast v3, Landroid/app/VoiceInteractor$CommandRequest;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_9f

    move v5, v4

    :cond_9f
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {v3, v5, v4}, Landroid/app/VoiceInteractor$CommandRequest;->onCommandResult(ZLandroid/os/Bundle;)V

    if-eqz v1, :cond_b

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto/16 :goto_b

    :cond_ad
    const/4 v1, 0x0

    goto :goto_8b

    :pswitch_af
    iget-object v5, p0, Landroid/app/VoiceInteractor$1;->this$0:Landroid/app/VoiceInteractor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-virtual {v5, v3, v4}, Landroid/app/VoiceInteractor;->pullRequest(Lcom/android/internal/app/IVoiceInteractorRequest;Z)Landroid/app/VoiceInteractor$Request;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->onCancel()V

    invoke-virtual {v2}, Landroid/app/VoiceInteractor$Request;->clear()V

    goto/16 :goto_b

    nop

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_2b
        :pswitch_52
        :pswitch_6c
        :pswitch_86
        :pswitch_af
    .end packed-switch
.end method
