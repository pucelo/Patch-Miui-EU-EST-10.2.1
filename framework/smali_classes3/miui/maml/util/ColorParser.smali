.class public Lmiui/maml/util/ColorParser;
.super Ljava/lang/Object;
.source "ColorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/ColorParser$ExpressionType;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-util-ColorParser$ExpressionTypeSwitchesValues:[I = null

.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final LOG_TAG:Ljava/lang/String; = "ColorParser"


# instance fields
.field private mColor:I

.field private mColorExpression:Ljava/lang/String;

.field private mCurColorString:Ljava/lang/String;

.field private mIndexedColorVar:Lmiui/maml/data/IndexedVariable;

.field private mRGBExpression:[Lmiui/maml/data/Expression;

.field private mType:Lmiui/maml/util/ColorParser$ExpressionType;


# direct methods
.method private static synthetic -getmiui-maml-util-ColorParser$ExpressionTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Lmiui/maml/util/ColorParser;->-miui-maml-util-ColorParser$ExpressionTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Lmiui/maml/util/ColorParser;->-miui-maml-util-ColorParser$ExpressionTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Lmiui/maml/util/ColorParser$ExpressionType;->values()[Lmiui/maml/util/ColorParser$ExpressionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v1}, Lmiui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->CONST:Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v1}, Lmiui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v1}, Lmiui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v1}, Lmiui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Lmiui/maml/util/ColorParser;->-miui-maml-util-ColorParser$ExpressionTypeSwitchesValues:[I

    return-object v0

    :catch_35
    move-exception v1

    goto :goto_32

    :catch_37
    move-exception v1

    goto :goto_29

    :catch_39
    move-exception v1

    goto :goto_20

    :catch_3b
    move-exception v1

    goto :goto_17
.end method

.method public constructor <init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V
    .registers 7

    const/high16 v3, -0x1000000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lmiui/maml/util/ColorParser;->mColor:I

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->CONST:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    :try_start_1c
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lmiui/maml/util/ColorParser;->mColor:I
    :try_end_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    iput v3, p0, Lmiui/maml/util/ColorParser;->mColor:I

    goto :goto_24

    :cond_29
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    new-instance v1, Lmiui/maml/data/IndexedVariable;

    iget-object v2, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mIndexedColorVar:Lmiui/maml/data/IndexedVariable;

    goto :goto_24

    :cond_48
    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string/jumbo v2, "argb("

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_93

    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->ARGB:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    iget-object v2, p0, Lmiui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v1

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    array-length v1, v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_24

    const-string/jumbo v1, "ColorParser"

    const-string/jumbo v2, "bad expression format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "bad expression format."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_93
    sget-object v1, Lmiui/maml/util/ColorParser$ExpressionType;->INVALID:Lmiui/maml/util/ColorParser$ExpressionType;

    iput-object v1, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    goto :goto_24
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;)Lmiui/maml/util/ColorParser;
    .registers 4

    new-instance v0, Lmiui/maml/util/ColorParser;

    const-string/jumbo v1, "color"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;
    .registers 6

    new-instance v0, Lmiui/maml/util/ColorParser;

    invoke-static {p1, p2, p3}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;
    .registers 5

    new-instance v0, Lmiui/maml/util/ColorParser;

    const-string/jumbo v1, "color"

    invoke-static {p1, v1, p2}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lmiui/maml/util/ColorParser;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .registers 9

    const/high16 v5, -0x1000000

    invoke-static {}, Lmiui/maml/util/ColorParser;->-getmiui-maml-util-ColorParser$ExpressionTypeSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lmiui/maml/util/ColorParser;->mType:Lmiui/maml/util/ColorParser$ExpressionType;

    invoke-virtual {v7}, Lmiui/maml/util/ColorParser$ExpressionType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_5e

    iput v5, p0, Lmiui/maml/util/ColorParser;->mColor:I

    :cond_13
    :goto_13
    :pswitch_13
    iget v5, p0, Lmiui/maml/util/ColorParser;->mColor:I

    return v5

    :pswitch_16
    iget-object v6, p0, Lmiui/maml/util/ColorParser;->mIndexedColorVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v6}, Lmiui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Lmiui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    invoke-static {v2, v6}, Lmiui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    if-eqz v2, :cond_2a

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    :cond_2a
    iput v5, p0, Lmiui/maml/util/ColorParser;->mColor:I

    iput-object v2, p0, Lmiui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    goto :goto_13

    :pswitch_2f
    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v0, v6

    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v4, v6

    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v3, v6

    iget-object v5, p0, Lmiui/maml/util/ColorParser;->mRGBExpression:[Lmiui/maml/data/Expression;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v1, v6

    invoke-static {v0, v4, v3, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    iput v5, p0, Lmiui/maml/util/ColorParser;->mColor:I

    goto :goto_13

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method
