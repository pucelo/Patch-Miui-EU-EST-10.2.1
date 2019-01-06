.class Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
.super Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;
.source "AccessibilityIterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityIterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParagraphTextSegmentIterator"
.end annotation


# static fields
.field private static sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/view/AccessibilityIterators$AbstractTextSegmentIterator;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;
    .registers 1

    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    if-nez v0, :cond_b

    new-instance v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    invoke-direct {v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;-><init>()V

    sput-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    :cond_b
    sget-object v0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->sInstance:Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;

    return-object v0
.end method

.method private isEndBoundary(I)Z
    .registers 7

    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_23

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_23

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq p1, v2, :cond_20

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_21

    :cond_20
    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20

    :cond_23
    move v0, v1

    goto :goto_20
.end method

.method private isStartBoundary(I)Z
    .registers 7

    const/16 v4, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1b

    if-eqz p1, :cond_18

    iget-object v2, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    move v0, v1

    goto :goto_18

    :cond_1b
    move v0, v1

    goto :goto_18
.end method


# virtual methods
.method public following(I)[I
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    return-object v5

    :cond_a
    if-lt p1, v2, :cond_d

    return-object v5

    :cond_d
    move v1, p1

    if-gez p1, :cond_11

    const/4 v1, 0x0

    :cond_11
    :goto_11
    if-ge v1, v2, :cond_28

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_28

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_28
    if-lt v1, v2, :cond_2b

    return-object v5

    :cond_2b
    add-int/lit8 v0, v1, 0x1

    :goto_2d
    if-ge v0, v2, :cond_3a

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3a

    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_3a
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method

.method public preceding(I)[I
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_a

    return-object v5

    :cond_a
    if-gtz p1, :cond_d

    return-object v5

    :cond_d
    move v0, p1

    if-le p1, v2, :cond_11

    move v0, v2

    :cond_11
    :goto_11
    if-lez v0, :cond_2a

    iget-object v3, p0, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->mText:Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2a

    invoke-direct {p0, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isEndBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2a

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_2a
    if-gtz v0, :cond_2d

    return-object v5

    :cond_2d
    add-int/lit8 v1, v0, -0x1

    :goto_2f
    if-lez v1, :cond_3c

    invoke-direct {p0, v1}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->isStartBoundary(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3c

    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    :cond_3c
    invoke-virtual {p0, v1, v0}, Landroid/view/AccessibilityIterators$ParagraphTextSegmentIterator;->getRange(II)[I

    move-result-object v3

    return-object v3
.end method
