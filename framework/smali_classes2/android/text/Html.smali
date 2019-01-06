.class public Landroid/text/Html;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Html$HtmlParser;,
        Landroid/text/Html$ImageGetter;,
        Landroid/text/Html$TagHandler;
    }
.end annotation


# static fields
.field public static final FROM_HTML_MODE_COMPACT:I = 0x3f

.field public static final FROM_HTML_MODE_LEGACY:I = 0x0

.field public static final FROM_HTML_OPTION_USE_CSS_COLORS:I = 0x100

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE:I = 0x20

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_DIV:I = 0x10

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_HEADING:I = 0x2

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST:I = 0x8

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM:I = 0x4

.field public static final FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH:I = 0x1

.field private static final TO_HTML_PARAGRAPH_FLAG:I = 0x1

.field public static final TO_HTML_PARAGRAPH_LINES_CONSECUTIVE:I = 0x0

.field public static final TO_HTML_PARAGRAPH_LINES_INDIVIDUAL:I = 0x1


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .registers 13

    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_96

    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v4, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v2, v6, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ParagraphStyle;

    const-string/jumbo v1, " "

    const/4 v5, 0x0

    const/4 v3, 0x0

    :goto_1a
    array-length v8, v7

    if-ge v3, v8, :cond_75

    aget-object v8, v7, v3

    instance-of v8, v8, Landroid/text/style/AlignmentSpan;

    if-eqz v8, :cond_44

    aget-object v8, v7, v3

    check-cast v8, Landroid/text/style/AlignmentSpan;

    invoke-interface {v8}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    const/4 v5, 0x1

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_47

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"center\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_47
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v8, :cond_60

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"right\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_60
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "align=\"left\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_44

    :cond_75
    if-eqz v5, :cond_88

    const-string/jumbo v8, "<div "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    invoke-static {p0, p1, v2, v6, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    if-eqz v5, :cond_93

    const-string/jumbo v8, "</div>"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_93
    move v2, v6

    goto/16 :goto_5

    :cond_96
    return-void
.end method

.method public static escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, v0, v1, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method public static fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 12

    new-instance v4, Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct {v4}, Lorg/ccil/cowan/tagsoup/Parser;-><init>()V

    :try_start_5
    const-string/jumbo v1, "http://www.ccil.org/~cowan/tagsoup/properties/schema"

    invoke-static {}, Landroid/text/Html$HtmlParser;->-get0()Lorg/ccil/cowan/tagsoup/HTMLSchema;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/ccil/cowan/tagsoup/Parser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_f} :catch_24
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_f} :catch_1d

    new-instance v0, Landroid/text/HtmlToSpannedConverter;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/HtmlToSpannedConverter;-><init>(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;Lorg/ccil/cowan/tagsoup/Parser;I)V

    invoke-virtual {v0}, Landroid/text/HtmlToSpannedConverter;->convert()Landroid/text/Spanned;

    move-result-object v1

    return-object v1

    :catch_1d
    move-exception v7

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_24
    move-exception v6

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;ILandroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0
.end method

