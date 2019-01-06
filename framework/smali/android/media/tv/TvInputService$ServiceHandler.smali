.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final DO_ADD_HARDWARE_INPUT:I = 0x4

.field private static final DO_ADD_HDMI_INPUT:I = 0x6

.field private static final DO_CREATE_RECORDING_SESSION:I = 0x3

.field private static final DO_CREATE_SESSION:I = 0x1

.field private static final DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final DO_REMOVE_HARDWARE_INPUT:I = 0x5

.field private static final DO_REMOVE_HDMI_INPUT:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService;)V
    .registers 2

    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$ServiceHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    return-void
.end method

.method private broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 8

    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_2a

    :try_start_d
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1f

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_1f
    move-exception v0

    const-string/jumbo v3, "TvInputService"

    const-string/jumbo v4, "error in broadcastAddHardwareInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :cond_2a
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 8

    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_2a

    :try_start_d
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1f

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_1f
    move-exception v0

    const-string/jumbo v3, "TvInputService"

    const-string/jumbo v4, "error in broadcastAddHdmiInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :cond_2a
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private broadcastRemoveHardwareInput(Ljava/lang/String;)V
    .registers 7

    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v2, :cond_2a

    :try_start_d
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v3, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeHardwareInput(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1f

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :catch_1f
    move-exception v0

    const-string/jumbo v3, "TvInputService"

    const-string/jumbo v4, "error in broadcastRemoveHardwareInput"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :cond_2a
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v19, v0

    packed-switch v19, :pswitch_data_26e

    const-string/jumbo v19, "TvInputService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unhandled message code: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_2a
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/view/InputChannel;

    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    iget-object v11, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    move-result-object v16

    if-nez v16, :cond_68

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_51
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_58} :catch_59

    :goto_58
    return-void

    :catch_59
    move-exception v7

    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    :cond_68
    new-instance v18, Landroid/media/tv/ITvInputSessionWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/media/tv/TvInputService$HardwareSession;

    move/from16 v19, v0

    if-eqz v19, :cond_125

    move-object/from16 v14, v16

    check-cast v14, Landroid/media/tv/TvInputService$HardwareSession;

    invoke-virtual {v14}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Landroid/media/tv/TvInputService;->-wrap0(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    if-eqz v19, :cond_e9

    :cond_9f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_bd

    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "Hardware input id is not setup yet."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ae
    invoke-virtual/range {v16 .. v16}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_b5
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b5 .. :try_end_bc} :catch_da

    :goto_bc
    return-void

    :cond_bd
    const-string/jumbo v19, "TvInputService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Invalid hardware input id : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae

    :catch_da
    move-exception v7

    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_bc

    :cond_e9
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-set1(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    invoke-static {v14, v4}, Landroid/media/tv/TvInputService$HardwareSession;->-set2(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v14, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-set3(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    const-string/jumbo v20, "tv_input"

    invoke-virtual/range {v19 .. v20}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/media/tv/TvInputManager;

    invoke-static {v14}, Landroid/media/tv/TvInputService$HardwareSession;->-get1(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v13, v9, v0, v1}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    :goto_124
    return-void

    :cond_125
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v19

    const/16 v20, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    goto :goto_124

    :pswitch_15b
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v16, v0

    check-cast v16, Landroid/media/tv/TvInputService$Session;

    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/media/tv/ITvInputSession;

    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    iget-object v10, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v10, Landroid/os/IBinder;

    :try_start_175
    move-object/from16 v0, v18

    invoke-interface {v4, v0, v10}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_17a
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_17a} :catch_185

    :goto_17a
    if-eqz v16, :cond_181

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/media/tv/TvInputService$Session;->-wrap0(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    :cond_181
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catch_185
    move-exception v7

    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17a

    :pswitch_194
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    iget-object v11, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object v15

    if-nez v15, :cond_1ce

    const/16 v19, 0x0

    const/16 v20, 0x0

    :try_start_1b7
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1be
    .catch Landroid/os/RemoteException; {:try_start_1b7 .. :try_end_1be} :catch_1bf

    :goto_1be
    return-void

    :catch_1bf
    move-exception v7

    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1be

    :cond_1ce
    new-instance v18, Landroid/media/tv/ITvInputSessionWrapper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v15}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V

    const/16 v19, 0x0

    :try_start_1df
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1e6
    .catch Landroid/os/RemoteException; {:try_start_1df .. :try_end_1e6} :catch_1ea

    :goto_1e6
    invoke-static {v15, v4}, Landroid/media/tv/TvInputService$RecordingSession;->-wrap0(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V

    return-void

    :catch_1ea
    move-exception v7

    const-string/jumbo v19, "TvInputService"

    const-string/jumbo v20, "error in onSessionCreated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1e6

    :pswitch_1f9
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/media/tv/TvInputHardwareInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v12

    if-eqz v12, :cond_218

    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    :cond_218
    return-void

    :pswitch_219
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/media/tv/TvInputHardwareInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_232

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    :cond_232
    return-void

    :pswitch_233
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v12

    if-eqz v12, :cond_252

    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v12}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    :cond_252
    return-void

    :pswitch_253
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_26c

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    :cond_26c
    return-void

    nop

    :pswitch_data_26e
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_15b
        :pswitch_194
        :pswitch_1f9
        :pswitch_219
        :pswitch_233
        :pswitch_253
    .end packed-switch
.end method
