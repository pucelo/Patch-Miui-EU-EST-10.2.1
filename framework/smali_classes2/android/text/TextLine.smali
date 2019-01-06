.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mActivePaint:Landroid/text/TextPaint;

.field private mAddedWidth:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private final mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$DecorationInfo;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private adjustHyphenEdit(III)I
    .registers 6

    move v0, p3

    if-lez p1, :cond_5

    and-int/lit8 v0, p3, -0x19

    :cond_5
    iget v1, p0, Landroid/text/TextLine;->mLen:I

    if-ge p2, v1, :cond_b

    and-int/lit8 v0, v0, -0x8

    :cond_b
    return v0
.end method

.method private countStretchableSpaces(II)I
    .registers 6

    const/4 v0, 0x0

    move v1, p1

    :goto_2
    if-ge v1, p2, :cond_d

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, p2}, Landroid/text/TextLine;->nextStretchableSpace(II)I

    move-result v1

    goto :goto_2

    :cond_d
    return v0
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .registers 24

    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    const/4 v1, 0x1

    :goto_6
    move/from16 v0, p4

    if-ne v1, v0, :cond_33

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    add-float v7, p5, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    return v13

    :cond_31
    const/4 v1, 0x0

    goto :goto_6

    :cond_33
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v1

    return v1
.end method

.method private static drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .registers 17

    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float v0, v0, p7

    add-float v2, v0, p3

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v7

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v8

    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v6

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    add-float v4, v2, p4

    move-object v0, p1

    move v1, p5

    move v3, p6

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v8}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v7}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .registers 28

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_21

    sub-int v4, p4, p3

    sub-int v6, p6, p5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    :goto_20
    return-void

    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v9, v17, p3

    add-int v10, v17, p4

    add-int v11, v17, p5

    add-int v12, v17, p6

    move/from16 v0, p9

    int-to-float v14, v0

    move-object/from16 v7, p1

    move/from16 v13, p8

    move/from16 v15, p7

    move-object/from16 v16, p2

    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_20
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .registers 8

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .registers 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :cond_e
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_1b
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .registers 30

    if-ltz p1, :cond_c

    if-eqz p6, :cond_22

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_8
    move/from16 v0, p5

    if-ne v0, v3, :cond_38

    :cond_c
    if-eqz p6, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_8

    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setWordSpacing(F)V

    move/from16 v4, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_6d

    move/from16 v20, p3

    :cond_54
    if-eqz p4, :cond_ec

    const/4 v6, 0x1

    :goto_57
    if-eqz p6, :cond_ef

    const/4 v8, 0x0

    :goto_5a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_f2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v3

    return v3

    :cond_6d
    if-eqz p6, :cond_d8

    add-int/lit8 v22, p5, 0x1

    :goto_71
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    :goto_77
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_db

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_54

    const/16 v18, 0x0

    const/16 v16, 0x0

    :goto_c2
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_e4

    aget-object v19, v21, v16

    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_de

    move-object/from16 v18, v19

    check-cast v18, Landroid/text/style/ReplacementSpan;

    :goto_d5
    add-int/lit8 v16, v16, 0x1

    goto :goto_c2

    :cond_d8
    move/from16 v22, p5

    goto :goto_71

    :cond_db
    move/from16 v4, v20

    goto :goto_77

    :cond_de
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_d5

    :cond_e4
    if-eqz v18, :cond_54

    if-eqz p6, :cond_e9

    :goto_e8
    return v20

    :cond_e9
    move/from16 v20, v4

    goto :goto_e8

    :cond_ec
    const/4 v6, 0x0

    goto/16 :goto_57

    :cond_ef
    const/4 v8, 0x2

    goto/16 :goto_5a

    :cond_f2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3
.end method

