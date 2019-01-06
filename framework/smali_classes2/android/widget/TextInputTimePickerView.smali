.class public Landroid/widget/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source "TextInputTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextInputTimePickerView$OnValueTypedListener;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field public static final AMPM:I = 0x2

.field public static final HOURS:I = 0x0

.field public static final MINUTES:I = 0x1

.field private static final PM:I = 0x1


# instance fields
.field private final mAmPmSpinner:Landroid/widget/Spinner;

.field private final mErrorLabel:Landroid/widget/TextView;

.field private mErrorShowing:Z

.field private final mHourEditText:Landroid/widget/EditText;

.field private mHourFormatStartsAtZero:Z

.field private final mHourLabel:Landroid/widget/TextView;

.field private final mInputSeparatorView:Landroid/widget/TextView;

.field private mIs24Hour:Z

.field private mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mMinuteEditText:Landroid/widget/EditText;

.field private final mMinuteLabel:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Landroid/widget/TextInputTimePickerView;)Landroid/widget/TextInputTimePickerView$OnValueTypedListener;
    .registers 2

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/widget/TextInputTimePickerView;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextInputTimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v2, 0x1090118

    invoke-static {p1, v2, p0}, Landroid/widget/TextInputTimePickerView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v2, 0x10202b4

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const v2, 0x10202b5

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    const v2, 0x10202b7

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    const v2, 0x10202d1

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    const v2, 0x10202d2

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    const v2, 0x10202d3

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/TextInputTimePickerView$1;

    invoke-direct {v3, p0}, Landroid/widget/TextInputTimePickerView$1;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/TextInputTimePickerView$2;

    invoke-direct {v3, p0}, Landroid/widget/TextInputTimePickerView$2;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v2, 0x10201aa

    invoke-virtual {p0, v2}, Landroid/widget/TextInputTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-static {p1}, Landroid/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-direct {v0, p1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/TextInputTimePickerView$3;

    invoke-direct {v3, p0}, Landroid/widget/TextInputTimePickerView$3;-><init>(Landroid/widget/TextInputTimePickerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private getHourOfDayFromLocalizedHour(I)I
    .registers 5

    move v0, p1

    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v1, :cond_f

    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_e

    const/16 v1, 0x18

    if-ne p1, v1, :cond_e

    const/4 v0, 0x0

    :cond_e
    :goto_e
    return v0

    :cond_f
    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-nez v1, :cond_18

    const/16 v1, 0xc

    if-ne p1, v1, :cond_18

    const/4 v0, 0x0

    :cond_18
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e

    add-int/lit8 v0, v0, 0xc

    goto :goto_e
.end method

.method private isValidLocalizedHour(I)Z
    .registers 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-eqz v3, :cond_14

    const/4 v1, 0x0

    :goto_6
    iget-boolean v3, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v3, :cond_16

    const/16 v3, 0x17

    :goto_c
    add-int v0, v3, v1

    if-lt p1, v1, :cond_13

    if-gt p1, v0, :cond_13

    const/4 v2, 0x1

    :cond_13
    return v2

    :cond_14
    const/4 v1, 0x1

    goto :goto_6

    :cond_16
    const/16 v3, 0xb

    goto :goto_c
.end method

.method private parseAndSetHourInternal(Ljava/lang/String;)Z
    .registers 10

    const/4 v7, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->isValidLocalizedHour(I)Z

    move-result v4

    if-nez v4, :cond_2a

    iget-boolean v4, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    if-eqz v4, :cond_25

    const/4 v3, 0x0

    :goto_10
    iget-boolean v4, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    if-eqz v4, :cond_27

    const/16 v2, 0x17

    :goto_16
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v5

    invoke-direct {p0, v5}, Landroid/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    return v7

    :cond_25
    const/4 v3, 0x1

    goto :goto_10

    :cond_27
    add-int/lit8 v2, v3, 0xb

    goto :goto_16

    :cond_2a
    iget-object v4, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->getHourOfDayFromLocalizedHour(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_34} :catch_36

    const/4 v4, 0x1

    return v4

    :catch_36
    move-exception v0

    return v7
.end method

.method private parseAndSetMinuteInternal(Ljava/lang/String;)Z
    .registers 8

    const/16 v2, 0x3b

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_4
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_c

    if-le v1, v2, :cond_1a

    :cond_c
    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    const/4 v3, 0x0

    const/16 v4, 0x3b

    invoke-static {v1, v3, v4}, Landroid/util/MathUtils;->constrain(III)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    return v5

    :cond_1a
    iget-object v2, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Landroid/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_20} :catch_21

    return v4

    :catch_21
    move-exception v0

    return v5
.end method

.method private setError(Z)V
    .registers 6

    const/4 v2, 0x4

    const/4 v1, 0x0

    iput-boolean p1, p0, Landroid/widget/TextInputTimePickerView;->mErrorShowing:Z

    iget-object v3, p0, Landroid/widget/TextInputTimePickerView;->mErrorLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1c

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Landroid/widget/TextInputTimePickerView;->mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1e

    move v0, v2

    :goto_11
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mMinuteLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_20

    :goto_18
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_1c
    move v0, v2

    goto :goto_9

    :cond_1e
    move v0, v1

    goto :goto_11

    :cond_20
    move v2, v1

    goto :goto_18
.end method


# virtual methods
.method setHourFormat(I)V
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setImeHintLocales(Landroid/os/LocaleList;)V

    return-void
.end method

.method setListener(Landroid/widget/TextInputTimePickerView$OnValueTypedListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/TextInputTimePickerView;->mListener:Landroid/widget/TextInputTimePickerView$OnValueTypedListener;

    return-void
.end method

.method updateSeparator(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/TextInputTimePickerView;->mInputSeparatorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method updateTextInputValues(IIIZZ)V
    .registers 13

    const/4 v6, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "%d"

    iput-boolean p4, p0, Landroid/widget/TextInputTimePickerView;->mIs24Hour:Z

    iput-boolean p5, p0, Landroid/widget/TextInputTimePickerView;->mHourFormatStartsAtZero:Z

    iget-object v3, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    if-eqz p4, :cond_48

    const/4 v1, 0x4

    :goto_e
    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    if-nez p3, :cond_4a

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :goto_18
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    const-string/jumbo v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    const-string/jumbo v3, "%d"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v1, p0, Landroid/widget/TextInputTimePickerView;->mErrorShowing:Z

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Landroid/widget/TextInputTimePickerView;->validateInput()Z

    :cond_47
    return-void

    :cond_48
    move v1, v2

    goto :goto_e

    :cond_4a
    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mAmPmSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_18
.end method

.method validateInput()Z
    .registers 3

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-object v1, p0, Landroid/widget/TextInputTimePickerView;->mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v0

    :goto_1e
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextInputTimePickerView;->setError(Z)V

    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_1e
.end method
