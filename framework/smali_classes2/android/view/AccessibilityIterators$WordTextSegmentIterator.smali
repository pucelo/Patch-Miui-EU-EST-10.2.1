.class Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WordTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;


# direct methods
.method private constructor <init>(Ljava/util/Locale;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;-><init>(Ljava/util/Locale;Landroid/view/AccessibilityIterators$CharacterTextSegmentIterator;)V

    return-void
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/view/AccessibilityIterators$WordTextSegmentIterator;
    .registers 2

    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    if-nez v0, :cond_b

    new-instance v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;-><init>(Ljava/util/Locale;)V

    sput-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    :cond_b
    sget-object v0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$WordTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .registers 4

    const/4 v0, 0x0

    if-lez p1, :cond_19

    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_1a

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_19
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method private isLetterOrDigit(I)Z
    .registers 5

    const/4 v2, 0x0

    if-ltz p1, :cond_16

    iget-object v1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p1, v1, :cond_16

    iget-object v1, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    return v1

    :cond_16
    return v2
.end method

.method private isStartBoundary(I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz p1, :cond_12

    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method


# virtual methods
.method public following(I)[I
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_b

    return-object v4

    :cond_b
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt p1, v3, :cond_14

    return-object v4

    :cond_14
    move v1, p1

    if-gez p1, :cond_18

    const/4 v1, 0x0

    :cond_18
    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v3

    if-nez v3, :cond_2f

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2f

    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v1

    if-ne v1, v5, :cond_18

    return-object v4

    :cond_2f
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    if-eq v0, v5, :cond_3f

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    :cond_3f
    return-object v4

    :cond_40
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method

.method protected onLocaleChanged(Ljava/util/Locale;)V
    .registers 3

    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    iput-object v0, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    return-void
.end method

.method public preceding(I)[I
    .registers 8

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_b

    return-object v4

    :cond_b
    if-gtz p1, :cond_e

    return-object v4

    :cond_e
    move v0, p1

    if-le p1, v2, :cond_12

    move v0, v2

    :cond_12
    if-lez v0, :cond_2f

    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, v3}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isLetterOrDigit(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2f

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2f

    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v0

    if-ne v0, v5, :cond_12

    return-object v4

    :cond_2f
    iget-object v3, p0, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->mImpl:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    if-eq v1, v5, :cond_3f

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    :cond_3f
    return-object v4

    :cond_40
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$WordTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method
