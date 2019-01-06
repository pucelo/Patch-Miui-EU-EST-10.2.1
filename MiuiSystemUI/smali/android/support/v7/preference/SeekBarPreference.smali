.class public Landroid/support/v7/preference/SeekBarPreference;
.super Landroid/support/v7/preference/Preference;
.source "SeekBarPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/SeekBarPreference$1;,
        Landroid/support/v7/preference/SeekBarPreference$2;,
        Landroid/support/v7/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mAdjustable:Z

.field private mMax:I

.field private mMin:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekBarIncrement:I

.field private mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

.field private mSeekBarValue:I

.field private mSeekBarValueTextView:Landroid/widget/TextView;

.field private mShowSeekBarValue:Z

.field private mTrackingTouch:Z


# direct methods
.method static synthetic -get0(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    return v0
.end method

.method static synthetic -get1(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    return v0
.end method

.method static synthetic -get2(Landroid/support/v7/preference/SeekBarPreference;)Landroid/widget/SeekBar;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic -get3(Landroid/support/v7/preference/SeekBarPreference;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    return v0
.end method

.method static synthetic -get4(Landroid/support/v7/preference/SeekBarPreference;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return v0
.end method

.method static synthetic -set0(Landroid/support/v7/preference/SeekBarPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mTrackingTouch:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/support/v7/preference/SeekBarPreference;Landroid/widget/SeekBar;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->syncValueInternal(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/preference/R$attr;->seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$1;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/SeekBarPreference$1;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    new-instance v1, Landroid/support/v7/preference/SeekBarPreference$2;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/SeekBarPreference$2;-><init>(Landroid/support/v7/preference/SeekBarPreference;)V

    iput-object v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarKeyListener:Landroid/view/View$OnKeyListener;

    sget-object v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_min:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_android_max:I

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setMax(I)V

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_seekBarIncrement:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setSeekBarIncrement(I)V

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_adjustable:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mAdjustable:Z

    sget v1, Landroid/support/v7/preference/R$styleable;->SeekBarPreference_showSeekBarValue:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mShowSeekBarValue:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 2

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-le p1, v0, :cond_1

    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    :cond_1
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValueTextView:Landroid/widget/TextView;

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0, p1}, Landroid/support/v7/preference/SeekBarPreference;->persistInt(I)Z

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_3
    return-void
.end method

.method private syncValueInternal(Landroid/widget/SeekBar;)V
    .locals 3

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    add-int v0, v1, v2

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/support/v7/preference/SeekBarPreference;->setValueInternal(IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarValue:I

    iget v2, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final setMax(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    :cond_0
    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_1
    return-void
.end method

.method public final setSeekBarIncrement(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mMax:I

    iget v1, p0, Landroid/support/v7/preference/SeekBarPreference;->mMin:I

    sub-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/SeekBarPreference;->mSeekBarIncrement:I

    invoke-virtual {p0}, Landroid/support/v7/preference/SeekBarPreference;->notifyChanged()V

    :cond_0
    return-void
.end method
