.class final Landroid/print/PrinterDiscoverySession$SessionHandler;
.super Landroid/os/Handler;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrinterDiscoverySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrinterDiscoverySession;


# direct methods
.method public constructor <init>(Landroid/print/PrinterDiscoverySession;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_1a

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    invoke-static {v2, v1}, Landroid/print/PrinterDiscoverySession;->-wrap0(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V

    goto :goto_5

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession$SessionHandler;->this$0:Landroid/print/PrinterDiscoverySession;

    invoke-static {v2, v0}, Landroid/print/PrinterDiscoverySession;->-wrap1(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V

    goto :goto_5

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method