.class final Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;
.super Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
.source "PrintManager.java"

# interfaces
.implements Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager$PrintDocumentAdapterDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyLayoutResultCallback"
.end annotation


# instance fields
.field private mCallback:Landroid/print/ILayoutResultCallback;

.field private final mSequence:I

.field final synthetic this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/ILayoutResultCallback;I)V
    .registers 4

    iput-object p1, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;-><init>()V

    iput-object p2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    iput p3, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_8
    iput-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;

    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-set0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;)Landroid/print/PrintManager$PrintDocumentAdapterDelegate$DestroyableCallback;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onLayoutCancelled()V
    .registers 5

    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_16

    monitor-exit v2

    if-nez v0, :cond_19

    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_16
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_19
    :try_start_19
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v0, v2}, Landroid/print/ILayoutResultCallback;->onLayoutCanceled(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_22
    .catchall {:try_start_19 .. :try_end_1e} :catchall_30

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    :goto_21
    return-void

    :catch_22
    move-exception v1

    :try_start_23
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error calling onLayoutFailed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_30

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    goto :goto_21

    :catchall_30
    move-exception v2

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    throw v2
.end method

.method public onLayoutFailed(Ljava/lang/CharSequence;)V
    .registers 6

    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_16

    monitor-exit v2

    if-nez v0, :cond_19

    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_16
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_19
    :try_start_19
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v0, p1, v2}, Landroid/print/ILayoutResultCallback;->onLayoutFailed(Ljava/lang/CharSequence;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1e} :catch_22
    .catchall {:try_start_19 .. :try_end_1e} :catchall_30

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    :goto_21
    return-void

    :catch_22
    move-exception v1

    :try_start_23
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error calling onLayoutFailed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_30

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    goto :goto_21

    :catchall_30
    move-exception v2

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    throw v2
.end method

.method public onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V
    .registers 7

    iget-object v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->this$1:Landroid/print/PrintManager$PrintDocumentAdapterDelegate;

    invoke-static {v2}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate;->-get0(Landroid/print/PrintManager$PrintDocumentAdapterDelegate;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_7
    iget-object v0, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mCallback:Landroid/print/ILayoutResultCallback;
    :try_end_9
    .catchall {:try_start_7 .. :try_end_9} :catchall_16

    monitor-exit v2

    if-nez v0, :cond_19

    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "PrintDocumentAdapter is destroyed. Did you finish the printing activity before print completion or did you invoke a callback after finish?"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_16
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_19
    if-nez p1, :cond_29

    :try_start_1b
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "document info cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_24

    :catchall_24
    move-exception v2

    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    throw v2

    :cond_29
    :try_start_29
    iget v2, p0, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->mSequence:I

    invoke-interface {v0, p1, p2, v2}, Landroid/print/ILayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;ZI)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_32
    .catchall {:try_start_29 .. :try_end_2e} :catchall_24

    :goto_2e
    invoke-virtual {p0}, Landroid/print/PrintManager$PrintDocumentAdapterDelegate$MyLayoutResultCallback;->destroy()V

    return-void

    :catch_32
    move-exception v1

    :try_start_33
    const-string/jumbo v2, "PrintManager"

    const-string/jumbo v3, "Error calling onLayoutFinished"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_33 .. :try_end_3c} :catchall_24

    goto :goto_2e
.end method
