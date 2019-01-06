.class public abstract Landroid/text/method/BaseKeyListener;
.super Landroid/text/method/MetaKeyKeyListener;
.source "BaseKeyListener.java"

# interfaces
.implements Landroid/text/method/KeyListener;


# static fields
.field private static final synthetic -android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I = null

.field private static final CARRIAGE_RETURN:I = 0xd

.field private static final LINE_FEED:I = 0xa

.field static final OLD_SEL_START:Ljava/lang/Object;

.field static sCachedPaint:Landroid/graphics/Paint;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# instance fields
.field private final mLock:Ljava/lang/Object;


# direct methods
.method private static synthetic -getandroid-text-method-TextKeyListener$CapitalizeSwitchesValues()[I
    .registers 3

    sget-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_3b

    :goto_17
    :try_start_17
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_39

    :goto_20
    :try_start_20
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_37

    :goto_29
    :try_start_29
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_32} :catch_35

    :goto_32
    sput-object v0, Landroid/text/method/BaseKeyListener;->-android-text-method-TextKeyListener$CapitalizeSwitchesValues:[I

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

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/BaseKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/text/method/MetaKeyKeyListener;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private static adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I
    .registers 9

    instance-of v4, p0, Landroid/text/Spanned;

    if-nez v4, :cond_5

    return p1

    :cond_5
    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/style/ReplacementSpan;

    invoke-interface {v4, p1, p1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    const/4 v1, 0x0

    :goto_11
    array-length v4, v2

    if-ge v1, v4, :cond_32

    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object v4, p0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v1

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ge v3, p1, :cond_2d

    if-le v0, p1, :cond_2d

    if-eqz p2, :cond_30

    move p1, v3

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_30
    move p1, v0

    goto :goto_2d

    :cond_32
    return p1
.end method

.method private backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z
    .registers 16

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, -0x70f4

    invoke-static {v6}, Landroid/view/KeyEvent;->metaStateHasNoModifiers(I)Z

    move-result v6

    if-nez v6, :cond_f

    return v9

    :cond_f
    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v6

    if-eqz v6, :cond_16

    return v8

    :cond_16
    invoke-virtual {p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    and-int/lit16 v6, v6, 0x1000

    if-eqz v6, :cond_35

    const/4 v2, 0x1

    :goto_1f
    invoke-static {p2, v8, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v6

    if-ne v6, v8, :cond_37

    const/4 v3, 0x1

    :goto_26
    const/4 v6, 0x2

    invoke-static {p2, v6, p4}, Landroid/text/method/BaseKeyListener;->getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I

    move-result v6

    if-ne v6, v8, :cond_39

    const/4 v1, 0x1

    :goto_2e
    if-eqz v2, :cond_40

    if-nez v1, :cond_34

    if-eqz v3, :cond_3b

    :cond_34
    return v9

    :cond_35
    const/4 v2, 0x0

    goto :goto_1f

    :cond_37
    const/4 v3, 0x0

    goto :goto_26

    :cond_39
    const/4 v1, 0x0

    goto :goto_2e

    :cond_3b
    invoke-direct {p0, p1, p2, p5}, Landroid/text/method/BaseKeyListener;->deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z

    move-result v6

    return v6

    :cond_40
    if-eqz v1, :cond_49

    invoke-direct {p0, p1, p2}, Landroid/text/method/BaseKeyListener;->deleteLine(Landroid/view/View;Landroid/text/Editable;)Z

    move-result v6

    if-eqz v6, :cond_49

    return v8

    :cond_49
    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v5

    if-eqz p5, :cond_80

    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_6b

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    :goto_59
    invoke-static {p2, v5, v4}, Landroid/text/method/BaseKeyListener;->getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I

    move-result v0

    :goto_5d
    if-eq v5, v0, :cond_85

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-interface {p2, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    return v8

    :cond_6b
    iget-object v7, p0, Landroid/text/method/BaseKeyListener;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_6e
    sget-object v6, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    if-nez v6, :cond_79

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    sput-object v6, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;

    :cond_79
    sget-object v4, Landroid/text/method/BaseKeyListener;->sCachedPaint:Landroid/graphics/Paint;
    :try_end_7b
    .catchall {:try_start_6e .. :try_end_7b} :catchall_7d

    monitor-exit v7

    goto :goto_59

    :catchall_7d
    move-exception v6

    monitor-exit v7

    throw v6

    :cond_80
    invoke-static {p2, v5}, Landroid/text/method/BaseKeyListener;->getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I

    move-result v0

    goto :goto_5d

    :cond_85
    return v9
.end method

.method private deleteLine(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 8

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_23

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    if-eq v0, v3, :cond_23

    invoke-interface {p2, v3, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v4, 0x1

    return v4

    :cond_23
    const/4 v4, 0x0

    return v4
.end method

.method private deleteSelection(Landroid/view/View;Landroid/text/Editable;)Z
    .registers 7

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-ge v0, v1, :cond_d

    move v2, v0

    move v0, v1

    move v1, v2

    :cond_d
    if-eq v1, v0, :cond_14

    invoke-interface {p2, v1, v0}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v3, 0x1

    return v3

    :cond_14
    const/4 v3, 0x0

    return v3
.end method

.method private deleteUntilWordBoundary(Landroid/view/View;Landroid/text/Editable;Z)Z
    .registers 11

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v4

    if-eq v0, v4, :cond_d

    return v5

    :cond_d
    if-nez p3, :cond_12

    if-nez v0, :cond_12

    :cond_11
    return v5

    :cond_12
    if-eqz p3, :cond_1a

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    if-eq v0, v4, :cond_11

    :cond_1a
    const/4 v3, 0x0

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_25

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWordIterator()Landroid/text/method/WordIterator;

    move-result-object v3

    :cond_25
    if-nez v3, :cond_2c

    new-instance v3, Landroid/text/method/WordIterator;

    invoke-direct {v3}, Landroid/text/method/WordIterator;-><init>()V

    :cond_2c
    if-eqz p3, :cond_45

    move v1, v0

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v3, p2, v0, v4}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->following(I)I

    move-result v2

    if-ne v2, v6, :cond_40

    invoke-interface {p2}, Landroid/text/Editable;->length()I

    move-result v2

    :cond_40
    :goto_40
    invoke-interface {p2, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    const/4 v4, 0x1

    return v4

    :cond_45
    move v2, v0

    invoke-virtual {v3, p2, v5, v0}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    invoke-virtual {v3, v0}, Landroid/text/method/WordIterator;->preceding(I)I

    move-result v1

    if-ne v1, v6, :cond_40

    const/4 v1, 0x0

    goto :goto_40
.end method

.method private static getOffsetForBackspaceKey(Ljava/lang/CharSequence;I)I
    .registers 27

    const/16 v22, 0x1

    move/from16 v0, p1

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    const/16 v22, 0x0

    return v22

    :cond_b
    const/16 v16, 0x0

    const/4 v14, 0x1

    const/4 v5, 0x2

    const/4 v8, 0x3

    const/4 v4, 0x4

    const/4 v7, 0x5

    const/4 v6, 0x6

    const/4 v3, 0x7

    const/16 v10, 0x8

    const/16 v9, 0x9

    const/16 v15, 0xa

    const/16 v11, 0xb

    const/16 v13, 0xc

    const/16 v12, 0xd

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v21, p1

    :cond_28
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    sub-int v21, v21, v22

    packed-switch v20, :pswitch_data_1ea

    new-instance v22, Ljava/lang/IllegalArgumentException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "state "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, " is unknown"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v22

    :pswitch_5e
    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v18

    const/16 v22, 0xa

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_85

    const/16 v20, 0x1

    :goto_6c
    if-lez v21, :cond_76

    const/16 v22, 0xd

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_28

    :cond_76
    sub-int v22, p1, v18

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v22

    return v22

    :cond_85
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_8e

    const/16 v20, 0x6

    goto :goto_6c

    :cond_8e
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_97

    const/16 v20, 0xa

    goto :goto_6c

    :cond_97
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v22

    if-eqz v22, :cond_a0

    const/16 v20, 0x4

    goto :goto_6c

    :cond_a0
    sget v22, Landroid/text/Emoji;->COMBINING_ENCLOSING_KEYCAP:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_ab

    const/16 v20, 0x2

    goto :goto_6c

    :cond_ab
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_b4

    const/16 v20, 0x7

    goto :goto_6c

    :cond_b4
    sget v22, Landroid/text/Emoji;->CANCEL_TAG:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_bf

    const/16 v20, 0xc

    goto :goto_6c

    :cond_bf
    const/16 v20, 0xd

    goto :goto_6c

    :pswitch_c2
    const/16 v22, 0xd

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_cc

    add-int/lit8 v18, v18, 0x1

    :cond_cc
    const/16 v20, 0xd

    goto :goto_6c

    :pswitch_cf
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_da

    add-int/lit8 v18, v18, 0x2

    const/16 v20, 0xb

    goto :goto_6c

    :cond_da
    const/16 v20, 0xd

    goto :goto_6c

    :pswitch_dd
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isRegionalIndicatorSymbol(I)Z

    move-result v22

    if-eqz v22, :cond_e8

    add-int/lit8 v18, v18, -0x2

    const/16 v20, 0xa

    goto :goto_6c

    :cond_e8
    const/16 v20, 0xd

    goto :goto_6c

    :pswitch_eb
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_f9

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    const/16 v20, 0x3

    goto/16 :goto_6c

    :cond_f9
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v22

    if-eqz v22, :cond_105

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    :cond_105
    const/16 v20, 0xd

    goto/16 :goto_6c

    :pswitch_109
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isKeycapBase(I)Z

    move-result v22

    if-eqz v22, :cond_117

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v22, v22, v19

    add-int v18, v18, v22

    :cond_117
    const/16 v20, 0xd

    goto/16 :goto_6c

    :pswitch_11b
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_129

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    const/16 v20, 0x5

    goto/16 :goto_6c

    :cond_129
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v22

    if-eqz v22, :cond_135

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    :cond_135
    const/16 v20, 0xd

    goto/16 :goto_6c

    :pswitch_139
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifierBase(I)Z

    move-result v22

    if-eqz v22, :cond_147

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v22, v22, v19

    add-int v18, v18, v22

    :cond_147
    const/16 v20, 0xd

    goto/16 :goto_6c

    :pswitch_14b
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_15b

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    const/16 v20, 0x7

    goto/16 :goto_6c

    :cond_15b
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-nez v22, :cond_16d

    invoke-static/range {v17 .. v17}, Landroid/icu/lang/UCharacter;->getCombiningClass(I)I

    move-result v22

    if-nez v22, :cond_16d

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    :cond_16d
    const/16 v20, 0xd

    goto/16 :goto_6c

    :pswitch_171
    sget v22, Landroid/text/Emoji;->ZERO_WIDTH_JOINER:I

    move/from16 v0, v17

    move/from16 v1, v22

    if-ne v0, v1, :cond_17d

    const/16 v20, 0x8

    goto/16 :goto_6c

    :cond_17d
    const/16 v20, 0xd

    goto/16 :goto_6c

    :pswitch_181
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_19d

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    add-int v18, v18, v22

    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmojiModifier(I)Z

    move-result v22

    if-eqz v22, :cond_199

    const/16 v20, 0x4

    goto/16 :goto_6c

    :cond_199
    const/16 v20, 0x7

    goto/16 :goto_6c

    :cond_19d
    invoke-static/range {v17 .. v17}, Landroid/text/method/BaseKeyListener;->isVariationSelector(I)Z

    move-result v22

    if-eqz v22, :cond_1ab

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v19

    const/16 v20, 0x9

    goto/16 :goto_6c

    :cond_1ab
    const/16 v20, 0xd

    goto/16 :goto_6c

    :pswitch_1af
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_1c5

    add-int/lit8 v22, v19, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v23

    add-int v22, v22, v23

    add-int v18, v18, v22

    const/16 v19, 0x0

    const/16 v20, 0x7

    goto/16 :goto_6c

    :cond_1c5
    const/16 v20, 0xd

    goto/16 :goto_6c

    :pswitch_1c9
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isTagSpecChar(I)Z

    move-result v22

    if-eqz v22, :cond_1d3

    add-int/lit8 v18, v18, 0x2

    goto/16 :goto_6c

    :cond_1d3
    invoke-static/range {v17 .. v17}, Landroid/text/Emoji;->isEmoji(I)Z

    move-result v22

    if-eqz v22, :cond_1e3

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->charCount(I)I

    move-result v22

    add-int v18, v18, v22

    const/16 v20, 0xd

    goto/16 :goto_6c

    :cond_1e3
    const/16 v18, 0x2

    const/16 v20, 0xd

    goto/16 :goto_6c

    nop

    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_c2
        :pswitch_eb
        :pswitch_109
        :pswitch_11b
        :pswitch_139
        :pswitch_14b
        :pswitch_171
        :pswitch_181
        :pswitch_1af
        :pswitch_cf
        :pswitch_dd
        :pswitch_1c9
    .end packed-switch
.end method

.method private static getOffsetForForwardDeleteKey(Ljava/lang/CharSequence;ILandroid/graphics/Paint;)I
    .registers 10

    const/4 v4, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    if-lt p1, v0, :cond_a

    return v3

    :cond_a
    move-object v0, p2

    move-object v1, p0

    move v2, p1

    move v5, p1

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result p1

    invoke-static {p0, p1, v4}, Landroid/text/method/BaseKeyListener;->adjustReplacementSpan(Ljava/lang/CharSequence;IZ)I

    move-result v0

    return v0
.end method

.method private static isVariationSelector(I)Z
    .registers 2

    const/16 v0, 0x24

    invoke-static {p0, v0}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v0

    return v0
.end method

.method static makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I
    .registers 5

    const/4 v0, 0x1

    invoke-static {}, Landroid/text/method/BaseKeyListener;->-getandroid-text-method-TextKeyListener$CapitalizeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1e

    :goto_e
    if-eqz p1, :cond_14

    const v1, 0x8000

    or-int/2addr v0, v1

    :cond_14
    return v0

    :pswitch_15
    const/16 v0, 0x1001

    goto :goto_e

    :pswitch_18
    const/16 v0, 0x2001

    goto :goto_e

    :pswitch_1b
    const/16 v0, 0x4001

    goto :goto_e

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_15
        :pswitch_1b
        :pswitch_18
    .end packed-switch
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 11

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/BaseKeyListener;->backspaceOrForwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .registers 7

    sparse-switch p3, :sswitch_data_1a

    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_15

    invoke-static {p2}, Landroid/text/method/BaseKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    const/4 v1, 0x1

    return v1

    :sswitch_b
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4

    :sswitch_10
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/method/BaseKeyListener;->forwardDelete(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_4

    :cond_15
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/MetaKeyKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :sswitch_data_1a
    .sparse-switch
        0x43 -> :sswitch_b
        0x70 -> :sswitch_10
    .end sparse-switch
.end method

.method public onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-eqz v4, :cond_f

    :cond_e
    return v6

    :cond_f
    invoke-static {p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    if-ge v0, v1, :cond_1c

    move v2, v0

    move v0, v1

    move v1, v2

    :cond_1c
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    return v6

    :cond_23
    invoke-interface {p2, v1, v0, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v4, 0x1

    return v4
.end method
