.class Landroid/speech/SpeechRecognizer$InternalListener$1;
.super Landroid/os/Handler;
.source "SpeechRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/SpeechRecognizer$InternalListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/speech/SpeechRecognizer$InternalListener;


# direct methods
.method constructor <init>(Landroid/speech/SpeechRecognizer$InternalListener;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_90

    :goto_e
    return-void

    :pswitch_f
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onBeginningOfSpeech()V

    goto :goto_e

    :pswitch_19
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onBufferReceived([B)V

    goto :goto_e

    :pswitch_27
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/speech/RecognitionListener;->onEndOfSpeech()V

    goto :goto_e

    :pswitch_31
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onError(I)V

    goto :goto_e

    :pswitch_43
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onReadyForSpeech(Landroid/os/Bundle;)V

    goto :goto_e

    :pswitch_51
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onResults(Landroid/os/Bundle;)V

    goto :goto_e

    :pswitch_5f
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onPartialResults(Landroid/os/Bundle;)V

    goto :goto_e

    :pswitch_6d
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Landroid/speech/RecognitionListener;->onRmsChanged(F)V

    goto :goto_e

    :pswitch_7f
    iget-object v0, p0, Landroid/speech/SpeechRecognizer$InternalListener$1;->this$1:Landroid/speech/SpeechRecognizer$InternalListener;

    invoke-static {v0}, Landroid/speech/SpeechRecognizer$InternalListener;->-get0(Landroid/speech/SpeechRecognizer$InternalListener;)Landroid/speech/RecognitionListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {v1, v2, v0}, Landroid/speech/RecognitionListener;->onEvent(ILandroid/os/Bundle;)V

    goto :goto_e

    nop

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_f
        :pswitch_19
        :pswitch_27
        :pswitch_31
        :pswitch_43
        :pswitch_51
        :pswitch_5f
        :pswitch_6d
        :pswitch_7f
    .end packed-switch
.end method
