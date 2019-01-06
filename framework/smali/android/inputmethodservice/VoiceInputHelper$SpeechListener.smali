.class Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;
.super Ljava/lang/Object;
.source "VoiceInputHelper.java"

# interfaces
.implements Landroid/speech/RecognitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/VoiceInputHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpeechListener"
.end annotation


# instance fields
.field hasResult:Z

.field imsWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/InputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/inputmethodservice/InputMethodService;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->imsWeakRef:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    return-void
.end method


# virtual methods
.method public onBeginningOfSpeech()V
    .registers 4

    const-string/jumbo v0, "onBeginningOfSpeech"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    if-eqz v0, :cond_20

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    :cond_20
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->-set0(Z)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    return-void
.end method

.method public onBufferReceived([B)V
    .registers 2

    return-void
.end method

.method public onEndOfSpeech()V
    .registers 3

    const/4 v1, 0x0

    const-string/jumbo v0, "onEndOfSpeech..."

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    :cond_14
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->-set0(Z)Z

    return-void
.end method

.method public onError(I)V
    .registers 6

    const/4 v3, 0x0

    const-string/jumbo v0, ""

    packed-switch p1, :pswitch_data_76

    :pswitch_7
    iget-object v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/inputmethodservice/VoiceInputHelper;->getErrorStr(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v1}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    iget-boolean v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    if-nez v1, :cond_63

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_63

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;Z)V

    :cond_63
    return-void

    :pswitch_64
    const-string/jumbo v0, ""

    goto :goto_14

    :pswitch_68
    iget-object v1, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_68
        :pswitch_68
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_64
        :pswitch_64
    .end packed-switch
.end method

.method public onEvent(ILandroid/os/Bundle;)V
    .registers 4

    const-string/jumbo v0, "onEvent"

    invoke-static {v0}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .registers 8

    const-string/jumbo v4, "results_recognition"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPartialResults, matched size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const-string/jumbo v1, ""

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_2c

    :cond_3a
    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_58

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v4

    sget-object v5, Landroid/inputmethodservice/RecodingStateAnimatorView$State;->RECORDING_HAS_VOICE:Landroid/inputmethodservice/RecodingStateAnimatorView$State;

    invoke-interface {v4, v5}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    :cond_58
    return-void
.end method

.method public onReadyForSpeech(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .registers 11

    const/4 v8, 0x1

    const-string/jumbo v6, "results_recognition"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_b

    return-void

    :cond_b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onResults, matched size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    const-string/jumbo v3, ""

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2d

    move-object v3, v4

    :cond_40
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_83

    iget-object v6, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->imsWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_84

    iget-object v6, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->imsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/InputMethodService;

    :goto_52
    if-eqz v1, :cond_86

    invoke-virtual {v1}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    :goto_58
    if-eqz v0, :cond_88

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v6

    if-eqz v6, :cond_67

    invoke-static {}, Landroid/inputmethodservice/VoiceInputHelper;->-get0()Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;->updateText(Ljava/lang/String;)V

    :cond_67
    invoke-interface {v0, v3, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "commitText="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(Ljava/lang/String;)V

    iput-boolean v8, p0, Landroid/inputmethodservice/VoiceInputHelper$SpeechListener;->hasResult:Z

    :cond_83
    :goto_83
    return-void

    :cond_84
    const/4 v1, 0x0

    goto :goto_52

    :cond_86
    const/4 v0, 0x0

    goto :goto_58

    :cond_88
    const-string/jumbo v6, "input connection is null"

    invoke-static {v8, v6}, Landroid/inputmethodservice/VoiceInputHelper;->log(ZLjava/lang/String;)V

    goto :goto_83
.end method

.method public onRmsChanged(F)V
    .registers 2

    return-void
.end method
