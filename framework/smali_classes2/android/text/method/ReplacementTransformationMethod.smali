.class public abstract Landroid/text/method/ReplacementTransformationMethod;
.super Ljava/lang/Object;
.source "ReplacementTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;,
        Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getOriginal()[C
.end method

.method protected abstract getReplacement()[C
.end method

.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .registers 10

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getOriginal()[C

    move-result-object v3

    invoke-virtual {p0}, Landroid/text/method/ReplacementTransformationMethod;->getReplacement()[C

    move-result-object v4

    instance-of v5, p1, Landroid/text/Editable;

    if-nez v5, :cond_3f

    const/4 v0, 0x1

    array-length v2, v3

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v2, :cond_1a

    aget-char v5, v3, v1

    invoke-static {p1, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    if-ltz v5, :cond_1d

    const/4 v0, 0x0

    :cond_1a
    if-eqz v0, :cond_20

    return-object p1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_20
    instance-of v5, p1, Landroid/text/Spannable;

    if-nez v5, :cond_3f

    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_35

    new-instance v5, Landroid/text/SpannedString;

    new-instance v6, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    check-cast p1, Landroid/text/Spanned;

    invoke-direct {v6, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    invoke-direct {v5, v6}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v5

    :cond_35
    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    invoke-virtual {v5}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_3f
    instance-of v5, p1, Landroid/text/Spanned;

    if-eqz v5, :cond_4b

    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;

    check-cast p1, Landroid/text/Spanned;

    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$SpannedReplacementCharSequence;-><init>(Landroid/text/Spanned;[C[C)V

    return-object v5

    :cond_4b
    new-instance v5, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;

    invoke-direct {v5, p1, v3, v4}, Landroid/text/method/ReplacementTransformationMethod$ReplacementCharSequence;-><init>(Ljava/lang/CharSequence;[C[C)V

    return-object v5
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .registers 6

    return-void
.end method
