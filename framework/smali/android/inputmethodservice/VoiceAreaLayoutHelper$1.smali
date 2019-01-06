.class Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;
.super Ljava/lang/Object;
.source "VoiceAreaLayoutHelper.java"

# interfaces
.implements Landroid/inputmethodservice/VoiceInputHelper$SpeechRecognizationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/VoiceAreaLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAnimation(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V
    .registers 3

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get2(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/inputmethodservice/RecodingStateAnimatorView;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get2(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/inputmethodservice/RecodingStateAnimatorView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/RecodingStateAnimatorView;->setPreState(Landroid/inputmethodservice/RecodingStateAnimatorView$State;)V

    return-void
.end method

.method public updateText(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->updateText(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateText(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/inputmethodservice/VoiceAreaLayoutHelper$1;->this$0:Landroid/inputmethodservice/VoiceAreaLayoutHelper;

    invoke-static {v0}, Landroid/inputmethodservice/VoiceAreaLayoutHelper;->-get1(Landroid/inputmethodservice/VoiceAreaLayoutHelper;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz p2, :cond_16

    invoke-static {p1}, Landroid/inputmethodservice/VoiceInputHelper;->formatText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_19
    return-void
.end method
