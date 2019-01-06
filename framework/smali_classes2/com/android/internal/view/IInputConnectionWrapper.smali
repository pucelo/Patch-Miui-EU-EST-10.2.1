.class public abstract Lcom/android/internal/view/IInputConnectionWrapper;
.super Lcom/android/internal/view/IInputContext$Stub;
.source "IInputConnectionWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_BEGIN_BATCH_EDIT:I = 0x5a

.field private static final DO_CLEAR_META_KEY_STATES:I = 0x82

.field private static final DO_CLOSE_CONNECTION:I = 0x96

.field private static final DO_COMMIT_COMPLETION:I = 0x37

.field private static final DO_COMMIT_CONTENT:I = 0xa0

.field private static final DO_COMMIT_CORRECTION:I = 0x38

.field private static final DO_COMMIT_TEXT:I = 0x32

.field private static final DO_DELETE_SURROUNDING_TEXT:I = 0x50

.field private static final DO_DELETE_SURROUNDING_TEXT_IN_CODE_POINTS:I = 0x51

.field private static final DO_END_BATCH_EDIT:I = 0x5f

.field private static final DO_FINISH_COMPOSING_TEXT:I = 0x41

.field private static final DO_GET_CURSOR_CAPS_MODE:I = 0x1e

.field private static final DO_GET_EXTRACTED_TEXT:I = 0x28

.field private static final DO_GET_SELECTED_TEXT:I = 0x19

.field private static final DO_GET_TEXT_AFTER_CURSOR:I = 0xa

.field private static final DO_GET_TEXT_BEFORE_CURSOR:I = 0x14

.field private static final DO_PERFORM_CONTEXT_MENU_ACTION:I = 0x3b

.field private static final DO_PERFORM_EDITOR_ACTION:I = 0x3a

.field private static final DO_PERFORM_PRIVATE_COMMAND:I = 0x78

.field private static final DO_REQUEST_UPDATE_CURSOR_ANCHOR_INFO:I = 0x8c

.field private static final DO_SEND_KEY_EVENT:I = 0x46

.field private static final DO_SET_COMPOSING_REGION:I = 0x3f

.field private static final DO_SET_COMPOSING_TEXT:I = 0x3c

.field private static final DO_SET_SELECTION:I = 0x39

.field private static final TAG:Ljava/lang/String; = "IInputConnectionWrapper"


# instance fields
.field private mFinished:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mH:Landroid/os/Handler;

