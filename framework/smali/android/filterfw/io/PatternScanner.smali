.class public Landroid/filterfw/io/PatternScanner;
.super Ljava/lang/Object;
.source "PatternScanner.java"


# instance fields
.field private mIgnorePattern:Ljava/util/regex/Pattern;

.field private mInput:Ljava/lang/String;

.field private mLineNo:I

.field private mOffset:I

.field private mStartOfLine:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    iput v0, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    iput-object p1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    iput-object p2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    iget-object v0, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v0}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    return-void
.end method


# virtual methods
.method public atEnd()Z
    .registers 3

    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0, p1}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0, p2}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    return-object v0
.end method

.method public lineNo()I
    .registers 2

    iget v0, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    return v0
.end method

.method public peek(Ljava/util/regex/Pattern;)Z
    .registers 5

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v1}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    :cond_9
    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    return v1
.end method

.method public skip(Ljava/util/regex/Pattern;)V
    .registers 5

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_26

    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    :cond_26
    return-void
.end method

.method public tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .registers 7

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    :cond_9
    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v3, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/filterfw/io/PatternScanner;->updateLineCount(II)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_3e
    if-eqz v1, :cond_49

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    if-eqz v2, :cond_49

    iget-object v2, p0, Landroid/filterfw/io/PatternScanner;->mIgnorePattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, v2}, Landroid/filterfw/io/PatternScanner;->skip(Ljava/util/regex/Pattern;)V

    :cond_49
    return-object v1
.end method

.method public unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    iget v3, p0, Landroid/filterfw/io/PatternScanner;->mOffset:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected token on line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' <- Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateLineCount(II)V
    .registers 6

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_1a

    iget-object v1, p0, Landroid/filterfw/io/PatternScanner;->mInput:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_17

    iget v1, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mLineNo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/filterfw/io/PatternScanner;->mStartOfLine:I

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1a
    return-void
.end method
