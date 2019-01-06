.class public final Landroid/telecom/Connection$RttTextStream;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RttTextStream"
.end annotation


# static fields
.field private static final READ_BUFFER_SIZE:I = 0x3e8


# instance fields
.field private final mFdFromInCall:Landroid/os/ParcelFileDescriptor;

.field private final mFdToInCall:Landroid/os/ParcelFileDescriptor;

.field private final mPipeFromInCall:Ljava/io/InputStreamReader;

.field private final mPipeToInCall:Ljava/io/OutputStreamWriter;

.field private mReadBuffer:[C


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mReadBuffer:[C

    iput-object p2, p0, Landroid/telecom/Connection$RttTextStream;->mFdFromInCall:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Landroid/telecom/Connection$RttTextStream;->mFdToInCall:Landroid/os/ParcelFileDescriptor;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeFromInCall:Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeToInCall:Ljava/io/OutputStreamWriter;

    return-void
.end method


# virtual methods
.method public getFdFromInCall()Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mFdFromInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public getFdToInCall()Landroid/os/ParcelFileDescriptor;
    .registers 2

    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mFdToInCall:Landroid/os/ParcelFileDescriptor;

    return-object v0
.end method

.method public read()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/telecom/Connection$RttTextStream;->mPipeFromInCall:Ljava/io/InputStreamReader;

    iget-object v2, p0, Landroid/telecom/Connection$RttTextStream;->mReadBuffer:[C

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v1, 0x0

    return-object v1

    :cond_f
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/telecom/Connection$RttTextStream;->mReadBuffer:[C

    invoke-direct {v1, v2, v4, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1
.end method

.method public readImmediately()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeFromInCall:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->ready()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/telecom/Connection$RttTextStream;->read()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d
    const/4 v0, 0x0

    return-object v0
.end method

.method public write(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeToInCall:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telecom/Connection$RttTextStream;->mPipeToInCall:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    return-void
.end method
