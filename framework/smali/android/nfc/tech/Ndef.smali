.class public final Landroid/nfc/tech/Ndef;
.super Landroid/nfc/tech/BasicTagTechnology;
.source "Ndef.java"


# static fields
.field public static final EXTRA_NDEF_CARDSTATE:Ljava/lang/String; = "ndefcardstate"

.field public static final EXTRA_NDEF_MAXLENGTH:Ljava/lang/String; = "ndefmaxlength"

.field public static final EXTRA_NDEF_MSG:Ljava/lang/String; = "ndefmsg"

.field public static final EXTRA_NDEF_TYPE:Ljava/lang/String; = "ndeftype"

.field public static final ICODE_SLI:Ljava/lang/String; = "com.nxp.ndef.icodesli"

.field public static final MIFARE_CLASSIC:Ljava/lang/String; = "com.nxp.ndef.mifareclassic"

.field public static final NDEF_MODE_READ_ONLY:I = 0x1

.field public static final NDEF_MODE_READ_WRITE:I = 0x2

.field public static final NDEF_MODE_UNKNOWN:I = 0x3

.field public static final NFC_FORUM_TYPE_1:Ljava/lang/String; = "org.nfcforum.ndef.type1"

.field public static final NFC_FORUM_TYPE_2:Ljava/lang/String; = "org.nfcforum.ndef.type2"

.field public static final NFC_FORUM_TYPE_3:Ljava/lang/String; = "org.nfcforum.ndef.type3"

.field public static final NFC_FORUM_TYPE_4:Ljava/lang/String; = "org.nfcforum.ndef.type4"

.field private static final TAG:Ljava/lang/String; = "NFC"

.field public static final TYPE_1:I = 0x1

.field public static final TYPE_2:I = 0x2

.field public static final TYPE_3:I = 0x3

.field public static final TYPE_4:I = 0x4

.field public static final TYPE_ICODE_SLI:I = 0x66

.field public static final TYPE_MIFARE_CLASSIC:I = 0x65

.field public static final TYPE_OTHER:I = -0x1

.field public static final UNKNOWN:Ljava/lang/String; = "android.ndef.unknown"


# instance fields
.field private final mCardState:I

.field private final mMaxNdefSize:I

.field private final mNdefMsg:Landroid/nfc/NdefMessage;

.field private final mNdefType:I


