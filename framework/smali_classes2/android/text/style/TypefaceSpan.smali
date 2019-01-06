.class public Landroid/text/style/TypefaceSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "TypefaceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mFamily:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput-object p1, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    return-void
.end method

.method private static apply(Landroid/graphics/Paint;Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-nez v1, :cond_27

    const/4 v2, 0x0

    :goto_7
    invoke-static {p1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    not-int v4, v4

    and-int v0, v2, v4

    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_1a
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_23

    const/high16 v4, -0x41800000    # -0.25f

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_23
    invoke-virtual {p0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void

    :cond_27
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    goto :goto_7
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFamily()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .registers 2

    invoke-virtual {p0}, Landroid/text/style/TypefaceSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .registers 2

    const/16 v0, 0xd

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/style/TypefaceSpan;->apply(Landroid/graphics/Paint;Ljava/lang/String;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .registers 3

    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/style/TypefaceSpan;->apply(Landroid/graphics/Paint;Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Landroid/text/style/TypefaceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Landroid/text/style/TypefaceSpan;->mFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
