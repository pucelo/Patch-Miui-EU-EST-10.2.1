.class Landroid/speech/RecognitionService$1;
.super Landroid/os/Handler;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/RecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/RecognitionService;


# direct methods
.method constructor <init>(Landroid/speech/RecognitionService;)V
    .registers 2

    iput-object p1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_30

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/speech/RecognitionService$StartListeningArgs;

    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v2, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mIntent:Landroid/content/Intent;

    iget-object v3, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mListener:Landroid/speech/IRecognitionListener;

    iget v4, v0, Landroid/speech/RecognitionService$StartListeningArgs;->mCallingUid:I

    invoke-static {v1, v2, v3, v4}, Landroid/speech/RecognitionService;->-wrap3(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V

    goto :goto_5

    :pswitch_16
    iget-object v2, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    invoke-static {v2, v1}, Landroid/speech/RecognitionService;->-wrap4(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    goto :goto_5

    :pswitch_20
    iget-object v2, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/speech/IRecognitionListener;

    invoke-static {v2, v1}, Landroid/speech/RecognitionService;->-wrap1(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    goto :goto_5

    :pswitch_2a
    iget-object v1, p0, Landroid/speech/RecognitionService$1;->this$0:Landroid/speech/RecognitionService;

    invoke-static {v1}, Landroid/speech/RecognitionService;->-wrap2(Landroid/speech/RecognitionService;)V

    goto :goto_5

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_6
        :pswitch_16
        :pswitch_20
        :pswitch_2a
    .end packed-switch
.end method
