.class public Lcom/android/internal/alsa/AlsaCardsParser;
.super Ljava/lang/Object;
.source "AlsaCardsParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AlsaCardsParser"

.field private static final kCardsFilePath:Ljava/lang/String; = "/proc/asound/cards"

.field private static mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private mCardRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lcom/android/internal/alsa/LineTokenizer;
    .registers 1

    sget-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string/jumbo v1, " :[]"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/alsa/AlsaCardsParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private static LogDevices(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v4, "AlsaCardsParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ----------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->log(I)V

    move v2, v3

    goto :goto_1f

    :cond_32
    const-string/jumbo v4, "AlsaCardsParser"

    const-string/jumbo v5, "----------------"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static hasCardNumber(Ljava/util/ArrayList;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_4

    const/4 v2, 0x1

    return v2

    :cond_16
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public getCardRecordAt(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    return-object v0
.end method

.method public getCardRecordFor(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;
    .registers 5

    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_6

    return-object v0

    :cond_17
    const/4 v2, 0x0

    return-object v2
.end method

.method public getDefaultCard()I
    .registers 3

    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getDefaultUsbCard()I

    move-result v0

    if-gez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    if-lez v1, :cond_18

    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->getNumCardRecords()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/alsa/AlsaCardsParser;->getCardRecordAt(I)Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    move-result-object v1

    iget v0, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    :cond_18
    return v0
.end method

.method public getDefaultUsbCard()I
    .registers 6

    iget-object v1, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/alsa/AlsaCardsParser;->scan()V

    invoke-virtual {p0, v1}, Lcom/android/internal/alsa/AlsaCardsParser;->getNewCardRecords(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    iget-boolean v4, v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    if-eqz v4, :cond_d

    iget v4, v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    return v4

    :cond_20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    iget-boolean v4, v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    if-eqz v4, :cond_24

    iget v4, v2, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    return v4

    :cond_37
    const/4 v4, -0x1

    return v4
.end method

.method public getNewCardRecords(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    iget v3, v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    invoke-static {p1, v3}, Lcom/android/internal/alsa/AlsaCardsParser;->hasCardNumber(Ljava/util/ArrayList;I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_23
    return-object v0
.end method

.method public getNumCardRecords()I
    .registers 2

    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScanRecords()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCardUsb(I)Z
    .registers 5

    iget-object v2, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    iget v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mCardNum:I

    if-ne v2, p1, :cond_6

    iget-boolean v2, v0, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->mIsUsb:Z

    return v2

    :cond_19
    const/4 v2, 0x0

    return v2
.end method

.method public scan()V
    .registers 9

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/proc/asound/cards"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_f
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string/jumbo v5, ""

    :goto_1c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_31

    new-instance v1, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;

    invoke-direct {v1, p0}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;-><init>(Lcom/android/internal/alsa/AlsaCardsParser;)V

    const/4 v7, 0x0

    invoke-static {v1, v5, v7}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-wrap0(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_35

    :cond_31
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V

    :goto_34
    return-void

    :cond_35
    const/4 v7, 0x1

    invoke-static {v1, v5, v7}, Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;->-wrap0(Lcom/android/internal/alsa/AlsaCardsParser$AlsaCardRecord;Ljava/lang/String;I)Z

    iget-object v7, p0, Lcom/android/internal/alsa/AlsaCardsParser;->mCardRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_3e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3e} :catch_44

    goto :goto_1c

    :catch_3f
    move-exception v3

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_34

    :catch_44
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_34
.end method
