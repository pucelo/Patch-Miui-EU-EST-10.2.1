.class Lcom/android/server/am/ProcessManagerService$3;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->boostCameraIfNeeded(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    div-long v2, v8, v10

    iget-object v7, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v7}, Lcom/android/server/am/ProcessManagerService;->-get8(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ProcessPolicy;->getCameraMemThreshold()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gtz v7, :cond_98

    iget-object v7, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v7}, Lcom/android/server/am/ProcessManagerService;->-get1(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v8}, Lcom/android/server/am/ProcessManagerService;->-get8(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessPolicy;

    move-result-object v8

    const/16 v9, 0x2000

    invoke-virtual {v8, v9}, Lcom/android/server/am/ProcessPolicy;->getWhiteList(I)Ljava/util/List;

    move-result-object v8

    const/16 v9, 0x384

    invoke-static {v7, v9, v8}, Lcom/android/server/am/ProcessUtils;->getProcessListByAdj(Lcom/android/server/am/ActivityManagerService;ILjava/util/List;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v7}, Lcom/android/server/am/ProcessManagerService;->-get1(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/server/am/ProcessUtils;->getPidsForProc(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)[I

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/ProcessUtils;->getTotalPss([I)I

    move-result v6

    invoke-static {}, Lcom/android/server/am/ProcessManagerService;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "boost camera with free mem:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "KB, kill "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " processes, will free memory:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "KB"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_79
    if-ge v4, v0, :cond_93

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_90

    iget-object v7, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v7}, Lcom/android/server/am/ProcessManagerService;->-get7(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/ProcessKiller;

    move-result-object v7

    const-string/jumbo v8, "camera boost"

    const/4 v9, 0x0

    invoke-virtual {v7, v1, v8, v9}, Lcom/android/server/am/ProcessKiller;->killApplication(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Z)V

    :cond_90
    add-int/lit8 v4, v4, 0x1

    goto :goto_79

    :cond_93
    iget-object v7, p0, Lcom/android/server/am/ProcessManagerService$3;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v7, v2, v3, v0, v6}, Lcom/android/server/am/ProcessManagerService;->-wrap0(Lcom/android/server/am/ProcessManagerService;JII)V

    :cond_98
    return-void
.end method
