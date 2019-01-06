.class Landroid/widget/SpellChecker$SpellParser;
.super Ljava/lang/Object;
.source "SpellChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SpellChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpellParser"
.end annotation


# instance fields
.field private mRange:Ljava/lang/Object;

.field final synthetic this$0:Landroid/widget/SpellChecker;


# direct methods
.method private constructor <init>(Landroid/widget/SpellChecker;)V
    .registers 3

    iput-object p1, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$SpellParser;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;)V

    return-void
.end method

.method private removeRangeSpan(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method private removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Editable;",
            "I[TT;)V"
        }
    .end annotation

    array-length v2, p3

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_19

    aget-object v3, p3, v1

    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-le v4, p2, :cond_f

    :cond_c
    :goto_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    invoke-interface {p1, v3}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-lt v0, p2, :cond_c

    invoke-interface {p1, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_c

    :cond_19
    return-void
.end method

.method private setRangeSpan(Landroid/text/Editable;II)V
    .registers 6

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    const/16 v1, 0x21

    invoke-interface {p1, v0, p2, p3, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method


# virtual methods
.method public isFinished()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_17

    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    move v0, v1

    goto :goto_16
.end method

.method public parse()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Editable;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get2(Landroid/widget/SpellChecker;)Z

    move-result v22

    if-eqz v22, :cond_b3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    add-int/lit8 v22, v22, -0x32

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    :goto_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x15e

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_a5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v21

    :cond_a5
    :goto_a5
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-ne v0, v1, :cond_d4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void

    :cond_b3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->mRange:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    goto/16 :goto_34

    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v19

    goto :goto_a5

    :cond_d4
    add-int/lit8 v22, v16, -0x1

    add-int/lit8 v23, v6, 0x1

    const-class v24, Landroid/text/style/SpellCheckSpan;

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/text/style/SpellCheckSpan;

    add-int/lit8 v22, v16, -0x1

    add-int/lit8 v23, v6, 0x1

    const-class v24, Landroid/text/style/SuggestionSpan;

    move/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v5, v0, v1, v2}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Landroid/text/style/SuggestionSpan;

    const/16 v18, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get2(Landroid/widget/SpellChecker;)Z

    move-result v22

    if-eqz v22, :cond_1fe

    move/from16 v0, v20

    if-ge v0, v6, :cond_10c

    const/4 v9, 0x1

    :cond_10c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v12

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_146

    const/4 v3, 0x1

    :goto_125
    if-eqz v3, :cond_13e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/text/method/WordIterator;->getEnd(I)I

    move-result v12

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v12, v0, :cond_148

    const/4 v3, 0x1

    :cond_13e
    :goto_13e
    if-nez v3, :cond_14a

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void

    :cond_146
    const/4 v3, 0x0

    goto :goto_125

    :cond_148
    const/4 v3, 0x0

    goto :goto_13e

    :cond_14a
    move/from16 v15, v21

    const/4 v4, 0x1

    const/4 v7, 0x0

    :goto_14e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get3(Landroid/widget/SpellChecker;)I

    move-result v22

    move/from16 v0, v22

    if-ge v7, v0, :cond_190

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get4(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;

    move-result-object v22

    aget-object v13, v22, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get1(Landroid/widget/SpellChecker;)[I

    move-result-object v22

    aget v22, v22, v7

    if-ltz v22, :cond_17c

    invoke-virtual {v13}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v22

    if-eqz v22, :cond_17f

    :cond_17c
    :goto_17c
    add-int/lit8 v7, v7, 0x1

    goto :goto_14e

    :cond_17f
    invoke-interface {v5, v13}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v5, v13}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    if-lt v10, v15, :cond_17c

    if-lt v12, v11, :cond_17c

    if-gt v11, v15, :cond_1b5

    if-gt v12, v10, :cond_1b5

    const/4 v4, 0x0

    :cond_190
    move/from16 v0, v16

    if-ge v12, v0, :cond_1c1

    :cond_194
    :goto_194
    move/from16 v21, v12

    :cond_196
    :goto_196
    if-eqz v9, :cond_30c

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_30c

    move/from16 v0, v21

    if-gt v0, v6, :cond_30c

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v5, v1, v6}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    :goto_1ab
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-wrap1(Landroid/widget/SpellChecker;)V

    return-void

    :cond_1b5
    invoke-interface {v5, v13}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_17c

    :cond_1c1
    if-gt v12, v15, :cond_1f0

    invoke-static {}, Landroid/widget/SpellChecker;->-get0()Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Trying to spellcheck invalid region, from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " to "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_194

    :cond_1f0
    if-eqz v4, :cond_194

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v5, v15, v12}, Landroid/widget/SpellChecker;->-wrap0(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    goto :goto_194

    :cond_1fe
    move/from16 v0, v21

    if-gt v0, v6, :cond_196

    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_28f

    move/from16 v0, v19

    move/from16 v1, v21

    if-le v0, v1, :cond_28f

    const/16 v22, 0x32

    move/from16 v0, v18

    move/from16 v1, v22

    if-lt v0, v1, :cond_219

    const/4 v9, 0x1

    goto/16 :goto_196

    :cond_219
    move/from16 v0, v21

    move/from16 v1, v16

    if-ge v0, v1, :cond_235

    move/from16 v0, v19

    move/from16 v1, v16

    if-le v0, v1, :cond_235

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v1, v14}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v5, v1, v2}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    :cond_235
    move/from16 v0, v21

    if-ge v0, v6, :cond_249

    move/from16 v0, v19

    if-le v0, v6, :cond_249

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v14}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v5, v6, v1}, Landroid/widget/SpellChecker$SpellParser;->removeSpansAt(Landroid/text/Editable;I[Ljava/lang/Object;)V

    :cond_249
    const/4 v4, 0x1

    move/from16 v0, v19

    move/from16 v1, v16

    if-ne v0, v1, :cond_265

    const/4 v7, 0x0

    :goto_251
    array-length v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_265

    aget-object v22, v14, v7

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    move/from16 v0, v16

    if-ne v10, v0, :cond_304

    const/4 v4, 0x0

    :cond_265
    move/from16 v0, v21

    if-ne v0, v6, :cond_27c

    const/4 v7, 0x0

    :goto_26a
    array-length v0, v14

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v7, v0, :cond_27c

    aget-object v22, v14, v7

    move-object/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    if-ne v11, v6, :cond_308

    const/4 v4, 0x0

    :cond_27c
    if-eqz v4, :cond_28d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-static {v0, v5, v1, v2}, Landroid/widget/SpellChecker;->-wrap0(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V

    :cond_28d
    add-int/lit8 v18, v18, 0x1

    :cond_28f
    move/from16 v8, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    move/from16 v0, v20

    if-ge v0, v6, :cond_2e0

    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_2b5

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_2e0

    :cond_2b5
    add-int/lit16 v0, v8, 0x15e

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v5, v8, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Landroid/text/method/WordIterator;->following(I)I

    move-result v19

    :cond_2e0
    const/16 v22, -0x1

    move/from16 v0, v19

    move/from16 v1, v22

    if-eq v0, v1, :cond_196

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/widget/SpellChecker;->-get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v21

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1fe

    goto/16 :goto_196

    :cond_304
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_251

    :cond_308
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_26a

    :cond_30c
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    goto/16 :goto_1ab
.end method

.method public parse(II)V
    .registers 8

    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v0

    if-le p2, v0, :cond_48

    invoke-static {}, Landroid/widget/SpellChecker;->-get0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Parse invalid region, from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_33
    if-le v1, p1, :cond_47

    iget-object v2, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v2}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    invoke-direct {p0, v2, p1, v1}, Landroid/widget/SpellChecker$SpellParser;->setRangeSpan(Landroid/text/Editable;II)V

    invoke-virtual {p0}, Landroid/widget/SpellChecker$SpellParser;->parse()V

    :cond_47
    return-void

    :cond_48
    move v1, p2

    goto :goto_33
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Landroid/widget/SpellChecker$SpellParser;->this$0:Landroid/widget/SpellChecker;

    invoke-static {v0}, Landroid/widget/SpellChecker;->-get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0}, Landroid/widget/SpellChecker$SpellParser;->removeRangeSpan(Landroid/text/Editable;)V

    return-void
.end method
