.class public final Landroid/printservice/PrintDocument;
.super Ljava/lang/Object;
.source "PrintDocument.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintDocument"


# instance fields
.field private final mInfo:Landroid/print/PrintDocumentInfo;

.field private final mPrintJobId:Landroid/print/PrintJobId;

.field private final mPrintServiceClient:Landroid/printservice/IPrintServiceClient;


# direct methods
.method constructor <init>(Landroid/print/PrintJobId;Landroid/printservice/IPrintServiceClient;Landroid/print/PrintDocumentInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    iput-object p2, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iput-object p3, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-void
.end method


# virtual methods
.method public getData()Landroid/os/ParcelFileDescriptor;
    .registers 9

    const/4 v7, 0x0

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_6
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    const/4 v5, 0x0

    aget-object v4, v0, v5

    const/4 v5, 0x1

    aget-object v3, v0, v5

    iget-object v5, p0, Landroid/printservice/PrintDocument;->mPrintServiceClient:Landroid/printservice/IPrintServiceClient;

    iget-object v6, p0, Landroid/printservice/PrintDocument;->mPrintJobId:Landroid/print/PrintJobId;

    invoke-interface {v5, v3, v6}, Landroid/printservice/IPrintServiceClient;->writePrintJobData(Landroid/os/ParcelFileDescriptor;Landroid/print/PrintJobId;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_17} :catch_31
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_17} :catch_1f
    .catchall {:try_start_6 .. :try_end_17} :catchall_43

    if-eqz v3, :cond_1c

    :try_start_19
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-object v4

    :catch_1d
    move-exception v1

    goto :goto_1c

    :catch_1f
    move-exception v2

    :try_start_20
    const-string/jumbo v5, "PrintDocument"

    const-string/jumbo v6, "Error calling getting print job data!"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_43

    if-eqz v3, :cond_2e

    :try_start_2b
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-object v7

    :catch_2f
    move-exception v1

    goto :goto_2e

    :catch_31
    move-exception v1

    :try_start_32
    const-string/jumbo v5, "PrintDocument"

    const-string/jumbo v6, "Error calling getting print job data!"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_43

    if-eqz v3, :cond_2e

    :try_start_3d
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_41

    goto :goto_2e

    :catch_41
    move-exception v1

    goto :goto_2e

    :catchall_43
    move-exception v5

    if-eqz v3, :cond_49

    :try_start_46
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_4a

    :cond_49
    :goto_49
    throw v5

    :catch_4a
    move-exception v1

    goto :goto_49
.end method

.method public getInfo()Landroid/print/PrintDocumentInfo;
    .registers 2

    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    iget-object v0, p0, Landroid/printservice/PrintDocument;->mInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method
