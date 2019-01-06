.class Lcom/miui/server/PerfShielderService$4;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/PerfShielderService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/server/PerfShielderService$4;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$4;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-wrap2(Lcom/miui/server/PerfShielderService;)V

    return-void
.end method
