.class final Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TextClassificationHelper"
.end annotation


# static fields
.field private static final TRIM_DELTA:I = 0x78


# instance fields
.field private mHot:Z

.field private mLastClassificationLocales:Landroid/os/LocaleList;

.field private mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

.field private mLastClassificationSelectionEnd:I

.field private mLastClassificationSelectionStart:I

.field private mLastClassificationText:Ljava/lang/CharSequence;

.field private mLocales:Landroid/os/LocaleList;

.field private mRelativeEnd:I

.field private mRelativeStart:I

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private mText:Ljava/lang/String;

.field private mTextClassifier:Landroid/view/textclassifier/TextClassifier;

.field private mTrimStart:I

.field private mTrimmedText:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    return-void
.end method

.method private performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 10

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionStart:I

    if-eq v0, v1, :cond_3f

    :cond_10
    :goto_10
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionStart:I

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionEnd:I

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationLocales:Landroid/os/LocaleList;

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->trimText()V

    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v5, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v6, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    iget-object v7, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLocales:Landroid/os/LocaleList;

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/textclassifier/TextClassifier;->classifyText(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;-><init>(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

    :cond_3c
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationResult:Landroid/widget/SelectionActionModeHelper$SelectionResult;

    return-object v0

    :cond_3f
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationSelectionEnd:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLocales:Landroid/os/LocaleList;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationLocales:Landroid/os/LocaleList;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    goto :goto_10
.end method

.method private trimText()V
    .registers 4

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    add-int/lit8 v1, v1, -0x78

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    add-int/lit8 v2, v2, 0x78

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    return-void
.end method


# virtual methods
.method public classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mHot:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method public getTimeoutDuration()J
    .registers 3

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mHot:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0xc8

    return-wide v0

    :cond_7
    const-wide/16 v0, 0x1f4

    return-wide v0
.end method

.method public init(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V
    .registers 7

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/TextClassifier;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLastClassificationText:Ljava/lang/CharSequence;

    if-le p4, p3, :cond_24

    const/4 v0, 0x1

    :goto_1a
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    iput p3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iput p4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    iput-object p5, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLocales:Landroid/os/LocaleList;

    return-void

    :cond_24
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public suggestSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 7

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mHot:Z

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->trimText()V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimmedText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeStart:I

    iget v4, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mRelativeEnd:I

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mLocales:Landroid/os/LocaleList;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Ljava/lang/CharSequence;IILandroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTextClassifier:Landroid/view/textclassifier/TextClassifier;

    invoke-interface {v1}, Landroid/view/textclassifier/TextClassifier;->getSettings()Landroid/view/textclassifier/TextClassifierConstants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassifierConstants;->isDarkLaunch()Z

    move-result v1

    if-nez v1, :cond_41

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionStartIndex()I

    move-result v1

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionStart:I

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/textclassifier/TextSelection;->getSelectionEndIndex()I

    move-result v2

    iget v3, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mTrimStart:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->mSelectionEnd:I

    :cond_41
    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->performClassification(Landroid/view/textclassifier/TextSelection;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v1

    return-object v1
.end method
