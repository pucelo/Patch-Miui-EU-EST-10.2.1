.class public Lcom/android/internal/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D

.field private static final RADIX:I = 0xa


# instance fields
.field private mCount:I

.field private mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    const/16 v1, 0x63

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    iput-boolean v4, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v3}, Landroid/util/StateSet;->get(I)[I

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setHintTextColor(I)V

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/NumericTextView;->setFocusable(Z)V

    return-void
.end method

.method private handleKeyUp(I)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v5, 0x43

    if-ne p1, v5, :cond_6a

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-lez v5, :cond_16

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    div-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    :cond_16
    :goto_16
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-lez v5, :cond_8e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "%0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_45
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    if-eqz v5, :cond_69

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-lt v5, v6, :cond_92

    const/4 v2, 0x1

    :goto_53
    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    if-ge v5, v6, :cond_61

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    mul-int/lit8 v5, v5, 0xa

    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-le v5, v6, :cond_94

    :cond_61
    const/4 v1, 0x1

    :goto_62
    iget-object v5, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-interface {v5, p0, v6, v2, v1}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    :cond_69
    return v9

    :cond_6a
    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v5

    if-eqz v5, :cond_8d

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    iget v6, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    if-ge v5, v6, :cond_16

    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->numericKeyCodeToInt(I)I

    move-result v3

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    mul-int/lit8 v5, v5, 0xa

    add-int v4, v5, v3

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-gt v4, v5, :cond_16

    iput v4, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    goto :goto_16

    :cond_8d
    return v8

    :cond_8e
    const-string/jumbo v0, ""

    goto :goto_45

    :cond_92
    const/4 v2, 0x0

    goto :goto_53

    :cond_94
    const/4 v1, 0x0

    goto :goto_62
.end method

.method private static isKeyCodeNumeric(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_8

    const/16 v1, 0x8

    if-ne p0, v1, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    const/16 v1, 0x9

    if-eq p0, v1, :cond_8

    const/16 v1, 0xa

    if-eq p0, v1, :cond_8

    const/16 v1, 0xb

    if-eq p0, v1, :cond_8

    const/16 v1, 0xc

    if-eq p0, v1, :cond_8

    const/16 v1, 0xd

    if-eq p0, v1, :cond_8

    const/16 v1, 0xe

    if-eq p0, v1, :cond_8

    const/16 v1, 0xf

    if-eq p0, v1, :cond_8

    const/16 v1, 0x10

    if-eq p0, v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8
.end method

.method private static numericKeyCodeToInt(I)I
    .registers 2

    add-int/lit8 v0, p0, -0x7

    return v0
.end method

.method private updateDisplayedValue()V
    .registers 5

    iget-boolean v1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_21
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_35
    const-string/jumbo v0, "%d"

    goto :goto_21
.end method

.method private updateMinimumWidth()V
    .registers 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_7
    iget v4, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-ge v0, v4, :cond_45

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "%0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v7, v7}, Lcom/android/internal/widget/NumericTextView;->measure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getMeasuredWidth()I

    move-result v3

    if-le v3, v1, :cond_42

    move v1, v3

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_45
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setMinWidth(I)V

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/NumericTextView;->setMinimumWidth(I)V

    return-void
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    return-object v0
.end method

.method public final getRangeMaximum()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    return v0
.end method

.method public final getRangeMinimum()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    return v0
.end method

.method public final getShowLeadingZeroes()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    return v0
.end method

.method public final getValue()I
    .registers 2

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-eqz p1, :cond_1d

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iput v1, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mCount:I

    if-nez v0, :cond_32

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mPreviousValue:I

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-virtual {p0}, Lcom/android/internal/widget/NumericTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_32
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-ge v0, v1, :cond_3c

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    :cond_3c
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/NumericTextView;->setValue(I)V

    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    iget v1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-interface {v0, p0, v1, v2, v2}, Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V

    goto :goto_1c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x43

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    invoke-static {p1}, Lcom/android/internal/widget/NumericTextView;->isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0x43

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_b
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/internal/widget/NumericTextView;->handleKeyUp(I)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public final setOnDigitEnteredListener(Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/widget/NumericTextView;->mListener:Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;

    return-void
.end method

.method public final setRange(II)V
    .registers 7

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    if-eq v0, p1, :cond_6

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mMinValue:I

    :cond_6
    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    if-eq v0, p2, :cond_1f

    iput p2, p0, Lcom/android/internal/widget/NumericTextView;->mMaxValue:I

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, Lcom/android/internal/widget/NumericTextView;->LOG_RADIX:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/NumericTextView;->mMaxCount:I

    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateMinimumWidth()V

    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    :cond_1f
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_9

    iput-boolean p1, p0, Lcom/android/internal/widget/NumericTextView;->mShowLeadingZeroes:Z

    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    :cond_9
    return-void
.end method

.method public final setValue(I)V
    .registers 3

    iget v0, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lcom/android/internal/widget/NumericTextView;->mValue:I

    invoke-direct {p0}, Lcom/android/internal/widget/NumericTextView;->updateDisplayedValue()V

    :cond_9
    return-void
.end method