.method private getRunAdvance(Landroid/text/TextPaint;IIIIZI)F
    .registers 17

    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_13

    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    move-object v0, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v0

    return v0

    :cond_13
    iget v8, p0, Landroid/text/TextLine;->mStart:I

    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v2, v8, p2

    add-int v3, v8, p3

    add-int v4, v8, p4

    add-int v5, v8, p5

    add-int v7, v8, p7

    move-object v0, p1

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v0

    return v0
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 37

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    if-nez p12, :cond_14

    if-eqz p6, :cond_4b

    if-eqz p5, :cond_4b

    :cond_14
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz p11, :cond_71

    const/16 v22, 0x1

    :goto_1d
    if-eqz v22, :cond_33

    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    if-eqz v22, :cond_4b

    move-object/from16 v6, p11

    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    :cond_4b
    if-eqz p6, :cond_69

    if-eqz p5, :cond_51

    sub-float p7, p7, v23

    :cond_51
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :cond_69
    if-eqz p5, :cond_70

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    :cond_70
    return v23

    :cond_71
    const/16 v22, 0x0

    goto :goto_1d
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 49

    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_c

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_50

    :cond_c
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "measureLimit ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ") is out of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "start ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ") and limit ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ") bounds"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_50
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_6a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz p10, :cond_68

    move-object/from16 v0, p10

    invoke-static {v0, v4}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_68
    const/4 v3, 0x0

    return v3

    :cond_6a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_b3

    const/16 v32, 0x0

    :goto_72
    if-nez v32, :cond_fd

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v4}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    const/16 v18, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p2

    invoke-direct/range {v3 .. v18}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v3

    return v3

    :cond_b3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/TextLine;->mStart:I

    add-int v10, v10, p3

    invoke-virtual {v3, v5, v7, v10}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/TextLine;->mStart:I

    add-int v10, v10, p3

    invoke-virtual {v3, v5, v7, v10}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v3, :cond_f5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v3, :cond_f9

    const/16 v32, 0x1

    goto/16 :goto_72

    :cond_f5
    const/16 v32, 0x1

    goto/16 :goto_72

    :cond_f9
    const/16 v32, 0x0

    goto/16 :goto_72

    :cond_fd
    move/from16 v34, p6

    move/from16 v8, p1

    :goto_101
    move/from16 v0, p2

    if-ge v8, v0, :cond_2ee

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p3

    invoke-virtual {v3, v5, v7}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v28, v3, v5

    move/from16 v0, v28

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v6, 0x0

    const/16 v29, 0x0

    :goto_134
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v29

    if-ge v0, v3, :cond_17a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v29

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v9

    if-ge v3, v5, :cond_15c

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v29

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v8

    if-gt v3, v5, :cond_15f

    :cond_15c
    :goto_15c
    add-int/lit8 v29, v29, 0x1

    goto :goto_134

    :cond_15f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    aget-object v36, v3, v29

    move-object/from16 v0, v36

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_174

    move-object/from16 v6, v36

    check-cast v6, Landroid/text/style/ReplacementSpan;

    goto :goto_15c

    :cond_174
    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_15c

    :cond_17a
    if-eqz v6, :cond_1a2

    if-nez p11, :cond_182

    move/from16 v0, p2

    if-ge v9, v0, :cond_19f

    :cond_182
    const/16 v17, 0x1

    :goto_184
    move-object/from16 v5, p0

    move-object v7, v4

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p10

    invoke-direct/range {v5 .. v17}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v3

    add-float p6, p6, v3

    :goto_19b
    move/from16 v8, v28

    goto/16 :goto_101

    :cond_19f
    const/16 v17, 0x0

    goto :goto_184

    :cond_1a2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move v12, v8

    move v13, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move/from16 v29, v8

    :goto_1be
    move/from16 v0, v29

    if-ge v0, v9, :cond_2ad

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, v29

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v28

    invoke-virtual {v3, v5, v7}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v30, v3, v5

    move/from16 v0, v30

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v33

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/16 v31, 0x0

    :goto_1eb
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v31

    if-ge v0, v3, :cond_228

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v31

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, v33

    if-ge v3, v5, :cond_215

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v31

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, v29

    if-gt v3, v5, :cond_218

    :cond_215
    :goto_215
    add-int/lit8 v31, v31, 0x1

    goto :goto_1eb

    :cond_218
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/CharacterStyle;

    aget-object v35, v3, v31

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_215

    :cond_228
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v4, v1}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    move/from16 v0, v29

    if-ne v0, v8, :cond_25b

    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    :cond_236
    :goto_236
    move/from16 v13, v30

    invoke-virtual/range {v27 .. v27}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v3

    if-eqz v3, :cond_257

    invoke-virtual/range {v27 .. v27}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v26

    move/from16 v0, v29

    move-object/from16 v1, v26

    iput v0, v1, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v0, v30

    move-object/from16 v1, v26

    iput v0, v1, Landroid/text/TextLine$DecorationInfo;->end:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_257
    move/from16 v29, v30

    goto/16 :goto_1be

    :cond_25b
    invoke-virtual {v4, v11}, Landroid/text/TextPaint;->hasEqualAttributes(Landroid/text/TextPaint;)Z

    move-result v3

    if-nez v3, :cond_236

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    if-nez p11, :cond_278

    move/from16 v0, p2

    if-ge v13, v0, :cond_2aa

    :cond_278
    const/16 v23, 0x1

    :goto_27a
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v10, p0

    move v14, v8

    move/from16 v15, v28

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v25}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v3

    add-float p6, p6, v3

    move/from16 v12, v29

    invoke-virtual {v11, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_236

    :cond_2aa
    const/16 v23, 0x0

    goto :goto_27a

    :cond_2ad
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v3

    invoke-virtual {v11, v3}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    if-nez p11, :cond_2c4

    move/from16 v0, p2

    if-ge v13, v0, :cond_2eb

    :cond_2c4
    const/16 v23, 0x1

    :goto_2c6
    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v10, p0

    move v14, v8

    move/from16 v15, v28

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v25}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F

    move-result v3

    add-float p6, p6, v3

    goto/16 :goto_19b

    :cond_2eb
    const/16 v23, 0x0

    goto :goto_2c6

    :cond_2ee
    sub-float v3, p6, v34

    return v3
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZILjava/util/ArrayList;)F
    .registers 63
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "ZI",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;)F"
        }
    .end annotation

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mAddedWidth:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setWordSpacing(F)V

    if-eqz p12, :cond_12

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_12
    move/from16 v0, p3

    move/from16 v1, p2

    if-ne v0, v1, :cond_1a

    const/4 v2, 0x0

    return v2

    :cond_1a
    const/16 v46, 0x0

    if-nez p15, :cond_141

    const/16 v43, 0x0

    :goto_20
    if-nez p13, :cond_2c

    if-eqz p7, :cond_40

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_2c

    if-eqz v43, :cond_147

    :cond_2c
    :goto_2c
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p14

    invoke-direct/range {v2 .. v9}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v46

    :cond_40
    if-eqz p7, :cond_172

    if-eqz p6, :cond_14b

    sub-float v3, p8, v46

    move/from16 v5, p8

    :goto_48
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_81

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v44

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v45

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p9

    int-to-float v4, v0

    move/from16 v0, p11

    int-to-float v6, v0

    move-object/from16 v2, p7

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_81
    if-eqz v43, :cond_157

    const/16 v41, 0x0

    :goto_85
    move/from16 v0, v41

    move/from16 v1, v43

    if-ge v0, v1, :cond_157

    move-object/from16 v0, p15

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/text/TextLine$DecorationInfo;

    move-object/from16 v0, v42

    iget v2, v0, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v0, p2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, v42

    iget v2, v0, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v0, p14

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v21

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    invoke-direct/range {v6 .. v13}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v40

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, p6

    invoke-direct/range {v14 .. v21}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI)F

    move-result v39

    if-eqz p6, :cond_151

    sub-float v27, v5, v39

    sub-float v28, v5, v40

    :goto_d3
    move-object/from16 v0, v42

    iget v2, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v2, :cond_f5

    move-object/from16 v0, v42

    iget v0, v0, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v25

    move-object/from16 v0, v42

    iget v0, v0, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    move/from16 v26, v0

    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v22, p1

    move-object/from16 v23, p7

    invoke-static/range {v22 .. v29}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_f5
    move-object/from16 v0, v42

    iget-boolean v2, v0, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v2, :cond_119

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getUnderlineThickness()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v25

    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v22, p1

    move-object/from16 v23, p7

    invoke-static/range {v22 .. v29}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_119
    move-object/from16 v0, v42

    iget-boolean v2, v0, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v2, :cond_13d

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Paint;->getStrikeThruThickness()F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v26

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v24

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v25

    move/from16 v0, p10

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v22, p1

    move-object/from16 v23, p7

    invoke-static/range {v22 .. v29}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_13d
    add-int/lit8 v41, v41, 0x1

    goto/16 :goto_85

    :cond_141
    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v43

    goto/16 :goto_20

    :cond_147
    if-eqz p6, :cond_40

    goto/16 :goto_2c

    :cond_14b
    move/from16 v3, p8

    add-float v5, p8, v46

    goto/16 :goto_48

    :cond_151
    add-float v27, v3, v40

    add-float v28, v3, v39

    goto/16 :goto_d3

    :cond_157
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v38, p10, v2

    move-object/from16 v29, p0

    move-object/from16 v30, p7

    move-object/from16 v31, p1

    move/from16 v32, p2

    move/from16 v33, p3

    move/from16 v34, p4

    move/from16 v35, p5

    move/from16 v36, p6

    move/from16 v37, v3

    invoke-direct/range {v29 .. v38}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    :cond_172
    if-eqz p6, :cond_179

    move/from16 v0, v46

    neg-float v0, v0

    move/from16 v46, v0

    :cond_179
    return v46
