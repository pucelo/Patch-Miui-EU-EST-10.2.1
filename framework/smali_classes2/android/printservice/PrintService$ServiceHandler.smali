.class final Landroid/printservice/PrintService$ServiceHandler;
.super Landroid/os/Handler;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/PrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_CREATE_PRINTER_DISCOVERY_SESSION:I = 0x1

.field public static final MSG_DESTROY_PRINTER_DISCOVERY_SESSION:I = 0x2

.field public static final MSG_ON_PRINTJOB_QUEUED:I = 0x9

.field public static final MSG_ON_REQUEST_CANCEL_PRINTJOB:I = 0xa

.field public static final MSG_REQUEST_CUSTOM_PRINTER_ICON:I = 0x7

.field public static final MSG_SET_CLIENT:I = 0xb

.field public static final MSG_START_PRINTER_DISCOVERY:I = 0x3

.field public static final MSG_START_PRINTER_STATE_TRACKING:I = 0x6

.field public static final MSG_STOP_PRINTER_DISCOVERY:I = 0x4

.field public static final MSG_STOP_PRINTER_STATE_TRACKING:I = 0x8

.field public static final MSG_VALIDATE_PRINTERS:I = 0x5


# instance fields
.field final synthetic this$0:Landroid/printservice/PrintService;


# direct methods
.method public constructor <init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V
    .registers 5

    iput-object p1, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    const/4 v7, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_146

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_20
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v6}, Landroid/printservice/PrintService;->onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;

    move-result-object v5

    if-nez v5, :cond_31

    new-instance v6, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "session cannot be null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_31
    invoke-virtual {v5}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v6

    iget-object v7, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v7}, Landroid/printservice/PrintService;->-get3(Landroid/printservice/PrintService;)I

    move-result v7

    if-ne v6, v7, :cond_46

    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v7, "cannot reuse session instances"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_46
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6, v5}, Landroid/printservice/PrintService;->-set1(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v5}, Landroid/printservice/PrinterDiscoverySession;->getId()I

    move-result v7

    invoke-static {v6, v7}, Landroid/printservice/PrintService;->-set2(Landroid/printservice/PrintService;I)I

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/printservice/PrinterDiscoverySession;->setObserver(Landroid/printservice/IPrintServiceClient;)V

    :cond_5d
    :goto_5d
    return-void

    :pswitch_5e
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_5d

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6}, Landroid/printservice/PrinterDiscoverySession;->destroy()V

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6, v7}, Landroid/printservice/PrintService;->-set1(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;

    goto :goto_5d

    :pswitch_75
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_5d

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/printservice/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    goto :goto_5d

    :pswitch_8b
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_5d

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterDiscovery()V

    goto :goto_5d

    :pswitch_9d
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_5d

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/printservice/PrinterDiscoverySession;->validatePrinters(Ljava/util/List;)V

    goto :goto_5d

    :pswitch_b3
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_5d

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/print/PrinterId;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/printservice/PrinterDiscoverySession;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    goto :goto_5d

    :pswitch_c9
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_5d

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/print/PrinterId;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/printservice/PrinterDiscoverySession;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    goto/16 :goto_5d

    :pswitch_e0
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    if-eqz v6, :cond_5d

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/print/PrinterId;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/printservice/PrinterDiscoverySession;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    goto/16 :goto_5d

    :pswitch_f7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobInfo;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v7, Landroid/printservice/PrintJob;

    iget-object v8, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object v9, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v9}, Landroid/printservice/PrintService;->-get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v9

    invoke-direct {v7, v8, v1, v9}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v6, v7}, Landroid/printservice/PrintService;->onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V

    goto/16 :goto_5d

    :pswitch_10f
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/print/PrintJobInfo;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    new-instance v7, Landroid/printservice/PrintJob;

    iget-object v8, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object v9, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v9}, Landroid/printservice/PrintService;->-get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v9

    invoke-direct {v7, v8, v1, v9}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-virtual {v6, v7}, Landroid/printservice/PrintService;->onPrintJobQueued(Landroid/printservice/PrintJob;)V

    goto/16 :goto_5d

    :pswitch_127
    iget-object v7, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/printservice/IPrintServiceClient;

    invoke-static {v7, v6}, Landroid/printservice/PrintService;->-set0(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-static {v6}, Landroid/printservice/PrintService;->-get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;

    move-result-object v6

    if-eqz v6, :cond_13f

    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v6}, Landroid/printservice/PrintService;->onConnected()V

    goto/16 :goto_5d

    :cond_13f
    iget-object v6, p0, Landroid/printservice/PrintService$ServiceHandler;->this$0:Landroid/printservice/PrintService;

    invoke-virtual {v6}, Landroid/printservice/PrintService;->onDisconnected()V

    goto/16 :goto_5d

    :pswitch_data_146
    .packed-switch 0x1
        :pswitch_20
        :pswitch_5e
        :pswitch_75
        :pswitch_8b
        :pswitch_9d
        :pswitch_b3
        :pswitch_c9
        :pswitch_e0
        :pswitch_10f
        :pswitch_f7
        :pswitch_127
    .end packed-switch
.end method
