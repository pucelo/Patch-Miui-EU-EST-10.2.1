.class Landroid/inputmethodservice/IInputMethodSessionWrapper;
.super Lcom/android/internal/view/IInputMethodSession$Stub;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DO_APP_PRIVATE_COMMAND:I = 0x64

.field private static final DO_DISPLAY_COMPLETIONS:I = 0x41

.field private static final DO_FINISH_INPUT:I = 0x3c

.field private static final DO_FINISH_SESSION:I = 0x6e

.field private static final DO_TOGGLE_SOFT_INPUT:I = 0x69

.field private static final DO_UPDATE_CURSOR:I = 0x5f

.field private static final DO_UPDATE_CURSOR_ANCHOR_INFO:I = 0x63

.field private static final DO_UPDATE_EXTRACTED_TEXT:I = 0x43

.field private static final DO_UPDATE_SELECTION:I = 0x5a

.field private static final DO_VIEW_CLICKED:I = 0x73

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field mCaller:Lcom/android/internal/os/HandlerCaller;

.field mChannel:Landroid/view/InputChannel;

.field mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

.field mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSession;Landroid/view/InputChannel;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/view/IInputMethodSession$Stub;-><init>()V

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iput-object p3, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz p3, :cond_1d

    new-instance v0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;-><init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    :cond_1d
    return-void
.end method

.method private doFinishSession()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    invoke-virtual {v0}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->dispose()V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mReceiver:Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;

    :cond_e
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_19

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mChannel:Landroid/view/InputChannel;

    :cond_19
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x41

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .registers 10

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    if-nez v1, :cond_13

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_ae

    :goto_a
    return-void

    :sswitch_b
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_a

    :cond_13
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_b8

    const-string/jumbo v0, "InputMethodWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled message code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_35
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodSession;->finishInput()V

    return-void

    :sswitch_3b
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    return-void

    :sswitch_45
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/ExtractedText;

    invoke-interface {v1, v2, v0}, Landroid/view/inputmethod/InputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    return-void

    :sswitch_51
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, v7, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v3, v7, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v4, v7, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v5, v7, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-interface/range {v0 .. v6}, Landroid/view/inputmethod/InputMethodSession;->updateSelection(IIIIII)V

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_6a
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    return-void

    :sswitch_74
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    return-void

    :sswitch_7e
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget-object v0, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {v2, v0, v1}, Landroid/view/inputmethod/InputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_93
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputMethodSession;->toggleSoftInput(II)V

    return-void

    :sswitch_9d
    invoke-direct {p0}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->doFinishSession()V

    return-void

    :sswitch_a1
    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_ab

    :goto_a7
    invoke-interface {v1, v0}, Landroid/view/inputmethod/InputMethodSession;->viewClicked(Z)V

    return-void

    :cond_ab
    const/4 v0, 0x0

    goto :goto_a7

    nop

    :sswitch_data_ae
    .sparse-switch
        0x5a -> :sswitch_b
        0x64 -> :sswitch_b
    .end sparse-switch

    :sswitch_data_b8
    .sparse-switch
        0x3c -> :sswitch_35
        0x41 -> :sswitch_3b
        0x43 -> :sswitch_45
        0x5a -> :sswitch_51
        0x5f -> :sswitch_6a
        0x63 -> :sswitch_74
        0x64 -> :sswitch_7e
        0x69 -> :sswitch_93
        0x6e -> :sswitch_9d
        0x73 -> :sswitch_a1
    .end sparse-switch
.end method

.method public finishInput()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public finishSession()V
    .registers 4

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;
    .registers 2

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    return-object v0
.end method

.method public toggleSoftInput(II)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public updateCursor(Landroid/graphics/Rect;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 5

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x63

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .registers 6

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x43

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public updateSelection(IIIIII)V
    .registers 16

    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x5a

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIIIII(IIIIIII)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public viewClicked(Z)V
    .registers 6

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz p1, :cond_11

    const/4 v0, 0x1

    :goto_7
    const/16 v3, 0x73

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method
