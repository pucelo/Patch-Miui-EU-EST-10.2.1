.class Lcom/miui/server/PerfShielderService$BindServiceHandler;
.super Landroid/os/Handler;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BindServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method public constructor <init>(Lcom/miui/server/PerfShielderService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-wrap2(Lcom/miui/server/PerfShielderService;)V

    goto :goto_5

    :pswitch_c
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$BindServiceHandler;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->-wrap1(Lcom/miui/server/PerfShielderService;)V

    goto :goto_5

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
