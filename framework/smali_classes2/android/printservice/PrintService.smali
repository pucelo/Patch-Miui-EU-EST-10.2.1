.class public abstract Landroid/printservice/PrintService;
.super Landroid/app/Service;
.source "PrintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/PrintService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EXTRA_CAN_SELECT_PRINTER:Ljava/lang/String; = "android.printservice.extra.CAN_SELECT_PRINTER"

.field public static final EXTRA_PRINTER_INFO:Ljava/lang/String; = "android.intent.extra.print.EXTRA_PRINTER_INFO"

.field public static final EXTRA_PRINT_DOCUMENT_INFO:Ljava/lang/String; = "android.printservice.extra.PRINT_DOCUMENT_INFO"

.field public static final EXTRA_PRINT_JOB_INFO:Ljava/lang/String; = "android.intent.extra.print.PRINT_JOB_INFO"

.field public static final EXTRA_SELECT_PRINTER:Ljava/lang/String; = "android.printservice.extra.SELECT_PRINTER"

.field private static final LOG_TAG:Ljava/lang/String; = "PrintService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.PrintService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.printservice"


# instance fields
.field private mClient:Landroid/printservice/IPrintServiceClient;

.field private mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

.field private mHandler:Landroid/os/Handler;

.field private mLastSessionId:I


# direct methods
.method static synthetic -get0(Landroid/printservice/PrintService;)Landroid/printservice/IPrintServiceClient;
    .registers 2

    iget-object v0, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object v0
.end method

.method static synthetic -get1(Landroid/printservice/PrintService;)Landroid/printservice/PrinterDiscoverySession;
    .registers 2

    iget-object v0, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object v0
.end method

.method static synthetic -get2(Landroid/printservice/PrintService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/printservice/PrintService;)I
    .registers 2

    iget v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return v0
.end method

.method static synthetic -set0(Landroid/printservice/PrintService;Landroid/printservice/IPrintServiceClient;)Landroid/printservice/IPrintServiceClient;
    .registers 2

    iput-object p1, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    return-object p1
.end method

.method static synthetic -set1(Landroid/printservice/PrintService;Landroid/printservice/PrinterDiscoverySession;)Landroid/printservice/PrinterDiscoverySession;
    .registers 2

    iput-object p1, p0, Landroid/printservice/PrintService;->mDiscoverySession:Landroid/printservice/PrinterDiscoverySession;

    return-object p1
.end method

.method static synthetic -set2(Landroid/printservice/PrintService;I)I
    .registers 2

    iput p1, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return p1
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/printservice/PrintService;->mLastSessionId:I

    return-void
.end method

.method static throwIfNotCalledOnMainThread()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "must be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    return-void
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Landroid/printservice/PrintService$ServiceHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/printservice/PrintService$ServiceHandler;-><init>(Landroid/printservice/PrintService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/printservice/PrintService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public final generatePrinterId(Ljava/lang/String;)Landroid/print/PrinterId;
    .registers 6

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    const-string/jumbo v0, "localId cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Landroid/print/PrinterId;

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/printservice/PrintService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/printservice/PrintService;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Landroid/print/PrinterId;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getActivePrintJobs()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintJob;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    if-nez v6, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    return-object v6

    :cond_c
    const/4 v3, 0x0

    :try_start_d
    iget-object v6, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    invoke-interface {v6}, Landroid/printservice/IPrintServiceClient;->getPrintJobInfos()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1e} :catch_38

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, v1, :cond_34

    :try_start_21
    new-instance v7, Landroid/printservice/PrintJob;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrintJobInfo;

    iget-object v8, p0, Landroid/printservice/PrintService;->mClient:Landroid/printservice/IPrintServiceClient;

    invoke-direct {v7, p0, v6, v8}, Landroid/printservice/PrintJob;-><init>(Landroid/content/Context;Landroid/print/PrintJobInfo;Landroid/printservice/IPrintServiceClient;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_31} :catch_47

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_34
    move-object v3, v4

    :cond_35
    if-eqz v3, :cond_42

    return-object v3

    :catch_38
    move-exception v5

    :goto_39
    const-string/jumbo v6, "PrintService"

    const-string/jumbo v7, "Error calling getPrintJobs()"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_42
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    return-object v6

    :catch_47
    move-exception v5

    move-object v3, v4

    goto :goto_39
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    new-instance v0, Landroid/printservice/PrintService$1;

    invoke-direct {v0, p0}, Landroid/printservice/PrintService$1;-><init>(Landroid/printservice/PrintService;)V

    return-object v0
.end method

.method protected onConnected()V
    .registers 1

    return-void
.end method

.method protected abstract onCreatePrinterDiscoverySession()Landroid/printservice/PrinterDiscoverySession;
.end method

.method protected onDisconnected()V
    .registers 1

    return-void
.end method

.method protected abstract onPrintJobQueued(Landroid/printservice/PrintJob;)V
.end method

.method protected abstract onRequestCancelPrintJob(Landroid/printservice/PrintJob;)V
.end method
