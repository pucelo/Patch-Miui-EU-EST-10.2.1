.class Lmiui/maml/data/Expression$Tokenizer;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/Expression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tokenizer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/Expression$Tokenizer$Token;,
        Lmiui/maml/data/Expression$Tokenizer$TokenType;
    }
.end annotation


# static fields
.field private static final BRACKET_MODE_NONE:I = 0x0

.field private static final BRACKET_MODE_ROUND:I = 0x1

.field private static final BRACKET_MODE_SQUARE:I = 0x2


# instance fields
.field private mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

.field private mPos:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmiui/maml/data/Expression$OpeInfo$Parser;

    invoke-direct {v0}, Lmiui/maml/data/Expression$OpeInfo$Parser;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    iput-object p1, p0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/maml/data/Expression$Tokenizer;->reset()V

    return-void
.end method


# virtual methods
.method public getToken()Lmiui/maml/data/Expression$Tokenizer$Token;
    .registers 23

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v16, Lmiui/maml/data/Expression$Tokenizer$TokenType;->INVALID:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v12

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    :goto_15
    if-ge v10, v12, :cond_24c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-nez v6, :cond_fa

    const/16 v17, 0x23

    move/from16 v0, v17

    if-eq v8, v0, :cond_31

    const/16 v17, 0x40

    move/from16 v0, v17

    if-ne v8, v0, :cond_9e

    :cond_31
    add-int/lit8 v11, v10, 0x1

    :goto_33
    if-ge v11, v12, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Lmiui/maml/data/Expression;->-wrap4(C)Z

    move-result v17

    if-nez v17, :cond_70

    :cond_47
    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    if-ne v11, v0, :cond_73

    const-string/jumbo v17, "Expression"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "invalid variable name:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    return-object v17

    :cond_70
    add-int/lit8 v11, v11, 0x1

    goto :goto_33

    :cond_73
    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v18, Lmiui/maml/data/Expression$Tokenizer$Token;

    const/16 v17, 0x23

    move/from16 v0, v17

    if-ne v8, v0, :cond_9b

    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    :goto_81
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v18

    :cond_9b
    sget-object v17, Lmiui/maml/data/Expression$Tokenizer$TokenType;->VAR_STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto :goto_81

    :cond_9e
    const/16 v17, 0x27

    move/from16 v0, v17

    if-ne v8, v0, :cond_f3

    const/4 v15, 0x0

    add-int/lit8 v11, v10, 0x1

    :goto_a7
    if-ge v11, v12, :cond_bd

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-nez v15, :cond_e7

    const/16 v17, 0x27

    move/from16 v0, v17

    if-ne v9, v0, :cond_e7

    :cond_bd
    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->STR:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    add-int/lit8 v20, v10, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "\\\'"

    const-string/jumbo v21, "\'"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v17

    :cond_e7
    const/16 v17, 0x5c

    move/from16 v0, v17

    if-ne v9, v0, :cond_f1

    const/4 v15, 0x1

    :goto_ee
    add-int/lit8 v11, v11, 0x1

    goto :goto_a7

    :cond_f1
    const/4 v15, 0x0

    goto :goto_ee

    :cond_f3
    const/16 v17, 0x28

    move/from16 v0, v17

    if-ne v8, v0, :cond_10b

    const/4 v6, 0x1

    :cond_fa
    :goto_fa
    if-eqz v6, :cond_107

    if-nez v5, :cond_103

    packed-switch v6, :pswitch_data_272

    :goto_101
    add-int/lit8 v7, v10, 0x1

    :cond_103
    if-ne v8, v3, :cond_226

    add-int/lit8 v5, v5, 0x1

    :cond_107
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_15

    :cond_10b
    const/16 v17, 0x5b

    move/from16 v0, v17

    if-ne v8, v0, :cond_113

    const/4 v6, 0x2

    goto :goto_fa

    :cond_113
    invoke-static {v8}, Lmiui/maml/data/Expression;->-wrap1(C)Z

    move-result v17

    if-eqz v17, :cond_176

    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x30

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_147

    if-ge v11, v12, :cond_147

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x78

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_147

    add-int/lit8 v11, v11, 0x1

    :cond_147
    :goto_147
    if-ge v11, v12, :cond_15b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Lmiui/maml/data/Expression;->-wrap0(C)Z

    move-result v17

    if-nez v17, :cond_173

    :cond_15b
    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->NUM:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v17

    :cond_173
    add-int/lit8 v11, v11, 0x1

    goto :goto_147

    :cond_176
    invoke-static {v8}, Lmiui/maml/data/Expression;->-wrap3(C)Z

    move-result v17

    if-eqz v17, :cond_1ad

    add-int/lit8 v11, v10, 0x1

    :goto_17e
    if-ge v11, v12, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Lmiui/maml/data/Expression;->-wrap2(C)Z

    move-result v17

    if-nez v17, :cond_1aa

    :cond_192
    move-object/from16 v0, p0

    iput v11, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->FUN:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v17 .. v19}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v17

    :cond_1aa
    add-int/lit8 v11, v11, 0x1

    goto :goto_17e

    :cond_1ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v17

    if-eqz v17, :cond_fa

    add-int/lit8 v14, v10, 0x1

    :goto_1c1
    if-ge v14, v12, :cond_1dd

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Lmiui/maml/data/Expression$OpeInfo$Parser;->accept(CZ)Z

    move-result v17

    if-nez v17, :cond_213

    :cond_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mOpeParser:Lmiui/maml/data/Expression$OpeInfo$Parser;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmiui/maml/data/Expression$OpeInfo$Parser;->getMatch()Lmiui/maml/data/Expression$Ope;

    move-result-object v13

    sget-object v17, Lmiui/maml/data/Expression$Ope;->INVALID:Lmiui/maml/data/Expression$Ope;

    move-object/from16 v0, v17

    if-eq v13, v0, :cond_fa

    move-object/from16 v0, p0

    iput v14, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    sget-object v18, Lmiui/maml/data/Expression$Tokenizer$TokenType;->OPE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v13}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;Lmiui/maml/data/Expression$Ope;)V

    return-object v17

    :cond_213
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c1

    :pswitch_216
    const/16 v3, 0x28

    const/16 v4, 0x29

    sget-object v16, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_ROUND:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto/16 :goto_101

    :pswitch_21e
    const/16 v3, 0x5b

    const/16 v4, 0x5d

    sget-object v16, Lmiui/maml/data/Expression$Tokenizer$TokenType;->BRACKET_SQUARE:Lmiui/maml/data/Expression$Tokenizer$TokenType;

    goto/16 :goto_101

    :cond_226
    if-ne v8, v4, :cond_107

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_107

    add-int/lit8 v17, v10, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    new-instance v17, Lmiui/maml/data/Expression$Tokenizer$Token;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lmiui/maml/data/Expression$Tokenizer$Token;-><init>(Lmiui/maml/data/Expression$Tokenizer$TokenType;Ljava/lang/String;)V

    return-object v17

    :cond_24c
    if-eqz v5, :cond_26e

    const-string/jumbo v17, "Expression"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "mismatched bracket:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/Expression$Tokenizer;->mString:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26e
    const/16 v17, 0x0

    return-object v17

    nop

    :pswitch_data_272
    .packed-switch 0x1
        :pswitch_216
        :pswitch_21e
    .end packed-switch
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/data/Expression$Tokenizer;->mPos:I

    return-void
.end method