# direct methods
.method public constructor <init>(Landroid/nfc/Tag;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x6

    invoke-direct {p0, p1, v1}, Landroid/nfc/tech/BasicTagTechnology;-><init>(Landroid/nfc/Tag;I)V

    invoke-virtual {p1, v1}, Landroid/nfc/Tag;->getTechExtras(I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_31

    const-string/jumbo v1, "ndefmaxlength"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    const-string/jumbo v1, "ndefcardstate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const-string/jumbo v1, "ndefmsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/nfc/NdefMessage;

    iput-object v1, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    const-string/jumbo v1, "ndeftype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    return-void

    :cond_31
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "NDEF tech extras are null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/nfc/Tag;->hasTech(I)Z

    move-result v1

    if-nez v1, :cond_9

    return-object v2

    :cond_9
    :try_start_9
    new-instance v1, Landroid/nfc/tech/Ndef;

    invoke-direct {v1, p0}, Landroid/nfc/tech/Ndef;-><init>(Landroid/nfc/Tag;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    return-object v1

    :catch_f
    move-exception v0

    return-object v2
.end method


# virtual methods
.method public canMakeReadOnly()Z
    .registers 6

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v2}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v1

    if-nez v1, :cond_a

    return v4

    :cond_a
    :try_start_a
    iget v2, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    invoke-interface {v1, v2}, Landroid/nfc/INfcTag;->canMakeReadOnly(I)Z
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v2

    return v2

    :catch_11
    move-exception v0

    const-string/jumbo v2, "NFC"

    const-string/jumbo v3, "NFC service dead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

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

.method public getCachedNdefMessage()Landroid/nfc/NdefMessage;
    .registers 2

    iget-object v0, p0, Landroid/nfc/tech/Ndef;->mNdefMsg:Landroid/nfc/NdefMessage;

    return-object v0
.end method

.method public getMaxSize()I
    .registers 2

    iget v0, p0, Landroid/nfc/tech/Ndef;->mMaxNdefSize:I

    return v0
.end method

.method public getNdefMessage()Landroid/nfc/NdefMessage;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    :try_start_4
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v3

    if-nez v3, :cond_20

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Mock tags don\'t support this operation."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    const-string/jumbo v4, "NFC"

    const-string/jumbo v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :cond_20
    :try_start_20
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->ndefRead(I)Landroid/nfc/NdefMessage;

    move-result-object v1

    if-nez v1, :cond_40

    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_40

    new-instance v4, Landroid/nfc/TagLostException;

    invoke-direct {v4}, Landroid/nfc/TagLostException;-><init>()V

    throw v4

    :cond_40
    return-object v1

    :cond_41
    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isPresent(I)Z

    move-result v4

    if-nez v4, :cond_4d

    new-instance v4, Landroid/nfc/TagLostException;

    invoke-direct {v4}, Landroid/nfc/TagLostException;-><init>()V

    throw v4
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_4d} :catch_15

    :cond_4d
    return-object v6
.end method

.method public bridge synthetic getTag()Landroid/nfc/Tag;
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->getTag()Landroid/nfc/Tag;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget v0, p0, Landroid/nfc/tech/Ndef;->mNdefType:I

    sparse-switch v0, :sswitch_data_22

    const-string/jumbo v0, "android.ndef.unknown"

    return-object v0

    :sswitch_9
    const-string/jumbo v0, "org.nfcforum.ndef.type1"

    return-object v0

    :sswitch_d
    const-string/jumbo v0, "org.nfcforum.ndef.type2"

    return-object v0

    :sswitch_11
    const-string/jumbo v0, "org.nfcforum.ndef.type3"

    return-object v0

    :sswitch_15
    const-string/jumbo v0, "org.nfcforum.ndef.type4"

    return-object v0

    :sswitch_19
    const-string/jumbo v0, "com.nxp.ndef.mifareclassic"

    return-object v0

    :sswitch_1d
    const-string/jumbo v0, "com.nxp.ndef.icodesli"

    return-object v0

    nop

    :sswitch_data_22
    .sparse-switch
        0x1 -> :sswitch_9
        0x2 -> :sswitch_d
        0x3 -> :sswitch_11
        0x4 -> :sswitch_15
        0x65 -> :sswitch_19
        0x66 -> :sswitch_1d
    .end sparse-switch
.end method

.method public bridge synthetic isConnected()Z
    .registers 2

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isWritable()Z
    .registers 3

    iget v0, p0, Landroid/nfc/tech/Ndef;->mCardState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public makeReadOnly()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    :try_start_4
    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v2

    if-nez v2, :cond_d

    return v5

    :cond_d
    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v3

    if-eqz v3, :cond_40

    iget-object v3, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v3}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->ndefMakeReadOnly(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_4a

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    const-string/jumbo v3, "NFC"

    const-string/jumbo v4, "NFC service dead"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :sswitch_37
    const/4 v3, 0x1

    return v3

    :sswitch_39
    :try_start_39
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    :sswitch_3f
    return v5

    :cond_40
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Tag is not ndef"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_49} :catch_2c

    nop

    :sswitch_data_4a
    .sparse-switch
        -0x8 -> :sswitch_3f
        -0x1 -> :sswitch_39
        0x0 -> :sswitch_37
    .end sparse-switch
.end method

.method public bridge synthetic reconnect()V
    .registers 1

    invoke-super {p0}, Landroid/nfc/tech/BasicTagTechnology;->reconnect()V

    return-void
.end method

.method public writeNdefMessage(Landroid/nfc/NdefMessage;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/nfc/FormatException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->checkConnected()V

    :try_start_3
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getTagService()Landroid/nfc/INfcTag;

    move-result-object v3

    if-nez v3, :cond_1f

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Mock tags don\'t support this operation."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_14

    :catch_14
    move-exception v0

    const-string/jumbo v4, "NFC"

    const-string/jumbo v5, "NFC service dead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :sswitch_1e
    return-void

    :cond_1f
    :try_start_1f
    iget-object v4, p0, Landroid/nfc/tech/Ndef;->mTag:Landroid/nfc/Tag;

    invoke-virtual {v4}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v2

    invoke-interface {v3, v2}, Landroid/nfc/INfcTag;->isNdef(I)Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3, v2, p1}, Landroid/nfc/INfcTag;->ndefWrite(ILandroid/nfc/NdefMessage;)I

    move-result v1

    sparse-switch v1, :sswitch_data_4e

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_38
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    :sswitch_3e
    new-instance v4, Landroid/nfc/FormatException;

    invoke-direct {v4}, Landroid/nfc/FormatException;-><init>()V

    throw v4

    :cond_44
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Tag is not ndef"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4d} :catch_14

    nop

    :sswitch_data_4e
    .sparse-switch
        -0x8 -> :sswitch_3e
        -0x1 -> :sswitch_38
        0x0 -> :sswitch_1e
    .end sparse-switch
.end method
