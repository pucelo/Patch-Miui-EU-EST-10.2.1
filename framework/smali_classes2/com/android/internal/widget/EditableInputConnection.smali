.class public Lcom/android/internal/widget/EditableInputConnection;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "EditableInputConnection.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "EditableInputConnection"


# instance fields
.field private mBatchEditNesting:I

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    iput-object p1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    if-ltz v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_16

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_14
    monitor-exit p0

    return v1

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearMetaKeyStates(I)Z
    .registers 6

    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->getEditable()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v3, 0x0

    return v3

    :cond_8
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v2

    if-eqz v2, :cond_15

    :try_start_10
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-interface {v2, v3, v0, p1}, Landroid/text/method/KeyListener;->clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    :try_end_15
    .catch Ljava/lang/AbstractMethodError; {:try_start_10 .. :try_end_15} :catch_17

    :cond_15
    :goto_15
    const/4 v3, 0x1

    return v3

    :catch_17
    move-exception v1

    goto :goto_15
.end method

.method public closeConnection()V
    .registers 2

    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->closeConnection()V

    monitor-enter p0

    :goto_4
    :try_start_4
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/widget/EditableInputConnection;->endBatchEdit()Z
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_c

    goto :goto_4

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_f
    const/4 v0, -0x1

    :try_start_10
    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_c

    monitor-exit p0

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onCommitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 9

    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v3, :cond_9

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v3

    return v3

    :cond_9
    instance-of v3, p1, Landroid/text/Spanned;

    if-eqz v3, :cond_22

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/SuggestionSpan;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SuggestionSpan;

    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V

    :cond_22
    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->resetErrorChangedFlag()V

    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->hideErrorIfUnchanged()V

    return v2
.end method

.method public endBatchEdit()Z
    .registers 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    iget v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mBatchEditNesting:I
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_16

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_14
    monitor-exit p0

    return v1

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getEditable()Landroid/text/Editable;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    return-object v1

    :cond_a
    return-object v1
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1c

    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z

    move-result v1

    if-eqz v1, :cond_1c

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V

    :cond_1b
    return-object v0

    :cond_1c
    return-object v2
.end method

.method public performContextMenuAction(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->beginBatchEdit()V

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->endBatchEdit()V

    const/4 v0, 0x1

    return v0
.end method

.method public performEditorAction(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->onEditorAction(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .registers 6

    const/4 v3, 0x0

    const/4 v0, 0x3

    and-int/lit8 v1, p1, -0x4

    if-eqz v1, :cond_7

    return v3

    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    if-nez v2, :cond_c

    return v3

    :cond_c
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2, p1}, Landroid/view/inputmethod/InputMethodManager;->setUpdateCursorAnchorInfoMode(I)V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_1b

    :cond_19
    :goto_19
    const/4 v2, 0x1

    return v2

    :cond_1b
    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isInLayout()Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/android/internal/widget/EditableInputConnection;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_19
.end method
