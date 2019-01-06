.class Lcom/android/server/am/AppErrors$1;
.super Landroid/os/AnrMonitor$TimerThread;
.source "AppErrors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrors;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$dumpApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic val$firstPids:Ljava/util/ArrayList;

.field final synthetic val$info:Ljava/lang/StringBuilder;

.field final synthetic val$lastPids:Landroid/util/SparseArray;

.field final synthetic val$stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrors;JLcom/android/server/am/ProcessRecord;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 10

    iput-object p1, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    iput-object p4, p0, Lcom/android/server/am/AppErrors$1;->val$dumpApp:Lcom/android/server/am/ProcessRecord;

    iput-object p5, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    iput-object p6, p0, Lcom/android/server/am/AppErrors$1;->val$info:Ljava/lang/StringBuilder;

    iput-object p7, p0, Lcom/android/server/am/AppErrors$1;->val$app:Lcom/android/server/am/ProcessRecord;

    iput-object p8, p0, Lcom/android/server/am/AppErrors$1;->val$firstPids:Ljava/util/ArrayList;

    iput-object p9, p0, Lcom/android/server/am/AppErrors$1;->val$lastPids:Landroid/util/SparseArray;

    invoke-direct {p0, p2, p3}, Landroid/os/AnrMonitor$TimerThread;-><init>(J)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    :try_start_0
    const-class v0, Lmiui/process/ProcessManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/process/ProcessManagerInternal;

    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$dumpApp:Lcom/android/server/am/ProcessRecord;

    iget v1, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Lmiui/process/ProcessManagerInternal;->getMiuiApplicationThread(I)Lmiui/process/IMiuiApplicationThread;

    move-result-object v0

    invoke-interface {v0}, Lmiui/process/IMiuiApplicationThread;->dumpMessage()Ljava/lang/String;

    move-result-object v10

    iget-object v0, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v0, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppErrors$1;->this$0:Lcom/android/server/am/AppErrors;

    invoke-static {v0}, Lcom/android/server/am/AppErrors;->-get1(Lcom/android/server/am/AppErrors;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/AppErrors$1;->val$info:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppErrors$1;->val$stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/AppErrors$1;->val$app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/AppErrors$1;->val$app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v5, p0, Lcom/android/server/am/AppErrors$1;->val$app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isInterestingToUserLocked()Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/am/AppErrors$1;->val$firstPids:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/am/AppErrors$1;->val$lastPids:Landroid/util/SparseArray;

    sget-object v8, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/android/server/am/ActivityManagerServiceInjector;->saveAnrInfoBeforeDumpTrace(Lcom/android/server/am/ActivityManagerService;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;IZLjava/util/ArrayList;Landroid/util/SparseArray;[Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/AppErrors$1;->finishRun()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    :goto_47
    return-void

    :catch_48
    move-exception v9

    invoke-static {}, Lcom/android/server/am/AppErrors;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Error happened during dump message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47
.end method
