.class public final Landroid/view/inputmethod/InputMethodManager;
.super Ljava/lang/Object;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputMethodManager$1;,
        Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;,
        Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;,
        Landroid/view/inputmethod/InputMethodManager$H;,
        Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;,
        Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    }
.end annotation


# static fields
.field public static final CONTROL_START_INITIAL:I = 0x100

.field public static final CONTROL_WINDOW_FIRST:I = 0x4

.field public static final CONTROL_WINDOW_IS_TEXT_EDITOR:I = 0x2

.field public static final CONTROL_WINDOW_VIEW_HAS_FOCUS:I = 0x1

.field static final DEBUG:Z = false

.field public static final DISPATCH_HANDLED:I = 0x1

.field public static final DISPATCH_IN_PROGRESS:I = -0x1

.field public static final DISPATCH_NOT_HANDLED:I = 0x0

.field public static final DISPATCH_NO_METHOD:I = 0x63

.field public static final HIDE_IMPLICIT_ONLY:I = 0x1

.field public static final HIDE_NOT_ALWAYS:I = 0x2

.field static final INPUT_METHOD_NOT_RESPONDING_TIMEOUT:J = 0x9c4L

.field static final MSG_BIND:I = 0x2

.field static final MSG_DUMP:I = 0x1

.field static final MSG_FLUSH_INPUT_EVENT:I = 0x7

.field static final MSG_REPORT_FULLSCREEN_MODE:I = 0xa

.field static final MSG_SEND_INPUT_EVENT:I = 0x5

.field static final MSG_SET_ACTIVE:I = 0x4

.field static final MSG_SET_USER_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = 0x9

.field static final MSG_TIMEOUT_INPUT_EVENT:I = 0x6

.field static final MSG_UNBIND:I = 0x3

.field private static final NOT_AN_ACTION_NOTIFICATION_SEQUENCE_NUMBER:I = -0x1

.field static final PENDING_EVENT_COUNTER:Ljava/lang/String; = "aq:imm"

.field private static final REQUEST_UPDATE_CURSOR_ANCHOR_INFO_NONE:I = 0x0

.field public static final RESULT_HIDDEN:I = 0x3

.field public static final RESULT_SHOWN:I = 0x2

.field public static final RESULT_UNCHANGED_HIDDEN:I = 0x1

.field public static final RESULT_UNCHANGED_SHOWN:I = 0x0

.field public static final SHOW_FORCED:I = 0x2

.field public static final SHOW_IMPLICIT:I = 0x1

.field public static final SHOW_IM_PICKER_MODE_AUTO:I = 0x0

.field public static final SHOW_IM_PICKER_MODE_EXCLUDE_AUXILIARY_SUBTYPES:I = 0x2

.field public static final SHOW_IM_PICKER_MODE_INCLUDE_AUXILIARY_SUBTYPES:I = 0x1

.field static final TAG:Ljava/lang/String; = "InputMethodManager"

.field static sInstance:Landroid/view/inputmethod/InputMethodManager;


# instance fields
.field mActive:Z

.field mBindSequence:I

.field final mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

.field mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mCurChannel:Landroid/view/InputChannel;

.field mCurId:Ljava/lang/String;

.field mCurMethod:Lcom/android/internal/view/IInputMethodSession;

.field mCurRootView:Landroid/view/View;

.field mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

.field mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

.field private mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

.field mCursorCandEnd:I

.field mCursorCandStart:I

.field mCursorRect:Landroid/graphics/Rect;

.field mCursorSelEnd:I

.field mCursorSelStart:I

.field final mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

.field mFullscreenMode:Z

.field final mH:Landroid/view/inputmethod/InputMethodManager$H;

.field final mIInputContext:Lcom/android/internal/view/IInputContext;

.field private mLastSentUserActionNotificationSequenceNumber:I

.field final mMainLooper:Landroid/os/Looper;

.field mNextServedView:Landroid/view/View;

.field private mNextUserActionNotificationSequenceNumber:I

.field final mPendingEventPool:Landroid/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$Pool",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/inputmethod/InputMethodManager$PendingEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestUpdateCursorAnchorInfoMonitorMode:I

.field mRestartOnNextWindowFocus:Z

.field mServedConnecting:Z

.field mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

.field mServedView:Landroid/view/View;

.field final mService:Lcom/android/internal/view/IInputMethodManager;

.field mTmpCursorRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -set0(Landroid/view/inputmethod/InputMethodManager;I)I
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    return p1
.end method

.method static synthetic -set1(Landroid/view/inputmethod/InputMethodManager;I)I
    .registers 2

    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    const-string/jumbo v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/view/inputmethod/InputMethodManager;-><init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V

    return-void
.end method

