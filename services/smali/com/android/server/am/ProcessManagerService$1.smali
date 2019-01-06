.class Lcom/android/server/am/ProcessManagerService$1;
.super Ljava/lang/Object;
.source "ProcessManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ProcessManagerService;->removeMiuiApplicationThread(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessManagerService;

.field final synthetic val$pid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessManagerService;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/am/ProcessManagerService$1;->this$0:Lcom/android/server/am/ProcessManagerService;

    iput p2, p0, Lcom/android/server/am/ProcessManagerService$1;->val$pid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/am/ProcessManagerService$1;->this$0:Lcom/android/server/am/ProcessManagerService;

    invoke-static {v0}, Lcom/android/server/am/ProcessManagerService;->-get6(Lcom/android/server/am/ProcessManagerService;)Lcom/android/server/am/MiuiApplicationThreadManager;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ProcessManagerService$1;->val$pid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/MiuiApplicationThreadManager;->removeMiuiApplicationThread(I)V

    return-void
.end method
