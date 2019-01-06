.class final Landroid/bluetooth/BluetoothOutputStream;
.super Ljava/io/OutputStream;
.source "BluetoothOutputStream.java"


# instance fields
.field private mSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v1, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    or-int v0, p2, p3

    if-ltz v0, :cond_13

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1c

    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "invalid offset or length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Landroid/bluetooth/BluetoothOutputStream;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothSocket;->write([BII)I

    return-void
.end method
