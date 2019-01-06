.class public Lmiui/maml/data/Expression$OpeInfo$Parser;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression$OpeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# instance fields
.field private mFlags:[I

.field private mMatch:I

.field private mStep:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->-get0()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    return-void
.end method


# virtual methods
.method public accept(CZ)Z
    .registers 11

    const/4 v7, 0x0

    const/4 v6, -0x1

    if-eqz p2, :cond_16

    const/4 v1, 0x0

    :goto_5
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->-get0()I

    move-result v4

    if-ge v1, v4, :cond_12

    iget-object v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    iput v7, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    iput v6, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    :cond_16
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_18
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->-get0()I

    move-result v4

    if-ge v1, v4, :cond_59

    iget-object v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aget v4, v4, v1

    if-ne v4, v6, :cond_27

    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_27
    invoke-static {}, Lmiui/maml/data/Expression$OpeInfo;->-get1()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    if-le v4, v5, :cond_54

    iget v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_54

    iget v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_52

    const/4 v0, 0x1

    :goto_48
    iget-object v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v7, v4, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_24

    iput v1, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    goto :goto_24

    :cond_52
    const/4 v0, 0x0

    goto :goto_48

    :cond_54
    iget-object v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mFlags:[I

    aput v6, v4, v1

    goto :goto_24

    :cond_59
    if-eqz v2, :cond_61

    iget v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mStep:I

    :cond_61
    return v2
.end method

.method public getMatch()Lmiui/maml/data/Expression$Ope;
    .registers 3

    iget v0, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    sget-object v0, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lmiui/maml/data/Expression$Ope;->values()[Lmiui/maml/data/Expression$Ope;

    move-result-object v0

    iget v1, p0, Lmiui/maml/data/Expression$OpeInfo$Parser;->mMatch:I

    aget-object v0, v0, v1

    goto :goto_7
.end method
