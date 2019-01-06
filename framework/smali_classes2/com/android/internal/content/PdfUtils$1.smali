.class final Lcom/android/internal/content/PdfUtils$1;
.super Landroid/os/AsyncTask;
.source "PdfUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/content/PdfUtils;->openPdfThumbnail(Ljava/io/File;Landroid/graphics/Point;)Landroid/content/res/AssetFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fds:[Landroid/os/ParcelFileDescriptor;

.field final synthetic val$in:Ljava/io/ByteArrayInputStream;

.field final synthetic val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method constructor <init>([Landroid/os/ParcelFileDescriptor;Ljava/io/ByteArrayInputStream;Landroid/os/ParcelFileDescriptor;)V
    .registers 4

    iput-object p1, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/android/internal/content/PdfUtils$1;->val$in:Ljava/io/ByteArrayInputStream;

    iput-object p3, p0, Lcom/android/internal/content/PdfUtils$1;->val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    const/4 v3, 0x1

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v2, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_e
    iget-object v2, p0, Lcom/android/internal/content/PdfUtils$1;->val$in:Ljava/io/ByteArrayInputStream;

    invoke-static {v2, v1}, Llibcore/io/Streams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_21

    iget-object v2, p0, Lcom/android/internal/content/PdfUtils$1;->val$fds:[Landroid/os/ParcelFileDescriptor;

    aget-object v2, v2, v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :try_start_1a
    iget-object v2, p0, Lcom/android/internal/content/PdfUtils$1;->val$pdfDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_28

    const/4 v2, 0x0

    return-object v2

    :catch_21
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_28
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
