.class public Lcom/google/android/util/AbstractMessageParser$Html;
.super Lcom/google/android/util/AbstractMessageParser$Token;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Html"
.end annotation


# instance fields
.field private html:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-direct {p0, v0, p1}, Lcom/google/android/util/AbstractMessageParser$Token;-><init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    return-void
.end method

.method private static trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_14

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_5
    if-lez v0, :cond_16

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_16
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isHtml()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_9

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    goto :goto_8
.end method

.method public trimLeadingWhitespace()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimLeadingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    return-void
.end method

.method public trimTrailingWhitespace()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->text:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/util/AbstractMessageParser$Html;->trimTrailingWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Html;->html:Ljava/lang/String;

    return-void
.end method
