.class public Lmiui/maml/util/TextFormatter;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/TextFormatter$ExpressioPara;,
        Lmiui/maml/util/TextFormatter$FormatPara;,
        Lmiui/maml/util/TextFormatter$StringVarPara;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextFormatter"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatExpression:Lmiui/maml/data/Expression;

.field private mIndexedFormatVar:Lmiui/maml/data/IndexedVariable;

.field private mIndexedTextVar:Lmiui/maml/data/IndexedVariable;

.field private mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

.field private mParasValue:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mTextExpression:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-direct {p0, p1, p2, v0, v1}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0, p2, p3}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/data/IndexedVariable;

    :cond_2e
    iput-object p3, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    const-string/jumbo v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_57

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-direct {v0, v1, p1, v2}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/data/IndexedVariable;

    :cond_57
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6e

    invoke-static {p1, p4}, Lmiui/maml/util/TextFormatter$FormatPara;->buildArray(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    if-eqz v0, :cond_6e

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    :cond_6e
    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V
    .registers 7

    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p5, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    iput-object p6, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    return-void
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/data/Expression;)V
    .registers 11

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    return-void
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;
    .registers 14

    new-instance v0, Lmiui/maml/util/TextFormatter;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, p5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    invoke-interface {p1, p6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    return-object v0
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/TextFormatter;
    .registers 10

    const-string/jumbo v0, "paras"

    invoke-static {p1, v0, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "params"

    invoke-static {p1, v0, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v4

    :cond_14
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v1, "text"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "format"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "textExp"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    const-string/jumbo v1, "formatExp"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    return-object v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormatExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mIndexedFormatVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 6

    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mTextExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_b
    invoke-virtual {p0}, Lmiui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4f

    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    if-eqz v3, :cond_2e

    const/4 v2, 0x0

    :goto_1a
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    array-length v3, v3

    if-ge v2, v3, :cond_2e

    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    iget-object v4, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lmiui/maml/util/TextFormatter$FormatPara;->evaluate()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2e
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    if-eqz v3, :cond_4f

    :try_start_32
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_37
    .catch Ljava/util/IllegalFormatException; {:try_start_32 .. :try_end_37} :catch_39

    move-result-object v3

    return-object v3

    :catch_39
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Format error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_4f
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mIndexedTextVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_5a
    iget-object v3, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    return-object v3
.end method

.method public hasFormat()Z
    .registers 2

    iget-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .registers 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    iput-object v1, p0, Lmiui/maml/util/TextFormatter;->mParas:[Lmiui/maml/util/TextFormatter$FormatPara;

    array-length v0, p1

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    if-nez v1, :cond_e

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    :cond_e
    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, v0, :cond_16

    iget-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    array-length v0, v1

    :cond_16
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lmiui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lmiui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    return-void
.end method
