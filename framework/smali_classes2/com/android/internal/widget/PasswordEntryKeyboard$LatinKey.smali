.class Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PasswordEntryKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .registers 8

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_15

    iput v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->popupResId:I

    :cond_15
    return-void
.end method


# virtual methods
.method enableShiftLock()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    return-void
.end method

.method public isInside(II)Z
    .registers 8

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x5

    iget-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    if-nez v1, :cond_8

    return v4

    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v0, v1, v4

    if-eq v0, v3, :cond_10

    if-ne v0, v2, :cond_28

    :cond_10
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    if-ne v0, v3, :cond_1c

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    :cond_1c
    if-ne v0, v2, :cond_23

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    :cond_23
    :goto_23
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    return v1

    :cond_28
    const/16 v1, 0x20

    if-ne v0, v1, :cond_23

    sget v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_23
.end method

.method public onReleased(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_8

    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    :goto_7
    return-void

    :cond_8
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    goto :goto_7
.end method

.method setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    return-void
.end method
