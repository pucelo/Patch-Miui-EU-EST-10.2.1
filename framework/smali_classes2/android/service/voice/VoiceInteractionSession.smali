.class public Landroid/service/voice/VoiceInteractionSession;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSession$1;,
        Landroid/service/voice/VoiceInteractionSession$2;,
        Landroid/service/voice/VoiceInteractionSession$3;,
        Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$CommandRequest;,
        Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;,
        Landroid/service/voice/VoiceInteractionSession$Insets;,
        Landroid/service/voice/VoiceInteractionSession$MyCallbacks;,
        Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;,
        Landroid/service/voice/VoiceInteractionSession$Request;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_RECEIVER_EXTRAS:Ljava/lang/String; = "receiverExtras"

.field public static final KEY_STRUCTURE:Ljava/lang/String; = "structure"

.field static final MSG_CANCEL:I = 0x7

.field static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0x66

.field static final MSG_DESTROY:I = 0x67

.field static final MSG_HANDLE_ASSIST:I = 0x68

.field static final MSG_HANDLE_SCREENSHOT:I = 0x69

.field static final MSG_HIDE:I = 0x6b

.field static final MSG_ON_LOCKSCREEN_SHOWN:I = 0x6c

.field static final MSG_SHOW:I = 0x6a

.field static final MSG_START_ABORT_VOICE:I = 0x4

.field static final MSG_START_COMMAND:I = 0x5

.field static final MSG_START_COMPLETE_VOICE:I = 0x3

.field static final MSG_START_CONFIRMATION:I = 0x1

.field static final MSG_START_PICK_OPTION:I = 0x2

.field static final MSG_SUPPORTS_COMMANDS:I = 0x6

.field static final MSG_TASK_FINISHED:I = 0x65

.field static final MSG_TASK_STARTED:I = 0x64

.field public static final SHOW_SOURCE_ACTIVITY:I = 0x10

.field public static final SHOW_SOURCE_APPLICATION:I = 0x8

.field public static final SHOW_SOURCE_ASSIST_GESTURE:I = 0x4

.field public static final SHOW_WITH_ASSIST:I = 0x1

.field public static final SHOW_WITH_SCREENSHOT:I = 0x2

.field static final TAG:Ljava/lang/String; = "VoiceInteractionSession"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/VoiceInteractionSession$Request;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

.field mContentFrame:Landroid/widget/FrameLayout;

.field final mContext:Landroid/content/Context;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRootView:Landroid/view/View;

.field final mSession:Landroid/service/voice/IVoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

.field mToken:Landroid/os/IBinder;

.field mUiEnabled:Z

.field final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionSession;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 7

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    iput-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Insets;

    invoke-direct {v0}, Landroid/service/voice/VoiceInteractionSession$Insets;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$1;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$2;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    new-instance v0, Landroid/service/voice/VoiceInteractionSession$3;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$3;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    return-void
.end method

.method private doOnCreate()V
    .registers 2

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    :goto_6
    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    return-void

    :cond_9
    const v0, 0x10303cb

    goto :goto_6
.end method


# virtual methods
.method addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeSystemDialogs()V
    .registers 4

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->closeSystemDialogs(Landroid/os/IBinder;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreate()V

    return-void
.end method

.method doDestroy()V
    .registers 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onDestroy()V

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    :cond_1e
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    :cond_20
    return-void
.end method

.method doHide()V
    .registers 2

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowHidden()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onHide()V

    :cond_d
    return-void
.end method

.method doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V
    .registers 5

    if-eqz p3, :cond_5

    invoke-virtual {p0, p3}, Landroid/service/voice/VoiceInteractionSession;->onAssistStructureFailure(Ljava/lang/Throwable;)V

    :cond_5
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    return-void
.end method

.method doOnHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V
    .registers 13

    if-eqz p3, :cond_5

    invoke-virtual {p0, p3}, Landroid/service/voice/VoiceInteractionSession;->onAssistStructureFailure(Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    return-void
.end method

.method doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .registers 11

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_18

    :try_start_4
    const-string/jumbo v3, "showWindow"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_c
    if-nez v0, :cond_1b

    const-string/jumbo v3, "VoiceInteractionSession"

    const-string/jumbo v4, "can not to show window"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1a

    return-void

    :cond_18
    const/4 v0, 0x1

    goto :goto_c

    :catch_1a
    move-exception v2

    :cond_1b
    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    if-eqz v3, :cond_29

    const-string/jumbo v3, "VoiceInteractionSession"

    const-string/jumbo v4, "Re-entrance in to showWindow"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_29
    const/4 v3, 0x1

    :try_start_2a
    iput-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->onPrepareShow(Landroid/os/Bundle;I)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-nez v3, :cond_36

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowAdded()V

    :cond_36
    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->onShow(Landroid/os/Bundle;I)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-nez v3, :cond_49

    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eqz v3, :cond_49

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v3}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    :cond_49
    if-eqz p3, :cond_62

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eqz v3, :cond_67

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Landroid/service/voice/VoiceInteractionSession$4;

    invoke-direct {v4, p0, p3}, Landroid/service/voice/VoiceInteractionSession$4;-><init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_62
    .catchall {:try_start_2a .. :try_end_62} :catchall_76

    :cond_62
    :goto_62
    iput-boolean v5, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    iput-boolean v6, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    return-void

    :cond_67
    :try_start_67
    invoke-interface {p3}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_76

    goto :goto_62

    :catch_6b
    move-exception v1

    :try_start_6c
    const-string/jumbo v3, "VoiceInteractionSession"

    const-string/jumbo v4, "Error calling onShown"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6c .. :try_end_75} :catchall_76

    goto :goto_62

    :catchall_76
    move-exception v3

    iput-boolean v5, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    iput-boolean v6, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    throw v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mToken="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mTheme=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mUiEnabled="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v3, " mInitialized="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowAdded="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mWindowVisible="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowWasVisible="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v3, " mInShowWindow="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_bc

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Active requests:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_91
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_bc

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$Request;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    :cond_bc
    return-void
