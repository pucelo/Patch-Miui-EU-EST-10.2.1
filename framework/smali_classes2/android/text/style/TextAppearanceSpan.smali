.class public Landroid/text/style/TextAppearanceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TextAppearanceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mFamilyName:Ljava/lang/String;

.field private final mStyle:I

.field private final mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextColorLink:Landroid/content/res/ColorStateList;

.field private final mTextSize:I

.field private final mTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 12

    const/16 v7, 0xc

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    sget-object v4, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    const/4 v4, -0x1

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_57

    invoke-virtual {p1}, Landroid/content/Context;->canLoadUnsafeResources()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getFont(I)Landroid/graphics/Typeface;

    move-result-object v4

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    :goto_39
    iget-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v4, :cond_5a

    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    :goto_3f
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p3, :cond_54

    sget-object v4, Lcom/android/internal/R$styleable;->Theme:[I

    const v5, 0x1030005

    invoke-virtual {p1, v5, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_54
    iput-object v2, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-void

    :cond_57
    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    goto :goto_39

    :cond_5a
    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_63

    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_3f

    :cond_63
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    packed-switch v3, :pswitch_data_80

    iput-object v5, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_3f

    :pswitch_6e
    const-string/jumbo v4, "sans"

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_3f

    :pswitch_74
    const-string/jumbo v4, "serif"

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_3f

    :pswitch_7a
    const-string/jumbo v4, "monospace"

    iput-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    goto :goto_3f

    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_74
        :pswitch_7a
    .end packed-switch
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    :goto_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_40

    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    :goto_36
    invoke-static {p1}, Landroid/graphics/LeakyTypefaceStorage;->readTypefaceFromParcel(Landroid/os/Parcel;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    return-void

    :cond_3d
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    goto :goto_26

    :cond_40
    iput-object v1, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    goto :goto_36
.end method

.method public constructor <init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
    .registers 7

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    iput p2, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    iput p3, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    iput-object p4, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iput-object p5, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/TextAppearanceSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0x11

    return v0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextSize()I
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    return v0
.end method

.method public getTextStyle()I
    .registers 2

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 5

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/text/style/TextAppearanceSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    :cond_13
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->linkColor:I

    :cond_21
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 7

    const/4 v1, 0x0

    iget-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v4, :cond_35

    iget v1, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    iget-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    :goto_d
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int v0, v1, v4

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1e

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    :cond_1e
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_27

    const/high16 v4, -0x41800000    # -0.25f

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTextSkewX(F)V

    :cond_27
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_2a
    iget v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    if-lez v4, :cond_34

    iget v4, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    :cond_34
    return-void

    :cond_35
    iget-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-nez v4, :cond_3d

    iget v4, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    if-eqz v4, :cond_61

    :cond_3d
    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eqz v3, :cond_47

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    :cond_47
    iget v4, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    or-int/2addr v1, v4

    iget-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    if-eqz v4, :cond_55

    iget-object v4, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_d

    :cond_55
    if-nez v3, :cond_5c

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_d

    :cond_5c
    invoke-static {v3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    goto :goto_d

    :cond_61
    const/4 v2, 0x0

    goto :goto_d
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/TextAppearanceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mFamilyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2f

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1d
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_33

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTextColorLink:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_29
    iget-object v0, p0, Landroid/text/style/TextAppearanceSpan;->mTypeface:Landroid/graphics/Typeface;

    invoke-static {v0, p1}, Landroid/graphics/LeakyTypefaceStorage;->writeTypefaceToParcel(Landroid/graphics/Typeface;Landroid/os/Parcel;)V

    return-void

    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1d

    :cond_33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29
.end method
