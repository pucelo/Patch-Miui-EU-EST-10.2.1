.class public Landroid/widget/DialerFilter;
.super Landroid/widget/RelativeLayout;
.source "DialerFilter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DIGITS_AND_LETTERS:I = 0x1

.field public static final DIGITS_AND_LETTERS_NO_DIGITS:I = 0x2

.field public static final DIGITS_AND_LETTERS_NO_LETTERS:I = 0x3

.field public static final DIGITS_ONLY:I = 0x4

.field public static final LETTERS_ONLY:I = 0x5


# instance fields
.field mDigits:Landroid/widget/EditText;

.field mHint:Landroid/widget/EditText;

.field mIcon:Landroid/widget/ImageView;

.field mInputFilters:[Landroid/text/InputFilter;

.field private mIsQwerty:Z

.field mLetters:Landroid/widget/EditText;

.field mMode:I

.field mPrimary:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private makeDigitsPrimary()V
    .registers 3

    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    :cond_a
    return-void
.end method

.method private makeLettersPrimary()V
    .registers 3

    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/DialerFilter;->swapPrimaryAndHint(Z)V

    :cond_a
    return-void
.end method

.method private swapPrimaryAndHint(Z)V
    .registers 8

    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    if-eqz p1, :cond_5f

    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    :goto_22
    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-static {v1, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v5, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void

    :cond_5f
    iget-object v4, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    iget-object v4, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    goto :goto_22
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .registers 3

    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v0, :pswitch_data_2e

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_5

    :pswitch_19
    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_5

    :pswitch_23
    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_5

    nop

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_23
        :pswitch_19
        :pswitch_19
        :pswitch_23
    .end packed-switch
.end method

.method public clearText()V
    .registers 3

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    iget-boolean v1, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    :goto_1a
    return-void

    :cond_1b
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/DialerFilter;->setMode(I)V

    goto :goto_1a
.end method

.method public getDigits()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_f
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getFilterText()Ljava/lang/CharSequence;
    .registers 3

    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getLetters()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_a
    invoke-virtual {p0}, Landroid/widget/DialerFilter;->getDigits()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getLetters()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0

    :cond_f
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    return v0
.end method

.method public isQwertyKeyboard()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    return v0
.end method

.method protected onFinishInflate()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v1}, Landroid/text/InputFilter$AllCaps;-><init>()V

    aput-object v1, v0, v4

    iput-object v0, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    const v0, 0x1020005

    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    if-nez v0, :cond_29

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DialerFilter must have a child EditText named hint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Landroid/widget/DialerFilter;->mHint:Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    const v0, 0x102000c

    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    if-nez v0, :cond_5f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DialerFilter must have a child EditText named primary"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5f
    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/DialerFilter;->mInputFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Landroid/widget/DialerFilter;->mPrimary:Landroid/widget/EditText;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V

    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/widget/DialerFilter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/DialerFilter;->setFocusable(Z)V

    iput-boolean v2, p0, Landroid/widget/DialerFilter;->mIsQwerty:Z

    invoke-virtual {p0, v2}, Landroid/widget/DialerFilter;->setMode(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    iget-object v1, p0, Landroid/widget/DialerFilter;->mIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_10

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_f
    return-void

    :cond_10
    const/16 v0, 0x8

    goto :goto_c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_c2

    iget v3, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v3, :pswitch_data_e0

    :cond_a
    :goto_a
    :sswitch_a
    if-nez v1, :cond_c1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :sswitch_11
    iget v3, p0, Landroid/widget/DialerFilter;->mMode:I

    packed-switch v3, :pswitch_data_ee

    goto :goto_a

    :pswitch_17
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_a

    :pswitch_25
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v4, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ne v3, v4, :cond_a

    invoke-virtual {p0, v5}, Landroid/widget/DialerFilter;->setMode(I)V

    goto :goto_a

    :pswitch_45
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    iget-object v4, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ne v3, v4, :cond_63

    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    invoke-virtual {p0, v5}, Landroid/widget/DialerFilter;->setMode(I)V

    :cond_63
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_a

    :pswitch_6a
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_a

    :pswitch_71
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_a

    :pswitch_78
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    invoke-static {p1}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-eqz v3, :cond_8b

    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    const/4 v1, 0x1

    goto :goto_a

    :cond_8b
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v2

    if-nez v2, :cond_95

    const/16 v3, 0x3e

    if-ne p1, v3, :cond_a6

    :cond_95
    :goto_95
    sget-object v3, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getMatch([C)C

    move-result v0

    if-eqz v0, :cond_ab

    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    and-int/2addr v1, v3

    goto/16 :goto_a

    :cond_a6
    const/16 v3, 0x3d

    if-ne p1, v3, :cond_a

    goto :goto_95

    :cond_ab
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Landroid/widget/DialerFilter;->setMode(I)V

    goto/16 :goto_a

    :pswitch_b1
    iget-object v3, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    :pswitch_b9
    iget-object v3, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v3, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto/16 :goto_a

    :cond_c1
    return v5

    :sswitch_data_c2
    .sparse-switch
        0x13 -> :sswitch_a
        0x14 -> :sswitch_a
        0x15 -> :sswitch_a
        0x16 -> :sswitch_a
        0x17 -> :sswitch_a
        0x42 -> :sswitch_a
        0x43 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_78
        :pswitch_b9
        :pswitch_b1
        :pswitch_b1
        :pswitch_b9
    .end packed-switch

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_17
        :pswitch_25
        :pswitch_45
        :pswitch_6a
        :pswitch_71
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6

    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v0, :cond_f

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x1

    goto :goto_e
.end method

.method protected onModeChange(II)V
    .registers 3

    return-void
.end method

.method public removeFilterWatcher(Landroid/text/TextWatcher;)V
    .registers 5

    iget v1, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_f

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :goto_b
    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void

    :cond_f
    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_b
.end method

.method public setDigitsWatcher(Landroid/text/TextWatcher;)V
    .registers 7

    iget-object v2, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-interface {v0, p1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public setFilterWatcher(Landroid/text/TextWatcher;)V
    .registers 4

    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setLettersWatcher(Landroid/text/TextWatcher;)V

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p0, p1}, Landroid/widget/DialerFilter;->setDigitsWatcher(Landroid/text/TextWatcher;)V

    goto :goto_8
.end method

.method public setLettersWatcher(Landroid/text/TextWatcher;)V
    .registers 7

    iget-object v2, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x12

    invoke-interface {v0, p1, v3, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public setMode(I)V
    .registers 7

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_56

    :goto_7
    iget v0, p0, Landroid/widget/DialerFilter;->mMode:I

    iput p1, p0, Landroid/widget/DialerFilter;->mMode:I

    invoke-virtual {p0, v0, p1}, Landroid/widget/DialerFilter;->onModeChange(II)V

    return-void

    :pswitch_f
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_7

    :pswitch_1d
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_7

    :pswitch_2b
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_7

    :pswitch_39
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeDigitsPrimary()V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_7

    :pswitch_47
    invoke-direct {p0}, Landroid/widget/DialerFilter;->makeLettersPrimary()V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mLetters:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v1, p0, Landroid/widget/DialerFilter;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_7

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_f
        :pswitch_47
        :pswitch_39
        :pswitch_1d
        :pswitch_2b
    .end packed-switch
.end method