.field private mInputConnection:Landroid/view/inputmethod/InputConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/internal/view/IInputContext$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z

    iput-object p2, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object p1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    new-instance v0, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/view/IInputConnectionWrapper$MyHandler;-><init>(Lcom/android/internal/view/IInputConnectionWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .registers 2

    const/16 v0, 0x5a

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public clearMetaKeyStates(I)V
    .registers 4

    const/16 v0, 0x82

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public closeConnection()V
    .registers 2

    const/16 v0, 0x96

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .registers 3

    const/16 v0, 0x37

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;ILcom/android/internal/view/IInputContextCallback;)V
    .registers 13

    const/16 v1, 0xa0

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)V
    .registers 3

    const/16 v0, 0x38

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public commitText(Ljava/lang/CharSequence;I)V
    .registers 4

    const/16 v0, 0x32

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingText(II)V
    .registers 4

    const/16 v0, 0x50

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public deleteSurroundingTextInCodePoints(II)V
    .registers 4

    const/16 v0, 0x51

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method dispatchMessage(Landroid/os/Message;)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->executeMessage(Landroid/os/Message;)V

    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public endBatchEdit()V
    .registers 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method executeMessage(Landroid/os/Message;)V
    .registers 16

    iget v11, p1, Landroid/os/Message;->what:I

    sparse-switch v11, :sswitch_data_4ae

    const-string/jumbo v11, "IInputConnectionWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unhandled message code: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p1, Landroid/os/Message;->what:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_26
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_3a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_4b

    :cond_3a
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getTextAfterCursor on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_47} :catch_5a
    .catchall {:try_start_26 .. :try_end_47} :catchall_68

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_4b
    :try_start_4b
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextAfterCursor(Ljava/lang/CharSequence;I)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_56} :catch_5a
    .catchall {:try_start_4b .. :try_end_56} :catchall_68

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_59
    return-void

    :catch_5a
    move-exception v5

    :try_start_5b
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setTextAfterCursor"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_68

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_59

    :catchall_68
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_6d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_71
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_85

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_96

    :cond_85
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getTextBeforeCursor on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_92} :catch_a5
    .catchall {:try_start_71 .. :try_end_92} :catchall_b3

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_96
    :try_start_96
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setTextBeforeCursor(Ljava/lang/CharSequence;I)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_a1} :catch_a5
    .catchall {:try_start_96 .. :try_end_a1} :catchall_b3

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_a4
    return-void

    :catch_a5
    move-exception v5

    :try_start_a6
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setTextBeforeCursor"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_af
    .catchall {:try_start_a6 .. :try_end_af} :catchall_b3

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_a4

    :catchall_b3
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_b8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_bc
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_d0

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_e1

    :cond_d0
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getSelectedText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_dd
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_dd} :catch_ee
    .catchall {:try_start_bc .. :try_end_dd} :catchall_fc

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_e1
    :try_start_e1
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setSelectedText(Ljava/lang/CharSequence;I)V
    :try_end_ea
    .catch Landroid/os/RemoteException; {:try_start_e1 .. :try_end_ea} :catch_ee
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_fc

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_ed
    return-void

    :catch_ee
    move-exception v5

    :try_start_ef
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setSelectedText"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f8
    .catchall {:try_start_ef .. :try_end_f8} :catchall_fc

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_ed

    :catchall_fc
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_101
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_105
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_119

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_12a

    :cond_119
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getCursorCapsMode on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_126} :catch_137
    .catchall {:try_start_105 .. :try_end_126} :catchall_145

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_12a
    :try_start_12a
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCursorCapsMode(II)V
    :try_end_133
    .catch Landroid/os/RemoteException; {:try_start_12a .. :try_end_133} :catch_137
    .catchall {:try_start_12a .. :try_end_133} :catchall_145

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_136
    return-void

    :catch_137
    move-exception v5

    :try_start_138
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setCursorCapsMode"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_141
    .catchall {:try_start_138 .. :try_end_141} :catchall_145

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_136

    :catchall_145
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_14a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_14e
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_162

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_173

    :cond_162
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "getExtractedText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_16f
    .catch Landroid/os/RemoteException; {:try_start_14e .. :try_end_16f} :catch_184
    .catchall {:try_start_14e .. :try_end_16f} :catchall_192

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_173
    :try_start_173
    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/ExtractedTextRequest;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setExtractedText(Landroid/view/inputmethod/ExtractedText;I)V
    :try_end_180
    .catch Landroid/os/RemoteException; {:try_start_173 .. :try_end_180} :catch_184
    .catchall {:try_start_173 .. :try_end_180} :catchall_192

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_183
    return-void

    :catch_184
    move-exception v5

    :try_start_185
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling setExtractedText"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18e
    .catchall {:try_start_185 .. :try_end_18e} :catchall_192

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_183

    :catchall_192
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_197
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_1a5

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1af

    :cond_1a5
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1af
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :sswitch_1bc
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_1ca

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1d4

    :cond_1ca
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setSelection on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d4
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    return-void

    :sswitch_1dc
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_1ea

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_1f4

    :cond_1ea
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performEditorAction on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1f4
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    return-void

    :sswitch_1fa
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_208

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_212

    :cond_208
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performContextMenuAction on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_212
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    return-void

    :sswitch_218
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_226

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_230

    :cond_226
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitCompletion on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_230
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    return-void

    :sswitch_238
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_246

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_250

    :cond_246
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitCorrection on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_250
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/inputmethod/CorrectionInfo;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->commitCorrection(Landroid/view/inputmethod/CorrectionInfo;)Z

    return-void

    :sswitch_258
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_266

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_270

    :cond_266
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setComposingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_270
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/CharSequence;

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :sswitch_27d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_28b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_295

    :cond_28b
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "setComposingRegion on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_295
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    return-void

    :sswitch_29d
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_2a4

    return-void

    :cond_2a4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-nez v7, :cond_2b4

    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "finishComposingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2b4
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    return-void

    :sswitch_2b8
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_2c6

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2d0

    :cond_2c6
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "sendKeyEvent on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2d0
    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/view/KeyEvent;

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->onUserAction()V

    return-void

    :sswitch_2db
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_2e9

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_2f3

    :cond_2e9
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "clearMetaKeyStates on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f3
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->clearMetaKeyStates(I)Z

    return-void

    :sswitch_2f9
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_307

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_311

    :cond_307
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "deleteSurroundingText on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_311
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    return-void

    :sswitch_319
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_327

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_331

    :cond_327
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "deleteSurroundingTextInCodePoints on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_331
    iget v11, p1, Landroid/os/Message;->arg1:I

    iget v12, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v7, v11, v12}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingTextInCodePoints(II)Z

    return-void

    :sswitch_339
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_347

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_351

    :cond_347
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "beginBatchEdit on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_351
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    return-void

    :sswitch_355
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_363

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_36d

    :cond_363
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "endBatchEdit on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_36d
    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    return-void

    :sswitch_371
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_375
    iget-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v4, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_38b

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_398

    :cond_38b
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "performPrivateCommand on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_394
    .catchall {:try_start_375 .. :try_end_394} :catchall_39f

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_398
    :try_start_398
    invoke-interface {v7, v0, v4}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_39b
    .catchall {:try_start_398 .. :try_end_39b} :catchall_39f

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_39f
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_3a4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_3a8
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_3bc

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_3cd

    :cond_3bc
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "requestCursorAnchorInfo on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_3c9
    .catch Landroid/os/RemoteException; {:try_start_3a8 .. :try_end_3c9} :catch_3da
    .catchall {:try_start_3a8 .. :try_end_3c9} :catchall_3e8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_3cd
    :try_start_3cd
    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v7, v11}, Landroid/view/inputmethod/InputConnection;->requestCursorUpdates(I)Z

    move-result v11

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setRequestUpdateCursorAnchorInfoResult(ZI)V
    :try_end_3d6
    .catch Landroid/os/RemoteException; {:try_start_3cd .. :try_end_3d6} :catch_3da
    .catchall {:try_start_3cd .. :try_end_3d6} :catchall_3e8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_3d9
    return-void

    :catch_3da
    move-exception v5

    :try_start_3db
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling requestCursorAnchorInfo"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e4
    .catchall {:try_start_3db .. :try_end_3e4} :catchall_3e8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_3d9

    :catchall_3e8
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    :sswitch_3ed
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_3f4

    return-void

    :cond_3f4
    :try_start_3f4
    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;
    :try_end_3f7
    .catchall {:try_start_3f4 .. :try_end_3f7} :catchall_421

    move-result-object v7

    if-nez v7, :cond_408

    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v11, 0x0

    :try_start_3fe
    iput-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_403
    .catchall {:try_start_3fe .. :try_end_403} :catchall_405

    monitor-exit v12

    return-void

    :catchall_405
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_408
    :try_start_408
    invoke-static {v7}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    move-result v9

    and-int/lit8 v11, v9, 0x40

    if-nez v11, :cond_413

    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->closeConnection()V
    :try_end_413
    .catchall {:try_start_408 .. :try_end_413} :catchall_421

    :cond_413
    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v11, 0x0

    :try_start_417
    iput-object v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_41c
    .catchall {:try_start_417 .. :try_end_41c} :catchall_41e

    monitor-exit v12

    return-void

    :catchall_41e
    move-exception v11

    monitor-exit v12

    throw v11

    :catchall_421
    move-exception v11

    iget-object v12, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v12

    const/4 v13, 0x0

    :try_start_426
    iput-object v13, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_42b
    .catchall {:try_start_426 .. :try_end_42b} :catchall_42d

    monitor-exit v12

    throw v11

    :catchall_42d
    move-exception v11

    monitor-exit v12

    throw v11

    :sswitch_430
    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/os/SomeArgs;

    :try_start_436
    iget-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/view/IInputContextCallback;

    iget v3, v1, Lcom/android/internal/os/SomeArgs;->argi6:I

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    if-eqz v7, :cond_44a

    invoke-virtual {p0}, Lcom/android/internal/view/IInputConnectionWrapper;->isActive()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_45b

    :cond_44a
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "commitContent on inactive InputConnection"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_457
    .catch Landroid/os/RemoteException; {:try_start_436 .. :try_end_457} :catch_49a
    .catchall {:try_start_436 .. :try_end_457} :catchall_4a8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_45b
    :try_start_45b
    iget-object v8, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Landroid/view/inputmethod/InputContentInfo;

    if-eqz v8, :cond_469

    invoke-virtual {v8}, Landroid/view/inputmethod/InputContentInfo;->validate()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_48b

    :cond_469
    const-string/jumbo v11, "IInputConnectionWrapper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "commitContent with invalid inputContentInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    invoke-interface {v2, v11, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_487
    .catch Landroid/os/RemoteException; {:try_start_45b .. :try_end_487} :catch_49a
    .catchall {:try_start_45b .. :try_end_487} :catchall_4a8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :cond_48b
    :try_start_48b
    iget-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    invoke-interface {v7, v8, v6, v11}, Landroid/view/inputmethod/InputConnection;->commitContent(Landroid/view/inputmethod/InputContentInfo;ILandroid/os/Bundle;)Z

    move-result v10

    invoke-interface {v2, v10, v3}, Lcom/android/internal/view/IInputContextCallback;->setCommitContentResult(ZI)V
    :try_end_496
    .catch Landroid/os/RemoteException; {:try_start_48b .. :try_end_496} :catch_49a
    .catchall {:try_start_48b .. :try_end_496} :catchall_4a8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    :goto_499
    return-void

    :catch_49a
    move-exception v5

    :try_start_49b
    const-string/jumbo v11, "IInputConnectionWrapper"

    const-string/jumbo v12, "Got RemoteException calling commitContent"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a4
    .catchall {:try_start_49b .. :try_end_4a4} :catchall_4a8

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_499

    :catchall_4a8
    move-exception v11

    invoke-virtual {v1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    throw v11

    nop

    :sswitch_data_4ae
    .sparse-switch
        0xa -> :sswitch_22
        0x14 -> :sswitch_6d
        0x19 -> :sswitch_b8
        0x1e -> :sswitch_101
        0x28 -> :sswitch_14a
        0x32 -> :sswitch_197
        0x37 -> :sswitch_218
        0x38 -> :sswitch_238
        0x39 -> :sswitch_1bc
        0x3a -> :sswitch_1dc
        0x3b -> :sswitch_1fa
        0x3c -> :sswitch_258
        0x3f -> :sswitch_27d
        0x41 -> :sswitch_29d
        0x46 -> :sswitch_2b8
        0x50 -> :sswitch_2f9
        0x51 -> :sswitch_319
        0x5a -> :sswitch_339
        0x5f -> :sswitch_355
        0x78 -> :sswitch_371
        0x82 -> :sswitch_2db
        0x8c -> :sswitch_3a4
        0x96 -> :sswitch_3ed
        0xa0 -> :sswitch_430
    .end sparse-switch
.end method

.method public finishComposingText()V
    .registers 2

    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 5

    const/16 v0, 0x1e

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V
    .registers 11

    const/16 v1, 0x28

    move-object v0, p0

    move v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mInputConnection:Landroid/view/inputmethod/InputConnection;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-object v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getSelectedText(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 5

    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .registers 11

    const/16 v1, 0xa

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V
    .registers 11

    const/16 v1, 0x14

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected abstract isActive()Z
.end method

.method protected isFinished()Z
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mFinished:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method obtainMessage(I)Landroid/os/Message;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageII(III)Landroid/os/Message;
    .registers 5

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIISC(IIIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 8

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .registers 6

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageIOOSC(IILjava/lang/Object;Ljava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 10

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iput-object p6, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p5, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageIOSC(IILjava/lang/Object;ILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 9

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p5, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;
    .registers 8

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/view/IInputConnectionWrapper;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method protected abstract onUserAction()V
.end method

.method public performContextMenuAction(I)V
    .registers 4

    const/16 v0, 0x3b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performEditorAction(I)V
    .registers 4

    const/16 v0, 0x3a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public requestUpdateCursorAnchorInfo(IILcom/android/internal/view/IInputContextCallback;)V
    .registers 5

    const/16 v0, 0x8c

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageISC(IIILcom/android/internal/view/IInputContextCallback;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)V
    .registers 3

    const/16 v0, 0x46

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingRegion(II)V
    .registers 4

    const/16 v0, 0x3f

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)V
    .registers 4

    const/16 v0, 0x3c

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method

.method public setSelection(II)V
    .registers 4

    const/16 v0, 0x39

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/view/IInputConnectionWrapper;->obtainMessageII(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/IInputConnectionWrapper;->dispatchMessage(Landroid/os/Message;)V

    return-void
.end method
