.class public Lcom/android/internal/widget/PasswordEntryKeyboard;
.super Landroid/inputmethodservice/Keyboard;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
    }
.end annotation


# static fields
.field public static final KEYCODE_SPACE:I = 0x20

.field private static final SHIFT_LOCKED:I = 0x2

.field private static final SHIFT_OFF:I = 0x0

.field private static final SHIFT_ON:I = 0x1

.field static sSpacebarVerticalCorrection:I


# instance fields
.field private mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mF1Key:Landroid/inputmethodservice/Keyboard$Key;

.field private mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

.field private mShiftIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

.field private mShiftLockIcon:Landroid/graphics/drawable/Drawable;

.field private mShiftState:I

.field private mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 9

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;II)V

    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboard;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .registers 11

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard;-><init>(Landroid/content/Context;IIII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIII)V
    .registers 11

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;IIII)V

    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    invoke-direct {p0, p1}, Lcom/android/internal/widget/PasswordEntryKeyboard;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V
    .registers 11

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    new-array v0, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    new-array v0, v4, [Landroid/inputmethodservice/Keyboard$Key;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108082d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x108082e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x1050158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sput v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    return-void
.end method


# virtual methods
.method protected createKeyFromXml(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)Landroid/inputmethodservice/Keyboard$Key;
    .registers 14

    const/4 v7, 0x0

    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    iget-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v6, v1, v7

    if-ltz v6, :cond_25

    const/16 v1, 0xa

    if-eq v6, v1, :cond_25

    const/16 v1, 0x20

    if-lt v6, v1, :cond_1d

    const/16 v1, 0x7f

    if-le v6, v1, :cond_25

    :cond_1d
    const-string/jumbo v1, " "

    iput-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v7}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->setEnabled(Z)V

    :cond_25
    iget-object v1, v0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v1, v1, v7

    sparse-switch v1, :sswitch_data_36

    :goto_2c
    return-object v0

    :sswitch_2d
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_2c

    :sswitch_30
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mF1Key:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_2c

    :sswitch_33
    iput-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mSpaceKey:Landroid/inputmethodservice/Keyboard$Key;

    goto :goto_2c

    :sswitch_data_36
    .sparse-switch
        -0x67 -> :sswitch_30
        0xa -> :sswitch_2d
        0x20 -> :sswitch_33
    .end sparse-switch
.end method

.method enableShiftLock()V
    .registers 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->getShiftKeyIndices()[I

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_8
    if-ge v3, v5, :cond_42

    aget v1, v4, v3

    if-ltz v1, :cond_3e

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_3e

    iget-object v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p0}, Lcom/android/internal/widget/PasswordEntryKeyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    aput-object v2, v6, v0

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    instance-of v2, v2, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    check-cast v2, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;

    invoke-virtual {v2}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->enableShiftLock()V

    :cond_32
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v6, v6, v0

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    :cond_3e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_8

    :cond_42
    return-void
.end method

.method public isShifted()Z
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v1, v1, v0

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-eqz v1, :cond_c

    const/4 v0, 0x1

    :cond_c
    return v0

    :cond_d
    invoke-super {p0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    return v0
.end method

.method setEnterKeyResources(Landroid/content/res/Resources;III)V
    .registers 9

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput v3, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mEnterKey:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->iconPreview:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_47
    return-void
.end method

.method setShiftLocked(Z)V
    .registers 7

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_4
    if-ge v1, v3, :cond_13

    aget-object v0, v2, v1

    if-eqz v0, :cond_10

    iput-boolean p1, v0, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    iget-object v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftLockIcon:Landroid/graphics/drawable/Drawable;

    iput-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_13
    if-eqz p1, :cond_19

    const/4 v1, 0x2

    :goto_16
    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    return-void

    :cond_19
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public setShifted(Z)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_2e

    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-eqz v2, :cond_2c

    const/4 v1, 0x1

    :goto_9
    iput v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    :cond_b
    :goto_b
    const/4 v0, 0x0

    :goto_c
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    array-length v2, v2

    if-ge v0, v2, :cond_50

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    if-eqz v2, :cond_29

    if-nez p1, :cond_3d

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mOldShiftIcons:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v0

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    :cond_29
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_2c
    const/4 v1, 0x0

    goto :goto_9

    :cond_2e
    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-nez v2, :cond_b

    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-nez v2, :cond_3b

    const/4 v1, 0x1

    :goto_37
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    goto :goto_b

    :cond_3b
    const/4 v1, 0x0

    goto :goto_37

    :cond_3d
    iget v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftState:I

    if-nez v2, :cond_29

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Landroid/inputmethodservice/Keyboard$Key;->on:Z

    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftKeys:[Landroid/inputmethodservice/Keyboard$Key;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard;->mShiftIcon:Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_29

    :cond_50
    return v1
.end method
