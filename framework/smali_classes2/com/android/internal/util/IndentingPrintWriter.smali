.class public Lcom/android/internal/util/IndentingPrintWriter;
.super Ljava/io/PrintWriter;
.source "IndentingPrintWriter.java"


# instance fields
.field private mCurrentIndent:[C

.field private mCurrentLength:I

.field private mEmptyLine:Z

.field private mIndentBuilder:Ljava/lang/StringBuilder;

.field private mSingleChar:[C

.field private final mSingleIndent:Ljava/lang/String;

.field private final mWrapLength:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/lang/String;I)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    iput-object p2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    return-void
.end method

.method private maybeWriteIndent()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-eqz v0, :cond_27

    iput-boolean v2, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    :cond_1f
    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    array-length v1, v1

    invoke-super {p0, v0, v2, v1}, Ljava/io/PrintWriter;->write([CII)V

    :cond_27
    return-void
.end method


# virtual methods
.method public decreaseIndent()V
    .registers 4

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    return-void
.end method

.method public increaseIndent()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentIndent:[C

    return-void
.end method

.method public printHexPair(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printPair(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public printPair(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public println()V
    .registers 2

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->write(I)V

    return-void
.end method

.method public write(I)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    int-to-char v1, p1

    aput-char v1, v0, v2

    iget-object v0, p0, Lcom/android/internal/util/IndentingPrintWriter;->mSingleChar:[C

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .registers 7

    const/4 v2, 0x0

    new-array v0, p3, [C

    sub-int v1, p3, p2

    invoke-virtual {p1, p2, v1, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    invoke-virtual {p0, v0, v2, p3}, Lcom/android/internal/util/IndentingPrintWriter;->write([CII)V

    return-void
.end method

.method public write([CII)V
    .registers 15

    const/16 v10, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mIndentBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int v0, p2, p3

    move v5, p2

    move v3, p2

    move v4, v3

    :goto_f
    if-ge v4, v0, :cond_55

    add-int/lit8 v3, v4, 0x1

    aget-char v1, p1, v4

    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    if-ne v1, v10, :cond_2a

    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v6, v3, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    move v5, v3

    iput-boolean v9, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    iput v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    :cond_2a
    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    if-lez v6, :cond_42

    iget v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    iget v7, p0, Lcom/android/internal/util/IndentingPrintWriter;->mWrapLength:I

    sub-int/2addr v7, v2

    if-lt v6, v7, :cond_42

    iget-boolean v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    if-nez v6, :cond_44

    invoke-super {p0, v10}, Ljava/io/PrintWriter;->write(I)V

    iput-boolean v9, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    sub-int v6, v3, v5

    iput v6, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    :cond_42
    :goto_42
    move v4, v3

    goto :goto_f

    :cond_44
    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v6, v3, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    invoke-super {p0, v10}, Ljava/io/PrintWriter;->write(I)V

    iput-boolean v9, p0, Lcom/android/internal/util/IndentingPrintWriter;->mEmptyLine:Z

    move v5, v3

    iput v8, p0, Lcom/android/internal/util/IndentingPrintWriter;->mCurrentLength:I

    goto :goto_42

    :cond_55
    if-eq v5, v4, :cond_5f

    invoke-direct {p0}, Lcom/android/internal/util/IndentingPrintWriter;->maybeWriteIndent()V

    sub-int v6, v4, v5

    invoke-super {p0, p1, v5, v6}, Ljava/io/PrintWriter;->write([CII)V

    :cond_5f
    return-void
.end method
