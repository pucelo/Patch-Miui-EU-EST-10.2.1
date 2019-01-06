.class public Landroid/text/AlteredCharSequence;
.super Ljava/lang/Object;
.source "AlteredCharSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/AlteredCharSequence$AlteredSpanned;
    }
.end annotation


# instance fields
.field private mChars:[C

.field private mEnd:I

.field private mSource:Ljava/lang/CharSequence;

.field private mStart:I


# direct methods
.method private constructor <init>(Ljava/lang/CharSequence;[CII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iput p3, p0, Landroid/text/AlteredCharSequence;->mStart:I

    iput p4, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    return-void
.end method

.method public static make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;
    .registers 10

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_f

    new-instance v0, Landroid/text/AlteredCharSequence$AlteredSpanned;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/AlteredCharSequence$AlteredSpanned;-><init>(Ljava/lang/CharSequence;[CIILandroid/text/AlteredCharSequence$AlteredSpanned;)V

    return-object v0

    :cond_f
    new-instance v0, Landroid/text/AlteredCharSequence;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/AlteredCharSequence;-><init>(Ljava/lang/CharSequence;[CII)V

    return-object v0
.end method


# virtual methods
.method public charAt(I)C
    .registers 4

    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    if-lt p1, v0, :cond_11

    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int v1, p1, v1

    aget-char v0, v0, v1

    return v0

    :cond_11
    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getChars(II[CI)V
    .registers 8

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget v0, p0, Landroid/text/AlteredCharSequence;->mStart:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-le p1, p2, :cond_1e

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v1, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int v1, p1, v1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    :cond_1e
    return-void
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 7

    iget-object v0, p0, Landroid/text/AlteredCharSequence;->mSource:Ljava/lang/CharSequence;

    invoke-interface {v0, p1, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iget v2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    sub-int/2addr v2, p1

    iget v3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    sub-int/2addr v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/AlteredCharSequence;->make(Ljava/lang/CharSequence;[CII)Landroid/text/AlteredCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/text/AlteredCharSequence;->length()I

    move-result v0

    new-array v1, v0, [C

    invoke-virtual {p0, v2, v0, v1, v2}, Landroid/text/AlteredCharSequence;->getChars(II[CI)V

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method update([CII)V
    .registers 4

    iput-object p1, p0, Landroid/text/AlteredCharSequence;->mChars:[C

    iput p2, p0, Landroid/text/AlteredCharSequence;->mStart:I

    iput p3, p0, Landroid/text/AlteredCharSequence;->mEnd:I

    return-void
.end method
