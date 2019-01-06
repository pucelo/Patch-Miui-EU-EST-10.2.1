.class final Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionMetricsLogger"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectionMetricsLogger"

.field private static final PATTERN_WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private final mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

.field private final mEditTextLogger:Z

.field private mStartIndex:I

.field private mText:Ljava/lang/String;

.field private final mWordIterator:Ljava/text/BreakIterator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eqz v1, :cond_29

    const/4 v0, 0x3

    :goto_d
    new-instance v1, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    return-void

    :cond_29
    const/4 v0, 0x1

    goto :goto_d
.end method

.method private countWordsBackward(I)I
    .registers 6

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-lt p1, v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x0

    move v0, p1

    :goto_a
    iget v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-le v0, v3, :cond_20

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v3, v0}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    invoke-direct {p0, v1, v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v3

    if-nez v3, :cond_1c

    add-int/lit8 v2, v2, 0x1

    :cond_1c
    move v0, v1

    goto :goto_a

    :cond_1e
    const/4 v3, 0x0

    goto :goto_5

    :cond_20
    return v2
.end method

.method private countWordsForward(I)I
    .registers 6

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-gt p1, v3, :cond_1e

    const/4 v3, 0x1

    :goto_5
    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/4 v2, 0x0

    move v1, p1

    :goto_a
    iget v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge v1, v3, :cond_20

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v3, v1}, Ljava/text/BreakIterator;->following(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v3

    if-nez v3, :cond_1c

    add-int/lit8 v2, v2, 0x1

    :cond_1c
    move v1, v0

    goto :goto_a

    :cond_1e
    const/4 v3, 0x0

    goto :goto_5

    :cond_20
    return v2
.end method

.method private getWordDelta(II)[I
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ne p1, v1, :cond_12

    aput v3, v0, v3

    :cond_b
    :goto_b
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ne p2, v1, :cond_47

    aput v3, v0, v4

    :goto_11
    return-object v0

    :cond_12
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge p1, v1, :cond_1e

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v3

    goto :goto_b

    :cond_1e
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->preceding(I)I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    invoke-virtual {v2, p1}, Ljava/text/BreakIterator;->following(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    aget v1, v0, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, v0, v3

    goto :goto_b

    :cond_47
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    if-ge p2, v1, :cond_53

    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    move-result v1

    neg-int v1, v1

    aput v1, v0, v4

    goto :goto_11

    :cond_53
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    move-result v1

    aput v1, v0, v4

    goto :goto_11
.end method

.method private isWhitespace(II)Z
    .registers 5

    sget-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isEditTextLogger()Z
    .registers 2

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    return v0
.end method

.method public logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V
    .registers 10

    :try_start_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "start"

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "end"

    invoke-static {p2, p1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object v1

    if-eqz p4, :cond_2f

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v3, v4, p3, p4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionAction(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v3, v4, p3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionAction(III)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_2e

    :catch_3f
    move-exception v0

    const-string/jumbo v2, "SelectionMetricsLogger"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e
.end method

.method public logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .registers 10

    :try_start_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "start"

    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "end"

    invoke-static {p2, p1, v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    move-result-object v1

    if-eqz p4, :cond_2f

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v3, v4, p4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V

    :goto_2e
    return-void

    :cond_2f
    if-eqz p3, :cond_4d

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v3, v4, p3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_2e

    :catch_41
    move-exception v0

    const-string/jumbo v2, "SelectionMetricsLogger"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    :cond_4d
    :try_start_4d
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    const/4 v3, 0x0

    aget v3, v1, v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-static {v3, v4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(II)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_5c} :catch_41

    goto :goto_2e
.end method

.method public logSelectionStarted(Ljava/lang/CharSequence;I)V
    .registers 7

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-string/jumbo v2, "index"

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_22

    :cond_1c
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    :cond_22
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionStarted(I)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    const-string/jumbo v1, "SelectionMetricsLogger"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method
