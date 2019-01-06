.class Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/MusicLyricParser$Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LyricLocator"
.end annotation


# instance fields
.field final CRLF_LENGTH:I

.field mFullLyric:Ljava/lang/String;

.field mLyricLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;",
            ">;"
        }
    .end annotation
.end field

.field mTimeArr:[I

.field final synthetic this$1:Lmiui/maml/elements/MusicLyricParser$Lyric;


# direct methods
.method constructor <init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$1:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    return-void
.end method

.method private getLineNumber(J)I
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2b

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    aget v1, v1, v0

    int-to-long v2, v1

    cmp-long v1, p1, v2

    if-ltz v1, :cond_28

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    int-to-long v2, v1

    :goto_1d
    cmp-long v1, p1, v2

    if-gez v1, :cond_28

    return v0

    :cond_22
    const-wide v2, 0x7fffffffffffffffL

    goto :goto_1d

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2b
    const/4 v1, -0x1

    return v1
.end method

.method private inflateLyricLines(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-eqz v4, :cond_8

    if-nez p1, :cond_d

    :cond_8
    iput-object v7, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    iput-object v7, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    return-void

    :cond_d
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v4, v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_8

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_1e
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v4, v4

    if-ge v0, v4, :cond_5a

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    new-instance v2, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->this$1:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {v2, v4}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;-><init>(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    iput-object v3, v2, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    if-lez v0, :cond_56

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    :goto_3e
    if-eqz v1, :cond_58

    iget v4, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v6, v1, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/2addr v4, v6

    iget v6, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v4, v6

    :goto_4c
    iput v4, v2, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_56
    const/4 v1, 0x0

    goto :goto_3e

    :cond_58
    move v4, v5

    goto :goto_4c

    :cond_5a
    const-string/jumbo v4, ""

    iput-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_60
    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_91

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v4, v4, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    :cond_91
    return-void
.end method


# virtual methods
.method getAfterLines(J)Ljava/lang/String;
    .registers 8

    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v2, :cond_6

    return-object v3

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    if-gez v1, :cond_f

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    return-object v2

    :cond_f
    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_37

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_37
    return-object v3
.end method

.method getBeforeLines(J)Ljava/lang/String;
    .registers 10

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v2, :cond_7

    return-object v3

    :cond_7
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    if-lez v1, :cond_21

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->CRLF_LENGTH:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_21
    return-object v3
.end method

.method getLastLine(J)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v2, :cond_6

    return-object v3

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    if-lez v1, :cond_28

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_28
    return-object v3
.end method

.method getLine(J)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v2, :cond_6

    return-object v3

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_27

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_27
    return-object v3
.end method

.method getNextLine(J)Ljava/lang/String;
    .registers 10

    const/4 v3, 0x0

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    if-nez v2, :cond_6

    return-object v3

    :cond_6
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->getLineNumber(J)I

    move-result v1

    const/4 v2, -0x1

    if-lt v1, v2, :cond_30

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_30

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mLyricLines:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;

    iget-object v2, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mFullLyric:Ljava/lang/String;

    iget v3, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget v4, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->pos:I

    iget-object v5, v0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLine;->lyric:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_30
    return-object v3
.end method

.method set([ILjava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->mTimeArr:[I

    invoke-direct {p0, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric$LyricLocator;->inflateLyricLines(Ljava/util/ArrayList;)V

    return-void
.end method