.method constructor <init>(Lcom/android/internal/view/IInputMethodManager;Landroid/os/Looper;)V
    .registers 7

    const/16 v3, 0x14

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    new-instance v0, Landroid/util/Pools$SimplePool;

    invoke-direct {v0, v3}, Landroid/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/inputmethod/InputMethodManager$1;

    invoke-direct {v0, p0}, Landroid/view/inputmethod/InputMethodManager$1;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    new-instance v0, Landroid/view/inputmethod/BaseInputConnection;

    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/inputmethod/InputMethodManager;Z)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    new-instance v0, Landroid/view/inputmethod/InputMethodManager$H;

    invoke-direct {v0, p0, p2}, Landroid/view/inputmethod/InputMethodManager$H;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mDummyInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-direct {v0, p2, v1, p0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-void
.end method

.method private checkFocusNoStartInput(Z)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-ne v1, v2, :cond_d

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_d

    return v4

    :cond_d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_10
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_3e

    if-ne v1, v3, :cond_1c

    xor-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1c

    monitor-exit v2

    return v4

    :cond_1c
    :try_start_1c
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-nez v1, :cond_28

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_3e

    monitor-exit v2

    return v4

    :cond_28
    :try_start_28
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z
    :try_end_37
    .catchall {:try_start_28 .. :try_end_37} :catchall_3e

    monitor-exit v2

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->finishComposingText()V

    :cond_3d
    return v5

    :catchall_3e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static dumpViewInfo(Landroid/view/View;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_6

    const-string/jumbo v1, "null"

    return-object v1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",focus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",windowFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",window="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",temporaryDetach="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private flushPendingEventsLocked()V
    .registers 8

    const/4 v6, 0x7

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v4, v6}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(I)V

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_26

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v3, v5}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_26
    return-void
.end method

.method public static getInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 4

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-nez v1, :cond_12

    :try_start_7
    new-instance v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/view/inputmethod/InputMethodManager;-><init>(Landroid/os/Looper;)V

    sput-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;
    :try_end_12
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_7 .. :try_end_12} :catch_16
    .catchall {:try_start_7 .. :try_end_12} :catchall_1d

    :cond_12
    :try_start_12
    sget-object v1, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_1d

    monitor-exit v2

    return-object v1

    :catch_16
    move-exception v0

    :try_start_17
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1d
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1d

    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;
    .registers 9

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v1}, Landroid/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    if-nez v0, :cond_10

    new-instance v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-direct {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    :cond_10
    iput-object p1, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    iput-object p2, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mToken:Ljava/lang/Object;

    iput-object p3, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    iput-object p4, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mCallback:Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;

    iput-object p5, v0, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static peekInstance()Landroid/view/inputmethod/InputMethodManager;
    .registers 1

    sget-object v0, Landroid/view/inputmethod/InputMethodManager;->sInstance:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private recyclePendingEventLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 3

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->recycle()V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEventPool:Landroid/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroid/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method static scheduleCheckFocusLocked(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->dispatchCheckFocus()V

    :cond_9
    return-void
.end method

.method private showInputMethodPickerLocked()V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public checkFocus()V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v1, 0x4

    const/4 v2, 0x0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    :cond_f
    return-void
.end method

.method clearBindingLocked()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    invoke-virtual {p0, v1}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    return-void
.end method

.method clearConnectionLocked()V
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    :cond_e
    return-void
.end method

.method public clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    .registers 5

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->clearLastInputMethodWindowForTransition(Landroid/os/IBinder;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    monitor-exit v2

    return-void

    :catch_a
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method closeCurrentInput()V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Ljava/lang/Object;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)I
    .registers 16

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v10, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v10

    :try_start_5
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_56

    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_2a

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2a

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_2a

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2a

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_81

    monitor-exit v10

    return v3

    :cond_2a
    :try_start_2a
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->obtainPendingEventLocked(Landroid/view/InputEvent;Ljava/lang/Object;Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager$FinishedInputEventCallback;Landroid/os/Handler;)Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    move-result-object v9

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0, v9}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_81

    move-result v1

    monitor-exit v10

    return v1

    :cond_43
    :try_start_43
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v9}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v1, v8}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_53
    .catchall {:try_start_43 .. :try_end_53} :catchall_81

    const/4 v1, -0x1

    monitor-exit v10

    return v1

    :cond_56
    :try_start_56
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-nez v1, :cond_7f

    const-string/jumbo v1, "InputMethodManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatch input event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " while method is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catchall {:try_start_56 .. :try_end_7b} :catchall_81

    const/16 v1, 0x63

    monitor-exit v10

    return v1

    :cond_7f
    monitor-exit v10

    return v2

    :catchall_81
    move-exception v1

    monitor-exit v10

    throw v1
.end method

