.class public Lmiui/maml/data/VariableBinder$TypedValue;
.super Ljava/lang/Object;
.source "VariableBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/VariableBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedValue"
.end annotation


# static fields
.field public static final BITMAP:I = 0x7

.field public static final DOUBLE:I = 0x6

.field public static final FLOAT:I = 0x5

.field public static final INT:I = 0x3

.field public static final LONG:I = 0x4

.field public static final NUM_ARR:I = 0x8

.field public static final STRING:I = 0x2

.field public static final STR_ARR:I = 0x9

.field public static final TYPE_BASE:I = 0x3e8


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:I

.field public mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "node is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lmiui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initInner(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    iput-object p2, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    iget-object v0, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmiui/maml/data/VariableBinder$TypedValue;->parseType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    return-void
.end method


# virtual methods
.method public isArray()Z
    .registers 4

    const/4 v0, 0x1

    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_d

    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isNumber()Z
    .registers 4

    const/4 v0, 0x0

    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_c

    iget v1, p0, Lmiui/maml/data/VariableBinder$TypedValue;->mType:I

    const/4 v2, 0x6

    if-gt v1, v2, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0
.end method

.method protected parseType(Ljava/lang/String;)I
    .registers 4

    const/4 v1, 0x6

    const-string/jumbo v0, "string"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x2

    return v0

    :cond_c
    const-string/jumbo v0, "double"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "number"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    return v1

    :cond_1f
    const-string/jumbo v0, "float"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x5

    return v0

    :cond_2a
    const-string/jumbo v0, "int"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    const-string/jumbo v0, "integer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    :cond_3c
    const/4 v0, 0x3

    return v0

    :cond_3e
    const-string/jumbo v0, "long"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const/4 v0, 0x4

    return v0

    :cond_49
    const-string/jumbo v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    const/4 v0, 0x7

    return v0

    :cond_54
    const-string/jumbo v0, "number[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/16 v0, 0x8

    return v0

    :cond_60
    const-string/jumbo v0, "string[]"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    const/16 v0, 0x9

    return v0

    :cond_6c
    return v1
.end method
