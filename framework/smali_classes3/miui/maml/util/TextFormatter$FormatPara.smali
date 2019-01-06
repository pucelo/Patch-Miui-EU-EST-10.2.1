.class abstract Lmiui/maml/util/TextFormatter$FormatPara;
.super Ljava/lang/Object;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FormatPara"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/util/TextFormatter$FormatPara;)V
    .registers 2

    invoke-direct {p0}, Lmiui/maml/util/TextFormatter$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;
    .registers 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Lmiui/maml/util/TextFormatter$StringVarPara;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lmiui/maml/util/TextFormatter$StringVarPara;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;)V

    return-object v2

    :cond_19
    invoke-static {p0, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v1

    if-nez v1, :cond_3a

    const-string/jumbo v2, "TextFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "invalid parameter expression:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_3a
    new-instance v2, Lmiui/maml/util/TextFormatter$ExpressioPara;

    invoke-direct {v2, v1}, Lmiui/maml/util/TextFormatter$ExpressioPara;-><init>(Lmiui/maml/data/Expression;)V

    return-object v2
.end method

.method public static buildArray(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/util/TextFormatter$FormatPara;
    .registers 11

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v3, v7, :cond_39

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-nez v0, :cond_29

    const/16 v7, 0x2c

    if-ne v1, v7, :cond_29

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/util/TextFormatter$FormatPara;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v4

    if-nez v4, :cond_24

    return-object v8

    :cond_24
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v3, 0x1

    :cond_29
    const/16 v7, 0x28

    if-ne v1, v7, :cond_32

    add-int/lit8 v0, v0, 0x1

    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_32
    const/16 v7, 0x29

    if-ne v1, v7, :cond_2f

    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    :cond_39
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lmiui/maml/util/TextFormatter$FormatPara;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/util/TextFormatter$FormatPara;

    move-result-object v4

    if-nez v4, :cond_44

    return-object v8

    :cond_44
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Lmiui/maml/util/TextFormatter$FormatPara;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lmiui/maml/util/TextFormatter$FormatPara;

    return-object v7
.end method


# virtual methods
.method public abstract evaluate()Ljava/lang/Object;
.end method
