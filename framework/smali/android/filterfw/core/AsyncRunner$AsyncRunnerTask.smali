.class Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;
.super Landroid/os/AsyncTask;
.source "AsyncRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/core/AsyncRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRunnerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/filterfw/core/SyncRunner;",
        "Ljava/lang/Void;",
        "Landroid/filterfw/core/AsyncRunner$RunnerResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AsyncRunnerTask"


# instance fields
.field final synthetic this$0:Landroid/filterfw/core/AsyncRunner;


# direct methods
.method private constructor <init>(Landroid/filterfw/core/AsyncRunner;)V
    .registers 2

    iput-object p1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;-><init>(Landroid/filterfw/core/AsyncRunner;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x1

    new-instance v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    :try_start_a
    array-length v2, p1

    if-le v2, v4, :cond_32

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "More than one runner received!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_16} :catch_16

    :catch_16
    move-exception v0

    iput-object v0, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    :cond_1b
    :goto_1b
    :try_start_1b
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->deactivateGlContext()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_20} :catch_af

    :goto_20
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_31

    const-string/jumbo v2, "AsyncRunnerTask"

    const-string/jumbo v3, "Done with background graph processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    return-object v1

    :cond_32
    const/4 v2, 0x0

    :try_start_33
    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->assertReadyToStep()V

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "AsyncRunnerTask"

    const-string/jumbo v3, "Starting background graph processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/AsyncRunner;->activateGlContext()Z

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string/jumbo v2, "AsyncRunnerTask"

    const-string/jumbo v3, "Preparing filter graph for processing."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->beginProcessing()V

    iget-object v2, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v2}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string/jumbo v2, "AsyncRunnerTask"

    const-string/jumbo v3, "Running graph."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    const/4 v2, 0x1

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    :cond_79
    :goto_79
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_a4

    iget v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v2, v4, :cond_a4

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->performStep()Z

    move-result v2

    if-nez v2, :cond_79

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->determinePostRunState()I

    move-result v2

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    iget v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_79

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Landroid/filterfw/core/SyncRunner;->waitUntilWake()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto :goto_79

    :cond_a4
    invoke-virtual {p0}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x5

    iput v2, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_ad} :catch_16

    goto/16 :goto_1b

    :catch_af
    move-exception v0

    iput-object v0, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    iput v5, v1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    goto/16 :goto_20
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Landroid/filterfw/core/SyncRunner;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->doInBackground([Landroid/filterfw/core/SyncRunner;)Landroid/filterfw/core/AsyncRunner$RunnerResult;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onCancelled(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method

.method protected onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V
    .registers 8

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "AsyncRunnerTask"

    const-string/jumbo v2, "Starting post-execute."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->-wrap1(Landroid/filterfw/core/AsyncRunner;Z)V

    if-nez p1, :cond_25

    new-instance p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-direct {p1, v1, v3}, Landroid/filterfw/core/AsyncRunner$RunnerResult;-><init>(Landroid/filterfw/core/AsyncRunner;Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    iput v4, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    :cond_25
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    iget-object v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->exception:Ljava/lang/Exception;

    invoke-static {v1, v2}, Landroid/filterfw/core/AsyncRunner;->-wrap0(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-eq v1, v4, :cond_34

    iget v1, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    if-ne v1, v5, :cond_4e

    :cond_34
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string/jumbo v1, "AsyncRunnerTask"

    const-string/jumbo v2, "Closing filters."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    :try_start_45
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get2(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/SyncRunner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/SyncRunner;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4e} :catch_84

    :cond_4e
    :goto_4e
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get0(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v1

    if-eqz v1, :cond_72

    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_67

    const-string/jumbo v1, "AsyncRunnerTask"

    const-string/jumbo v2, "Calling graph done callback."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get0(Landroid/filterfw/core/AsyncRunner;)Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    move-result-object v1

    iget v2, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    invoke-interface {v1, v2}, Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;->onRunnerDone(I)V

    :cond_72
    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1}, Landroid/filterfw/core/AsyncRunner;->-get1(Landroid/filterfw/core/AsyncRunner;)Z

    move-result v1

    if-eqz v1, :cond_83

    const-string/jumbo v1, "AsyncRunnerTask"

    const-string/jumbo v2, "Completed post-execute."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_83
    return-void

    :catch_84
    move-exception v0

    iput v5, p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;->status:I

    iget-object v1, p0, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->this$0:Landroid/filterfw/core/AsyncRunner;

    invoke-static {v1, v0}, Landroid/filterfw/core/AsyncRunner;->-wrap0(Landroid/filterfw/core/AsyncRunner;Ljava/lang/Exception;)V

    goto :goto_4e
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Landroid/filterfw/core/AsyncRunner$RunnerResult;

    invoke-virtual {p0, p1}, Landroid/filterfw/core/AsyncRunner$AsyncRunnerTask;->onPostExecute(Landroid/filterfw/core/AsyncRunner$RunnerResult;)V

    return-void
.end method