.method public dispatchKeyEventFromInputMethod(Landroid/view/View;Landroid/view/KeyEvent;)V
    .registers 6

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    if-eqz p1, :cond_1c

    :try_start_5
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    :goto_9
    if-nez v0, :cond_15

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_15

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    :cond_15
    if-eqz v0, :cond_1a

    invoke-virtual {v0, p2}, Landroid/view/ViewRootImpl;->dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_1e

    :cond_1a
    monitor-exit v2

    return-void

    :cond_1c
    const/4 v0, 0x0

    goto :goto_9

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_29

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    :cond_18
    monitor-exit v2

    return-void

    :cond_1a
    :try_start_1a
    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_29

    if-eqz v1, :cond_27

    :try_start_20
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_27} :catch_2c
    .catchall {:try_start_20 .. :try_end_27} :catchall_29

    :cond_27
    :goto_27
    monitor-exit v2

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_2c
    move-exception v0

    goto :goto_27
.end method

.method doDump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input method client state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mMainLooper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mMainLooper:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mIInputContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mRestartOnNextWindowFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mBindSequence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCurId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mFullscreenMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCurMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCurRootView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mNextServedView="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mServedConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_20c

    const-string/jumbo v1, "  mCurrentTextBoxAttribute:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    :goto_156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mServedInputConnectionWrapper="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCompletions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCursorRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCursorSelStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCursorSelEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCursorCandStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mCursorCandEnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mNextUserActionNotificationSequenceNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mLastSentUserActionNotificationSequenceNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void

    :cond_20c
    const-string/jumbo v1, "  mCurrentTextBoxAttribute: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_156
.end method

