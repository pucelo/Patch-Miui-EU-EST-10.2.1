.class public final Landroid/nfc/tech/NfcB;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NfcB.java"


# static fields
.field public static final EXTRA_APPDATA:Ljava/lang/String; = "appdata"

.field public static final EXTRA_PROTINFO:Ljava/lang/String; = "protinfo"


# instance fields
.field private mAppData:[B

.field private mProtInfo:[B


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "appdata"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcB;->mAppData:[B

    const-string/jumbo v1, "protinfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Landroid/nfc/tech/NfcB;->mProtInfo:[B

    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcB;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_9

    return-object v2

    :cond_9
    :try_start_9
    new-instance v1, Landroid/nfc/tech/NfcB;

    invoke-direct {v1, p0}, Landroid/nfc/tech/NfcB;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v0

    return-object v2
.end method


# virtual methods
.method public bridge synthetic close()V
    .registers 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->close()V

    return-void
.end method

.method public bridge synthetic connect()V
    .registers 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->connect()V

    return-void
.end method

.method public getApplicationData()[B
    .registers 2

    iget-object v0, p0, Landroid/nfc/tech/NfcB;->mAppData:[B

    return-object v0
.end method

.method public getMaxTransceiveLength()I
    .registers 2

    invoke-virtual {p0}, Landroid/nfc/tech/NfcB;->getMaxTransceiveLengthInternal()I

    move-result v0

    return v0
.end method

.method public getProtocolInfo()[B
    .registers 2

    iget-object v0, p0, Landroid/nfc/tech/NfcB;->mProtInfo:[B

    return-object v0
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic reconnect()V
    .registers 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public transceive([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NfcB;->transceive([BZ)[B

    move-result-object v0

    return-object v0
.end method
