.class Lcom/android/server/net/NetworkPolicyManagerService$15;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_27a

    :pswitch_9
    const/16 v20, 0x0

    return v20

    :pswitch_c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    const/4 v5, 0x0

    :goto_27
    if-ge v5, v8, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v9, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap9(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v20, 0x1

    return v20

    :pswitch_5d
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    const/4 v5, 0x0

    :goto_72
    if-ge v5, v8, :cond_94

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v9, v12}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap6(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    :cond_94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    const/16 v20, 0x1

    return v20

    :pswitch_a4
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get2(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_cf
    .catchall {:try_start_c0 .. :try_end_cf} :catchall_f5

    move-result v20

    if-eqz v20, :cond_f1

    :try_start_d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_df
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_df} :catch_276
    .catchall {:try_start_d2 .. :try_end_df} :catchall_f5

    :goto_df
    :try_start_df
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledNL()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsNL()V
    :try_end_f1
    .catchall {:try_start_df .. :try_end_f1} :catchall_f5

    :cond_f1
    monitor-exit v21

    const/16 v20, 0x1

    return v20

    :catchall_f5
    move-exception v20

    monitor-exit v21

    throw v20

    :pswitch_f8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    if-eqz v20, :cond_135

    const/16 v17, 0x1

    :goto_102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    const/4 v5, 0x0

    :goto_111
    if-ge v5, v8, :cond_138

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-static {v0, v9, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap7(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_111

    :cond_135
    const/16 v17, 0x0

    goto :goto_102

    :cond_138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v20, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v20, 0x40000000    # 2.0f

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get0(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v20

    sget-object v21, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/16 v20, 0x1

    return v20

    :pswitch_16c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Boolean;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v8

    const/4 v5, 0x0

    :goto_18d
    if-ge v5, v8, :cond_1b3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v9

    check-cast v9, Landroid/net/INetworkPolicyListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-static {v0, v9, v1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap8(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/INetworkPolicyListener;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18d

    :cond_1b3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_1d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap5(Lcom/android/server/net/NetworkPolicyManagerService;ILjava/lang/Boolean;)V

    :cond_1d3
    const/16 v20, 0x1

    return v20

    :pswitch_1d6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Long;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v20, 0x3e8

    :try_start_1e4
    div-long v14, v10, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/server/net/NetworkPolicyManagerService;->-get4(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v0, v14, v15}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_1f5
    .catch Landroid/os/RemoteException; {:try_start_1e4 .. :try_end_1f5} :catch_274

    :goto_1f5
    const/16 v20, 0x1

    return v20

    :pswitch_1f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x20

    shl-long v22, v22, v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    or-long v22, v22, v24

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-wide/from16 v2, v22

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap15(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;J)V

    const/16 v20, 0x1

    return v20

    :pswitch_24a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap13(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/lang/String;)V

    const/16 v20, 0x1

    return v20

    :pswitch_262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService$15;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    invoke-static/range {v20 .. v21}, Lcom/android/server/net/NetworkPolicyManagerService;->-wrap14(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    const/16 v20, 0x1

    return v20

    :catch_274
    move-exception v4

    goto :goto_1f5

    :catch_276
    move-exception v4

    goto/16 :goto_df

    nop

    :pswitch_data_27a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_5d
        :pswitch_9
        :pswitch_9
        :pswitch_a4
        :pswitch_f8
        :pswitch_1d6
        :pswitch_9
        :pswitch_9
        :pswitch_1f8
        :pswitch_24a
        :pswitch_9
        :pswitch_16c
        :pswitch_9
        :pswitch_262
    .end packed-switch
.end method
