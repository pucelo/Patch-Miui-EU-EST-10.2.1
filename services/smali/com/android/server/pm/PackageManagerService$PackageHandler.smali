.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .registers 4

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    return-void
.end method

.method private connectToService()Z
    .registers 8

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    iput-boolean v4, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    return v4

    :cond_2a
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    return v5
.end method

.method private disconnectService()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    iput-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 59

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_804

    :cond_7
    :goto_7
    :pswitch_7
    return-void

    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v31

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v4, :cond_77

    const-string/jumbo v4, "bindingMCS"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_6b

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v11, "Failed to bind to media container service"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    const-string/jumbo v4, "bindingMCS"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_6a

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    move-object/from16 v0, v38

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_6a
    return-void

    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_7

    :cond_77
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v31

    move-object/from16 v1, v38

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-nez v31, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    :pswitch_90
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_b6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IMediaContainerService;

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->-set0(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    const-string/jumbo v4, "bindingMCS"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v11}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    if-nez v4, :cond_11c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-nez v4, :cond_111

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v11, "Cannot bind to media container service"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_108

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    const-string/jumbo v4, "queueInstall"

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_107

    move-object/from16 v0, v38

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceMethod:Ljava/lang/String;

    move-object/from16 v0, v38

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;->traceCookie:I

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_107
    return-void

    :cond_108
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    :cond_111
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v11, "Waiting to connect to media container service"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_11c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_19a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    if-eqz v38, :cond_7

    const-string/jumbo v4, "queueInstall"

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string/jumbo v4, "startCopy"

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v4

    if-eqz v4, :cond_187

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_161

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_18f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_187

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v49

    const-wide/16 v14, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_187
    :goto_187
    const-wide/32 v14, 0x40000

    invoke-static {v14, v15}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_7

    :cond_18f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_187

    :cond_19a
    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v11, "Empty queue"

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_1a5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_1b8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    :cond_1b8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v4

    if-nez v4, :cond_7

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v11, "Failed to bind to media container service"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :goto_1cf
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1ec

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    const-string/jumbo v4, "queueInstall"

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_1cf

    :cond_1ec
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    :pswitch_1f5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_216

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_216

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mBound:Z

    if-eqz v4, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_7

    :cond_216
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v11, 0x3

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    :pswitch_22c
    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_243

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    :cond_243
    const-string/jumbo v4, "queueInstall"

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_7

    :pswitch_252
    const/16 v46, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    :try_start_25f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;
    :try_end_265
    .catchall {:try_start_25f .. :try_end_265} :catchall_32a

    if-nez v4, :cond_269

    monitor-exit v11

    return-void

    :cond_269
    :try_start_269
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I
    :try_end_272
    .catchall {:try_start_269 .. :try_end_272} :catchall_32a

    move-result v46

    if-gtz v46, :cond_277

    monitor-exit v11

    return-void

    :cond_277
    :try_start_277
    move/from16 v0, v46

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v37, v0

    move/from16 v0, v46

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move/from16 v0, v46

    new-array v0, v0, [I

    move-object/from16 v50, v0

    const/16 v30, 0x0

    const/16 v33, 0x0

    :goto_28d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v4

    move/from16 v0, v33

    if-ge v0, v4, :cond_305

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v36

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    :goto_2bb
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_302

    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_302

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/Map$Entry;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v37, v30

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v25, v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface/range {v29 .. v29}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lcom/android/server/pm/PackageSetting;

    if-eqz v41, :cond_300

    move-object/from16 v0, v41

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v36

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    :goto_2fb
    aput v4, v50, v30

    add-int/lit8 v30, v30, 0x1

    goto :goto_2bb

    :cond_300
    const/4 v4, -0x1

    goto :goto_2fb

    :cond_302
    add-int/lit8 v33, v33, 0x1

    goto :goto_28d

    :cond_305
    move/from16 v46, v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V
    :try_end_310
    .catchall {:try_start_277 .. :try_end_310} :catchall_32a

    monitor-exit v11

    const/16 v30, 0x0

    :goto_313
    move/from16 v0, v30

    move/from16 v1, v46

    if-ge v0, v1, :cond_32d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v11, v37, v30

    aget-object v13, v25, v30

    aget v14, v50, v30

    const/4 v15, 0x1

    invoke-static {v4, v11, v15, v13, v14}, Lcom/android/server/pm/PackageManagerService;->-wrap48(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_313

    :catchall_32a
    move-exception v4

    monitor-exit v11

    throw v4

    :cond_32d
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    :pswitch_334
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v53, v0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_37f

    const/16 v21, 0x1

    :goto_34e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    const/4 v4, -0x1

    move/from16 v0, v53

    if-ne v0, v4, :cond_382

    :try_start_35a
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v55

    const/4 v4, 0x0

    move-object/from16 v0, v55

    array-length v13, v0

    :goto_364
    if-ge v4, v13, :cond_396

    aget v51, v55, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v15, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v51

    move-object/from16 v1, v35

    move/from16 v2, v21

    invoke-direct {v15, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v14, v15}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_364

    :cond_37f
    const/16 v21, 0x0

    goto :goto_34e

    :cond_382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v13, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v53

    move-object/from16 v1, v35

    move/from16 v2, v21

    invoke-direct {v13, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v13}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V
    :try_end_396
    .catchall {:try_start_35a .. :try_end_396} :catchall_3a5

    :cond_396
    monitor-exit v11

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_7

    :catchall_3a5
    move-exception v4

    monitor-exit v11

    throw v4

    :pswitch_3a8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_450

    const/4 v10, 0x1

    :goto_3bf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v11}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v26, :cond_47f

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v22, v0

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_453

    const/4 v6, 0x1

    :goto_3e1
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_455

    const/4 v7, 0x1

    :goto_3ea
    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v11, 0x10000

    and-int/2addr v4, v11

    if-eqz v4, :cond_457

    const/4 v8, 0x1

    :goto_3f4
    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, v22

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->getLocation()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {v4 .. v13}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Ljava/lang/String;)V

    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v4, :cond_459

    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v24

    :goto_419
    const/16 v30, 0x0

    :goto_41b
    move/from16 v0, v30

    move/from16 v1, v24

    if-ge v0, v1, :cond_45c

    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v19, v0

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->getLocation()Ljava/lang/String;

    move-result-object v20

    const/16 v17, 0x0

    move v13, v6

    move v14, v7

    move v15, v8

    move-object/from16 v16, v9

    invoke-static/range {v11 .. v20}, Lcom/android/server/pm/PackageManagerService;->-wrap32(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Ljava/lang/String;)V

    add-int/lit8 v30, v30, 0x1

    goto :goto_41b

    :cond_450
    const/4 v10, 0x0

    goto/16 :goto_3bf

    :cond_453
    const/4 v6, 0x0

    goto :goto_3e1

    :cond_455
    const/4 v7, 0x0

    goto :goto_3ea

    :cond_457
    const/4 v8, 0x0

    goto :goto_3f4

    :cond_459
    const/16 v24, 0x0

    goto :goto_419

    :cond_45c
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v4, :cond_470

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_470
    :goto_470
    const-string/jumbo v4, "postInstall"

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto/16 :goto_7

    :cond_47f
    const-string/jumbo v4, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Bogus post-install token "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_470

    :pswitch_49e
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_4e7

    const/16 v42, 0x1

    :goto_4a7
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_4ea

    const/16 v27, 0x1

    :goto_4b0
    if-eqz v27, :cond_4b9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    :cond_4b9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_4d0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap49(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    :cond_4d0
    if-eqz v42, :cond_7

    :try_start_4d2
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->finishMediaUpdate()V
    :try_end_4d9
    .catch Landroid/os/RemoteException; {:try_start_4d2 .. :try_end_4d9} :catch_4db

    goto/16 :goto_7

    :catch_4db
    move-exception v28

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v11, "StorageManagerService not running?"

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_4e7
    const/16 v42, 0x0

    goto :goto_4a7

    :cond_4ea
    const/16 v27, 0x0

    goto :goto_4b0

    :pswitch_4ed
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    const/16 v4, 0xd

    :try_start_4fa
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeLPr()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get6(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V
    :try_end_51a
    .catchall {:try_start_4fa .. :try_end_51a} :catchall_522

    monitor-exit v11

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    :catchall_522
    move-exception v4

    monitor-exit v11

    throw v4

    :pswitch_525
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    const/16 v4, 0xe

    :try_start_532
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get6(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v54

    :goto_543
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_562

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v53

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V
    :try_end_55e
    .catchall {:try_start_532 .. :try_end_55e} :catchall_55f

    goto :goto_543

    :catchall_55f
    move-exception v4

    monitor-exit v11

    throw v4

    :cond_562
    :try_start_562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get6(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArraySet;->clear()V
    :try_end_56d
    .catchall {:try_start_562 .. :try_end_56d} :catchall_55f

    monitor-exit v11

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    :pswitch_575
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v11

    const/16 v4, 0x13

    :try_start_582
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v13}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V
    :try_end_594
    .catchall {:try_start_582 .. :try_end_594} :catchall_59c

    monitor-exit v11

    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    :catchall_59c
    move-exception v4

    monitor-exit v11

    throw v4

    :pswitch_59f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/pm/PackageVerificationState;

    if-eqz v48, :cond_7

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_7

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v34

    const-string/jumbo v4, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Verification timed out for "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    const/16 v45, -0x16

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v52

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->-wrap17(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v4

    const/4 v11, 0x1

    if-ne v4, v11, :cond_675

    const-string/jumbo v4, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Continuing with installation of "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v11, 0x2

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v11}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v11, 0x1

    move/from16 v0, v56

    move-object/from16 v1, v34

    move-object/from16 v2, v52

    invoke-static {v4, v0, v1, v11, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap26(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    :try_start_639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v11, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_647
    .catch Landroid/os/RemoteException; {:try_start_639 .. :try_end_647} :catch_66a

    move-result v45

    :goto_648
    const-string/jumbo v4, "verification"

    const-wide/32 v14, 0x40000

    move/from16 v0, v56

    invoke-static {v14, v15, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    move/from16 v1, v45

    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap41(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v11, 0x6

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    :catch_66a
    move-exception v28

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v11, "Could not contact the ContainerService"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_648

    :cond_675
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v11, -0x1

    move/from16 v0, v56

    move-object/from16 v1, v34

    move-object/from16 v2, v52

    invoke-static {v4, v0, v1, v11, v2}, Lcom/android/server/pm/PackageManagerService;->-wrap26(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_648

    :pswitch_684
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/server/pm/PackageVerificationState;

    if-nez v48, :cond_6bf

    const-string/jumbo v4, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid verification token "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v56

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " received"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_6bf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/pm/PackageVerificationResponse;

    move-object/from16 v0, v44

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v48

    invoke-virtual {v0, v4, v11}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v34

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v4

    if-eqz v4, :cond_74e

    const/16 v45, -0x6e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v44

    iget v11, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual/range {v48 .. v48}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    move/from16 v0, v56

    move-object/from16 v1, v34

    invoke-static {v4, v0, v1, v11, v13}, Lcom/android/server/pm/PackageManagerService;->-wrap26(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    :try_start_712
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get3(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v11, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_720
    .catch Landroid/os/RemoteException; {:try_start_712 .. :try_end_720} :catch_743

    move-result v45

    :goto_721
    const-string/jumbo v4, "verification"

    const-wide/32 v14, 0x40000

    move/from16 v0, v56

    invoke-static {v14, v15, v4, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v22

    move/from16 v1, v45

    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->-wrap41(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v11, 0x6

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_7

    :catch_743
    move-exception v28

    const-string/jumbo v4, "PackageManager"

    const-string/jumbo v11, "Could not contact the ContainerService"

    invoke-static {v4, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_721

    :cond_74e
    const/16 v45, -0x16

    goto :goto_721

    :pswitch_751
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v39

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    move-object/from16 v0, v39

    iget v13, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    move-object/from16 v0, v39

    iget-boolean v14, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    move-object/from16 v0, v39

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v4, v11, v13, v14, v15}, Lcom/android/server/pm/PackageManagerService;->-wrap53(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    goto/16 :goto_7

    :pswitch_772
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v56, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    move/from16 v0, v56

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Lcom/android/server/pm/IntentFilterVerificationState;

    if-nez v47, :cond_7ad

    const-string/jumbo v4, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid IntentFilter verification token "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v56

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, " received"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_7ad
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v53

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/server/pm/IntentFilterVerificationResponse;

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    move-object/from16 v0, v43

    iget v11, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v11}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    move-object/from16 v0, v43

    iget v4, v0, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    const/4 v11, -0x1

    invoke-virtual/range {v47 .. v47}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->-get8(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v4

    move/from16 v0, v56

    invoke-interface {v4, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_7

    :pswitch_7e0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v4, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/EphemeralResolverConnection;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/InstantAppRequest;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v11, v13, v4, v14, v15}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/EphemeralResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    goto/16 :goto_7

    nop

    :pswitch_data_804
    .packed-switch 0x1
        :pswitch_252
        :pswitch_7
        :pswitch_90
        :pswitch_7
        :pswitch_8
        :pswitch_1f5
        :pswitch_334
        :pswitch_7
        :pswitch_3a8
        :pswitch_1a5
        :pswitch_22c
        :pswitch_49e
        :pswitch_4ed
        :pswitch_525
        :pswitch_684
        :pswitch_59f
        :pswitch_751
        :pswitch_772
        :pswitch_575
        :pswitch_7e0
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    const/16 v1, 0xa

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    return-void

    :catchall_9
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
