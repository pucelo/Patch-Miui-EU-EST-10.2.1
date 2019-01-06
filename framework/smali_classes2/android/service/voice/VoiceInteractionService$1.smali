.class Landroid/service/voice/VoiceInteractionService$1;
.super Landroid/service/voice/IVoiceInteractionService$Stub;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/voice/VoiceInteractionService;


# direct methods
.method constructor <init>(Landroid/service/voice/VoiceInteractionService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    invoke-direct {p0}, Landroid/service/voice/IVoiceInteractionService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public launchVoiceAssistFromKeyguard()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionService$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public ready()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionService$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public shutdown()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionService$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public soundModelsChanged()V
    .registers 3

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService$1;->this$0:Landroid/service/voice/VoiceInteractionService;

    iget-object v0, v0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/service/voice/VoiceInteractionService$MyHandler;->sendEmptyMessage(I)Z

    return-void
.end method
