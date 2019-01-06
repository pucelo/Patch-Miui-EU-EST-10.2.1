.class final Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;
.super Landroid/os/AsyncTask;
.source "PrintFileDocumentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintFileDocumentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WriteFileAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCancellationSignal:Landroid/os/CancellationSignal;

.field private final mDestination:Landroid/os/ParcelFileDescriptor;

.field private final mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

.field final synthetic this$0:Landroid/print/PrintFileDocumentAdapter;


# direct methods
.method public constructor <init>(Landroid/print/PrintFileDocumentAdapter;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 7

    iput-object p1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    iput-object p4, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iput-object p3, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mCancellationSignal:Landroid/os/CancellationSignal;

    new-instance v1, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;

    invoke-direct {v1, p0}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask$1;-><init>(Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;)V

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 11

    const/4 v1, 0x0

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mDestination:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/16 v6, 0x2000

    new-array v0, v6, [B

    :try_start_10
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v6}, Landroid/print/PrintFileDocumentAdapter;->-get1(Landroid/print/PrintFileDocumentAdapter;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1b} :catch_64
    .catchall {:try_start_10 .. :try_end_1b} :catchall_59

    :goto_1b
    :try_start_1b
    invoke-virtual {p0}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->isCancelled()Z
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1e} :catch_35
    .catchall {:try_start_1b .. :try_end_1e} :catchall_61

    move-result v6

    if-eqz v6, :cond_2a

    :cond_21
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v1, v2

    :goto_28
    const/4 v6, 0x0

    return-object v6

    :cond_2a
    :try_start_2a
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_21

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_35
    .catchall {:try_start_2a .. :try_end_34} :catchall_61

    goto :goto_1b

    :catch_35
    move-exception v3

    move-object v1, v2

    :goto_37
    :try_start_37
    const-string/jumbo v6, "PrintedFileDocAdapter"

    const-string/jumbo v7, "Error writing data!"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v6, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v7, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v7}, Landroid/print/PrintFileDocumentAdapter;->-get0(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v7

    const v8, 0x10406e1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_52
    .catchall {:try_start_37 .. :try_end_52} :catchall_59

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_28

    :catchall_59
    move-exception v6

    :goto_5a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    :catchall_61
    move-exception v6

    move-object v1, v2

    goto :goto_5a

    :catch_64
    move-exception v3

    goto :goto_37
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onCancelled(Ljava/lang/Void;)V

    return-void
.end method

.method protected onCancelled(Ljava/lang/Void;)V
    .registers 5

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    iget-object v1, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->this$0:Landroid/print/PrintFileDocumentAdapter;

    invoke-static {v1}, Landroid/print/PrintFileDocumentAdapter;->-get0(Landroid/print/PrintFileDocumentAdapter;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10406e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6

    iget-object v0, p0, Landroid/print/PrintFileDocumentAdapter$WriteFileAsyncTask;->mResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/print/PageRange;

    sget-object v2, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    return-void
.end method
