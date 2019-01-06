.class Landroid/service/trust/TrustAgentService$1;
.super Landroid/os/Handler;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method constructor <init>(Landroid/service/trust/TrustAgentService;)V
    .registers 2

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    const/4 v10, 0x0

    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_b2

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v11, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v12, p1, Landroid/os/Message;->arg1:I

    if-eqz v12, :cond_e

    const/4 v10, 0x1

    :cond_e
    invoke-virtual {v11, v10}, Landroid/service/trust/TrustAgentService;->onUnlockAttempt(Z)V

    goto :goto_6

    :pswitch_12
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget v11, p1, Landroid/os/Message;->arg1:I

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Landroid/service/trust/TrustAgentService;->onDeviceUnlockLockout(J)V

    goto :goto_6

    :pswitch_1b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/service/trust/TrustAgentService$ConfigurationData;

    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    iget-object v11, v1, Landroid/service/trust/TrustAgentService$ConfigurationData;->options:Ljava/util/List;

    invoke-virtual {v10, v11}, Landroid/service/trust/TrustAgentService;->onConfigure(Ljava/util/List;)Z

    move-result v3

    iget-object v10, v1, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    if-eqz v10, :cond_6

    :try_start_2b
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v10}, Landroid/service/trust/TrustAgentService;->-get2(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v11

    monitor-enter v11
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_32} :catch_3f

    :try_start_32
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v10}, Landroid/service/trust/TrustAgentService;->-get0(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v10

    iget-object v12, v1, Landroid/service/trust/TrustAgentService$ConfigurationData;->token:Landroid/os/IBinder;

    invoke-interface {v10, v3, v12}, Landroid/service/trust/ITrustAgentServiceCallback;->onConfigureCompleted(ZLandroid/os/IBinder;)V
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_49

    :try_start_3d
    monitor-exit v11
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_3d .. :try_end_3e} :catch_3f

    goto :goto_6

    :catch_3f
    move-exception v2

    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    const-string/jumbo v11, "calling onSetTrustAgentFeaturesEnabledCompleted()"

    invoke-static {v10, v11}, Landroid/service/trust/TrustAgentService;->-wrap0(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    goto :goto_6

    :catchall_49
    move-exception v10

    :try_start_4a
    monitor-exit v11

    throw v10
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4c} :catch_3f

    :pswitch_4c
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10}, Landroid/service/trust/TrustAgentService;->onTrustTimeout()V

    goto :goto_6

    :pswitch_52
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10}, Landroid/service/trust/TrustAgentService;->onDeviceLocked()V

    goto :goto_6

    :pswitch_58
    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10}, Landroid/service/trust/TrustAgentService;->onDeviceUnlocked()V

    goto :goto_6

    :pswitch_5e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v10, "token"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    const-string/jumbo v10, "token_handle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v10, "user_handle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/os/UserHandle;

    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10, v7, v4, v5, v9}, Landroid/service/trust/TrustAgentService;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    goto :goto_6

    :pswitch_7f
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v11, "token_handle"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v11, "token_state"

    invoke-virtual {v0, v11, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10, v4, v5, v8}, Landroid/service/trust/TrustAgentService;->onEscrowTokenStateReceived(JI)V

    goto/16 :goto_6

    :pswitch_98
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v10, "token_handle"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string/jumbo v10, "token_removed_result"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iget-object v10, p0, Landroid/service/trust/TrustAgentService$1;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-virtual {v10, v4, v5, v6}, Landroid/service/trust/TrustAgentService;->onEscrowTokenRemoved(JZ)V

    goto/16 :goto_6

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1b
        :pswitch_4c
        :pswitch_52
        :pswitch_58
        :pswitch_12
        :pswitch_5e
        :pswitch_7f
        :pswitch_98
    .end packed-switch
.end method
