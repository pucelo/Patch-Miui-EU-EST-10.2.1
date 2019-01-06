.class public Lcom/android/internal/view/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:I = 0x7d0


# instance fields
.field private final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private final mInputMethodService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field private final mMissingMethods:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;",
            "Lcom/android/internal/view/IInputContext;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iput p3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    return-void
.end method

.method private isMethodMissing(I)Z
    .registers 3

    iget v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public beginBatchEdit()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->beginBatchEdit()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public clearMetaKeyStates(I)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public closeConnection()V
    .registers 1

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    const/4 v1, 0x1

    return v1

    :catch_10
    move-exception v0

    return v2
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z
    .registers 14

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v0

    if-eqz v0, :cond_b

    return v9

    :cond_b
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1d

    :try_start_f
    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mInputMethodService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/AbstractInputMethodService;

    if-nez v7, :cond_1a

    return v9

    :cond_1a
    invoke-virtual {v7, p1, p0}, Landroid/inputmethodservice/AbstractInputMethodService;->exposeContent(Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/InputConnection;)V

    :cond_1d
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v5

    iget-object v0, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v5, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/view/IInputContext;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v5
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2c} :catch_3d

    :try_start_2c
    invoke-virtual {v5}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v0, v5, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v0, :cond_35

    iget-boolean v8, v5, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCommitContentResult:Z
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_3a

    :cond_35
    :try_start_35
    monitor-exit v5

    invoke-static {v5}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    return v8

    :catchall_3a
    move-exception v0

    monitor-exit v5

    throw v0
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_3d} :catch_3d

    :catch_3d
    move-exception v6

    return v9
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public deleteSurroundingText(II)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public deleteSurroundingTextInCodePoints(II)Z
    .registers 6

    const/4 v2, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    :try_start_a
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingTextInCodePoints(II)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    const/4 v1, 0x1

    return v1

    :catch_11
    move-exception v0

    return v2
.end method

.method public endBatchEdit()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->endBatchEdit()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public finishComposingText()Z
    .registers 3

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getCursorCapsMode(I)I
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1e

    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    iget v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1b

    :cond_16
    :try_start_16
    monitor-exit v0

    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    return v2

    :catchall_1b
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v1

    const/4 v3, 0x0

    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1e

    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1b

    :cond_16
    :try_start_16
    monitor-exit v0

    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    return-object v2

    :catchall_1b
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v1

    const/4 v3, 0x0

    return-object v3
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .registers 8

    const/4 v5, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v3

    if-eqz v3, :cond_9

    return-object v5

    :cond_9
    const/4 v2, 0x0

    :try_start_a
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_16} :catch_27

    :try_start_16
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_1f

    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSelectedText:Ljava/lang/CharSequence;
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_24

    :cond_1f
    :try_start_1f
    monitor-exit v0

    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    return-object v2

    :catchall_24
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_27} :catch_27

    :catch_27
    move-exception v1

    return-object v5
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1e

    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1b

    :cond_16
    :try_start_16
    monitor-exit v0

    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    return-object v2

    :catchall_1b
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v1

    const/4 v3, 0x0

    return-object v3
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_1e

    :try_start_d
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_16

    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1b

    :cond_16
    :try_start_16
    monitor-exit v0

    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    return-object v2

    :catchall_1b
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v1

    const/4 v3, 0x0

    return-object v3
.end method

.method public performContextMenuAction(I)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public performEditorAction(I)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public requestCursorUpdates(I)Z
    .registers 8

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v3

    if-eqz v3, :cond_b

    return v5

    :cond_b
    :try_start_b
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap0()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V

    monitor-enter v0
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_17} :catch_28

    :try_start_17
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_20

    iget-boolean v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mRequestUpdateCursorAnchorInfoResult:Z
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    :cond_20
    :try_start_20
    monitor-exit v0

    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->-wrap1(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V

    return v2

    :catchall_25
    move-exception v3

    monitor-exit v0

    throw v3
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_28} :catch_28

    :catch_28
    move-exception v1

    return v5
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setComposingRegion(II)Z
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/internal/view/InputConnectionWrapper;->isMethodMissing(I)Z

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingRegion(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    const/4 v1, 0x1

    return v1

    :catch_10
    move-exception v0

    return v2
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Ljava/lang/CharSequence;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public setSelection(II)Z
    .registers 5

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    const/4 v1, 0x1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "InputConnectionWrapper{idHash=#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mMissingMethods="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mMissingMethods:I

    invoke-static {v1}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlagsAsString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