.method private static getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;
    .registers 5

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sub-int v1, p2, p1

    invoke-interface {v0, p0, p1, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string/jumbo v0, " dir=\"rtl\""

    return-object v0

    :cond_e
    const-string/jumbo v0, " dir=\"ltr\""

    return-object v0
.end method

.method private static getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;
    .registers 14

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz p3, :cond_7

    const-string/jumbo v3, "margin-top:0; margin-bottom:0;"

    :cond_7
    if-eqz p4, :cond_2d

    const-class v7, Landroid/text/style/AlignmentSpan;

    invoke-interface {p0, p1, p2, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/AlignmentSpan;

    array-length v7, v1

    add-int/lit8 v2, v7, -0x1

    :goto_14
    if-ltz v2, :cond_2d

    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v7

    and-int/lit8 v7, v7, 0x33

    const/16 v8, 0x33

    if-ne v7, v8, :cond_45

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v7, :cond_35

    const-string/jumbo v6, "text-align:start;"

    :cond_2d
    :goto_2d
    if-nez v3, :cond_48

    if-nez v6, :cond_48

    const-string/jumbo v7, ""

    return-object v7

    :cond_35
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v7, :cond_3d

    const-string/jumbo v6, "text-align:center;"

    goto :goto_2d

    :cond_3d
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v7, :cond_2d

    const-string/jumbo v6, "text-align:end;"

    goto :goto_2d

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    :cond_48
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " style=\""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_6e

    if-eqz v6, :cond_6e

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_62
    :goto_62
    const-string/jumbo v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_6e
    if-eqz v3, :cond_74

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62

    :cond_74
    if-eqz v6, :cond_62

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_62
.end method

.method public static toHtml(Landroid/text/Spanned;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHtml(Landroid/text/Spanned;I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0, p1}, Landroid/text/Html;->withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .registers 6

    and-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_8

    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    :goto_7
    return-void

    :cond_8
    invoke-static {p0, p1, p2, p3}, Landroid/text/Html;->withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    goto :goto_7
.end method

.method private static withinBlockquoteConsecutive(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 11

    const/16 v6, 0xa

    const-string/jumbo v4, "<p"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, p2

    :goto_18
    if-ge v0, p3, :cond_69

    invoke-static {p1, v6, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_21

    move v2, p3

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-ge v2, p3, :cond_2f

    invoke-interface {p1, v2}, Landroid/text/Spanned;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_2f

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_2f
    sub-int v4, v2, v3

    invoke-static {p0, p1, v0, v4}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3f

    const-string/jumbo v4, "<br>\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3d
    :goto_3d
    move v0, v2

    goto :goto_18

    :cond_3f
    const/4 v1, 0x2

    :goto_40
    if-ge v1, v3, :cond_4b

    const-string/jumbo v4, "<br>"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_4b
    if-eq v2, p3, :cond_3d

    const-string/jumbo v4, "</p>\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "<p"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1, p2, p3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d

    :cond_69
    const-string/jumbo v4, "</p>\n"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static withinBlockquoteIndividual(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 16

    const/4 v1, 0x0

    move v0, p2

    :goto_2
    if-gt v0, p3, :cond_bb

    const/16 v8, 0xa

    invoke-static {p1, v8, v0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    if-gez v3, :cond_d

    move v3, p3

    :cond_d
    if-ne v3, v0, :cond_22

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    const-string/jumbo v8, "</ul>\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    const-string/jumbo v8, "<br>\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    move v0, v3

    goto :goto_2

    :cond_22
    const/4 v2, 0x0

    const-class v8, Landroid/text/style/ParagraphStyle;

    invoke-interface {p1, v0, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ParagraphStyle;

    const/4 v8, 0x0

    array-length v9, v5

    :goto_2d
    if-ge v8, v9, :cond_40

    aget-object v4, v5, v8

    invoke-interface {p1, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    and-int/lit8 v10, v6, 0x33

    const/16 v11, 0x33

    if-ne v10, v11, :cond_b3

    instance-of v10, v4, Landroid/text/style/BulletSpan;

    if-eqz v10, :cond_b3

    const/4 v2, 0x1

    :cond_40
    if-eqz v2, :cond_5e

    xor-int/lit8 v8, v1, 0x1

    if-eqz v8, :cond_5e

    const/4 v1, 0x1

    const-string/jumbo v8, "<ul"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {p1, v0, v3, v9, v10}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    if-eqz v1, :cond_6b

    xor-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_6b

    const/4 v1, 0x0

    const-string/jumbo v8, "</ul>\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6b
    if-eqz v2, :cond_b7

    const-string/jumbo v7, "li"

    :goto_70
    const-string/jumbo v8, "<"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1, v0, v3}, Landroid/text/Html;->getTextDirection(Landroid/text/Spanned;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    xor-int/lit8 v9, v2, 0x1

    const/4 v10, 0x1

    invoke-static {p1, v0, v3, v9, v10}, Landroid/text/Html;->getTextStyles(Landroid/text/Spanned;IIZZ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1, v0, v3}, Landroid/text/Html;->withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V

    const-string/jumbo v8, "</"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, ">\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v3, p3, :cond_1e

    if-eqz v1, :cond_1e

    const/4 v1, 0x0

    const-string/jumbo v8, "</ul>\n"

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1e

    :cond_b3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2d

    :cond_b7
    const-string/jumbo v7, "p"

    goto :goto_70

    :cond_bb
    return-void
.end method

.method private static withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V
    .registers 13

    const/4 v5, 0x0

    move v0, p2

    :goto_2
    if-ge v0, p3, :cond_35

    const-class v4, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, p3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    const-class v4, Landroid/text/style/QuoteSpan;

    invoke-interface {p1, v0, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/QuoteSpan;

    array-length v6, v3

    move v4, v5

    :goto_14
    if-ge v4, v6, :cond_21

    aget-object v2, v3, v4

    const-string/jumbo v7, "<blockquote>"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_21
    invoke-static {p0, p1, v0, v1, p4}, Landroid/text/Html;->withinBlockquote(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    array-length v6, v3

    move v4, v5

    :goto_26
    if-ge v4, v6, :cond_33

    aget-object v2, v3, v4

    const-string/jumbo v7, "</blockquote>\n"

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_33
    move v0, v1

    goto :goto_2

    :cond_35
    return-void
.end method

.method private static withinHtml(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V
    .registers 5

    const/4 v1, 0x0

    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_9

    invoke-static {p0, p1, p2}, Landroid/text/Html;->encodeTextAlignmentByDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;I)V

    return-void

    :cond_9
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v0

    invoke-static {p0, p1, v1, v0, p2}, Landroid/text/Html;->withinDiv(Ljava/lang/StringBuilder;Landroid/text/Spanned;III)V

    return-void
.end method

.method private static withinParagraph(Ljava/lang/StringBuilder;Landroid/text/Spanned;II)V
    .registers 21

    move/from16 v4, p2

    :goto_2
    move/from16 v0, p3

    if-ge v4, v0, :cond_26e

    const-class v13, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v4, v1, v13}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    const-class v13, Landroid/text/style/CharacterStyle;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v6, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/CharacterStyle;

    const/4 v5, 0x0

    :goto_1b
    array-length v13, v12

    if-ge v5, v13, :cond_198

    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/StyleSpan;

    if-eqz v13, :cond_44

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/StyleSpan;

    invoke-virtual {v13}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_38

    const-string/jumbo v13, "<b>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    and-int/lit8 v13, v7, 0x2

    if-eqz v13, :cond_44

    const-string/jumbo v13, "<i>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_44
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/TypefaceSpan;

    if-eqz v13, :cond_63

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v13}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v13, "monospace"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_63

    const-string/jumbo v13, "<tt>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/SuperscriptSpan;

    if-eqz v13, :cond_71

    const-string/jumbo v13, "<sup>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/SubscriptSpan;

    if-eqz v13, :cond_7f

    const-string/jumbo v13, "<sub>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/UnderlineSpan;

    if-eqz v13, :cond_8d

    const-string/jumbo v13, "<u>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8d
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/StrikethroughSpan;

    if-eqz v13, :cond_9b

    const-string/jumbo v13, "<span style=\"text-decoration:line-through;\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9b
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/URLSpan;

    if-eqz v13, :cond_be

    const-string/jumbo v13, "<a href=\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/URLSpan;

    invoke-virtual {v13}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_be
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/ImageSpan;

    if-eqz v13, :cond_e2

    const-string/jumbo v13, "<img src=\""

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/ImageSpan;

    invoke-virtual {v13}, Landroid/text/style/ImageSpan;->getSource()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "\">"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v6

    :cond_e2
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v13, :cond_11d

    aget-object v8, v12, v5

    check-cast v8, Landroid/text/style/AbsoluteSizeSpan;

    invoke-virtual {v8}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    move-result v13

    int-to-float v10, v13

    invoke-virtual {v8}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    move-result v13

    if-nez v13, :cond_106

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v10, v13

    :cond_106
    const-string/jumbo v13, "<span style=\"font-size:%.0fpx\";>"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11d
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/RelativeSizeSpan;

    if-eqz v13, :cond_142

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/RelativeSizeSpan;

    invoke-virtual {v13}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    move-result v11

    const-string/jumbo v13, "<span style=\"font-size:%.2fem;\">"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_142
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/ForegroundColorSpan;

    if-eqz v13, :cond_16b

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v13}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v3

    const-string/jumbo v13, "<span style=\"color:#%06X;\">"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const v15, 0xffffff

    and-int/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16b
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/BackgroundColorSpan;

    if-eqz v13, :cond_194

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v13}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v3

    const-string/jumbo v13, "<span style=\"background-color:#%06X;\">"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const v15, 0xffffff

    and-int/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_194
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1b

    :cond_198
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4, v6}, Landroid/text/Html;->withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V

    array-length v13, v12

    add-int/lit8 v5, v13, -0x1

    :goto_1a2
    if-ltz v5, :cond_26b

    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/BackgroundColorSpan;

    if-eqz v13, :cond_1b2

    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b2
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/ForegroundColorSpan;

    if-eqz v13, :cond_1c0

    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c0
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/RelativeSizeSpan;

    if-eqz v13, :cond_1ce

    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ce
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/AbsoluteSizeSpan;

    if-eqz v13, :cond_1dc

    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1dc
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/URLSpan;

    if-eqz v13, :cond_1ea

    const-string/jumbo v13, "</a>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ea
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/StrikethroughSpan;

    if-eqz v13, :cond_1f8

    const-string/jumbo v13, "</span>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f8
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/UnderlineSpan;

    if-eqz v13, :cond_206

    const-string/jumbo v13, "</u>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_206
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/SubscriptSpan;

    if-eqz v13, :cond_214

    const-string/jumbo v13, "</sub>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_214
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/SuperscriptSpan;

    if-eqz v13, :cond_222

    const-string/jumbo v13, "</sup>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_222
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/TypefaceSpan;

    if-eqz v13, :cond_241

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v13}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v13, "monospace"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_241

    const-string/jumbo v13, "</tt>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_241
    aget-object v13, v12, v5

    instance-of v13, v13, Landroid/text/style/StyleSpan;

    if-eqz v13, :cond_267

    aget-object v13, v12, v5

    check-cast v13, Landroid/text/style/StyleSpan;

    invoke-virtual {v13}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v7

    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_25b

    const-string/jumbo v13, "</b>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25b
    and-int/lit8 v13, v7, 0x2

    if-eqz v13, :cond_267

    const-string/jumbo v13, "</i>"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_267
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_1a2

    :cond_26b
    move v4, v6

    goto/16 :goto_2

    :cond_26e
    return-void
.end method

.method private static withinStyle(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;II)V
    .registers 14

    const v9, 0xdfff

    const v8, 0xd800

    const v7, 0xdc00

    const/16 v6, 0x20

    move v3, p2

    :goto_c
    if-ge v3, p3, :cond_a0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v4, 0x3c

    if-ne v0, v4, :cond_1f

    const-string/jumbo v4, "&lt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_1f
    const/16 v4, 0x3e

    if-ne v0, v4, :cond_2a

    const-string/jumbo v4, "&gt;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_2a
    const/16 v4, 0x26

    if-ne v0, v4, :cond_35

    const-string/jumbo v4, "&amp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_35
    if-lt v0, v8, :cond_68

    if-gt v0, v9, :cond_68

    if-ge v0, v7, :cond_1c

    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_1c

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-lt v2, v7, :cond_1c

    if-gt v2, v9, :cond_1c

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v0, v8

    shl-int/lit8 v4, v4, 0xa

    const/high16 v5, 0x10000

    or-int/2addr v4, v5

    sub-int v5, v2, v7

    or-int v1, v4, v5

    const-string/jumbo v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_68
    const/16 v4, 0x7e

    if-gt v0, v4, :cond_6e

    if-ge v0, v6, :cond_80

    :cond_6e
    const-string/jumbo v4, "&#"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_80
    if-ne v0, v6, :cond_9b

    :goto_82
    add-int/lit8 v4, v3, 0x1

    if-ge v4, p3, :cond_97

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_97

    const-string/jumbo v4, "&nbsp;"

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_82

    :cond_97
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1c

    :cond_9b
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1c

    :cond_a0
    return-void
.end method
