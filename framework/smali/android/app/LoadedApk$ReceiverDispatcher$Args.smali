.class final Landroid/app/LoadedApk$ReceiverDispatcher$Args;
.super Landroid/content/BroadcastReceiver$PendingResult;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk$ReceiverDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Args"
.end annotation


# instance fields
.field private mCurIntent:Landroid/content/Intent;

.field private mDispatched:Z

.field private final mOrdered:Z

.field private mPreviousRunStacktrace:Ljava/lang/Throwable;

.field final synthetic this$1:Landroid/app/LoadedApk$ReceiverDispatcher;


# direct methods
.method public constructor <init>(Landroid/app/LoadedApk$ReceiverDispatcher;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 20

    iput-object p1, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v1, :cond_26

    const/4 v5, 0x1

    :goto_7
    iget-object v1, p1, Landroid/app/LoadedApk$ReceiverDispatcher;->mIIntentReceiver:Landroid/content/IIntentReceiver$Stub;

    invoke-virtual {v1}, Landroid/content/IIntentReceiver$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v10

    move-object v1, p0

    move v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Landroid/content/BroadcastReceiver$PendingResult;-><init>(ILjava/lang/String;Landroid/os/Bundle;IZZLandroid/os/IBinder;II)V

    iput-object p2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    move/from16 v0, p6

    iput-boolean v0, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    return-void

    :cond_26
    const/4 v5, 0x2

    goto :goto_7
.end method


# virtual methods
.method public final getRunnable()Ljava/lang/Runnable;
    .registers 3

    new-instance v0, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Landroid/app/-$Lambda$aS31cHIhRx41653CMnd4gZqshIQ;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method

.method synthetic lambda$-android_app_LoadedApk$ReceiverDispatcher$Args_52651()V
    .registers 15

    const-wide/16 v12, 0x40

    const/4 v11, 0x0

    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v5, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-boolean v4, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mOrdered:Z

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    iget-object v2, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    if-nez v2, :cond_3e

    const-string/jumbo v8, "LoadedApk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Null intent being dispatched, mDispatched="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ": run() previously called at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPreviousRunStacktrace:Ljava/lang/Throwable;

    invoke-static {v10}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    iput-object v11, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mCurIntent:Landroid/content/Intent;

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mDispatched:Z

    new-instance v8, Ljava/lang/Throwable;

    const-string/jumbo v9, "Previous stacktrace"

    invoke-direct {v8, v9}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->mPreviousRunStacktrace:Ljava/lang/Throwable;

    if-eqz v5, :cond_51

    if-nez v2, :cond_5d

    :cond_51
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v8, :cond_5c

    if-eqz v4, :cond_5c

    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    :cond_5c
    return-void

    :cond_5d
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mForgotten:Z

    if-nez v8, :cond_51

    const-string/jumbo v8, "broadcastReceiveReg"

    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    :try_start_6d
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8}, Landroid/content/BroadcastReceiver;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2}, Landroid/content/Intent;->prepareToEnterProcess()V

    invoke-virtual {p0, v0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v5, p0}, Landroid/content/BroadcastReceiver;->setPendingResult(Landroid/content/BroadcastReceiver$PendingResult;)V

    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v8, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_8c} :catch_9e

    :cond_8c
    invoke-virtual {v5}, Landroid/content/BroadcastReceiver;->getPendingResult()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v8

    if-eqz v8, :cond_95

    invoke-virtual {p0}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->finish()V

    :cond_95
    const/16 v8, 0xc8

    invoke-static {v6, v7, v8}, Landroid/app/ActivityThreadInjector;->checkHandleMessageTime(JI)V

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catch_9e
    move-exception v1

    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-boolean v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mRegistered:Z

    if-eqz v8, :cond_aa

    if-eqz v4, :cond_aa

    invoke-virtual {p0, v3}, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->sendFinished(Landroid/app/IActivityManager;)V

    :cond_aa
    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    if-eqz v8, :cond_c0

    iget-object v8, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v8, v8, Landroid/app/LoadedApk$ReceiverDispatcher;->mInstrumentation:Landroid/app/Instrumentation;

    iget-object v9, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v9, v9, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v8, v9, v1}, Landroid/app/Instrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8c

    :cond_c0
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error receiving broadcast "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/app/LoadedApk$ReceiverDispatcher$Args;->this$1:Landroid/app/LoadedApk$ReceiverDispatcher;

    iget-object v10, v10, Landroid/app/LoadedApk$ReceiverDispatcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method