.end method

.method public static isLineEndSpace(C)Z
    .registers 3

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_9

    const/16 v1, 0x9

    if-ne p0, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/16 v1, 0x1680

    if-eq p0, v1, :cond_9

    const/16 v1, 0x2000

    if-gt v1, p0, :cond_1a

    const/16 v1, 0x200a

    if-gt p0, v1, :cond_1a

    const/16 v1, 0x2007

    if-ne p0, v1, :cond_9

    :cond_1a
    const/16 v1, 0x205f

    if-eq p0, v1, :cond_9

    const/16 v1, 0x3000

    if-eq p0, v1, :cond_9

    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isStretchableWhitespace(I)Z
    .registers 4

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_9

    const/16 v1, 0xa0

    if-ne p1, v1, :cond_a

    :cond_9
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 18

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private nextStretchableSpace(II)I
    .registers 7

    move v1, p1

    :goto_1
    if-ge v1, p2, :cond_1f

    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v2, v1

    :goto_b
    invoke-direct {p0, v0}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    return v1

    :cond_12
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_b

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1f
    return p2
.end method

.method static obtain()Landroid/text/TextLine;
    .registers 5

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v2

    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v2, v0

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_22

    monitor-exit v3

    return-object v1

    :cond_1b
    monitor-exit v3

    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    return-object v1

    :catchall_22
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .registers 5

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iput-object v3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iput-object v3, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    iput-object v3, p0, Landroid/text/TextLine;->mChars:[C

    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_20
    :try_start_20
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_31

    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0
    :try_end_2f
    .catchall {:try_start_20 .. :try_end_2f} :catchall_34

    :cond_2f
    monitor-exit v2

    return-object v3

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :catchall_34
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .registers 7

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .registers 24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_44

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_25

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    :cond_25
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_44

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    :cond_44
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit8 v14, v1, -0x2

    const/4 v13, 0x0

    :goto_53
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_f7

    aget v16, v17, v13

    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    add-int v15, v16, v1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v15, v1, :cond_6e

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mLen:I

    :cond_6e
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_b3

    const/4 v5, 0x1

    :goto_78
    move/from16 v3, v16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_b5

    move/from16 v4, v16

    :goto_82
    if-gt v4, v15, :cond_f3

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_b7

    if-ge v4, v15, :cond_b7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v11, v1, v4

    const v1, 0xd800

    if-lt v11, v1, :cond_b7

    const v1, 0xdc00

    if-ge v11, v1, :cond_b7

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v15, :cond_b7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v11

    const v1, 0xffff

    if-le v11, v1, :cond_b7

    add-int/lit8 v4, v4, 0x1

    :cond_b0
    :goto_b0
    add-int/lit8 v4, v4, 0x1

    goto :goto_82

    :cond_b3
    const/4 v5, 0x0

    goto :goto_78

    :cond_b5
    move v4, v15

    goto :goto_82

    :cond_b7
    if-eq v4, v15, :cond_bd

    const/16 v1, 0x9

    if-ne v11, v1, :cond_b0

    :cond_bd
    add-float v6, p2, v12

    if-ne v13, v14, :cond_c7

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-eq v4, v1, :cond_f1

    :cond_c7
    const/4 v10, 0x1

    :goto_c8
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v1

    add-float/2addr v12, v1

    const/16 v1, 0x9

    if-ne v11, v1, :cond_ee

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float v12, v1, v2

    :cond_ee
    add-int/lit8 v3, v4, 0x1

    goto :goto_b0

    :cond_f1
    const/4 v10, 0x0

    goto :goto_c8

    :cond_f3
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_53

    :cond_f7
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .registers 32

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_77

    const/16 v20, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v27, v0

    const/16 v26, 0x0

    const/4 v4, 0x0

    move/from16 v5, v16

    const/16 v18, -0x1

    const/16 v28, 0x0

    if-nez p1, :cond_7a

    const/4 v3, -0x2

    :cond_25
    :goto_25
    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_130

    const/4 v8, 0x1

    :goto_2c
    if-eqz v8, :cond_133

    const/4 v2, 0x2

    :goto_2f
    add-int v10, v3, v2

    if-ltz v10, :cond_150

    move-object/from16 v0, v27

    array-length v2, v0

    if-ge v10, v2, :cond_150

    aget v2, v27, v10

    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v2, v10, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v12, v11, v2

    move/from16 v0, v16

    if-le v12, v0, :cond_4c

    move/from16 v12, v16

    :cond_4c
    add-int/lit8 v2, v10, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v19, v2, 0x3f

    and-int/lit8 v2, v19, 0x1

    if-eqz v2, :cond_136

    const/4 v13, 0x1

    :goto_59
    move/from16 v0, p2

    if-ne v0, v13, :cond_139

    const/4 v8, 0x1

    :goto_5e
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_142

    if-eqz v8, :cond_13c

    move v14, v11

    :goto_66
    move-object/from16 v9, p0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    if-eqz v8, :cond_13f

    :goto_6f
    move/from16 v0, v18

    if-ne v0, v12, :cond_14c

    move v3, v10

    move/from16 v26, v19

    goto :goto_25

    :cond_77
    const/16 v20, 0x0

    goto :goto_11

    :cond_7a
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_84

    move-object/from16 v0, v27

    array-length v3, v0

    goto :goto_25

    :cond_84
    const/4 v3, 0x0

    :goto_85
    move-object/from16 v0, v27

    array-length v2, v0

    if-ge v3, v2, :cond_f7

    aget v2, v27, v3

    add-int/lit8 v4, v2, 0x0

    move/from16 v0, p1

    if-lt v0, v4, :cond_124

    add-int/lit8 v2, v3, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    move/from16 v0, v16

    if-le v5, v0, :cond_a2

    move/from16 v5, v16

    :cond_a2
    move/from16 v0, p1

    if-ge v0, v5, :cond_124

    add-int/lit8 v2, v3, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v26, v2, 0x3f

    move/from16 v0, p1

    if-ne v0, v4, :cond_f7

    add-int/lit8 v21, p1, -0x1

    const/16 v22, 0x0

    :goto_b6
    move-object/from16 v0, v27

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_f7

    aget v2, v27, v22

    add-int/lit8 v25, v2, 0x0

    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_121

    add-int/lit8 v2, v22, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v24, v25, v2

    move/from16 v0, v24

    move/from16 v1, v16

    if-le v0, v1, :cond_d9

    move/from16 v24, v16

    :cond_d9
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_121

    add-int/lit8 v2, v22, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v23, v2, 0x3f

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_121

    move/from16 v3, v22

    move/from16 v26, v23

    move/from16 v4, v25

    move/from16 v5, v24

    const/16 v28, 0x1

    :cond_f7
    move-object/from16 v0, v27

    array-length v2, v0

    if-eq v3, v2, :cond_25

    and-int/lit8 v2, v26, 0x1

    if-eqz v2, :cond_128

    const/4 v6, 0x1

    :goto_101
    move/from16 v0, p2

    if-ne v0, v6, :cond_12a

    const/4 v8, 0x1

    :goto_106
    if-eqz v8, :cond_12c

    move v2, v5

    :goto_109
    move/from16 v0, p1

    if-ne v0, v2, :cond_111

    move/from16 v0, v28

    if-eq v8, v0, :cond_25

    :cond_111
    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    if-eqz v8, :cond_12e

    move v2, v5

    :goto_11c
    move/from16 v0, v18

    if-eq v0, v2, :cond_25

    return v18

    :cond_121
    add-int/lit8 v22, v22, 0x2

    goto :goto_b6

    :cond_124
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_85

    :cond_128
    const/4 v6, 0x0

    goto :goto_101

    :cond_12a
    const/4 v8, 0x0

    goto :goto_106

    :cond_12c
    move v2, v4

    goto :goto_109

    :cond_12e
    move v2, v4

    goto :goto_11c

    :cond_130
    const/4 v8, 0x0

    goto/16 :goto_2c

    :cond_133
    const/4 v2, -0x2

    goto/16 :goto_2f

    :cond_136
    const/4 v13, 0x0

    goto/16 :goto_59

    :cond_139
    const/4 v8, 0x0

    goto/16 :goto_5e

    :cond_13c
    move v14, v12

    goto/16 :goto_66

    :cond_13f
    move v12, v11

    goto/16 :goto_6f

    :cond_142
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_14c

    if-eqz v8, :cond_14d

    move/from16 v18, v11

    :cond_14c
    :goto_14c
    return v18

    :cond_14d
    move/from16 v18, v12

    goto :goto_14c

    :cond_150
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_161

    if-eqz v8, :cond_15e

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v18, v2, 0x1

    goto :goto_14c

    :cond_15e
    const/16 v18, -0x1

    goto :goto_14c

    :cond_161
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_14c

    if-eqz v8, :cond_16c

    move/from16 v18, v16

    goto :goto_14c

    :cond_16c
    const/16 v18, 0x0

    goto :goto_14c
.end method

.method justify(F)V
    .registers 8

    const/4 v5, 0x0

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    :goto_3
    if-lez v0, :cond_19

    iget-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v3

    if-eqz v3, :cond_19

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_19
    invoke-direct {p0, v5, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v1

    if-nez v1, :cond_20

    return-void

    :cond_20
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v5, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, p1, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Landroid/text/TextLine;->mAddedWidth:F

    return-void
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .registers 22

    if-eqz p2, :cond_8

    add-int/lit8 v16, p1, -0x1

    :goto_4
    if-gez v16, :cond_b

    const/4 v1, 0x0

    return v1

    :cond_8
    move/from16 v16, p1

    goto :goto_4

    :cond_b
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_44

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_2b

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    :cond_2b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_44

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    :cond_44
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v15, v1, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v11, 0x0

    :goto_4f
    array-length v1, v15

    if-ge v11, v1, :cond_11f

    aget v14, v15, v11

    add-int/lit8 v1, v11, 0x1

    aget v1, v15, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v13, v14, v1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v13, v1, :cond_68

    move-object/from16 v0, p0

    iget v13, v0, Landroid/text/TextLine;->mLen:I

    :cond_68
    add-int/lit8 v1, v11, 0x1

    aget v1, v15, v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_a3

    const/4 v5, 0x1

    :goto_72
    move v2, v14

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_a5

    move v4, v14

    :goto_7a
    if-gt v4, v13, :cond_11b

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_a7

    if-ge v4, v13, :cond_a7

    aget-char v9, v8, v4

    const v1, 0xd800

    if-lt v9, v1, :cond_a7

    const v1, 0xdc00

    if-ge v9, v1, :cond_a7

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v13, :cond_a7

    invoke-static {v8, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v9

    const v1, 0xffff

    if-le v9, v1, :cond_a7

    add-int/lit8 v4, v4, 0x1

    :cond_a0
    :goto_a0
    add-int/lit8 v4, v4, 0x1

    goto :goto_7a

    :cond_a3
    const/4 v5, 0x0

    goto :goto_72

    :cond_a5
    move v4, v13

    goto :goto_7a

    :cond_a7
    if-eq v4, v13, :cond_ad

    const/16 v1, 0x9

    if-ne v9, v1, :cond_a0

    :cond_ad
    move/from16 v0, v16

    if-lt v0, v2, :cond_d1

    move/from16 v0, v16

    if-ge v0, v4, :cond_d1

    const/4 v12, 0x1

    :goto_b6
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d3

    const/4 v1, 0x1

    :goto_be
    if-ne v1, v5, :cond_d5

    const/4 v7, 0x1

    :goto_c1
    if-eqz v12, :cond_d7

    if-eqz v7, :cond_d7

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v10, v1

    return v10

    :cond_d1
    const/4 v12, 0x0

    goto :goto_b6

    :cond_d3
    const/4 v1, 0x0

    goto :goto_be

    :cond_d5
    const/4 v7, 0x0

    goto :goto_c1

    :cond_d7
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v17

    if-eqz v7, :cond_f1

    :goto_e2
    add-float v10, v10, v17

    if-eqz v12, :cond_f7

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v10, v1

    return v10

    :cond_f1
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    goto :goto_e2

    :cond_f7
    const/16 v1, 0x9

    if-ne v9, v1, :cond_118

    move/from16 v0, p1

    if-ne v0, v4, :cond_100

    return v10

    :cond_100
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v10, v1, v3

    move/from16 v0, v16

    if-ne v0, v4, :cond_118

    return v10

    :cond_118
    add-int/lit8 v2, v4, 0x1

    goto :goto_a0

    :cond_11b
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_4f

    :cond_11f
    return v10
.end method

.method measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .registers 31

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [F

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v26, v0

    const/4 v3, 0x0

    :goto_15
    move-object/from16 v0, v26

    array-length v1, v0

    if-ge v3, v1, :cond_27

    aget-boolean v1, p1, v3

    if-eqz v1, :cond_25

    add-int/lit8 v1, v3, -0x1

    :goto_20
    aput v1, v26, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_25
    move v1, v3

    goto :goto_20

    :cond_27
    const/4 v1, 0x0

    aget v1, v26, v1

    if-gez v1, :cond_30

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v1, v21, v2

    :cond_30
    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_7e

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_5b

    const/4 v3, 0x0

    :goto_41
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v3, v1, :cond_5a

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    aput v1, v21, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :cond_5a
    return-object v21

    :cond_5b
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_7e

    const/4 v3, 0x0

    :goto_64
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v3, v1, :cond_7d

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    aput v1, v21, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_7d
    return-object v21

    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v25, v0

    const/16 v20, 0x0

    :goto_8e
    move-object/from16 v0, v25

    array-length v1, v0

    move/from16 v0, v20

    if-ge v0, v1, :cond_18f

    aget v24, v25, v20

    add-int/lit8 v1, v20, 0x1

    aget v1, v25, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    add-int v23, v24, v1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v0, v23

    if-le v0, v1, :cond_af

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v23, v0

    :cond_af
    add-int/lit8 v1, v20, 0x1

    aget v1, v25, v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_fb

    const/4 v8, 0x1

    :goto_b9
    move/from16 v5, v24

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_fd

    move/from16 v6, v24

    :goto_c3
    move/from16 v0, v23

    if-gt v6, v0, :cond_18b

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_100

    move/from16 v0, v23

    if-ge v6, v0, :cond_100

    aget-char v18, v17, v6

    const v1, 0xd800

    move/from16 v0, v18

    if-lt v0, v1, :cond_100

    const v1, 0xdc00

    move/from16 v0, v18

    if-ge v0, v1, :cond_100

    add-int/lit8 v1, v6, 0x1

    move/from16 v0, v23

    if-ge v1, v0, :cond_100

    move-object/from16 v0, v17

    invoke-static {v0, v6}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v18

    const v1, 0xffff

    move/from16 v0, v18

    if-le v0, v1, :cond_100

    add-int/lit8 v6, v6, 0x1

    :cond_f8
    :goto_f8
    add-int/lit8 v6, v6, 0x1

    goto :goto_c3

    :cond_fb
    const/4 v8, 0x0

    goto :goto_b9

    :cond_fd
    move/from16 v6, v23

    goto :goto_c3

    :cond_100
    move/from16 v0, v23

    if-eq v6, v0, :cond_10a

    const/16 v1, 0x9

    move/from16 v0, v18

    if-ne v0, v1, :cond_f8

    :cond_10a
    move/from16 v22, v19

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14e

    const/4 v1, 0x1

    :goto_114
    if-ne v1, v8, :cond_150

    const/4 v15, 0x1

    :goto_117
    move-object/from16 v4, p0

    move v7, v6

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v9}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v27

    if-eqz v15, :cond_152

    :goto_122
    add-float v19, v19, v27

    if-eqz v15, :cond_158

    move/from16 v16, v22

    :goto_128
    if-eqz v15, :cond_15b

    move-object/from16 v14, p2

    :goto_12c
    move v3, v5

    :goto_12d
    if-gt v3, v6, :cond_15d

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v3, v1, :cond_15d

    aget v1, v26, v3

    if-lt v1, v5, :cond_14b

    aget v1, v26, v3

    if-ge v1, v6, :cond_14b

    move-object/from16 v9, p0

    move v10, v5

    move v11, v3

    move v12, v6

    move v13, v8

    invoke-direct/range {v9 .. v14}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float v1, v1, v16

    aput v1, v21, v3

    :cond_14b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12d

    :cond_14e
    const/4 v1, 0x0

    goto :goto_114

    :cond_150
    const/4 v15, 0x0

    goto :goto_117

    :cond_152
    move/from16 v0, v27

    neg-float v0, v0

    move/from16 v27, v0

    goto :goto_122

    :cond_158
    move/from16 v16, v19

    goto :goto_128

    :cond_15b
    const/4 v14, 0x0

    goto :goto_12c

    :cond_15d
    const/16 v1, 0x9

    move/from16 v0, v18

    if-ne v0, v1, :cond_187

    aget v1, v26, v6

    if-ne v1, v6, :cond_169

    aput v19, v21, v6

    :cond_169
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float v2, v2, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float v19, v1, v2

    add-int/lit8 v1, v6, 0x1

    aget v1, v26, v1

    if-ne v1, v6, :cond_187

    add-int/lit8 v1, v6, 0x1

    aput v19, v21, v1

    :cond_187
    add-int/lit8 v5, v6, 0x1

    goto/16 :goto_f8

    :cond_18b
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_8e

    :cond_18f
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    aget v1, v26, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-ne v1, v2, :cond_1a1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    aput v19, v21, v1

    :cond_1a1
    return-object v21
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .registers 4

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .registers 3

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    :cond_b
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    return v0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .registers 18

    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/text/TextLine;->mStart:I

    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    iput p5, p0, Landroid/text/TextLine;->mDir:I

    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_1b

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1b
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/4 v3, 0x0

    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_3a

    move-object v7, p2

    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_8e

    const/4 v3, 0x1

    :cond_3a
    :goto_3a
    if-nez v3, :cond_42

    if-nez p7, :cond_42

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_90

    :cond_42
    const/4 v7, 0x1

    :goto_43
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_94

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_54

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_5c

    :cond_54
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v7

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    :cond_5c
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz v3, :cond_94

    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    move v4, p3

    :goto_67
    if-ge v4, p4, :cond_94

    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_92

    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    sub-int v2, v5, p3

    :goto_84
    if-ge v6, v2, :cond_92

    const v7, 0xfeff

    aput-char v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_84

    :cond_8e
    const/4 v3, 0x0

    goto :goto_3a

    :cond_90
    const/4 v7, 0x0

    goto :goto_43

    :cond_92
    move v4, v5

    goto :goto_67

    :cond_94
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    const/4 v7, 0x0

    iput v7, p0, Landroid/text/TextLine;->mAddedWidth:F

    return-void
.end method
