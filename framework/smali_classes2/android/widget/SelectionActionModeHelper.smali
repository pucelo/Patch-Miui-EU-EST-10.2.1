.class final Landroid/widget/SelectionActionModeHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;,
        Landroid/widget/SelectionActionModeHelper$SelectionResult;,
        Landroid/widget/SelectionActionModeHelper$SelectionTracker;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectActionModeHelper"


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private final mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

.field private mTextClassification:Landroid/view/textclassifier/TextClassification;

.field private mTextClassificationAsyncTask:Landroid/os/AsyncTask;

.field private final mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method static synthetic -android_widget_SelectionActionModeHelper-mthref-0(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->suggestSelection()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -android_widget_SelectionActionModeHelper-mthref-1(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -android_widget_SelectionActionModeHelper-mthref-3(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .registers 2

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->classifyText()Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .registers 2

    invoke-static {p0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method constructor <init>(Landroid/widget/Editor;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;-><init>(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    return-void
.end method

.method private cancelAsyncTask()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    :cond_d
    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-void
.end method

.method private static getActionType(I)I
    .registers 2

    sparse-switch p0, :sswitch_data_18

    const/16 v0, 0x6c

    return v0

    :sswitch_6
    const/16 v0, 0xc8

    return v0

    :sswitch_9
    const/16 v0, 0x67

    return v0

    :sswitch_c
    const/16 v0, 0x65

    return v0

    :sswitch_f
    const/16 v0, 0x66

    return v0

    :sswitch_12
    const/16 v0, 0x68

    return v0

    :sswitch_15
    const/16 v0, 0x69

    return v0

    :sswitch_data_18
    .sparse-switch
        0x102001f -> :sswitch_6
        0x1020020 -> :sswitch_9
        0x1020021 -> :sswitch_c
        0x1020022 -> :sswitch_f
        0x1020031 -> :sswitch_f
        0x1020035 -> :sswitch_12
        0x1020041 -> :sswitch_15
    .end sparse-switch
.end method

.method private static getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .registers 8

    const/4 v2, 0x0

    if-eqz p1, :cond_2a

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get0(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    :goto_7
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_14
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v1, v3, v4, v5}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionUpdated(IILandroid/view/textclassifier/TextClassification;)V

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    return-void

    :cond_2a
    move-object v1, v2

    goto :goto_7
.end method

.method private resetTextClassificationHelper()V
    .registers 7

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    return-void
.end method

.method private skipTextClassification()Z
    .registers 6

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v3

    sget-object v4, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    if-ne v3, v4, :cond_31

    const/4 v0, 0x1

    :goto_b
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    if-ne v3, v4, :cond_33

    const/4 v1, 0x1

    :goto_1a
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    invoke-static {v3}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    :goto_2c
    if-nez v0, :cond_37

    if-nez v1, :cond_37

    :goto_30
    return v2

    :cond_31
    const/4 v0, 0x0

    goto :goto_b

    :cond_33
    const/4 v1, 0x0

    goto :goto_1a

    :cond_35
    const/4 v2, 0x1

    goto :goto_2c

    :cond_37
    const/4 v2, 0x1

    goto :goto_30
.end method

.method private startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz p1, :cond_58

    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_58

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/textclassifier/TextClassifier;->getSettings()Landroid/view/textclassifier/TextClassifierConstants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassifierConstants;->isDarkLaunch()Z

    move-result v2

    if-nez v2, :cond_2a

    check-cast v1, Landroid/text/Spannable;

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get3(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v2

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get1(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2a
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-get0(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    :goto_30
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    move-result v2

    if-eqz v2, :cond_4f

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    :cond_48
    if-eqz p1, :cond_4f

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v2, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSmartSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    :cond_4f
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Editor;->setRestartActionModeOnNextRefresh(Z)V

    iput-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    return-void

    :cond_58
    iput-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    goto :goto_30
.end method


# virtual methods
.method synthetic -android_widget_SelectionActionModeHelper-mthref-2(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method synthetic -android_widget_SelectionActionModeHelper-mthref-4(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public getTextClassification()Landroid/view/textclassifier/TextClassification;
    .registers 2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public invalidateActionModeAsync()V
    .registers 8

    const/4 v6, 0x0

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    :goto_e
    return-void

    :cond_f
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()J

    move-result-wide v2

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;

    invoke-direct {v4, v6, v5}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;-><init>(BLjava/lang/Object;)V

    new-instance v5, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;

    invoke-direct {v5, v6, p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;-><init>(BLjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;JLjava/util/function/Supplier;Ljava/util/function/Consumer;)V

    new-array v1, v6, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    goto :goto_e
.end method

.method public onDestroyActionMode()V
    .registers 2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionDestroyed()V

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    return-void
.end method

.method public onSelectionAction(I)V
    .registers 7

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper;->getActionType(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    return-void
.end method

.method public onSelectionDrag()V
    .registers 6

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    const/16 v4, 0x6a

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    return-void
.end method

.method public onTextChanged(II)V
    .registers 5

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onTextChanged(IILandroid/view/textclassifier/TextClassification;)V

    return-void
.end method

.method public resetSelection(I)Z
    .registers 4

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelection(ILandroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeAsync(Z)V
    .registers 10

    const/4 v6, 0x1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->getSettings()Landroid/view/textclassifier/TextClassifierConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierConstants;->isSuggestSelectionEnabledForEditableText()Z

    move-result v0

    :goto_17
    and-int/2addr p1, v0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onOriginalSelection(Ljava/lang/CharSequence;II)V

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    :goto_3c
    return-void

    :cond_3d
    move v0, v6

    goto :goto_17

    :cond_3f
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()J

    move-result-wide v2

    if-eqz p1, :cond_6a

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;

    invoke-direct {v4, v6, v5}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;-><init>(BLjava/lang/Object;)V

    :goto_58
    new-instance v5, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;

    invoke-direct {v5, v6, p0}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw;-><init>(BLjava/lang/Object;)V

    invoke-direct/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;JLjava/util/function/Supplier;Ljava/util/function/Consumer;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    goto :goto_3c

    :cond_6a
    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;

    const/4 v7, 0x2

    invoke-direct {v4, v7, v5}, Landroid/widget/-$Lambda$tTszxdFZ0V9nXhnBpPsqeBMO0fw$1;-><init>(BLjava/lang/Object;)V

    goto :goto_58
.end method