.method public exposeContent(Landroid/os/IBinder;Landroid/view/inputmethod/InputContentInfo;Landroid/view/inputmethod/EditorInfo;)V
    .registers 10

    invoke-virtual {p2}, Landroid/view/inputmethod/InputContentInfo;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    :try_start_4
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, p1, v0, v4}, Lcom/android/internal/view/IInputMethodManager;->createInputContentUriToken(Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_f

    move-result-object v2

    if-nez v2, :cond_3c

    return-void

    :catch_f
    move-exception v1

    const-string/jumbo v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createInputContentAccessToken failed. contentUri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3c
    invoke-virtual {p2, v2}, Landroid/view/inputmethod/InputContentInfo;->setUriToken(Lcom/android/internal/inputmethod/IInputContentUriToken;)V

    return-void
.end method

.method finishInputLocked()V
    .registers 5

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_12

    :try_start_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/view/IInputMethodManager;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_12} :catch_1d

    :cond_12
    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->clearConnectionLocked()V

    :cond_1c
    return-void

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method finishedInputEvent(IZZ)V
    .registers 12

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_6b

    move-result v0

    if-gez v0, :cond_d

    monitor-exit v3

    return-void

    :cond_d
    :try_start_d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    const-string/jumbo v2, "aq:imm"

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v6, 0x4

    invoke-static {v6, v7, v2, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inputSendToIME:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/statistics/PerfTracer;->endTracePoint(Ljava/lang/String;)V

    if-eqz p3, :cond_64

    const-string/jumbo v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Timeout waiting for IME to handle input event after 2500 ms: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mInputMethodId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_d .. :try_end_5f} :catchall_6b

    :goto_5f
    monitor-exit v3

    invoke-virtual {p0, v1, p2}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    return-void

    :cond_64
    :try_start_64
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v2, v4, v1}, Landroid/view/inputmethod/InputMethodManager$H;->removeMessages(ILjava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_6b

    goto :goto_5f

    :catchall_6b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public focusIn(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method focusInLocked(Landroid/view/View;)V
    .registers 4

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    if-eq v0, v1, :cond_12

    return-void

    :cond_12
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V

    return-void
.end method

.method public focusOut(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getClient()Lcom/android/internal/view/IInputMethodClient;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    return-object v0
.end method

.method public getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    if-nez p1, :cond_a

    :goto_5
    invoke-interface {v2, v1, p2}, Lcom/android/internal/view/IInputMethodManager;->getEnabledInputMethodSubtypeList(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_a
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_5

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInputContext()Lcom/android/internal/view/IInputContext;
    .registers 2

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mIInputContext:Lcom/android/internal/view/IInputContext;

    return-object v0
.end method

.method public getInputMethodList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getInputMethodWindowVisibleHeight()I
    .registers 4

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodWindowVisibleHeight()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    move-result v1

    monitor-exit v2

    return v1

    :catch_b
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    .registers 4

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1}, Lcom/android/internal/view/IInputMethodManager;->getLastInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    move-result-object v1

    monitor-exit v2

    return-object v1

    :catch_b
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getShortcutInputMethodsAndSubtypes()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    :try_start_3
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_58

    :try_start_8
    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v7}, Lcom/android/internal/view/IInputMethodManager;->getShortcutInputMethodsAndSubtypes()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    if-eqz v3, :cond_37

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_37

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v0, :cond_37

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v7, :cond_46

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    const-string/jumbo v7, "InputMethodManager"

    const-string/jumbo v9, "IMI list already contains the same InputMethod."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_37} :catch_52
    .catchall {:try_start_8 .. :try_end_37} :catchall_58

    :cond_37
    monitor-exit v8

    return-object v5

    :cond_39
    :try_start_39
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_43
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_46
    if-eqz v6, :cond_43

    instance-of v7, v4, Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v7, :cond_43

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_51} :catch_52
    .catchall {:try_start_39 .. :try_end_51} :catchall_58

    goto :goto_43

    :catch_52
    move-exception v1

    :try_start_53
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7
    :try_end_58
    .catchall {:try_start_53 .. :try_end_58} :catchall_58

    :catchall_58
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method public hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->hideMySoftInput(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public hideSoftInputFromWindow(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_12

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_25

    move-result-object v1

    if-eq v1, p1, :cond_15

    :cond_12
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_15
    :try_start_15
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->hideSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1c} :catch_1f
    .catchall {:try_start_15 .. :try_end_1c} :catchall_25

    move-result v1

    monitor-exit v2

    return v1

    :catch_1f
    move-exception v0

    :try_start_20
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public hideStatusIcon(Landroid/os/IBinder;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V
    .registers 5

    iput-boolean p2, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandled:Z

    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->run()V

    :goto_11
    return-void

    :cond_12
    iget-object v1, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_11
.end method

.method public isAcceptingText()Z
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public isActive()Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_10

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_12

    if-eqz v2, :cond_10

    const/4 v0, 0x1

    :cond_10
    monitor-exit v1

    return v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isActive(Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_7
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_17

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1c

    :cond_17
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1e

    if-eqz v2, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    monitor-exit v1

    return v0

    :catchall_1e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isCursorAnchorInfoEnabled()Z
    .registers 5

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_3
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_15

    const/4 v0, 0x1

    :goto_a
    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1b

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_17

    const/4 v1, 0x1

    :goto_11
    if-nez v0, :cond_19

    :goto_13
    monitor-exit v3

    return v1

    :cond_15
    const/4 v0, 0x0

    goto :goto_a

    :cond_17
    const/4 v1, 0x0

    goto :goto_11

    :cond_19
    const/4 v1, 0x1

    goto :goto_13

    :catchall_1b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isFullscreenMode()Z
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Landroid/view/inputmethod/InputMethodManager;->mFullscreenMode:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isWatchingCursor(Landroid/view/View;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public notifyUserAction()V
    .registers 5

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I

    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1e

    if-ne v1, v3, :cond_b

    monitor-exit v2

    return-void

    :cond_b
    :try_start_b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodManager;->notifyUserAction(I)V

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    iput v1, p0, Landroid/view/inputmethod/InputMethodManager;->mLastSentUserActionNotificationSequenceNumber:I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_16} :catch_18
    .catchall {:try_start_b .. :try_end_16} :catchall_1e

    monitor-exit v2

    return-void

    :catch_18
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_1e

    :catchall_1e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V
    .registers 24

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z

    const/16 v17, 0x1

    :cond_14
    if-eqz p2, :cond_4a

    move-object/from16 v2, p2

    :goto_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->focusInLocked(Landroid/view/View;)V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_4d

    monitor-exit v3

    const/4 v5, 0x0

    if-eqz p2, :cond_2a

    const/4 v5, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_2a

    or-int/lit8 v5, v5, 0x2

    :cond_2a
    if-eqz p4, :cond_2e

    or-int/lit8 v5, v5, 0x4

    :cond_2e
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocusNoStartInput(Z)Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v3, 0x1

    move-object/from16 v2, p0

    move/from16 v6, p3

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    move-result v2

    if-eqz v2, :cond_50

    return-void

    :cond_4a
    move-object/from16 v2, p1

    goto :goto_18

    :catchall_4d
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_55
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v9

    const/4 v7, 0x2

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v10, v5

    move/from16 v11, p3

    move/from16 v12, p5

    invoke-interface/range {v6 .. v15}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6d} :catch_6f
    .catchall {:try_start_55 .. :try_end_6d} :catchall_75

    monitor-exit v3

    return-void

    :catch_6f
    move-exception v16

    :try_start_70
    invoke-virtual/range {v16 .. v16}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_75

    :catchall_75
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onPreWindowFocus(Landroid/view/View;Z)V
    .registers 5

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    if-nez p1, :cond_8

    const/4 v0, 0x0

    :try_start_6
    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    :cond_8
    if-eqz p2, :cond_e

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_16

    :cond_c
    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    :try_start_e
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    if-ne p1, v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_c

    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-ne v0, p1, :cond_d

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    invoke-static {p1}, Landroid/view/inputmethod/InputMethodManager;->scheduleCheckFocusLocked(Landroid/view/View;)V
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v1

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->registerSuggestionSpansForNotification([Landroid/text/style/SuggestionSpan;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reportFullscreenMode(Landroid/os/IBinder;Z)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->reportFullscreenMode(Landroid/os/IBinder;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public restartInput(Landroid/view/View;)V
    .registers 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_1c

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_28

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    :cond_1a
    monitor-exit v1

    return-void

    :cond_1c
    const/4 v0, 0x1

    :try_start_1d
    iput-boolean v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_28

    monitor-exit v1

    const/4 v1, 0x3

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    return-void

    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendAppPrivateCommand(Landroid/view/View;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_18

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1c

    :cond_18
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_47

    if-nez v1, :cond_1e

    :cond_1c
    monitor-exit v2

    return-void

    :cond_1e
    :try_start_1e
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_47

    if-eqz v1, :cond_1c

    :try_start_22
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29
    .catchall {:try_start_22 .. :try_end_27} :catchall_47

    :goto_27
    monitor-exit v2

    return-void

    :catch_29
    move-exception v0

    :try_start_2a
    const-string/jumbo v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_2a .. :try_end_46} :catchall_47

    goto :goto_27

    :catchall_47
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method sendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V
    .registers 6

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0, p1}, Landroid/view/inputmethod/InputMethodManager;->sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_c

    monitor-exit v2

    return-void

    :cond_c
    const/4 v3, 0x1

    if-ne v1, v3, :cond_15

    const/4 v0, 0x1

    :goto_10
    monitor-exit v2

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->invokeFinishedInputEventCallback(Landroid/view/inputmethod/InputMethodManager$PendingEvent;Z)V

    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_10

    :catchall_17
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method sendInputEventOnMainLooperLocked(Landroid/view/inputmethod/InputMethodManager$PendingEvent;)I
    .registers 11

    const/4 v8, 0x0

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v3, :cond_7a

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-nez v3, :cond_18

    new-instance v3, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager$H;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;-><init>(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    :cond_18
    iget-object v0, p1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v2

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v3, v2, v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->sendInputEvent(ILandroid/view/InputEvent;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string/jumbo v3, "aq:imm"

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    const-wide/16 v6, 0x4

    invoke-static {v6, v7, v3, v4}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const/4 v4, 0x6

    invoke-virtual {v3, v4, v2, v8, p1}, Landroid/view/inputmethod/InputMethodManager$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    const-wide/16 v4, 0x9c4

    invoke-virtual {v3, v1, v4, v5}, Landroid/view/inputmethod/InputMethodManager$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string/jumbo v3, "inputSendToIME"

    invoke-static {v3}, Landroid/os/statistics/PerfTracer;->beginTracePoint(Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :cond_53
    const-string/jumbo v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to send input event to IME: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " dropping: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7a
    return v8
.end method

.method public setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setAdditionalInputMethodSubtypes(Ljava/lang/String;[Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_a
    .catchall {:try_start_3 .. :try_end_8} :catchall_10

    monitor-exit v2

    return-void

    :catch_a
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    .registers 5

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->setCurrentInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    move-result v1

    monitor-exit v2

    return v1

    :catch_b
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V
    .registers 7

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/view/IInputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;Landroid/os/IBinder;II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method setInputChannelLocked(Landroid/view/InputChannel;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v0, p1, :cond_1e

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    if-eqz v0, :cond_13

    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->flushPendingEventsLocked()V

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;->dispose()V

    iput-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurSender:Landroid/view/inputmethod/InputMethodManager$ImeInputEventSender;

    :cond_13
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    :cond_1c
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    :cond_1e
    return-void
.end method

.method public setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->setInputMethodAndSubtype(Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setUpdateCursorAnchorInfoMode(I)V
    .registers 4

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    .registers 5

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->shouldOfferSwitchingToNextInputMethod(Landroid/os/IBinder;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    move-result v1

    monitor-exit v2

    return v1

    :catch_b
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public showInputMethodAndSubtypeEnabler(Ljava/lang/String;)V
    .registers 6

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, p1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodAndSubtypeEnablerFromClient(Lcom/android/internal/view/IInputMethodClient;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_a} :catch_c
    .catchall {:try_start_3 .. :try_end_a} :catchall_12

    monitor-exit v2

    return-void

    :catch_c
    move-exception v0

    :try_start_d
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public showInputMethodPicker()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_3
    invoke-direct {p0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerLocked()V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    monitor-exit v0

    return-void

    :catchall_8
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public showInputMethodPicker(Z)V
    .registers 7

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    if-eqz p1, :cond_f

    const/4 v1, 0x1

    :goto_6
    :try_start_6
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v2, v4, v1}, Lcom/android/internal/view/IInputMethodManager;->showInputMethodPickerFromClient(Lcom/android/internal/view/IInputMethodClient;I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_11
    .catchall {:try_start_6 .. :try_end_d} :catchall_17

    monitor-exit v3

    return-void

    :cond_f
    const/4 v1, 0x2

    goto :goto_6

    :catch_11
    move-exception v0

    :try_start_12
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public showSoftInput(Landroid/view/View;I)Z
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    return v0
.end method

.method public showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z
    .registers 8

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1b

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_2b

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1b

    :cond_18
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    :cond_1b
    :try_start_1b
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v3, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_25
    .catchall {:try_start_1b .. :try_end_22} :catchall_2b

    move-result v1

    monitor-exit v2

    return v1

    :catch_25
    move-exception v0

    :try_start_26
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public showSoftInputFromInputMethod(Landroid/os/IBinder;I)V
    .registers 5

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showMySoftInput(Landroid/os/IBinder;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    const-string/jumbo v1, "InputMethodManager"

    const-string/jumbo v2, "showSoftInputUnchecked() is a hidden method, which will be removed soon. If you are using android.support.v7.widget.SearchView, please update to version 26.0 or newer version."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->showSoftInput(Lcom/android/internal/view/IInputMethodClient;ILandroid/os/ResultReceiver;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    .registers 6

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/view/IInputMethodManager;->updateStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method startInputInner(ILandroid/os/IBinder;III)Z
    .registers 26

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    move-object/from16 v18, v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1c

    if-nez v18, :cond_10

    const/4 v3, 0x0

    monitor-exit v2

    return v3

    :cond_10
    monitor-exit v2

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v17

    if-nez v17, :cond_1f

    invoke-virtual/range {p0 .. p0}, Landroid/view/inputmethod/InputMethodManager;->closeCurrentInput()V

    const/4 v2, 0x0

    return v2

    :catchall_1c
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1f
    invoke-virtual/range {v17 .. v17}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_39

    new-instance v2, Landroid/view/inputmethod/InputMethodManager$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1}, Landroid/view/inputmethod/InputMethodManager$2;-><init>(Landroid/view/inputmethod/InputMethodManager;I)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    return v2

    :cond_39
    new-instance v9, Landroid/view/inputmethod/EditorInfo;

    invoke-direct {v9}, Landroid/view/inputmethod/EditorInfo;-><init>()V

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getId()I

    move-result v2

    iput v2, v9, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/view/View;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    move-object/from16 v0, v18

    if-ne v2, v0, :cond_6b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z
    :try_end_67
    .catchall {:try_start_5b .. :try_end_67} :catchall_1bb

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6e

    :cond_6b
    const/4 v2, 0x0

    monitor-exit v19

    return v2

    :cond_6e
    :try_start_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    if-nez v2, :cond_7a

    move/from16 v0, p3

    or-int/lit16 v0, v0, 0x100

    move/from16 p3, v0

    :cond_7a
    move-object/from16 v0, p0

    iput-object v9, v0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mServedConnecting:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v2, :cond_95

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;->deactivate()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    :cond_95
    if-eqz v14, :cond_130

    iget v2, v9, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, v9, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v14}, Landroid/view/inputmethod/InputConnectionInspector;->getMissingMethodFlags(Landroid/view/inputmethod/InputConnection;)I

    move-result v11

    and-int/lit8 v2, v11, 0x20

    if-eqz v2, :cond_126

    const/4 v15, 0x0

    :goto_c2
    new-instance v10, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;

    if-eqz v15, :cond_12b

    invoke-virtual {v15}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_ca
    move-object/from16 v0, p0

    invoke-direct {v10, v2, v14, v0}, Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;-><init>(Landroid/os/Looper;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputMethodManager;)V

    :goto_cf
    move-object/from16 v0, p0

    iput-object v10, v0, Landroid/view/inputmethod/InputMethodManager;->mServedInputConnectionWrapper:Landroid/view/inputmethod/InputMethodManager$ControlledInputConnectionWrapper;
    :try_end_d3
    .catchall {:try_start_6e .. :try_end_d3} :catchall_1bb

    :try_start_d3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mClient:Lcom/android/internal/view/IInputMethodClient$Stub;

    move/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-interface/range {v2 .. v11}, Lcom/android/internal/view/IInputMethodManager;->startInputOrWindowGainedFocus(ILcom/android/internal/view/IInputMethodClient;Landroid/os/IBinder;IIILandroid/view/inputmethod/EditorInfo;Lcom/android/internal/view/IInputContext;I)Lcom/android/internal/view/InputBindResult;

    move-result-object v16

    if-nez v16, :cond_133

    const-string/jumbo v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startInputOrWindowGainedFocus must not return null. startInputReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/internal/view/InputMethodClient;->getStartInputReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " editorInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " controlFlags=#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_123
    .catch Landroid/os/RemoteException; {:try_start_d3 .. :try_end_123} :catch_19b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d3 .. :try_end_123} :catch_1c4
    .catchall {:try_start_d3 .. :try_end_123} :catchall_1bb

    const/4 v2, 0x0

    monitor-exit v19

    return v2

    :cond_126
    :try_start_126
    invoke-interface {v14}, Landroid/view/inputmethod/InputConnection;->getHandler()Landroid/os/Handler;

    move-result-object v15

    goto :goto_c2

    :cond_12b
    invoke-virtual/range {v17 .. v17}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
    :try_end_12e
    .catchall {:try_start_126 .. :try_end_12e} :catchall_1bb

    move-result-object v2

    goto :goto_ca

    :cond_130
    const/4 v10, 0x0

    const/4 v11, 0x0

    goto :goto_cf

    :cond_133
    :try_start_133
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    if-eqz v2, :cond_183

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->setInputChannelLocked(Landroid/view/InputChannel;)V

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/view/InputBindResult;->sequence:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/inputmethod/InputMethodManager;->mBindSequence:I

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->method:Lcom/android/internal/view/IInputMethodSession;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/view/InputBindResult;->userActionNotificationSequenceNumber:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/view/inputmethod/InputMethodManager;->mNextUserActionNotificationSequenceNumber:I

    :cond_162
    :goto_162
    move-object/from16 v0, v16

    iget v2, v0, Lcom/android/internal/view/InputBindResult;->result:I

    packed-switch v2, :pswitch_data_1ce

    :goto_169
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_180

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;
    :try_end_173
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_173} :catch_19b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_133 .. :try_end_173} :catch_1c4
    .catchall {:try_start_133 .. :try_end_173} :catchall_1bb

    if-eqz v2, :cond_180

    :try_start_175
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-interface {v2, v3}, Lcom/android/internal/view/IInputMethodSession;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_180
    .catch Landroid/os/RemoteException; {:try_start_175 .. :try_end_180} :catch_1cc
    .catch Ljava/lang/IllegalArgumentException; {:try_start_175 .. :try_end_180} :catch_1c4
    .catchall {:try_start_175 .. :try_end_180} :catchall_1bb

    :cond_180
    :goto_180
    monitor-exit v19

    const/4 v2, 0x1

    return v2

    :cond_183
    :try_start_183
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_162

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/inputmethod/InputMethodManager;->mCurChannel:Landroid/view/InputChannel;

    if-eq v2, v3, :cond_162

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/internal/view/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V
    :try_end_19a
    .catch Landroid/os/RemoteException; {:try_start_183 .. :try_end_19a} :catch_19b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_183 .. :try_end_19a} :catch_1c4
    .catchall {:try_start_183 .. :try_end_19a} :catchall_1bb

    goto :goto_162

    :catch_19b
    move-exception v12

    :try_start_19c
    const-string/jumbo v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1ba
    .catchall {:try_start_19c .. :try_end_1ba} :catchall_1bb

    goto :goto_180

    :catchall_1bb
    move-exception v2

    monitor-exit v19

    throw v2

    :pswitch_1be
    const/4 v2, 0x1

    :try_start_1bf
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/inputmethod/InputMethodManager;->mRestartOnNextWindowFocus:Z
    :try_end_1c3
    .catch Landroid/os/RemoteException; {:try_start_1bf .. :try_end_1c3} :catch_19b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bf .. :try_end_1c3} :catch_1c4
    .catchall {:try_start_1bf .. :try_end_1c3} :catchall_1bb

    goto :goto_169

    :catch_1c4
    move-exception v13

    :try_start_1c5
    const-string/jumbo v2, "InputMethodManager"

    invoke-static {v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1cb
    .catchall {:try_start_1c5 .. :try_end_1cb} :catchall_1bb

    goto :goto_180

    :catch_1cc
    move-exception v12

    goto :goto_180

    :pswitch_data_1ce
    .packed-switch 0xb
        :pswitch_1be
    .end packed-switch
.end method

.method public switchToLastInputMethod(Landroid/os/IBinder;)Z
    .registers 5

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputMethodManager;->switchToLastInputMethod(Landroid/os/IBinder;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    move-result v1

    monitor-exit v2

    return v1

    :catch_b
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    .registers 6

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mService:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodManager;->switchToNextInputMethod(Landroid/os/IBinder;Z)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_11

    move-result v1

    monitor-exit v2

    return v1

    :catch_b
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public toggleSoftInput(II)V
    .registers 5

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_9

    :try_start_4
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public toggleSoftInputFromWindow(Landroid/os/IBinder;II)V
    .registers 7

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1c

    move-result-object v1

    if-eq v1, p1, :cond_11

    :cond_f
    monitor-exit v2

    return-void

    :cond_11
    :try_start_11
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_13
    .catchall {:try_start_11 .. :try_end_13} :catchall_1c

    if-eqz v1, :cond_1a

    :try_start_15
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->toggleSoftInput(II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1f
    .catchall {:try_start_15 .. :try_end_1a} :catchall_1c

    :cond_1a
    :goto_1a
    monitor-exit v2

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_1f
    move-exception v0

    goto :goto_1a
.end method

.method public updateCursor(Landroid/view/View;IIII)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_18

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1c

    :cond_18
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_5f

    if-nez v1, :cond_1e

    :cond_1c
    monitor-exit v2

    return-void

    :cond_1e
    :try_start_1e
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_5f

    move-result v1

    if-nez v1, :cond_3f

    :try_start_31
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Lcom/android/internal/view/IInputMethodSession;->updateCursor(Landroid/graphics/Rect;)V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorRect:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mTmpCursorRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3f} :catch_41
    .catchall {:try_start_31 .. :try_end_3f} :catchall_5f

    :cond_3f
    :goto_3f
    monitor-exit v2

    return-void

    :catch_41
    move-exception v0

    :try_start_42
    const-string/jumbo v1, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_5f

    goto :goto_3f

    :catchall_5f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateCursorAnchorInfo(Landroid/view/View;Landroid/view/inputmethod/CursorAnchorInfo;)V
    .registers 9

    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1d

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_21

    :cond_1d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_69

    if-nez v2, :cond_23

    :cond_21
    monitor-exit v3

    return-void

    :cond_23
    :try_start_23
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v2, :cond_21

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3a

    const/4 v1, 0x1

    :goto_2e
    if-nez v1, :cond_3c

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    invoke-static {v2, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_69

    move-result v2

    if-eqz v2, :cond_3c

    monitor-exit v3

    return-void

    :cond_3a
    const/4 v1, 0x0

    goto :goto_2e

    :cond_3c
    :try_start_3c
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, p2}, Lcom/android/internal/view/IInputMethodSession;->updateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorAnchorInfo:Landroid/view/inputmethod/CursorAnchorInfo;

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Landroid/view/inputmethod/InputMethodManager;->mRequestUpdateCursorAnchorInfoMonitorMode:I
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_49} :catch_4b
    .catchall {:try_start_3c .. :try_end_49} :catchall_69

    :goto_49
    monitor-exit v3

    return-void

    :catch_4b
    move-exception v0

    :try_start_4c
    const-string/jumbo v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_68
    .catchall {:try_start_4c .. :try_end_68} :catchall_69

    goto :goto_49

    :catchall_69
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V
    .registers 7

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_6
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v1, p1, :cond_1a

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_25

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1a

    :cond_18
    monitor-exit v2

    return-void

    :cond_1a
    :try_start_1a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_25

    if-eqz v1, :cond_23

    :try_start_1e
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v1, p2, p3}, Lcom/android/internal/view/IInputMethodSession;->updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_23} :catch_28
    .catchall {:try_start_1e .. :try_end_23} :catchall_25

    :cond_23
    :goto_23
    monitor-exit v2

    return-void

    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1

    :catch_28
    move-exception v0

    goto :goto_23
.end method

.method public updateSelection(Landroid/view/View;IIII)V
    .registers 15

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v8

    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v0, p1, :cond_18

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1c

    :cond_18
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_68

    if-nez v0, :cond_1e

    :cond_1c
    monitor-exit v8

    return-void

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    if-eqz v0, :cond_1c

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    if-ne v0, p2, :cond_2a

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_68

    if-eq v0, p3, :cond_41

    :cond_2a
    :goto_2a
    :try_start_2a
    iget v1, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iget v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput p2, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelStart:I

    iput p3, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorSelEnd:I

    iput p4, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    iput p5, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/view/IInputMethodSession;->updateSelection(IIIIII)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3f} :catch_4a
    .catchall {:try_start_2a .. :try_end_3f} :catchall_68

    :cond_3f
    :goto_3f
    monitor-exit v8

    return-void

    :cond_41
    :try_start_41
    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandStart:I

    if-ne v0, p4, :cond_2a

    iget v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCursorCandEnd:I

    if-eq v0, p5, :cond_3f

    goto :goto_2a

    :catch_4a
    move-exception v7

    const-string/jumbo v0, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IME died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_67
    .catchall {:try_start_41 .. :try_end_67} :catchall_68

    goto :goto_3f

    :catchall_68
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public viewClicked(Landroid/view/View;)V
    .registers 8

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mNextServedView:Landroid/view/View;

    if-eq v2, v3, :cond_25

    const/4 v1, 0x1

    :goto_7
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_d
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eq v2, p1, :cond_1f

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v2, :cond_23

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->checkInputConnectionProxy(Landroid/view/View;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_23

    :cond_1f
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurrentTextBoxAttribute:Landroid/view/inputmethod/EditorInfo;
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_50

    if-nez v2, :cond_27

    :cond_23
    monitor-exit v3

    return-void

    :cond_25
    const/4 v1, 0x0

    goto :goto_7

    :cond_27
    :try_start_27
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_50

    if-eqz v2, :cond_23

    :try_start_2b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/view/IInputMethodSession;

    invoke-interface {v2, v1}, Lcom/android/internal/view/IInputMethodSession;->viewClicked(Z)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_30} :catch_32
    .catchall {:try_start_2b .. :try_end_30} :catchall_50

    :goto_30
    monitor-exit v3

    return-void

    :catch_32
    move-exception v0

    :try_start_33
    const-string/jumbo v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IME died: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_50

    goto :goto_30

    :catchall_50
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public windowDismissed(Landroid/os/IBinder;)V
    .registers 4

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_6
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mServedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_15

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    :cond_15
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_24

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/View;
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_26

    :cond_24
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method
