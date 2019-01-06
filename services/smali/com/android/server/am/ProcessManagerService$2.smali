.class Lcom/android/server/am/ProcessManagerService$2;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->reduceKilledRecordCount(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$processName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput-object p2, p0, Lcom/android/server/am/ProcessManagerService$2;->val$processName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v1}, Lcom/android/server/am/ProcessManagerService;->-get5(Lcom/android/server/am/ProcessManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$2;->val$processName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_17

    :cond_16
    return-void

    :cond_17
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_33

    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v1}, Lcom/android/server/am/ProcessManagerService;->-get5(Lcom/android/server/am/ProcessManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$2;->val$processName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    return-void

    :cond_33
    iget-object v1, p0, Lcom/android/server/am/ProcessManagerService$2;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v1}, Lcom/android/server/am/ProcessManagerService;->-get5(Lcom/android/server/am/ProcessManagerService;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessManagerService$2;->val$processName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32
.end method
