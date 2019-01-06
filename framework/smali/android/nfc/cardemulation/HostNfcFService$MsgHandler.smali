.class final Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;
.super Landroid/os/Handler;
.source "HostNfcFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/HostNfcFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MsgHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/nfc/cardemulation/HostNfcFService;


# direct methods
.method constructor <init>(Landroid/nfc/cardemulation/HostNfcFService;)V
    .registers 2

    iput-object p1, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11

    const/4 v8, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_ac

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_9
    :goto_9
    return-void

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_1d

    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iput-object v7, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    :cond_1d
    const-string/jumbo v6, "data"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_6a

    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    invoke-virtual {v6, v2, v8}, Landroid/nfc/cardemulation/HostNfcFService;->processNfcFPacket([BLandroid/os/Bundle;)[B

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_3e

    const-string/jumbo v6, "NfcFService"

    const-string/jumbo v7, "Response not sent; service was deactivated."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3e
    const/4 v6, 0x1

    invoke-static {v8, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "data"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v4, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    iput-object v6, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_57
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v6, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_5e} :catch_5f

    goto :goto_9

    :catch_5f
    move-exception v1

    const-string/jumbo v6, "TAG"

    const-string/jumbo v7, "Response not sent; RemoteException calling into NfcService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_6a
    const-string/jumbo v6, "NfcFService"

    const-string/jumbo v7, "Received MSG_COMMAND_PACKET without data."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_74
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    if-nez v6, :cond_84

    const-string/jumbo v6, "NfcFService"

    const-string/jumbo v7, "Response not sent; service was deactivated."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_84
    :try_start_84
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mMessenger:Landroid/os/Messenger;

    iput-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget-object v6, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    invoke-virtual {v6, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_84 .. :try_end_91} :catch_93

    goto/16 :goto_9

    :catch_93
    move-exception v1

    const-string/jumbo v6, "NfcFService"

    const-string/jumbo v7, "RemoteException calling into NfcService."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_9f
    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iput-object v8, v6, Landroid/nfc/cardemulation/HostNfcFService;->mNfcService:Landroid/os/Messenger;

    iget-object v6, p0, Landroid/nfc/cardemulation/HostNfcFService$MsgHandler;->this$0:Landroid/nfc/cardemulation/HostNfcFService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/HostNfcFService;->onDeactivated(I)V

    goto/16 :goto_9

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_a
        :pswitch_74
        :pswitch_9f
    .end packed-switch
.end method
