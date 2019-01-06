.class Landroid/telecom/ConnectionService$2;
.super Landroid/os/Handler;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 34

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_71e

    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_10
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.aCSA"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/telecom/ConnectionServiceAdapter;->addAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-wrap16(Landroid/telecom/ConnectionService;)V
    :try_end_38
    .catchall {:try_start_10 .. :try_end_38} :catchall_3f

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto :goto_7

    :catchall_3f
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_47
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_4f
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.rCSA"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;

    move-result-object v4

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telecom/IConnectionServiceAdapter;

    invoke-virtual {v4, v3}, Landroid/telecom/ConnectionServiceAdapter;->removeAdapter(Lcom/android/internal/telecom/IConnectionServiceAdapter;)V
    :try_end_6c
    .catchall {:try_start_4f .. :try_end_6c} :catchall_73

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto :goto_7

    :catchall_73
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_7b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.crCo"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_8f
    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v7, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/ConnectionRequest;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_eb

    const/4 v10, 0x1

    :goto_a9
    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_ed

    const/4 v11, 0x1

    :goto_b1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_ef

    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v12

    new-instance v3, Landroid/telecom/ConnectionService$2$1;

    const-string/jumbo v5, "H.CS.crCo.pICR"

    const/4 v6, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Landroid/telecom/ConnectionService$2$1;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    invoke-virtual {v3}, Landroid/telecom/ConnectionService$2$1;->prepare()Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e3
    .catchall {:try_start_8f .. :try_end_e3} :catchall_f7

    :goto_e3
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :cond_eb
    const/4 v10, 0x0

    goto :goto_a9

    :cond_ed
    const/4 v11, 0x0

    goto :goto_b1

    :cond_ef
    :try_start_ef
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static/range {v6 .. v11}, Landroid/telecom/ConnectionService;->-wrap8(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    :try_end_f6
    .catchall {:try_start_ef .. :try_end_f6} :catchall_f7

    goto :goto_e3

    :catchall_f7
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_ff
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.crCoC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_113
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_153

    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Landroid/telecom/ConnectionService$2$2;

    const-string/jumbo v5, "H.CS.crCoC.pICR"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v6, v8}, Landroid/telecom/ConnectionService$2$2;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/telecom/ConnectionService$2$2;->prepare()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14b
    .catchall {:try_start_113 .. :try_end_14b} :catchall_15b

    :goto_14b
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :cond_153
    :try_start_153
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3, v8}, Landroid/telecom/ConnectionService;->-wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_15a
    .catchall {:try_start_153 .. :try_end_15a} :catchall_15b

    goto :goto_14b

    :catchall_15b
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_163
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.crCoF"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_177
    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Landroid/telecom/ConnectionRequest;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d3

    const/4 v10, 0x1

    :goto_18b
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/telecom/PhoneAccountHandle;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get1(Landroid/telecom/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_1d5

    const-string/jumbo v3, "Enqueueing pre-init request %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v3}, Landroid/telecom/ConnectionService;->-get5(Landroid/telecom/ConnectionService;)Ljava/util/List;

    move-result-object v3

    new-instance v12, Landroid/telecom/ConnectionService$2$3;

    const-string/jumbo v14, "H.CS.crCoF.pICR"

    const/4 v15, 0x0

    move-object/from16 v13, p0

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v12 .. v19}, Landroid/telecom/ConnectionService$2$3;-><init>(Landroid/telecom/ConnectionService$2;Ljava/lang/String;Ljava/lang/Object;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V

    invoke-virtual {v12}, Landroid/telecom/ConnectionService$2$3;->prepare()Ljava/lang/Runnable;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1cb
    .catchall {:try_start_177 .. :try_end_1cb} :catchall_1ed

    :goto_1cb
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :cond_1d3
    const/4 v10, 0x0

    goto :goto_18b

    :cond_1d5
    :try_start_1d5
    const-string/jumbo v3, "createConnectionFailed %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v16

    invoke-static {v3, v0, v8, v9, v10}, Landroid/telecom/ConnectionService;->-wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;Z)V
    :try_end_1ec
    .catchall {:try_start_1d5 .. :try_end_1ec} :catchall_1ed

    goto :goto_1cb

    :catchall_1ed
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_1f5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.ab"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_209
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_216
    .catchall {:try_start_209 .. :try_end_216} :catchall_21e

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_21e
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_226
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.an"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_23a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_247
    .catchall {:try_start_23a .. :try_end_247} :catchall_24f

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_24f
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_257
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.anV"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_26b
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move/from16 v1, v31

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    :try_end_284
    .catchall {:try_start_26b .. :try_end_284} :catchall_28c

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_28c
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_294
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.r"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_2a8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_2b5
    .catchall {:try_start_2a8 .. :try_end_2b5} :catchall_2bd

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_2bd
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_2c5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.rWM"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_2d9
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Landroid/telecom/ConnectionService;->-wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ec
    .catchall {:try_start_2d9 .. :try_end_2ec} :catchall_2f4

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_2f4
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_2fc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.d"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_310
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_31d
    .catchall {:try_start_310 .. :try_end_31d} :catchall_325

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_325
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_32d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.s"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_341
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap25(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_34e
    .catchall {:try_start_341 .. :try_end_34e} :catchall_356

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_356
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_35e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.r"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_372
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap12(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_37f
    .catchall {:try_start_372 .. :try_end_37f} :catchall_387

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_387
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_38f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.u"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_3a3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap31(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_3b0
    .catchall {:try_start_3a3 .. :try_end_3b0} :catchall_3b8

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_3b8
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_3c0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.cASC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    :try_start_3d4
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/telecom/CallAudioState;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    new-instance v4, Landroid/telecom/CallAudioState;

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/CallAudioState;)V

    move-object/from16 v0, v23

    invoke-static {v3, v0, v4}, Landroid/telecom/ConnectionService;->-wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_3f4
    .catchall {:try_start_3d4 .. :try_end_3f4} :catchall_3fc

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_3fc
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_404
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_40c
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.pDT"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-static {v5, v3, v4}, Landroid/telecom/ConnectionService;->-wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    :try_end_42f
    .catchall {:try_start_40c .. :try_end_42f} :catchall_437

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_437
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_43f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_447
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.sDT"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap28(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_460
    .catchall {:try_start_447 .. :try_end_460} :catchall_468

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_468
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_470
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_478
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v28

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_493
    .catchall {:try_start_478 .. :try_end_493} :catchall_498

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_7

    :catchall_498
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v3

    :pswitch_49d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_4a5
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.c"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap6(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4cc
    .catchall {:try_start_4a5 .. :try_end_4cc} :catchall_4d4

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_4d4
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_4dc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_4e4
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.sFC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap26(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_4fd
    .catchall {:try_start_4e4 .. :try_end_4fd} :catchall_505

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_505
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_50d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_515
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.mC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap13(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_52e
    .catchall {:try_start_515 .. :try_end_52e} :catchall_536

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_536
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_53e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_546
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.sC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap30(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_55f
    .catchall {:try_start_546 .. :try_end_55f} :catchall_567

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_567
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_56f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_577
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.oPDC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5a7

    const/16 v29, 0x1

    :goto_594
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    :try_end_59f
    .catchall {:try_start_577 .. :try_end_59f} :catchall_5aa

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :cond_5a7
    const/16 v29, 0x0

    goto :goto_594

    :catchall_5aa
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_5b2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_5ba
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.pEC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/telecom/ConnectionService;->-wrap20(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_5d3
    .catchall {:try_start_5ba .. :try_end_5d3} :catchall_5db

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_5db
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_5e3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_5eb
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.sCE"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v3, v0, v1, v2}, Landroid/telecom/ConnectionService;->-wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_61c
    .catchall {:try_start_5eb .. :try_end_61c} :catchall_624

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_624
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_62c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_634
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.oEC"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_65b
    .catchall {:try_start_634 .. :try_end_65b} :catchall_663

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_663
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_66b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_673
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.+RTT"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/telecom/Connection$RttTextStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap27(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_69a
    .catchall {:try_start_673 .. :try_end_69a} :catchall_6a2

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_6a2
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_6aa
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_6b2
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.-RTT"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Landroid/telecom/ConnectionService;->-wrap29(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    :try_end_6cf
    .catchall {:try_start_6b2 .. :try_end_6cf} :catchall_6d7

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_6d7
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_6df
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/os/SomeArgs;

    :try_start_6e7
    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/telecom/Logging/Session;

    const-string/jumbo v4, "H.CS.rTRUR"

    invoke-static {v3, v4}, Landroid/telecom/Log;->continueSession(Landroid/telecom/Logging/Session;Ljava/lang/String;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/telecom/Connection$RttTextStream;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService$2;->this$0:Landroid/telecom/ConnectionService;

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    invoke-static {v3, v0, v1}, Landroid/telecom/ConnectionService;->-wrap11(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/Connection$RttTextStream;)V
    :try_end_70e
    .catchall {:try_start_6e7 .. :try_end_70e} :catchall_716

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    goto/16 :goto_7

    :catchall_716
    move-exception v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/os/SomeArgs;->recycle()V

    invoke-static {}, Landroid/telecom/Log;->endSession()V

    throw v3

    :pswitch_data_71e
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7b
        :pswitch_1f5
        :pswitch_226
        :pswitch_294
        :pswitch_2fc
        :pswitch_35e
        :pswitch_38f
        :pswitch_3c0
        :pswitch_404
        :pswitch_43f
        :pswitch_49d
        :pswitch_4dc
        :pswitch_56f
        :pswitch_7
        :pswitch_47
        :pswitch_257
        :pswitch_50d
        :pswitch_53e
        :pswitch_2c5
        :pswitch_32d
        :pswitch_5b2
        :pswitch_5e3
        :pswitch_62c
        :pswitch_163
        :pswitch_66b
        :pswitch_6aa
        :pswitch_6df
        :pswitch_ff
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_470
    .end packed-switch
.end method
