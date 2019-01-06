.class Landroid/app/job/JobServiceEngine$JobHandler;
.super Landroid/os/Handler;
.source "JobServiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/job/JobServiceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JobHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/job/JobServiceEngine;


# direct methods
.method constructor <init>(Landroid/app/job/JobServiceEngine;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private ackStartMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    if-eqz v0, :cond_19

    :try_start_a
    invoke-interface {v0, v2, p2}, Landroid/app/job/IJobCallback;->acknowledgeStartMessage(IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v1

    const-string/jumbo v3, "JobServiceEngine"

    const-string/jumbo v4, "System unreachable for starting job."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_19
    const-string/jumbo v3, "JobServiceEngine"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "JobServiceEngine"

    const-string/jumbo v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method private ackStopMessage(Landroid/app/job/JobParameters;Z)V
    .registers 8

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    if-eqz v0, :cond_19

    :try_start_a
    invoke-interface {v0, v2, p2}, Landroid/app/job/IJobCallback;->acknowledgeStopMessage(IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_d} :catch_e

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v1

    const-string/jumbo v3, "JobServiceEngine"

    const-string/jumbo v4, "System unreachable for stopping job."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_19
    const-string/jumbo v3, "JobServiceEngine"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string/jumbo v3, "JobServiceEngine"

    const-string/jumbo v4, "Attempting to ack a job that has already been processed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/app/job/JobParameters;

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_88

    const-string/jumbo v7, "JobServiceEngine"

    const-string/jumbo v8, "Unrecognised message received."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    return-void

    :pswitch_13
    :try_start_13
    iget-object v7, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v7, v4}, Landroid/app/job/JobServiceEngine;->onStartJob(Landroid/app/job/JobParameters;)Z

    move-result v6

    invoke-direct {p0, v4, v6}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStartMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1c} :catch_1d

    goto :goto_12

    :catch_1d
    move-exception v2

    const-string/jumbo v7, "JobServiceEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Error while executing job: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :pswitch_42
    :try_start_42
    iget-object v7, p0, Landroid/app/job/JobServiceEngine$JobHandler;->this$0:Landroid/app/job/JobServiceEngine;

    invoke-virtual {v7, v4}, Landroid/app/job/JobServiceEngine;->onStopJob(Landroid/app/job/JobParameters;)Z

    move-result v5

    invoke-direct {p0, v4, v5}, Landroid/app/job/JobServiceEngine$JobHandler;->ackStopMessage(Landroid/app/job/JobParameters;Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_4c

    goto :goto_12

    :catch_4c
    move-exception v2

    const-string/jumbo v7, "JobServiceEngine"

    const-string/jumbo v8, "Application unable to handle onStopJob."

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    :pswitch_5c
    iget v7, p1, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_7b

    const/4 v3, 0x1

    :goto_62
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getCallback()Landroid/app/job/IJobCallback;

    move-result-object v0

    if-eqz v0, :cond_7d

    :try_start_68
    invoke-virtual {v4}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v7

    invoke-interface {v0, v7, v3}, Landroid/app/job/IJobCallback;->jobFinished(IZ)V
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_6f} :catch_70

    goto :goto_12

    :catch_70
    move-exception v1

    const-string/jumbo v7, "JobServiceEngine"

    const-string/jumbo v8, "Error reporting job finish to system: binder has goneaway."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_7b
    const/4 v3, 0x0

    goto :goto_62

    :cond_7d
    const-string/jumbo v7, "JobServiceEngine"

    const-string/jumbo v8, "finishJob() called for a nonexistent job id."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    nop

    :pswitch_data_88
    .packed-switch 0x0
        :pswitch_13
        :pswitch_42
        :pswitch_5c
    .end packed-switch
.end method
