.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$1;,
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;,
        Landroid/text/TextUtils$TruncateAt;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ACCESSIBILITY_CLICKABLE_SPAN:I = 0x19

.field public static final ACCESSIBILITY_URL_SPAN:I = 0x1a

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field public static final EASY_EDIT_SPAN:I = 0x16

.field static final ELLIPSIS_NORMAL:[C

.field public static final ELLIPSIS_STRING:Ljava/lang/String;

.field static final ELLIPSIS_TWO_DOTS:[C

.field private static final ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final FIRST_SPAN:I = 0x1

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LAST_SPAN:I = 0x1a

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final LOCALE_SPAN:I = 0x17

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final SPELL_CHECK_SPAN:I = 0x14

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUGGESTION_RANGE_SPAN:I = 0x15

.field public static final SUGGESTION_SPAN:I = 0x13

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field private static final TAG:Ljava/lang/String; = "TextUtils"

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TTS_SPAN:I = 0x18

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static final ZWNBS_CHAR:C = '\ufeff'

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [C

    const/16 v1, 0x2026

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    new-array v0, v3, [C

    const/16 v1, 0x2025

    aput-char v1, v0, v2

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    sput-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/text/TextUtils;->sTemp:[C

    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .registers 32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    :try_start_4
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_da

    move-result v24

    cmpg-float v4, v24, p2

    if-gtz v4, :cond_1b

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p0

    :cond_1b
    :try_start_1b
    iget-object v14, v3, Landroid/text/MeasuredText;->mChars:[C

    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_20
    move/from16 v0, v17

    if-ge v0, v7, :cond_2f

    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_2c

    add-int/lit8 v15, v15, 0x1

    :cond_2c
    add-int/lit8 v17, v17, 0x1

    goto :goto_20

    :cond_2f
    add-int/lit8 v22, v15, 0x1

    const/16 v19, 0x0

    const-string/jumbo v20, ""

    const/16 v23, 0x0

    const/16 v16, 0x0

    iget-object v0, v3, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v25, v0

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v8

    const/16 v17, 0x0

    :goto_44
    move/from16 v0, v17

    if-ge v0, v7, :cond_bf

    move/from16 v0, v23

    int-to-float v4, v0

    aget v5, v25, v17

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v23, v0

    aget-char v4, v14, v17

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_97

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v22, v22, -0x1

    const/4 v4, 0x1

    move/from16 v0, v22

    if-ne v0, v4, :cond_9a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_76
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v10, 0x0

    const/4 v13, 0x0

    move-object/from16 v12, p5

    invoke-virtual/range {v8 .. v13}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    iget v4, v8, Landroid/text/MeasuredText;->mLen:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v4, v5}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v18

    move/from16 v0, v23

    int-to-float v4, v0

    add-float v4, v4, v18

    cmpg-float v4, v4, p2

    if-gtz v4, :cond_97

    add-int/lit8 v19, v17, 0x1

    move-object/from16 v20, v9

    :cond_97
    add-int/lit8 v17, v17, 0x1

    goto :goto_44

    :cond_9a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v5, v10

    move-object/from16 v0, p4

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_76

    :cond_bf
    invoke-static {v8}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    new-instance v21, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move/from16 v2, v19

    invoke-virtual {v0, v4, v1, v5, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_d6
    .catchall {:try_start_1b .. :try_end_d6} :catchall_da

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v21

    :catchall_da
    move-exception v4

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v4
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9

    const/4 v4, 0x0

    array-length v5, p0

    if-nez v5, :cond_8

    const-string/jumbo v4, ""

    return-object v4

    :cond_8
    array-length v5, p0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    aget-object v4, p0, v4

    return-object v4

    :cond_f
    const/4 v2, 0x0

    array-length v6, p0

    move v5, v4

    :goto_12
    if-ge v5, v6, :cond_1b

    aget-object v0, p0, v5

    instance-of v7, v0, Landroid/text/Spanned;

    if-eqz v7, :cond_32

    const/4 v2, 0x1

    :cond_1b
    if-eqz v2, :cond_3b

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    array-length v5, p0

    :goto_23
    if-ge v4, v5, :cond_35

    aget-object v0, p0, v4

    if-nez v0, :cond_2c

    const-string/jumbo v0, "null"

    :cond_2c
    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_35
    new-instance v4, Landroid/text/SpannedString;

    invoke-direct {v4, v3}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v4

    :cond_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p0

    :goto_41
    if-ge v4, v5, :cond_4b

    aget-object v0, p0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    :cond_4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .registers 14

    if-nez p3, :cond_4

    const-class p3, Ljava/lang/Object;

    :cond_4
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v2, 0x0

    :goto_9
    array-length v5, v3

    if-ge v2, v5, :cond_32

    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    if-ge v4, p1, :cond_21

    move v4, p1

    :cond_21
    if-le v0, p2, :cond_24

    move v0, p2

    :cond_24
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_32
    return-void
.end method

.method static couldAffectRtl(C)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x590

    if-gt v2, p0, :cond_b

    const/16 v2, 0x8ff

    if-gt p0, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/16 v2, 0x200e

    if-eq p0, v2, :cond_a

    const/16 v2, 0x200f

    if-eq p0, v2, :cond_a

    const/16 v2, 0x202a

    if-gt v2, p0, :cond_1b

    const/16 v2, 0x202e

    if-le p0, v2, :cond_a

    :cond_1b
    const/16 v2, 0x2066

    if-gt v2, p0, :cond_23

    const/16 v2, 0x2069

    if-le p0, v2, :cond_a

    :cond_23
    const v2, 0xd800

    if-gt v2, p0, :cond_2d

    const v2, 0xdfff

    if-le p0, v2, :cond_a

    :cond_2d
    const v2, 0xfb1d

    if-gt v2, p0, :cond_37

    const v2, 0xfdff

    if-le p0, v2, :cond_a

    :cond_37
    const v2, 0xfe70

    if-gt v2, p0, :cond_41

    const v2, 0xfefe

    if-le p0, v2, :cond_a

    :cond_41
    move v0, v1

    goto :goto_a
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    return v4

    :cond_f
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_14
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    if-lez v2, :cond_27

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_14

    :cond_27
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    if-ne v0, v1, :cond_30

    return v5

    :cond_30
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_14

    return v5

    :cond_37
    return v4
.end method

.method static doesNotNeedBidi([CII)Z
    .registers 6

    add-int v0, p1, p2

    move v1, p1

    :goto_3
    if-ge v1, v0, :cond_12

    aget-char v2, p0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    return v2

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_12
    const/4 v2, 0x1

    return v2
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .registers 10

    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_8e

    move-object v3, p0

    check-cast v3, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    :goto_13
    array-length v4, v2

    if-ge v0, v4, :cond_a9

    aget-object v1, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") fl=#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_8e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": (no spans)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_a9
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .registers 10

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .registers 14

    sget-object v6, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p3, v0, :cond_13

    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS_STRING:Ljava/lang/String;

    :goto_8
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_13
    sget-object v7, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    goto :goto_8
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;Landroid/text/TextDirectionHeuristic;Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 30

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    :try_start_8
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/text/TextUtils;->setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v21

    cmpg-float v5, v21, p2

    if-gtz v5, :cond_28

    if-eqz p5, :cond_24

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-interface {v0, v5, v6}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_12f

    :cond_24
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object p0

    :cond_28
    :try_start_28
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    sub-float p2, p2, v11

    const/4 v13, 0x0

    move/from16 v17, v15

    const/4 v5, 0x0

    cmpg-float v5, p2, v5

    if-gez v5, :cond_71

    move v14, v13

    :goto_3b
    if-eqz p5, :cond_44

    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-interface {v0, v14, v1}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    :cond_44
    iget-object v10, v3, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v0, p0

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_b5

    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    :goto_51
    sub-int v5, v17, v14

    sub-int v16, v15, v5

    if-eqz p4, :cond_d8

    if-lez v16, :cond_134

    add-int/lit8 v13, v14, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p7

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v10, v14

    :goto_64
    move v12, v13

    :goto_65
    move/from16 v0, v17

    if-ge v12, v0, :cond_b7

    const v5, 0xfeff

    aput-char v5, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_65

    :cond_71
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_82

    const/4 v5, 0x0

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move v14, v13

    goto :goto_3b

    :cond_82
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-eq v0, v5, :cond_8e

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    if-ne v0, v5, :cond_97

    :cond_8e
    const/4 v5, 0x1

    move/from16 v0, p2

    invoke-virtual {v3, v15, v5, v0}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    goto :goto_3b

    :cond_97
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p2, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v15, v6, v5}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v5

    sub-int v17, v15, v5

    move/from16 v0, v17

    invoke-virtual {v3, v0, v15}, Landroid/text/MeasuredText;->measure(II)F

    move-result v5

    sub-float p2, p2, v5

    const/4 v5, 0x1

    move/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v3, v0, v5, v1}, Landroid/text/MeasuredText;->breakText(IZF)I

    move-result v13

    move v14, v13

    goto :goto_3b

    :cond_b5
    const/4 v4, 0x0

    goto :goto_51

    :cond_b7
    new-instance v18, Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-direct {v0, v10, v5, v15}, Ljava/lang/String;-><init>([CII)V
    :try_end_bf
    .catchall {:try_start_28 .. :try_end_bf} :catchall_12f

    if-nez v4, :cond_c5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v18

    :cond_c5
    :try_start_c5
    new-instance v8, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-class v7, Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v9, 0x0

    move v6, v15

    invoke-static/range {v4 .. v9}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    :try_end_d4
    .catchall {:try_start_c5 .. :try_end_d4} :catchall_12f

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v8

    :cond_d8
    if-nez v16, :cond_e1

    :try_start_da
    const-string/jumbo v5, ""
    :try_end_dd
    .catchall {:try_start_da .. :try_end_dd} :catchall_12f

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v5

    :cond_e1
    if-nez v4, :cond_10e

    :try_start_e3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v5

    add-int v5, v5, v16

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v5, v14}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v5, v15, v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v10, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_109
    .catchall {:try_start_e3 .. :try_end_109} :catchall_12f

    move-result-object v5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v5

    :cond_10e
    :try_start_10e
    new-instance v20, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v20 .. v20}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v5, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    :try_end_12b
    .catchall {:try_start_10e .. :try_end_12b} :catchall_12f

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return-object v20

    :catchall_12f
    move-exception v5

    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v5

    :cond_134
    move v13, v14

    goto/16 :goto_64
.end method

.method public static emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_5

    const-string/jumbo p0, ""

    :cond_5
    return-object p0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_5

    return v5

    :cond_5
    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_32

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_20

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-ge v0, v1, :cond_31

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2e

    return v4

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_31
    return v5

    :cond_32
    return v4
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 10

    const/16 v7, 0x5e

    array-length v5, p1

    const/16 v6, 0x9

    if-le v5, v6, :cond_10

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "max of 9 values are supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_16
    :try_start_16
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    if-ge v0, v5, :cond_5f

    invoke-virtual {v3, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_a2

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_34

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_34
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-static {v2}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    if-gez v4, :cond_60

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "template requests value ^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_5e
    move-exception v1

    :cond_5f
    return-object v3

    :cond_60
    array-length v5, p1

    if-lt v4, v5, :cond_92

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "template requests value ^"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "; only "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " provided"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_92
    add-int/lit8 v5, v0, 0x2

    aget-object v6, p1, v4

    invoke-virtual {v3, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    aget-object v5, p1, v4

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
    :try_end_9e
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_16 .. :try_end_9e} :catch_5e

    move-result v5

    add-int/2addr v0, v5

    goto/16 :goto_16

    :cond_a2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_16
.end method

.method public static firstNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    goto :goto_6
.end method

.method public static formatSelectedCount(I)Ljava/lang/CharSequence;
    .registers 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x1150019

    invoke-virtual {v0, v2, p0, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .registers 13

    const/16 v9, 0x27

    const/16 v8, 0x22

    const/16 v7, 0x2e

    const/4 v5, 0x0

    if-gez p1, :cond_a

    return v5

    :cond_a
    const/4 v4, 0x0

    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_11

    const/16 v4, 0x1000

    :cond_11
    and-int/lit16 v5, p2, 0x6000

    if-nez v5, :cond_16

    return v4

    :cond_16
    move v1, p1

    :goto_17
    if-lez v1, :cond_2b

    add-int/lit8 v5, v1, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_3f

    if-eq v0, v9, :cond_3f

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_3f

    :cond_2b
    move v2, v1

    :goto_2c
    if-lez v2, :cond_42

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0x20

    if-eq v0, v5, :cond_3c

    const/16 v5, 0x9

    if-ne v0, v5, :cond_42

    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_3f
    add-int/lit8 v1, v1, -0x1

    goto :goto_17

    :cond_42
    if-eqz v2, :cond_4e

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_51

    :cond_4e
    or-int/lit16 v5, v4, 0x2000

    return v5

    :cond_51
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_5a

    if-eq v1, v2, :cond_59

    or-int/lit16 v4, v4, 0x2000

    :cond_59
    return v4

    :cond_5a
    if-ne v1, v2, :cond_5f

    return v4

    :cond_5d
    add-int/lit8 v2, v2, -0x1

    :cond_5f
    if-lez v2, :cond_73

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v8, :cond_5d

    if-eq v0, v9, :cond_5d

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_5d

    :cond_73
    if-lez v2, :cond_92

    add-int/lit8 v5, v2, -0x1

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v7, :cond_81

    const/16 v5, 0x3f

    if-ne v0, v5, :cond_8e

    :cond_81
    if-ne v0, v7, :cond_99

    add-int/lit8 v3, v2, -0x2

    :goto_85
    if-ltz v3, :cond_99

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_93

    return v4

    :cond_8e
    const/16 v5, 0x21

    if-eq v0, v5, :cond_81

    :cond_92
    return v4

    :cond_93
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_9c

    :cond_99
    or-int/lit16 v5, v4, 0x4000

    return v5

    :cond_9c
    add-int/lit8 v3, v3, -0x1

    goto :goto_85
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .registers 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_e

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_d
    return-void

    :cond_e
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_18

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_d

    :cond_18
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_22

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_d

    :cond_22
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_2c

    check-cast p0, Landroid/text/GetChars;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_d

    :cond_2c
    move v2, p1

    move v1, p4

    :goto_2e
    if-ge v2, p2, :cond_3c

    add-int/lit8 p4, v1, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, p4

    goto :goto_2e

    :cond_3c
    move p4, v1

    goto :goto_d
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->isRightToLeft()Z

    move-result v1

    if-nez v1, :cond_20

    :cond_17
    const-string/jumbo v1, "debug.force_rtl"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    const/4 v0, 0x1

    :cond_21
    return v0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .registers 11

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne p1, v4, :cond_7

    return v4

    :cond_7
    add-int/lit8 v7, v4, -0x1

    if-ne p1, v7, :cond_c

    return v4

    :cond_c
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v7, 0xd800

    if-lt v0, v7, :cond_5c

    const v7, 0xdbff

    if-gt v0, v7, :cond_5c

    add-int/lit8 v7, p1, 0x1

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v7, 0xdc00

    if-lt v1, v7, :cond_59

    const v7, 0xdfff

    if-gt v1, v7, :cond_59

    add-int/lit8 p1, p1, 0x2

    :goto_2c
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5f

    move-object v7, p0

    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_3c
    array-length v7, v5

    if-ge v3, v7, :cond_5f

    move-object v7, p0

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    move-object v7, p0

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v5, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v6, p1, :cond_56

    if-le v2, p1, :cond_56

    move p1, v2

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    :cond_59
    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    :cond_5c
    add-int/lit8 p1, p1, 0x1

    goto :goto_2c

    :cond_5f
    return p1
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .registers 10

    const/4 v7, 0x0

    if-nez p1, :cond_4

    return v7

    :cond_4
    const/4 v6, 0x1

    if-ne p1, v6, :cond_8

    return v7

    :cond_8
    add-int/lit8 v6, p1, -0x1

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v6, 0xdc00

    if-lt v0, v6, :cond_5a

    const v6, 0xdfff

    if-gt v0, v6, :cond_5a

    add-int/lit8 v6, p1, -0x2

    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v6, 0xd800

    if-lt v1, v6, :cond_57

    const v6, 0xdbff

    if-gt v1, v6, :cond_57

    add-int/lit8 p1, p1, -0x2

    :goto_2a
    instance-of v6, p0, Landroid/text/Spanned;

    if-eqz v6, :cond_5d

    move-object v6, p0

    check-cast v6, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/ReplacementSpan;

    invoke-interface {v6, p1, p1, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_3a
    array-length v6, v4

    if-ge v3, v6, :cond_5d

    move-object v6, p0

    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object v6, p0

    check-cast v6, Landroid/text/Spanned;

    aget-object v7, v4, v3

    invoke-interface {v6, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v5, p1, :cond_54

    if-le v2, p1, :cond_54

    move p1, v5

    :cond_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_57
    add-int/lit8 p1, p1, -0x1

    goto :goto_2a

    :cond_5a
    add-int/lit8 p1, p1, -0x1

    goto :goto_2a

    :cond_5d
    return p1
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .registers 6

    const/16 v4, 0x20

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_12

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_12

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    move v0, v1

    :goto_13
    if-le v0, v2, :cond_20

    add-int/lit8 v3, v0, -0x1

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_20

    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_20
    sub-int v3, v0, v2

    return v3
.end method

.method public static hasStyleSpan(Landroid/text/Spanned;)Z
    .registers 9

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_2e

    move v2, v3

    :goto_5
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Landroid/text/style/CharacterStyle;

    aput-object v2, v1, v4

    const-class v2, Landroid/text/style/ParagraphStyle;

    aput-object v2, v1, v3

    const-class v2, Landroid/text/style/UpdateAppearance;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    array-length v5, v1

    move v2, v4

    :goto_1a
    if-ge v2, v5, :cond_33

    aget-object v0, v1, v2

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v6

    const/4 v7, -0x1

    invoke-interface {p0, v7, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    invoke-interface {p0}, Landroid/text/Spanned;->length()I

    move-result v7

    if-ge v6, v7, :cond_30

    return v3

    :cond_2e
    move v2, v4

    goto :goto_5

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_33
    return v4
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3c

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_42

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :sswitch_19
    const-string/jumbo v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :sswitch_20
    const-string/jumbo v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :sswitch_27
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :sswitch_2e
    const-string/jumbo v3, "&#39;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :sswitch_35
    const-string/jumbo v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_42
    .sparse-switch
        0x22 -> :sswitch_35
        0x26 -> :sswitch_27
        0x27 -> :sswitch_2e
        0x3c -> :sswitch_19
        0x3e -> :sswitch_20
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    return v1

    :cond_f
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .registers 12

    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    instance-of v6, p0, Landroid/text/GetChars;

    if-nez v6, :cond_d

    const-class v6, Ljava/lang/StringBuffer;

    if-ne v1, v6, :cond_2f

    :cond_d
    const/16 v0, 0x1f4

    const/16 v6, 0x1f4

    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    :goto_15
    if-ge p2, p3, :cond_46

    add-int/lit16 v4, p2, 0x1f4

    if-le v4, p3, :cond_1c

    move v4, p3

    :cond_1c
    const/4 v6, 0x0

    invoke-static {p0, p2, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, v4, p2

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v2, :cond_44

    aget-char v6, v5, v3

    if-ne v6, p1, :cond_41

    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    add-int v6, v3, p2

    return v6

    :cond_2f
    const-class v6, Ljava/lang/StringBuilder;

    if-eq v1, v6, :cond_d

    const-class v6, Ljava/lang/String;

    if-eq v1, v6, :cond_d

    move v3, p2

    :goto_38
    if-ge v3, p3, :cond_4d

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_4a

    return v3

    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_44
    move p2, v4

    goto :goto_15

    :cond_46
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    return v7

    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_4d
    return v7
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .registers 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .registers 9

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_9

    return p2

    :cond_9
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_d
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    sub-int v2, p3, v1

    if-le p2, v2, :cond_16

    return v4

    :cond_16
    if-gez p2, :cond_19

    return v4

    :cond_19
    invoke-static {p0, p2, p1, v3, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_20

    return p2

    :cond_20
    add-int/lit8 p2, p2, 0x1

    goto :goto_d
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .registers 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v2, :cond_19

    invoke-static {p0, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-nez v3, :cond_13

    const/4 v3, 0x0

    return v3

    :cond_13
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_5

    :cond_19
    const/4 v3, 0x1

    return v3
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_a

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public static isGraphic(C)Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v2, 0xf

    if-eq v0, v2, :cond_20

    const/16 v2, 0x10

    if-eq v0, v2, :cond_20

    const/16 v2, 0x13

    if-eq v0, v2, :cond_20

    if-eqz v0, :cond_20

    const/16 v2, 0xd

    if-eq v0, v2, :cond_20

    const/16 v2, 0xe

    if-eq v0, v2, :cond_20

    const/16 v2, 0xc

    if-eq v0, v2, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .registers 7

    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_32

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->getType(I)I

    move-result v1

    const/16 v4, 0xf

    if-eq v1, v4, :cond_2c

    const/16 v4, 0x10

    if-eq v1, v4, :cond_2c

    const/16 v4, 0x13

    if-eq v1, v4, :cond_2c

    if-eqz v1, :cond_2c

    const/16 v4, 0xd

    if-eq v1, v4, :cond_2c

    const/16 v4, 0xe

    if-eq v1, v4, :cond_2c

    const/16 v4, 0xc

    if-eq v1, v4, :cond_2c

    const/4 v4, 0x1

    return v4

    :cond_2c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_6

    :cond_32
    return v5
.end method

.method public static isPrintableAscii(C)Z
    .registers 5

    const/4 v2, 0x1

    const/16 v0, 0x20

    const/16 v1, 0x7e

    const/16 v3, 0x20

    if-gt v3, p0, :cond_e

    const/16 v3, 0x7e

    if-gt p0, v3, :cond_e

    :cond_d
    :goto_d
    return v2

    :cond_e
    const/16 v3, 0xd

    if-eq p0, v3, :cond_d

    const/16 v3, 0xa

    if-eq p0, v3, :cond_d

    const/4 v2, 0x0

    goto :goto_d
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .registers 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_16

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x0

    return v2

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_16
    const/4 v2, 0x1

    return v2
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    const/4 v3, 0x0

    array-length v4, p1

    :goto_8
    if-ge v3, v4, :cond_19

    aget-object v2, p1, v3

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_f

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .registers 3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_f

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    return v1

    :cond_f
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    return v1
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .registers 14

    const/4 v9, 0x0

    const/4 v8, -0x1

    if-gez p3, :cond_5

    return v8

    :cond_5
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt p3, v7, :cond_11

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/lit8 p3, v7, -0x1

    :cond_11
    add-int/lit8 v3, p3, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_1f

    const-class v7, Ljava/lang/StringBuffer;

    if-ne v1, v7, :cond_41

    :cond_1f
    const/16 v0, 0x1f4

    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    :goto_27
    if-ge p2, v3, :cond_59

    add-int/lit16 v5, v3, -0x1f4

    if-ge v5, p2, :cond_2e

    move v5, p2

    :cond_2e
    invoke-static {p0, v5, v3, v6, v9}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v2, v3, v5

    add-int/lit8 v4, v2, -0x1

    :goto_35
    if-ltz v4, :cond_57

    aget-char v7, v6, v4

    if-ne v7, p1, :cond_54

    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    add-int v7, v4, v5

    return v7

    :cond_41
    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_1f

    const-class v7, Ljava/lang/String;

    if-eq v1, v7, :cond_1f

    add-int/lit8 v4, v3, -0x1

    :goto_4b
    if-lt v4, p2, :cond_60

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, p1, :cond_5d

    return v4

    :cond_54
    add-int/lit8 v4, v4, -0x1

    goto :goto_35

    :cond_57
    move v3, v5

    goto :goto_27

    :cond_59
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    return v8

    :cond_5d
    add-int/lit8 v4, v4, -0x1

    goto :goto_4b

    :cond_60
    return v8
.end method

.method public static length(Ljava/lang/String;)I
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_7
.end method

.method public static listEllipsize(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Landroid/text/TextPaint;FI)Ljava/lang/CharSequence;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/text/TextPaint;",
            "FI)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    if-nez p1, :cond_6

    const-string/jumbo v10, ""

    return-object v10

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_10

    const-string/jumbo v10, ""

    return-object v10

    :cond_10
    if-nez p0, :cond_3e

    const/4 v7, 0x0

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    :goto_17
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-array v2, v8, [I

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v8, :cond_54

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v1, v10}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v10, v8, -0x1

    if-eq v3, v10, :cond_35

    invoke-virtual {v5, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_35
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    aput v10, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_3e
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-static {v10}, Landroid/text/BidiFormatter;->getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;

    move-result-object v1

    goto :goto_17

    :cond_54
    add-int/lit8 v3, v8, -0x1

    :goto_56
    if-ltz v3, :cond_96

    aget v10, v2, v3

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    sub-int v10, v8, v3

    add-int/lit8 v6, v10, -0x1

    if-lez v6, :cond_72

    if-nez v7, :cond_82

    sget-object v4, Landroid/text/TextUtils;->ELLIPSIS_STRING:Ljava/lang/String;

    :goto_6b
    invoke-virtual {v1, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_72
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v11, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v9

    cmpg-float v10, v9, p4

    if-gtz v10, :cond_93

    return-object v5

    :cond_82
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    move/from16 v0, p5

    invoke-virtual {v7, v0, v6, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6b

    :cond_93
    add-int/lit8 v3, v3, -0x1

    goto :goto_56

    :cond_96
    const-string/jumbo v10, ""

    return-object v10
.end method

.method public static nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x0

    :cond_7
    return-object p0
.end method

.method static obtain(I)[C
    .registers 4

    sget-object v2, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    const/4 v1, 0x0

    sput-object v1, Landroid/text/TextUtils;->sTemp:[C
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_13

    monitor-exit v2

    if-eqz v0, :cond_e

    array-length v1, v0

    if-ge v1, p0, :cond_12

    :cond_e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v0

    :cond_12
    return-object v0

    :catchall_13
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static packRangeInLong(II)J
    .registers 6

    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method static recycle([C)V
    .registers 3

    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_6

    return-void

    :cond_6
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_9
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_d

    monitor-exit v0

    return-void

    :catchall_d
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .registers 11

    mul-int/lit8 v3, p4, 0x2

    if-ge v3, p4, :cond_a

    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    add-int v4, p1, p4

    const/4 v5, 0x0

    invoke-static {p0, p1, v4, v2, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    add-int v4, p3, p4

    invoke-static {p2, p3, v4, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, p4, :cond_26

    aget-char v4, v2, v0

    add-int v5, v0, p4

    aget-char v5, v2, v5

    if-eq v4, v5, :cond_2a

    const/4 v1, 0x0

    :cond_26
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    return v1

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b
.end method

.method public static removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Landroid/text/Spanned;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    array-length v7, p0

    if-ge v3, v7, :cond_2c

    aget-object v5, p0, v3

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p1, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ne v6, v2, :cond_25

    if-nez v0, :cond_22

    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    invoke-static {p2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {p0, v8, v0, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v3

    :cond_22
    :goto_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_25
    if-eqz v0, :cond_22

    aput-object v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2c
    if-eqz v0, :cond_38

    invoke-static {p2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v8, v4, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_38
    return-object p0
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 11

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    :goto_6
    array-length v5, p1

    if-ge v1, v5, :cond_22

    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    if-ltz v4, :cond_1f

    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    const/4 v1, 0x0

    :goto_23
    array-length v5, p1

    if-ge v1, v5, :cond_3c

    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ltz v2, :cond_39

    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3c
    return-object v3
.end method

.method public static safeIntern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0
.end method

.method private static setPara(Landroid/text/MeasuredText;Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .registers 18

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_1c

    move-object v7, p2

    check-cast v7, Landroid/text/Spanned;

    :goto_12
    sub-int v6, p4, p3

    if-nez v7, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v6, v0}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v11

    :cond_1b
    return v11

    :cond_1c
    const/4 v7, 0x0

    goto :goto_12

    :cond_1e
    const/4 v11, 0x0

    const/4 v9, 0x0

    :goto_20
    if-ge v9, v6, :cond_1b

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v6, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v8

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v9, v8, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v10, v7, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/MetricAffectingSpan;

    sub-int v0, v8, v9

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v10, v0, v1}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    add-float/2addr v11, v0

    move v9, v8

    goto :goto_20
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_13

    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_13
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .registers 7

    const/4 v3, 0x0

    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_c

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_c
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_17

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_17
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_22

    check-cast p0, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_22
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    return-object v0
.end method

.method public static toUpperCase(Ljava/util/Locale;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 22

    new-instance v6, Landroid/icu/text/Edits;

    invoke-direct {v6}, Landroid/icu/text/Edits;-><init>()V

    if-nez p2, :cond_28

    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v10

    check-cast v10, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v17

    if-eqz v17, :cond_25

    :goto_24
    return-object v10

    :cond_25
    move-object/from16 v10, p1

    goto :goto_24

    :cond_28
    invoke-static {}, Landroid/icu/text/CaseMap;->toUpper()Landroid/icu/text/CaseMap$Upper;

    move-result-object v17

    new-instance v18, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v18 .. v18}, Landroid/text/SpannableStringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/icu/text/CaseMap$Upper;->apply(Ljava/util/Locale;Ljava/lang/CharSequence;Ljava/lang/Appendable;Landroid/icu/text/Edits;)Ljava/lang/Appendable;

    move-result-object v9

    check-cast v9, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/icu/text/Edits;->hasChanges()Z

    move-result v17

    if-nez v17, :cond_46

    return-object p1

    :cond_46
    invoke-virtual {v6}, Landroid/icu/text/Edits;->getFineIterator()Landroid/icu/text/Edits$Iterator;

    move-result-object v8

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v12

    move-object/from16 v15, p1

    check-cast v15, Landroid/text/Spanned;

    const-class v17, Ljava/lang/Object;

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v15, v0, v12, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    :goto_65
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_95

    aget-object v14, v16, v17

    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

    invoke-interface {v15, v14}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    if-ne v13, v12, :cond_8b

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    :goto_7f
    if-ne v11, v12, :cond_90

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    :goto_85
    invoke-virtual {v9, v14, v5, v4, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_65

    :cond_8b
    invoke-static {v8, v13}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v5

    goto :goto_7f

    :cond_90
    invoke-static {v8, v11}, Landroid/text/TextUtils;->toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I

    move-result v4

    goto :goto_85

    :cond_95
    return-object v9
.end method

.method private static toUpperMapToDest(Landroid/icu/text/Edits$Iterator;I)I
    .registers 4

    invoke-virtual {p0, p1}, Landroid/icu/text/Edits$Iterator;->findSourceIndex(I)Z

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v0

    if-ne p1, v0, :cond_e

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    return v0

    :cond_e
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->newLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1e
    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->destinationIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/icu/text/Edits$Iterator;->sourceIndex()I

    move-result v1

    sub-int v1, p1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static trimNoCopySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 2

    if-eqz p0, :cond_c

    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_c

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_c
    return-object p0
.end method

.method public static unpackRangeEndFromLong(J)I
    .registers 4

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method public static unpackRangeStartFromLong(J)I
    .registers 4

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method public static wrap(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .registers 15

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_82

    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v5, p0

    check-cast v5, Landroid/text/Spanned;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v5, v10, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1f
    array-length v7, v2

    if-ge v0, v7, :cond_7e

    aget-object v1, v2, v0

    aget-object v3, v2, v0

    instance-of v7, v3, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_30

    check-cast v3, Landroid/text/style/CharacterStyle;

    invoke-virtual {v3}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v3

    :cond_30
    instance-of v7, v3, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_71

    move-object v4, v3

    check-cast v4, Landroid/text/ParcelableSpan;

    invoke-interface {v4}, Landroid/text/ParcelableSpan;->getSpanTypeIdInternal()I

    move-result v6

    if-lt v6, v11, :cond_41

    const/16 v7, 0x1a

    if-le v6, v7, :cond_74

    :cond_41
    const-string/jumbo v7, "TextUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "External class \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\" is attempting to use the frameworks-only ParcelableSpan"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " interface"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_71
    :goto_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_74
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v4, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    invoke-static {p1, v5, v1}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    goto :goto_71

    :cond_7e
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->writeInt(I)V

    :goto_81
    return-void

    :cond_82
    invoke-virtual {p1, v11}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p0, :cond_8f

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_81

    :cond_8f
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_81
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .registers 4

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
