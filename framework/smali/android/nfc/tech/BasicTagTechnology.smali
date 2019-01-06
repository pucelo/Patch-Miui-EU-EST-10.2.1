.class abstract Landroid/nfc/tech/BasicTagTechnology;
.super Ljava/lang/Object;
.source "BasicTagTechnology.java"

# interfaces
.implements Landroid/nfc/tech/TagTechnology;


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# instance fields
.field mIsConnected:Z

.field mSelectedTechnology:I

.field final mTag:Landroid/nfc/Tag;


# direct methods
.method constructor <init>(Landroid/nfc/Tag;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    iput p2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    return-void
.end method


# virtual methods
.method checkConnected()V
    .registers 3

    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    iget v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Call connect() first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    return-void
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    invoke-interface {v1}, Landroid/nfc/INfcTag;->resetTimeouts()V

    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->reconnect(I)I
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_19} :catch_21
    .catchall {:try_start_1 .. :try_end_19} :catchall_33

    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    :goto_20
    return-void

    :catch_21
    move-exception v0

    :try_start_22
    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_33

    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    goto :goto_20

    :catchall_33
    move-exception v1

    iput-boolean v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    throw v1
.end method

.method public connect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    iget v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-interface {v2, v3, v4}, Landroid/nfc/INfcTag;->connect(II)I

    move-result v1

    if-nez v1, :cond_1f

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    iget v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-virtual {v2, v3}, Landroid/nfc/Tag;->setConnectedTechnology(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    return-void

    :cond_1f
    const/16 v2, -0x15

    if-ne v1, v2, :cond_3f

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Connecting to this technology is not supported by the NFC adapter."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3f
    :try_start_3f
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_45} :catch_2c
.end method

.method getMaxTransceiveLengthInternal()I
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mSelectedTechnology:I

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->getMaxTransceiveLength(I)I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    return v1

    :catch_d
    move-exception v0

    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public getTag()Landroid/nfc/Tag;
    .registers 2

    iget-object v0, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    return-object v0
.end method

.method public isConnected()Z
    .registers 5

    const/4 v3, 0x0

    iget-boolean v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-nez v1, :cond_6

    return v3

    :cond_6
    :try_start_6
    iget-object v1, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v1}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_17

    move-result v1

    return v1

    :catch_17
    move-exception v0

    const-string/jumbo v1, "NFC"

    const-string/jumbo v2, "NFC service dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method public reconnect()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Technology not connected yet"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_e
    :try_start_e
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->reconnect(I)I

    move-result v1

    if-eqz v1, :cond_48

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2e} :catch_2e

    :catch_2e
    move-exception v0

    iput-boolean v4, p0, Landroid/nfc/tech/BasicTagTechnology;->mIsConnected:Z

    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->setTechnologyDisconnected()V

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_48
    return-void
.end method

.method transceive([BZ)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/tech/BasicTagTechnology;->checkConnected()V

    :try_start_3
    iget-object v2, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    iget-object v3, p0, Landroid/nfc/tech/BasicTagTechnology;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcTag;->transceive(I[BZ)Landroid/nfc/TransceiveResult;

    move-result-object v1

    if-nez v1, :cond_31

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "transceive failed"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "NFC service died"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/nfc/TransceiveResult;->getResponseOrThrow()[B
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_1e

    move-result-object v2

    return-object v2
.end method
