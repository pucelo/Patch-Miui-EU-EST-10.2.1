.class public final Landroid/nfc/tech/NdefFormatable;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "NdefFormatable.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NFC"


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-direct {p0, p1, v0}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    return-void
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/NdefFormatable;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_9

    return-object v2

    :cond_9
    :try_start_9
    new-instance v1, Landroid/nfc/tech/NdefFormatable;

    invoke-direct {v1, p0}, Landroid/nfc/tech/NdefFormatable;-><init>(Landroid/nfc/Tag;)V
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

.method public format(Landroid/nfc/NdefMessage;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    return-void
.end method

.method format(Landroid/nfc/NdefMessage;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/tech/NdefFormatable;->checkConnected()V

    :try_start_3
    iget-object v4, p0, Landroid/nfc/tech/NdefFormatable;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    iget-object v4, p0, Landroid/nfc/tech/NdefFormatable;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v3

    sget-object v4, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-interface {v3, v2, v4}, Landroid/nfc/INfcTag;->formatNdef(I[B)I

    move-result v1

    sparse-switch v1, :sswitch_data_78

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string/jumbo v4, "NFC"

    const-string/jumbo v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :sswitch_28
    return-void

    :sswitch_29
    :try_start_29
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_2f
    new-instance v4, Landroid/nfc/FormatException;

    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    throw v4

    :sswitch_35
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-nez v4, :cond_41

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :cond_41
    if-eqz p1, :cond_5c

    invoke-interface {v3, v2, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v1

    sparse-switch v1, :sswitch_data_86

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_50
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_56
    new-instance v4, Landroid/nfc/FormatException;

    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    throw v4

    :cond_5c
    :sswitch_5c
    if-eqz p2, :cond_28

    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_94

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_6b
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_71
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_77} :catch_1e

    nop

    :sswitch_data_78
    .sparse-switch
        -0x8 -> :sswitch_2f
        -0x1 -> :sswitch_29
        0x0 -> :sswitch_35
    .end sparse-switch

    :sswitch_data_86
    .sparse-switch
        -0x8 -> :sswitch_56
        -0x1 -> :sswitch_50
        0x0 -> :sswitch_5c
    .end sparse-switch

    :sswitch_data_94
    .sparse-switch
        -0x8 -> :sswitch_71
        -0x1 -> :sswitch_6b
        0x0 -> :sswitch_28
    .end sparse-switch
.end method

.method public formatReadOnly(Landroid/nfc/NdefMessage;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/nfc/tech/NdefFormatable;->format(Landroid/nfc/NdefMessage;Z)V

    return-void
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