.end method

.method ensureWindowAdded()V
    .registers 3

    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreateContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->setContentView(Landroid/view/View;)V

    :cond_19
    return-void
.end method

.method ensureWindowCreated()V
    .registers 12

    const/4 v9, 0x1

    const/4 v10, -0x1

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setUiEnabled is false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    iput-boolean v9, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "VoiceInteractionSession"

    iget v3, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    iget-object v6, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    const/16 v7, 0x7ef

    const/16 v8, 0x50

    move-object v5, p0

    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x1010100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/R$styleable;->VoiceInteractionSession:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mThemeAttrs:Landroid/content/res/TypedArray;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090121

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setLayout(II)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    return-void
.end method

.method ensureWindowHidden()V
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    :cond_9
    return-void
.end method

.method public finish()V
    .registers 4

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->finish(Landroid/os/IBinder;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDisabledShowContext()I
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getUserDisabledShowContext()I
    .registers 3

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getUserDisabledShowContext()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    :catch_7
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public getWindow()Landroid/app/Dialog;
    .registers 2

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hide()V
    .registers 4

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideSessionFromSession(Landroid/os/IBinder;)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method isRequestActive(Landroid/os/IBinder;)Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAssistStructureFailure(Ljava/lang/Throwable;)V
    .registers 2

    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    return-void
.end method

.method public onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .registers 2

    return-void
.end method

.method public onCloseSystemDialogs()V
    .registers 1

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    return-void
.end method

.method public onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iput v3, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    return-void
.end method

.method public onCreate()V
    .registers 1

    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionSession;->doOnCreate()V

    return-void
.end method

.method public onCreateContentView()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onGetSupportedCommands([Ljava/lang/String;)[Z
    .registers 3

    array-length v0, p1

    new-array v0, v0, [Z

    return-object v0
.end method

.method public onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .registers 4

    return-void
.end method

.method public onHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    .registers 6

    return-void
.end method

.method public onHandleScreenshot(Landroid/graphics/Bitmap;)V
    .registers 2

    return-void
.end method

.method public onHide()V
    .registers 1

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public onLockscreenShown()V
    .registers 1

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    return-void
.end method

.method public onLowMemory()V
    .registers 1

    return-void
.end method

.method public onPrepareShow(Landroid/os/Bundle;I)V
    .registers 3

    return-void
.end method

.method public onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V
    .registers 2

    return-void
.end method

.method public onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V
    .registers 2

    return-void
.end method

.method public onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V
    .registers 2

    return-void
.end method

.method public onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V
    .registers 2

    return-void
.end method

.method public onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V
    .registers 2

    return-void
.end method

.method public onShow(Landroid/os/Bundle;I)V
    .registers 3

    return-void
.end method

.method public onTaskFinished(Landroid/content/Intent;I)V
    .registers 3

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    return-void
.end method

.method public onTaskStarted(Landroid/content/Intent;I)V
    .registers 3

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    return-void
.end method

.method removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$Request;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 5

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowCreated()V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    return-void
.end method

.method public setDisabledShowContext(I)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setKeepAwake(Z)V
    .registers 5

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setKeepAwake(Landroid/os/IBinder;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public setTheme(I)V
    .registers 4

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iput p1, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    return-void
.end method

.method public setUiEnabled(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    if-eq v0, p1, :cond_14

    iput-boolean p1, p0, Landroid/service/voice/VoiceInteractionSession;->mUiEnabled:Z

    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-eqz v0, :cond_14

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowAdded()V

    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    :cond_14
    :goto_14
    return-void

    :cond_15
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->ensureWindowHidden()V

    goto :goto_14
.end method

.method public show(Landroid/os/Bundle;I)V
    .registers 6

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_d

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :try_start_d
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

.method public startAssistantActivity(Landroid/content/Intent;)V
    .registers 7

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Can\'t call before onCreate()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startAssistantActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method

.method public startVoiceActivity(Landroid/content/Intent;)V
    .registers 7

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_d

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Can\'t call before onCreate()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    :try_start_d
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, p1, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a
.end method
